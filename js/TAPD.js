$(document).ready(function () {
    $('#SignUpclose').click(function () {
        $('#divSignUp').css('display', 'none');
        $('#backgroundpopup').css('display', 'none');
    });

    $('#OpenSignUp').click(function () {
        $('#divSignUp').css('display', '');
        $('#backgroundpopup').css('display', '');
    });

    $('#btnSignUp').click(function () {
        var UserId = $('#txtEmail').val();
        var Password = $('#txtPassword').val();
        InitiateSignUp(UserId, Password);
    });
    

    $('#Loginclose').click(function () {
        $('#divLogin').css('display', 'none');
        $('#backgroundpopup').css('display', 'none');
    });

    $('#imgLogin').click(function () {
        $('#divLogin').css('display', '');
        $('#backgroundpopup').css('display', '');
    });

});
function SignUpInitiateSuccess() {
    for (var i = 0.1; i <= 1; i = i + 0.1) {
        $("#divSignUpSuccess").animate({ opacity: i }, "slow");
    }
    for (var i = 1; i > 0; i = i - 0.1) {
        $("#divSignUpSuccess").animate({ opacity: i }, "slow");
    }
    $('#txtEmail').val('');
    $('#txtPassword').val('');
    $('#txtRePassword').val('');
}
function InitiateSignUp(UserId, Password) {
    $.ajax({
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        url: "Home.aspx/InitiateSignUp",
        data: "{UserId:'" + UserId + "',Password:'" + Password + "'}",
        success: function (msg) {
            if (msg.d == '1') {
                SignUpInitiateSuccess();
            }
            // $(".noti_bubble_expand").html(msg.d);
            //DisplayTotalNotificationCount();
            //$('#div' + $('#hfNotificationActiveTab').val() + 'Main').attr('style', 'padding-left: 10px; padding-top: 10px; display: block;');
        }
                     ,
        error: function (xhr, ajaxOptions, thrownError) {

        }
    });
}