$(document).ready(function(){

    var
        loader = $('.preloader');

    loader.animate({
        opacity: 0,
    }, 1000, function() {
        loader.css("display", "none");
    });
    $("#pr_click").click(function(){
        $(".modal_pr").show(500);
    });
    
    $("#close_pr").click(function(e){
        e.preventDefault();
        $(".modal_pr").hide(500);
    });
    
    $(".selection_pr").on('click',function(e){
        e.preventDefault();
        var v = $(this).data("val");
        $("#pr_click").val(v);
        $(".modal_pr").hide(500);
    });
    
    $("#r_pr_button").on('click',function(e){
        e.preventDefault();
        var v = $("#r_pr_input").val();
        $("#pr_click").val(v);
        $(".modal_pr").hide(500);
    });
});
$(function(){
    $('.left_nav-list').find('.left_nav-trigger').on('click',function(e){
        e.preventDefault();
        var list = $(this).closest('.left_nav-list'),
            items = list.find('.left_nav-trigger');
        $(this).siblings('.left_nav_inner')
            .stop(true,true)
            .slideToggle()
            .parents('.left_nav-item')
            .siblings()
            .children('.left_nav_inner')
            .stop(true,true)
            .slideUp();
        if(!$(this).hasClass("active")) {
            items.removeClass("active");
            $(this).addClass("active");
        }
    });
});