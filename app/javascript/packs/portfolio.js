



$(function() {
    $('.load-ajax').hide();
    $(document).ajaxStart(function() {
        $('.load-ajax').show();
    });
    $(document).ajaxStop(function() {
        $('.load-ajax').hide();
    });
});