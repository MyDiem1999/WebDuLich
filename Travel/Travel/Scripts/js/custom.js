jQuery(document).ready(function () {
    //============================== CLOSE DROPDOWN SELECT =========================
    $(".ed-datepicker input.form-control").focus(function () {
        $(".sbOptions").css("display", "none");
    });



    //============================== ALL DROPDOWN ON HOVER =========================
    $('.dropdown').hover(function () {
        $(this).addClass('open');
    },
        function () {
            $(this).removeClass('open');
        });

    //============================== Rs-Slider =========================
    jQuery('.fullscreenbanner').revolution({
        delay: 5000,
        startwidth: 1170,
        startheight: 480,
        minHeight: 260,
        panZoomDisableOnMobile: "on",
        fullWidth: "on",
        fullScreen: "off",
        hideCaptionAtLimit: "",
        dottedOverlay: "twoxtwo",
        navigationStyle: "preview4",
        fullScreenOffsetContainer: "",
        hideTimerBar: "on"
    });


    //============================== show more tour in view detail tour =========================
    jQuery("#textViewMore").click(function () {
        $('#actionViewMore').addClass('hidden-action');
        $('.tour-detail-content-col .hidden-tour').each(function () {
            $(this).removeClass('hidden-tour');
        });

    });
    //============================== show contactSGT in view detail tour =========================
    jQuery("#viewContactSGT").click(function () {
        $('#viewContactSGT').addClass('contact-hidden');
        $('#contentContactSGT').removeClass('contact-hidden');

    });
    //============================== CHANGE HEADER ON MOUSE SCROLL =========================
    var header = $(".changeHeader .navbar-fixed-top");
    $(window).scroll(function () {
        var scroll = $(window).scrollTop();

        if ((scroll >= 1) && ($(".navbar-default").hasClass("navbar-main"))) {
            header.addClass("lightHeader");
        }
        else if ($(".navbar-default").hasClass("static-light")) {
            header.addClass("lightHeader");
        }
        else {
            header.removeClass("lightHeader");
        }
        ;
    });


    $(document).ready(function () {
        //$('.collapsed-kiritm-first').collapse();
        //$('.collapsed-kiritm').on('shown.bs.collapse', function () {
        //    $(this).parent().find(".glyphicon-plus").removeClass("glyphicon-plus").addClass("glyphicon-minus");
        //}).on('hidden.bs.collapse', function () {
        //    $(this).parent().find(".glyphicon-minus").removeClass("glyphicon-minus").addClass("glyphicon-plus");
        //});

        //$('#call_back_form').submit(function (e) {
        //    e.preventDefault();
        //    var form = $(this);
        //    $('#call_back_form').find(':submit').attr('disabled', true);
        //    $.ajax({
        //        type: 'POST',
        //        url: 'https://saigontourist.net/call-me-back',
        //        data: form.serialize(),
        //        success: function (data) {
        //            if (data.success) {
        //                $('#callMeBackModal').modal('hide');
        //                $.notify(data.message, "success", {
        //                    delay: 7000,
        //                    autoHideDelay: 10000000,
        //                    globalPosition: 'top right'
        //                });
        //                $('#call_back_form').find(':submit').removeAttr('disabled');
        //                document.getElementById("call_back_form").reset();
        //            } else {
        //                $.notify(data.message, "warn", {
        //                    delay: 7000,
        //                    autoHideDelay: 10000000,
        //                    globalPosition: 'top right'
        //                });
        //                $('#call_back_form').find(':submit').removeAttr('disabled');
        //            }
        //        },
        //        errors: function (err) {
        //            $.notify(err.message, "warn", {
        //                delay: 7000,
        //                autoHideDelay: 10000000,
        //                globalPosition: 'top right'
        //            });
        //            // $('#_message_success').html(err.message);
        //            $('#call_back_form').find(':submit').removeAttr('disabled');
        //        }
        //    });
        //});
        //var products = [{
        //    id: 2113,
        //    categoryId: "",
        //    transactionId: "4972vsi0km581nt9p66tj3sp60",
        //    price: 7300000,
        //    quantity: 1,
        //    name: "Du lịch Tết Tân Sửu 2021 Côn Đảo [Mùng 4 tết]",
        //    brandName: "saigontourist",
        //    desc: "3 ngày 2 đêm - Đi về bằng máy bay",
        //    imageUrl: "https://saigontourist.net/uploads/destination/TrongNuoc/Condao/Tram-PhuHai_1677214198.jpg",
        //    link: "https://saigontourist.net/vi/tour-trong-nuoc/2113/du-lich-tet-tan-suu-2021-con-dao-mung-4-tet"
        //}];
        //ematics("log", "product", "browse", products);

        //dataLayer.push({
        //    "event": 'EEproductDetail', //we are using an event to send the impression data
        //    "ecommerce": {
        //        "currencyCode": "VND",
        //        "detail": {
        //            "actionField": {},     //optional list property
        //            "products": [{
        //                "id": 2113,
        //                "name": "Du lịch Tết Tân Sửu 2021 Côn Đảo [Mùng 4 tết]",
        //                "price": 7300000,
        //                "brand": "saigontourist",
        //                "category": ""
        //            }]
        //        }
        //    }
        //});

        //scroll show cotact infor
        //scroll
        window.onscroll = function () {
            myFunction()
        };
    });

    function getOffset(el) {
        var rect = el.getBoundingClientRect();
        return {
            left: rect.left + window.scrollX,
            top: rect.top + window.scrollY
        };
    }

    function myFunction() {
        var heightMoreInfoTour = getOffset(document.getElementsByClassName('more-info-tour')[0]).top - 200;
        var scrollTop = document.documentElement.scrollTop > document.body.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop;
        if ((scrollTop > 1150) && (scrollTop < heightMoreInfoTour)) {
            document.getElementById("boxInfoSuportSgt").className = "right-detail-tour-box fix-screen-tourdetail";
        } else {
            document.getElementById("boxInfoSuportSgt").className = "right-detail-tour-box";
        }
    }

    /*************************************** CLICK HIDE CONTENT INFOR CUSTOM *********************************************/
    function connect() {
        $(".submit_infor").show();
        $(".infor_custom").hide();
    }
    $("a#btnSubmit").click(connect);

    /*-----------------------------------------------------------------*/
    (function () {

        'use strict';

        var h = document.querySelector("header"),
            hHeight;

        function setTopPadding() {
            hHeight = h.offsetHeight;
            m.style.paddingTop = hHeight + "px";
        }

        function onScroll() {

            window.addEventListener("scroll", _.throttle(callbackFunc, 200));
            /**
             * Replace the line above with the following one 
             * to see how many more times the "callbackFunc" is executed
             */
            // window.addEventListener("scroll", callbackFunc);

            function callbackFunc() {
                c.style.visibility = "visible";
                c.innerHTML = counter++;
                var y = window.pageYOffset;
                if (y > 150) {
                    h.classList.add("scroll");
                } else {
                    h.classList.remove("scroll");
                }
            }
        }

        window.onload = function () {
            setTopPadding();
            onScroll();
        };

        window.onresize = function () {
            setTopPadding();
        };
    })();
    //============================== SELECT BOX =========================
    $('.select-drop').selectbox();

    //============================== Date-picker =========================
    //     $('.datepicker').datepicker({
    //         startDate: "dateToday",
    //         autoclose: true
    //     });

    //============================== COUNTER-UP =========================
    $(document).ready(function ($) {
        $('.counter').counterUp({
            delay: 10,
            time: 2000
        });
    });

    //============================== PRICE SLIDER RANGER =========================
    jQuery(document).ready(function () {
        var minimum = 20;
        var maximum = 300;

        $("#price-range").slider({
            range: true,
            min: minimum,
            max: maximum,
            values: [minimum, maximum],
            slide: function (event, ui) {
                $("#price-amount-1").val("$" + ui.values[0]);
                $("#price-amount-2").val("$" + ui.values[1]);
            }
        });

        $("#price-amount-1").val("$" + $("#price-range").slider("values", 0));
        $("#price-amount-2").val("$" + $("#price-range").slider("values", 1));
    });

    //============================== ACCORDION OR COLLAPSE ICON CHANGE =========================

    var allIcons = $(".singlePackage .panel-heading i.fa");
    $('.singlePackage .panel-heading').click(function () {
        allIcons.removeClass('fa-minus').addClass('fa-plus');
        $(this).find('i.fa').removeClass('fa-plus').addClass('fa-minus');
    });

    var allIconsOne = $(".accordionWrappar .panel-heading i.fa");
    $('.accordionWrappar .panel-heading').click(function () {
        allIconsOne.removeClass('fa-minus').addClass('fa-plus');
        $(this).find('i.fa').removeClass('fa-plus').addClass('fa-minus');
    });

    var allIconsExtra = $(".solidBgTitle .panel-heading i.fa");
    $('.solidBgTitle .panel-heading').click(function () {
        allIconsExtra.removeClass('fa-minus').addClass('fa-plus');
        $(this).find('i.fa').removeClass('fa-plus').addClass('fa-minus');
    });

    var allIconsTwo = $(".accordionSolidTitle .panel-heading i.fa");
    $('.accordionSolidTitle .panel-heading').click(function () {
        allIconsTwo.removeClass('fa-arrow-circle-up').addClass('fa-arrow-circle-down');
        $(this).find('i.fa').removeClass('fa-arrow-circle-down').addClass('fa-arrow-circle-up');
    });

    var allIconsThree = $(".accordionSolidBar .panel-heading i.fa");
    $('.accordionSolidBar .panel-heading').click(function () {
        allIconsThree.removeClass('fa-chevron-circle-up').addClass('fa-chevron-circle-down');
        $(this).find('i.fa').removeClass('fa-chevron-circle-down').addClass('fa-chevron-circle-up');
    });

    //============================== SELECT OPEN ACCORDION ITEM TITLE ========================= 
    $(document).ready(function () {
        $('.accordionWrappar .panel-collapse, .accordionSolidTitle .panel-collapse, .accordionSolidBar .panel-collapse').on('show.bs.collapse', function () {
            $(this).siblings('.panel-heading').addClass('active');
            $(this).addClass('active');
        });

        $('.accordionWrappar .panel-collapse, .accordionSolidTitle .panel-collapse, .accordionSolidBar .panel-collapse').on('hide.bs.collapse', function () {
            $(this).siblings('.panel-heading').removeClass('active');
            $(this).removeClass('active');
        });
    });

    //============================== COUNT DOWN =========================
    $('#simple_timer').syotimer({
        year: 2017,
        month: 5,
        day: 9,
        hour: 20,
        minute: 30,
    });
})