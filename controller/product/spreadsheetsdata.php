<?php
class ControllerProductSpreadsheetsdata extends Controller {


    public function setcats() {
        $this->load->model('catalog/category');

        $categories = [
            'Золотые брелоки' => 'zolotye-breloki',
            'Серебряные брелоки' => 'serebryanye-breloki',
            'Брелоки с бриллиантами' => 'breloki-s-brilliantami',
            'Брелоки-сердца' => 'breloki-serdca',
            'Брелоки-инициалы' => 'breloki-inicialy',
            'Брелоки-животные' => 'breloki-zhivotnye',
            'Брелоки на сумку' => 'breloki-na-sumku',
            'Брелоки на ключи' => 'breloki-na-klyuchi',
        ];

        $parent_id = 550;

        foreach ($categories as $name=>$url) {
            $data = array();

            $data = [
                'category_description' => [
                    1 => [
                        'name' => $name,
                        'description' => '',
                        'short_description' => '',
                        'meta_title' => '',
                        'meta_h1' => '',
                        'meta_description' => '',
                        'meta_keyword' => '',
                    ],
                ],

                'product_title' => '',
                'product_description' => '',
                'parent_id' => $parent_id,
                'filter' => '',

                'category_store' => [
                    0 => 0,
                ],

                'keyword' => $url,
                'image' => '',
                'column' => 1,
                'sort_order' => 0,
                'status' => 1,

                'category_layout' => [
                    0 => '',
                ],
            ];

      //      $this->model_catalog_category->addCategory($data);
        }



    //    $this->model_catalog_category->addCategory($data);

             //   break;

    }

    public function get_data_shorts_google() {


        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
        echo 'asdasd';
        require_once DIR_GOOGLE . 'vendor/autoload.php';


        $this->load->model('catalog/category');
        $this->load->model('catalog/service');



        $googleAccountKeyFilePath = DIR_GOOGLE.'my-project-67961-1717153477456-5767271f21f8.json';
        putenv('GOOGLE_APPLICATION_CREDENTIALS=' . $googleAccountKeyFilePath);

        $client = new Google_Client();
        $client->useApplicationDefaultCredentials();

        $client->addScope('https://www.googleapis.com/auth/spreadsheets');

        $service = new Google_Service_Sheets($client);

        $spreadsheetId = '1R2NWYHyHBtfm8rufY5xf-qcNyeXPKMF9XFLEBEiztSE';


        $response = $service->spreadsheets->get($spreadsheetId);


        $spreadsheetProperties = $response->getProperties();
        $spreadsheetProperties->title; // Название таблицы

        foreach ($response->getSheets() as $sheet) {

            // Свойства листа
            $sheetProperties = $sheet->getProperties();
            $sheetProperties->title; // Название листа

            $gridProperties = $sheetProperties->getGridProperties();
            $gridProperties->columnCount; // Количество колонок
            $gridProperties->rowCount; // Количество строк

        }



        $range = 'Посадки';
        $response = $service->spreadsheets_values->get($spreadsheetId, $range);




        foreach ($response->values as $key=>$value) {
            if($key>0) {
                $category = explode('>',$value[3]);
                $category = trim($category[count($category)-1]);

                if($value[2]=='Включено') {
                    $status = 1;
                } else {
                    $status = 0;
                }


                $sql = 'select * from oc_category_description where name="'.$category.'"';






                $category_info = $this->db->query($sql);
                if($category_info->num_rows && $value[5]!='' and $value[1]=='Да') {



                    $category_id = $category_info->row['category_id'];
                    $links[] = array(
                        'id' => $value[0],
                        'update' => $value[1],
                        'status' => $status,
                        'category' => $category_id,
                        'paramlink' => $value[4],
                        'shortlink' => $value[5],
                        'h1' => $value[6],
                        'name' => $value[7],
                        'title' => $value[8],
                        'meta_description' => $value[9],
                        'description' => htmlspecialchars(htmlspecialchars_decode($value[10], ENT_QUOTES), ENT_QUOTES, 'UTF-8', false)
                    );

                }
            }
        }





       $this->model_catalog_service->UpdateShortsLinks($links);






    }

}
