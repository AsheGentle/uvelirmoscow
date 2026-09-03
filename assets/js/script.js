$(function(){
    Fancybox.bind("[data-fancybox]", {});

    if ($(".inputbox-phone").length > 0) {
        $(".inputbox-phone").mask("+7 (999) 999-99-99");
    }

    if ($(".about").length > 0) {
        let swiperAbout = new Swiper(".about", {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            breakpoints: {
                837: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                    navigation: {
                        enabled: false
                    }
                },
                1351: {
                    slidesPerView: 2,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".about-videos").length > 0) {
        let swiperVideos = new Swiper(".about-videos", {
            slidesPerView: 2,
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                600: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                837: {
                    slidesPerView: 5,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 5,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".services").length > 0) {
        let swiperServices = new Swiper(".services", {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                    navigation: {
                        enabled: false
                    }
                },
                1351: {
                    slidesPerView: 3,
                    spaceBetween: 30,
                    navigation: {
                        enabled: false
                    }
                }
            }
        });
    }

    if ($(".ideas").length > 0) {
        let swiperIdeas = new Swiper(".ideas", {
            slidesPerView: 1,
            spaceBetween: 20,
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            breakpoints: {
                600: {
                    slidesPerView: 'auto'
                },
                837: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                    navigation: {
                        enabled: true
                    }
                },
                1351: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                    navigation: {
                        enabled: false
                    }
                }
            }
        });
    }

    if ($(".company").length > 0) {
        let swiperCompany = new Swiper(".company", {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                    navigation: {
                        enabled: false
                    }
                },
                1351: {
                    slidesPerView: 3,
                    spaceBetween: 30,
                    navigation: {
                        enabled: false
                    }
                }
            }
        });
    }

    if ($(".reviews").length > 0) {
        let swiperReviews = new Swiper(".reviews", {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                837: {
                    slidesPerView: 2,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 2,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".process").length > 0) {
        let swiperProcess = new Swiper(".process", {
            slidesPerView: 1,
            effect: 'fade',
            fadeEffect: {
                crossFade: true
            },
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        });
    }

    if ($(".examples").length > 0) {
        let swiperExamples = new Swiper(".examples", {
            slidesPerView: 2,
            spaceBetween: 10,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                600: {
                    slidesPerView: 3,
                    spaceBetween: 10
                },
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 3,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".employees").length > 0) {
        let swiperEmployees = new Swiper(".employees", {
            slidesPerView: 1,
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                600: {
                    slidesPerView: 2,
                    spaceBetween: 20
                },
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 3,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".own-materials").length > 0) {
        let swiperOwnMaterials = new Swiper(".own-materials", {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 3,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".prices-items").length > 0) {
        let swiperPrices = new Swiper(".prices-items", {
            slidesPerView: 1,
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                600: {
                    slidesPerView: 2,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 4,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".variants").length > 0) {
        let swiperVariants = new Swiper(".variants", {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 3,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".variants-4").length > 0) {
        let swiperVariants = new Swiper(".variants-4", {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                837: {
                    slidesPerView: 4,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 4,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".catalog-slider").length > 0) {
        let swiperPrices = new Swiper(".catalog-slider", {
            slidesPerView: 1,
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                600: {
                    slidesPerView: 2,
                    spaceBetween: 20
                },
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 4,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".material-works").length > 0) {
        let swiperMaterials = new Swiper(".material-works", {
            slidesPerView: 1,
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                600: {
                    slidesPerView: 2,
                    spaceBetween: 20
                },
                837: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                1351: {
                    slidesPerView: 4,
                    spaceBetween: 30
                }
            }
        });
    }

    if ($(".product__gallery").length > 0) {
        let $gallery = $(".product__gallery");

        let thumbsSwiper = new Swiper($gallery.find(".product-thumbs")[0], {
            direction: "horizontal",
            slidesPerView: 5,
            spaceBetween: 10,
            watchSlidesProgress: true,
            loop: true,
            breakpoints: {
                837: {
                    direction: "horizontal",
                    slidesPerView: 5,
                    spaceBetween: 6
                },
                1351: {
                    direction: "vertical",
                    slidesPerView: 5,
                    spaceBetween: 15
                },
                1591: {
                    direction: "vertical",
                    slidesPerView: 5,
                    spaceBetween: 30
                }
            }
        });

        let mainSwiper = new Swiper($gallery.find(".product-main")[0], {
            spaceBetween: 10,
            loop: true
        });

        function setActiveThumb(index){
            thumbsSwiper.slides.forEach(function(slide){
                slide.classList.toggle(
                        "swiper-slide-thumb-active",
                        Number(slide.getAttribute("data-swiper-slide-index")) === index
                        );
            });
        }

        setActiveThumb(0);

        $gallery.find(".swiper-button-next").on("click", function(){
            mainSwiper.slideNext();
        });

        mainSwiper.on("slideChange", function(){
            let index = mainSwiper.realIndex;
            setActiveThumb(index);
            thumbsSwiper.slideToLoop(index);
        });

        thumbsSwiper.on("click", function(swiper, event){
            let slide = event.target.closest(".swiper-slide");
            if (!slide)
                return;

            let index = Number(slide.getAttribute("data-swiper-slide-index"));
            if (Number.isNaN(index))
                return;

            mainSwiper.slideToLoop(index);
        });
    }

    function scopeSwiperOptions(el, options){
        let opts = Object.assign({}, options);

        if (opts.navigation) {
            let nav = Object.assign({}, opts.navigation);
            let nextEl = el.querySelector('.swiper-button-next');
            let prevEl = el.querySelector('.swiper-button-prev');

            if (nextEl || prevEl) {
                if (nextEl)
                    nav.nextEl = nextEl;
                if (prevEl)
                    nav.prevEl = prevEl;
            } else {
                nav.enabled = false;
            }

            opts.navigation = nav;
        }

        if (opts.pagination) {
            let pag = Object.assign({}, opts.pagination);

            if (typeof pag.el === 'string') {
                let pagEl = el.querySelector(pag.el);

                if (pagEl) {
                    pag.el = pagEl;
                } else {
                    pag.enabled = false;
                }
            }

            opts.pagination = pag;
        }

        return opts;
    }

    function responsiveSwiper({ selector, breakpoint = 837, options = {} }) {
        let swipers = [];
        let resizeTimer;

        function destroyAll(){
            swipers.forEach(function(swiper){
                swiper.destroy(true, true);
            });
            swipers = [];
        }

        function init(){
            let windowWidth = window.innerWidth;
            let $slider = $(selector);

            if ($slider.length === 0)
                return;

            if (windowWidth >= breakpoint) {
                destroyAll();
            } else if (swipers.length === 0) {
                $slider.each(function(){
                    swipers.push(new Swiper(this, scopeSwiperOptions(this, options)));
                });
            }
        }

        init();

        $(window).on('resize', function(){
            clearTimeout(resizeTimer);
            resizeTimer = setTimeout(init, 150);
        });

        return init;
    }

    let initMomentsSwiper = responsiveSwiper({
        selector: ".moments",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initGuaranteesSwiper = responsiveSwiper({
        selector: ".guarantees",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initDocumentsSwiper = responsiveSwiper({
        selector: ".documents",
        breakpoint: 837,
        options: {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            },
            breakpoints: {
                837: {
                    slidesPerView: 2,
                    spaceBetween: 20
                }
            }
        }
    });

    let initStonesSwiper = responsiveSwiper({
        selector: ".stones",
        breakpoint: 600,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initHistorySwiper = responsiveSwiper({
        selector: ".history__list",
        breakpoint: 600,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20
        }
    });

    let initWhySwiper = responsiveSwiper({
        selector: ".why",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initMaterials = responsiveSwiper({
        selector: ".materials",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initConstructions = responsiveSwiper({
        selector: ".constructions",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initMaterialBenefits = responsiveSwiper({
        selector: ".material-benefits",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initBenefits = responsiveSwiper({
        selector: ".benefits",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initPrices = responsiveSwiper({
        selector: ".prices",
        breakpoint: 600,
        options: {
            slidesPerView: 1,
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initSteps = responsiveSwiper({
        selector: ".steps",
        breakpoint: 837,
        options: {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initSurfaces = responsiveSwiper({
        selector: ".surfaces",
        breakpoint: 600,
        options: {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initBrands = responsiveSwiper({
        selector: ".brands",
        breakpoint: 600,
        options: {
            slidesPerView: 'auto',
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initMaterialsPluses = responsiveSwiper({
        selector: ".material-pluses",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initExtra = responsiveSwiper({
        selector: ".inner-extra__list",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });

    let initExtra4 = responsiveSwiper({
        selector: ".inner-extra__list-4",
        breakpoint: 837,
        options: {
            slidesPerView: "auto",
            spaceBetween: 20,
            navigation: {
                enabled: true,
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'fraction'
            }
        }
    });


    $(".idea__title").on("click", function(){
        $(this).parents(".idea__info").toggleClass("show");
    });

    $(".faq-item__question").on("click", function(){
        $(this).parents(".faq-item").toggleClass("open");
    });

    $(".footer-menu__title").on("click", function(e){
        e.preventDefault();
        $(this).parents(".footer-menu__item").toggleClass("open");
    });

    var mobileMenuMq = window.matchMedia("(max-width: 836px)");

    function isMobileMenu(){
        return mobileMenuMq.matches;
    }

    var $header = $("header");
    var $headerPlaceholder = $("<div>", {"class": "header-placeholder"});
    var headerFixedHeight = 0;
    var headerFixed = false;
    var headerResizeTimer;

    function updateHeaderFixed(){
        if (!$header.length) {
            return;
        }

        if (isMobileMenu()) {
            if (headerFixed) {
                headerFixed = false;
                $header.removeClass("fixed").css("--header-height", "");
                $headerPlaceholder.detach();
            }
            return;
        }

        if (!headerFixed) {
            headerFixedHeight = $header.outerHeight();
        }

        var scrollTop = $(window).scrollTop();

        if (scrollTop > headerFixedHeight) {
            if (!headerFixed) {
                $headerPlaceholder.css("height", headerFixedHeight);
                $header.after($headerPlaceholder);
                $header.addClass("fixed");
                headerFixed = true;
            }

            $header.css("--header-height", $header.outerHeight() + "px");
        } else if (scrollTop < headerFixedHeight) {
            if (headerFixed) {
                headerFixed = false;
                $header.removeClass("fixed").css("--header-height", "");
                $headerPlaceholder.detach();
            }
        }
    }

    if ($header.length) {
        updateHeaderFixed();

        $(window).on("scroll", updateHeaderFixed);
        $(window).on("load", updateHeaderFixed);
        $(window).on("resize", function(){
            clearTimeout(headerResizeTimer);
            headerResizeTimer = setTimeout(updateHeaderFixed, 150);
        });
    }

    function resetMobileSubmenus(){
        $("header").removeClass("open-submenu open-thirdmenu");
        $("header").find(".has-submenu.active").removeClass("active");
        $("header").find(".submenu__list > .submenu__description-title").remove();
        $("header").find(".top-submenu > .submenu__description-title").remove();
    }

    function activateSubmenuCategory($category){
        var category = $category.data("category");
        var $block = $category.closest(".submenu__block");
        var $list = $block.find('.submenu__list[data-category="' + category + '"]');

        if (!$list.length) {
            return $();
        }

        $block.find(".submenu__category").removeClass("active");
        $block.find(".submenu__list").removeClass("active");
        $category.addClass("active");
        $list.addClass("active");

        return $list;
    }

    $(".header-toggle").on("click", function(){
        $("body").toggleClass("open-menu");
        resetMobileSubmenus();
        updateHeaderFixed();
    });

    $(".has-submenu > a").on("click", function(e){
        if (!isMobileMenu()) {
            return;
        }

        e.preventDefault();

        var $item = $(this).parent();
        var $header = $(this).closest("header");
        var $topSubmenu = $item.children(".top-submenu");
        var title = $(this).html();

        $(".has-submenu").not($item).removeClass("active");
        $item.addClass("active");
        $header.removeClass("open-thirdmenu").addClass("open-submenu");
        $header.find(".submenu__list > .submenu__description-title").remove();
        $header.find(".top-submenu > .submenu__description-title").remove();

        if ($topSubmenu.length) {
            $topSubmenu.prepend(
                    $("<li>", {"class": "submenu__description-title"}).html(title)
                    );
        } else {
            $item.find(".submenu__description > .submenu__description-title").html(title);
        }
    });

    $(document).on("click", ".submenu__description-title", function(){
        if (!isMobileMenu()) {
            return;
        }

        var $title = $(this);
        var $header = $title.closest("header");

        if ($title.parent().hasClass("submenu__list")) {
            $header.removeClass("open-thirdmenu");
            $title.remove();
            return;
        }

        resetMobileSubmenus();
    });

    $(".menu__item.has-submenu").on("mouseenter", function(){
        if (isMobileMenu()) {
            return;
        }

        var $submenu = $(this).children(".submenu");

        if (!$submenu.length) {
            return;
        }

        $(".submenu").not($submenu).removeClass("show");
        $submenu.addClass("show");
    }).on("mouseleave", function(){
        if (isMobileMenu()) {
            return;
        }

        $(this).children(".submenu").removeClass("show");
    });

    $(".submenu").on("mouseenter", function(e){
        if (isMobileMenu()) {
            return;
        }

        if (!$(e.target).closest(".submenu__wrap").length) {
            $(this).removeClass("show");
        }
    });

    $(".submenu__wrap").on("mouseleave", function(){
        if (isMobileMenu()) {
            return;
        }

        $(this).closest(".submenu").removeClass("show");
    });

    $(".submenu__category").on("mouseenter", function(){
        if (isMobileMenu()) {
            return;
        }

        activateSubmenuCategory($(this));
    }).on("click", function(){
        if (!isMobileMenu()) {
            return;
        }

        var $category = $(this);
        var $block = $category.closest(".submenu__block");
        var $list;

        $block.find(".submenu__list > .submenu__description-title").remove();
        $list = activateSubmenuCategory($category);

        if (!$list.length) {
            return;
        }

        $list.prepend(
                $("<div>", {"class": "submenu__description-title"}).html($category.html())
                );
        $category.closest("header").addClass("open-thirdmenu");
    });

    mobileMenuMq.addEventListener("change", function(e){
        if (!e.matches) {
            $("body").removeClass("open-menu");
            resetMobileSubmenus();
            $(".submenu").removeClass("show");
            closeTooltips();
        }

        updateHeaderFixed();
    });

    var tooltipViewportPad = 8;
    var tooltipGap = 6;

    function resetTooltipPosition($tooltip){
        $tooltip.find(".tooltip__text").css({
            transform: "",
            position: "",
            top: "",
            left: "",
            right: "",
            bottom: ""
        });
    }

    function closeTooltips($except){
        var $open = $(".tooltip.open");

        if ($except) {
            $open = $open.not($except);
        }

        $open.each(function(){
            resetTooltipPosition($(this));
        }).removeClass("open");
    }

    function fitTooltipToViewport($tooltip){
        var $text = $tooltip.find(".tooltip__text");
        var $icon = $tooltip.find(".tooltip__icon");
        var el = $text[0];
        var icon = $icon[0];
        var iconRect;
        var pad = tooltipViewportPad;
        var vw;
        var width;
        var height;
        var left;

        if (!el || !icon) {
            return;
        }

        $text.css({
            transform: "",
            position: "",
            top: "",
            left: "",
            right: "",
            bottom: ""
        });

        iconRect = icon.getBoundingClientRect();
        width = el.offsetWidth;
        height = el.offsetHeight;
        vw = document.documentElement.clientWidth;
        left = iconRect.right - width;

        if (left < pad) {
            left = pad;
        }

        if (left + width > vw - pad) {
            left = vw - pad - width;
        }

        if (left < pad) {
            left = pad;
        }

        $text.css({
            position: "fixed",
            top: (iconRect.top - height - tooltipGap) + "px",
            left: left + "px",
            right: "auto",
            bottom: "auto",
            transform: "none"
        });
    }

    function repositionActiveTooltips(){
        $(".tooltip.open").each(function(){
            fitTooltipToViewport($(this));
        });

        if (!isMobileMenu()) {
            $(".tooltip:hover").not(".open").each(function(){
                fitTooltipToViewport($(this));
            });
        }
    }

    $(document).on("click", ".tooltip__icon", function(e){
        if (!isMobileMenu()) {
            return;
        }

        e.preventDefault();
        e.stopPropagation();

        var $tooltip = $(this).closest(".tooltip");

        closeTooltips($tooltip);
        $tooltip.toggleClass("open");

        if ($tooltip.hasClass("open")) {
            fitTooltipToViewport($tooltip);
        } else {
            resetTooltipPosition($tooltip);
        }
    });

    $(document).on("click", function(e){
        if (!isMobileMenu()) {
            return;
        }

        if (!$(e.target).closest(".tooltip").length) {
            closeTooltips();
        }
    });

    $(document).on("mouseenter", ".tooltip", function(){
        if (isMobileMenu()) {
            return;
        }

        fitTooltipToViewport($(this));
    });

    $(document).on("mouseleave", ".tooltip", function(){
        if (isMobileMenu()) {
            return;
        }

        resetTooltipPosition($(this));
    });

    $(window).on("resize", repositionActiveTooltips);
    window.addEventListener("scroll", repositionActiveTooltips, true);

    var typesMoreScrollTop = 0;

    $(".types-more").on("click", function(){
        var $btn = $(this);
        var $types = $(".types");
        var collapsing = $types.hasClass("collapsed");

        if (!collapsing) {
            typesMoreScrollTop = $(window).scrollTop();
        }

        $types.toggleClass("collapsed");
        $btn.text($types.hasClass("collapsed") ? "Свернуть" : "Показать еще");

        if (collapsing) {
            $("html, body").stop(true).animate({
                scrollTop: typesMoreScrollTop
            }, 300);
        }
    });

    function initCatalogPopulars(){
        $(".catalog-populars").each(function(){
            var $block = $(this);
            var $list = $block.find(".catalog-populars__list");
            var $more = $block.find(".catalog-populars__more");
            var listEl = $list[0];

            if (!listEl || !$more.length) {
                return;
            }

            var isExpanded = $list.hasClass("show");
            var isOverflowing = listEl.scrollHeight > 48;

            $more.toggle(isExpanded || isOverflowing);
        });
    }

    var catalogPopularsResizeTimer;

    initCatalogPopulars();

    $(window).on("load resize", function(){
        clearTimeout(catalogPopularsResizeTimer);
        catalogPopularsResizeTimer = setTimeout(initCatalogPopulars, 150);
    });

    $(".catalog-populars__more").on("click", function(){
        var $block = $(this).closest(".catalog-populars");
        var $list = $block.find(".catalog-populars__list");

        $list.toggleClass("show");
        $(this).text($list.hasClass("show") ? "Свернуть" : "Показать еще");
    });

    $(".catalog-view").on("click", function(){
        var view = $(this).data("catalog");

        if ($(this).hasClass("active") || !view) {
            return;
        }

        $(".catalog-view").removeClass("active");
        $(this).addClass("active");
        $(".catalog-list").removeClass("list grid").addClass(view);
    });


    $(".js-tabs").each(function(){
        $(this).find(".js-tabs__pane").each(function(){
            $(this).prop("hidden", !$(this).hasClass("active"));
        });
    });

    $(document).on("click", ".js-tabs__btn", function(){
        var $btn = $(this);
        var tabId = $btn.attr("data-tab");

        if ($btn.hasClass("active") || !tabId) {
            return;
        }

        var $group = $btn.closest(".js-tabs");

        $group.find(".js-tabs__btn").removeClass("active");
        $btn.addClass("active");
        $group.find(".js-tabs__pane").removeClass("active").prop("hidden", true);
        $group.find(".js-tabs__pane[data-tab='" + tabId + "']").addClass("active").prop("hidden", false);
    });


    $(".products__toggle").on("click", function(){
        $(this).parents(".products__item").toggleClass("show");
    });


    // filter-range-slider
    document.querySelectorAll('.filter-range').forEach(el => {
        var slider = el.querySelector('.filter-range__slider');
        var inputMin = el.querySelector('.filter-range__min');
        var inputMax = el.querySelector('.filter-range__max');

        var inputs = [
            inputMin,
            inputMax
        ];

        var minValue = parseInt(inputMin.dataset.value, 10);
        var maxValue = parseInt(inputMax.dataset.value, 10);

        var format = wNumb({
            decimals: 0,
            thousand: ' '
        });

        var formatInputValue = function(value, handle){
            return (handle === 0 ? 'от ' : 'до ') + format.to(value) + ' руб.';
        };

        inputMin.value = formatInputValue(minValue, 0);
        inputMax.value = formatInputValue(maxValue, 1);

        noUiSlider.create(slider, {
            start: [minValue, maxValue],
            step: 1,
            connect: true,
            range: {
                'min': minValue,
                'max': maxValue
            },
            format: format
        });

        slider.noUiSlider.on('update', function(values, handle, unencoded){
            inputs[handle].value = formatInputValue(unencoded[handle], handle);
        });
    }, false);


    $(".filter-item__more").on("click", function(){
        var $block = $(this).closest(".filter-item");
        var $list = $block.find(".filter-item__list");

        $list.toggleClass("collapsed");
        $(this).text($list.hasClass("collapsed") ? "Показать еще" : "Свернуть");
    });


    $(".filter-toggle").on("click", function(e){
        e.stopPropagation();
        $("body").toggleClass("open-filter");
    });

    $(".filter-back__close").on("click", function(){
        $("body").removeClass("open-filter");
    });

    $(document).on("click", function(e){
        if ($("body").hasClass("open-filter") && !$(e.target).closest(".filter").length) {
            $("body").removeClass("open-filter");
        }
    });


    $(".product-order__favorite").on("click", function(){
        var $btn = $(this);
        $btn.toggleClass("active");
        $btn.find("span").text($btn.hasClass("active") ? "Убрать из избранного" : "В избранное");
    });

    $(".product-block__title").on("click", function(){
        $(this).closest(".product-block").toggleClass("hide");
    });

    $(".product-stones__toggle").on("click", function(){
        var $block = $(this).closest(".product-stones").find(".product-stones__palette");
        $block.toggleClass("collapsed");
        $(this).text($block.hasClass("collapsed") ? "Развернуть палитру" : "Свернуть палитру");
    });


    // Функция для получения ширины скроллбара
    let scrollWidth = getScrollbarWidth();

    function getScrollbarWidth(){
        if (document.body.offsetHeight - window.innerHeight > 0) {
            let outer = document.createElement("div");
            outer.style.visibility = "hidden";
            outer.style.overflow = "scroll";
            outer.style.msOverflowStyle = "scrollbar";
            document.body.appendChild(outer);

            let inner = document.createElement("div");
            outer.appendChild(inner);
            let width = outer.offsetWidth - inner.offsetWidth;
            outer.parentNode.removeChild(outer);
            return width;
        }
        return 0;
    }

    $(window).on("resize", function(){
        scrollWidth = getScrollbarWidth();
    });


    // Модалки
    $("[data-modal]").on("click", function(){
        let modalId = $(this).data("modal");
        $(".modal").removeClass("open");
        $(modalId).addClass("open");
        $("body").addClass("overflow").css("padding-right", scrollWidth);
    });

    $(".modal__close, .modal").on("click", function(e){
        if (e.target === this || $(e.target).hasClass("modal__close")) {
            let modalId = "#" + $(this).closest(".modal").attr("id");
            $(this).closest(".modal").removeClass("open");
            $("body").removeClass("overflow").css("padding-right", 0);
        }
    });

});
