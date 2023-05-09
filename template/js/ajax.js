var s = 0;

setTimeout(function () {
    $.post("/m/refresher", {}, function (data) {
        if(data != 0) {
            $("i span.badge").html(data);
        } else $("i span.badge").html('');
    });

},500);

setTimeout(function () {
    $.post("/m/isNewMessage", {}, function (data) {
        if(data != 0) {
            $(".new-mess").html(data);
            setTimeout(function () {
                $(".new-mess").hide();
                $.post("/m/isNewMessage/1", {}, function (data) {

                })
            }, 5000);
        }
        else $(".new-mess").html('');
    });
},2000);

function scrollBottom(){
    $('.message-list').scrollTop(999999);
}

function refreshDialog(id) {
    $.post("/messages/"+id, {}, function (data) {
        $('.preloader-list').hide();
        $(".message-list").html(data);
        if(s == 0) {
            scrollBottom();
            s = 1;
        }

    });
    return false;
}

function readMessage(id) {
    $.post("m/read/"+id, {}, function () {
        $(".dialog-button-"+id+" span.badge").html('');
    });
}




if ($('#nav_1').click()) {
    $.post("/ses", {nav_1:1, nav_2:0} );
}else $.post("/ses", {nav_1:0, nav_2:1} );
if ($('#nav_2').click()) {
    $.post("/ses", {nav_2:1, nav_1:0} );
}else $.post("/ses", {nav_2:0, nav_1:1} );




$('.new-mess').click(function () {
    var id = this.attr("data-dialog");
    readMessage(id);
});

$("#message").focus(function () {
    var id = $("#send-message").attr("data-dialog");
    readMessage(id);
});

var interval;

$(".dialog-button").click(function (e) {
    s = 0;
    if(interval) {
        clearInterval(interval);
    }
    e.preventDefault();
    $('.message-add').show();
    var id = $(this).attr("data-dialog");
    $('#send-message').attr("data-dialog", id);
    $('.preloader-list').show();
    interval = setInterval(function() {
        refreshDialog(id);
    }, 1000);
    scrollBottom();
    return false;
});

$("#send-message").click(function (e) {
    s = 0;
    e.preventDefault();
    var message = $('#message').val();
    message.trim();
    if(message.length > 1 ) {
        var id = $(this).attr("data-dialog");
        $.post("/messages/add/"+id, {message:message}, function (data) {
            setInterval(refreshDialog(id), 2000);
            $('#message').val(" ");
        });
        return false;
    }else {
        alert("Введіть текст повідомлення!");
    }

});