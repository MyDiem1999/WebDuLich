
/*slide auto flow*/
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1 }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
    setTimeout(showSlides, 3000); // Change image every 3 seconds
}

/*click button slider flow*/
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
    showDivs(slideIndex += n);
}

function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("mySlides");
    if (n > x.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = x.length
    }
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    x[slideIndex - 1].style.display = "block";
}

/*************************************************************************************/
//$("#region").modal('show');

//function onLoginSubmit(token) {
//    document.getElementById("login-form").submit();
//}

//function onRegisterSubmit(token) {
//    document.getElementById("register-form").submit();
//}

//function updateRegion(id) {
//    $.ajax({
//        type: "POST",
//        url: 'https://www.Viettravel.net/update-region',
//        data: { 'id': id },
//        success: function (data) {
//            $("#region").modal('hide');
//            location.reload();
//        },
//        error: function () {
//            alert('Hệ thống đang bận vui lòng thử lại sau ít phút!');
//        }
//    });
//}

//$("#submit-recive").click(function () {
//    $("#form-recive-email").submit();
//});
//$(".navbar-right .singleDrop, .navbar-right .megaDropMenu").click(function (e) {
//    e.stopPropagation();
//});

// search tour kiritm

// suggestion
function showResult(e, str) {
}

var delay = (function () {
    var timer = 0;
    return function (callback, ms) {
        clearTimeout(timer);
        timer = setTimeout(callback, ms);
    };
})();

function checkSubmitSearch(e) {
    //See notes about 'which' and 'key'
    if (e.keyCode == 13) {
        $('#searchFormKiritm').submit();
    }
}

function onkeyDownSearch(e) {
    //close suggestion
    if (e.keyCode == 9) {
        $('#showSuggestion').addClass('hidden-cls');
    }
}

//============================== Event search ========================
var markClose = jQuery("#markclose");
var advanceSearch = jQuery("#advanceSearchKiritm");
jQuery("#searchboxkiritm").click(function () {
    if (markClose.hasClass("hidden-cls")) {
        markClose.removeClass("hidden-cls");
    }
    if (advanceSearch.hasClass("hidden-cls")) {
        advanceSearch.removeClass("hidden-cls");
    }
});
jQuery("#markclose").click(function () {
    if (!markClose.hasClass("hidden-cls")) {
        markClose.addClass("hidden-cls");
    }
    if (!advanceSearch.hasClass("hidden-cls")) {
        advanceSearch.addClass("hidden-cls");
    }
    $('#showSuggestion').addClass('hidden-cls');
});


//layout website


var markCloseLayout = jQuery("#markcloseLayout");
var advanceSearchLayout = jQuery("#contentSearchboxlayout");
jQuery("#buttonSearchLayout").click(function () {
    if (markCloseLayout.hasClass("hidden-cls")) {
        markCloseLayout.removeClass("hidden-cls");
    }
    if (advanceSearchLayout.hasClass("hidden-cls")) {
        advanceSearchLayout.removeClass("hidden-cls");
    }
});
jQuery("#markcloseLayout").click(function () {
    if (!markCloseLayout.hasClass("hidden-cls")) {
        markCloseLayout.addClass("hidden-cls");
    }
    if (!advanceSearchLayout.hasClass("hidden-cls")) {
        advanceSearchLayout.addClass("hidden-cls");
    }
});

function checkSubmitSearchLayout(e) {
    //See notes about 'which' and 'key'
    if (e.keyCode == 13) {
        $('#searchFormKiritmLayout').submit();
    }
}

//datepicker searchbox
$('#toDateSearchBoxLayout').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    orientation: 'top auto',
    todayBtn: 'linked',
    todayHighlight: true
});
$('#fromDateSearchBoxLayout').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    orientation: 'top auto',
    todayBtn: 'linked',
    todayHighlight: true
}).on('changeDate', function (selected) {
    var minDate = new Date(selected.date.valueOf());
    $('#toDateSearchBoxLayout').datepicker('setStartDate', minDate);
});


//layout mobile


var markCloseLayoutMobile = jQuery("#markcloseLayoutMobile");
var advanceSearchLayoutMobile = jQuery("#contentSearchLayoutMobile");
jQuery("#inputSearchLayoutMobile").click(function () {
    if (markCloseLayoutMobile.hasClass("hidden-cls")) {
        markCloseLayoutMobile.removeClass("hidden-cls");
    }
    if (advanceSearchLayoutMobile.hasClass("hidden-cls")) {
        advanceSearchLayoutMobile.removeClass("hidden-cls");
    }
});
jQuery("#markcloseLayoutMobile").click(function () {
    if (!markCloseLayoutMobile.hasClass("hidden-cls")) {
        markCloseLayoutMobile.addClass("hidden-cls");
    }
    if (!advanceSearchLayoutMobile.hasClass("hidden-cls")) {
        advanceSearchLayoutMobile.addClass("hidden-cls");
    }
});

function checkSubmitSearchLayoutMobile(e) {
    //See notes about 'which' and 'key'
    if (e.keyCode == 13) {
        $('#searchFormLayoutMobile').submit();
    }
}

//datepicker searchbox
$('#toDateSearchBoxLayoutMobile').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    orientation: 'top auto',
    todayBtn: 'linked',
    todayHighlight: true
});
$('#fromDateSearchBoxLayoutMobile').datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    orientation: 'top auto',
    todayBtn: 'linked',
    todayHighlight: true
}).on('changeDate', function (selected) {
    var minDate = new Date(selected.date.valueOf());
    $('#toDateSearchBoxLayoutMobile').datepicker('setStartDate', minDate);
});