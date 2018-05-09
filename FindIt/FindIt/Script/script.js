$(document).ready(function () {
    if ($.cookie("UserInformation")) {
        var cookie = $.cookie("UserInformation"),
            cookieArray = [], cookies = [];
        cookie = cookie.split('&');
        for (i = 0; i < cookie.length; i++) {
            cookies = cookie[i].split('=');
            //readCookie[1] == ['foo', 'bar'], readCookie[1][0] == 'foo', etc.
            cookieArray[i] = cookies[1];
        }
        $('#userInf').html('');
        $('#userInf').append(cookieArray[0] + " " + cookieArray[1]);
    }
    else {
        $('#userInf').html('');
        $('#userInf').append('Faulty data');
    }
})

function clearCookies() {
    document.cookie = "UserInformation=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    $('#userInf').html('');
    $('#userInf').append('<a href="loginSignup.aspx">Üye Girişi </a>/<a href="loginSignup.aspx"> Üye Ol</a>');
}

function AddShelf(id) {
    var shelf = $("#raf" + id + "");
    $('#shelfsArea').append(shelf);
    $("#raf" + id + "").css("cursor", "move");
    $("#raf" + id + "").addClass("text-center text-muted");
    $("#raf" + id + "").draggable({
        containment: 'parent'
    });
}
function getHtml() {
    $('#harita').val($('#shelfsArea').html());
}