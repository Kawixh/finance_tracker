$(function () {
    $('#loading-indicator').hide();  // hide it initially.
    $(document)
        .ajaxStart(function () {
            $('#loading-indicator').show(); // show on any Ajax event.
        })
        .ajaxStop(function () {
            $('#loading-indicator').hide(); // hide it when it is done.
        });
});

$(function() {
    $('.load-ajax').hide();
    $(document).ajaxStart(function() {
        $('.load-ajax').show();
    });
    $(document).ajaxStop(function() {
        $('.load-ajax').hide();
    });
});