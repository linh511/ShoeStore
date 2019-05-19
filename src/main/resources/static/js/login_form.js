var username = document.forms['vform']['username'];
var password = document.forms['vform']['password'];
var username_error = document.getElementById('username_error');
var password_error = document.getElementById('password_error');
username.addEventListener('blur', usernameVerify, true);
password.addEventListener('blur', passwordVerify, true);
function ValidateLogin() {
    var illegalChars = /\W/;
    // validate username
    if (username.value == "") {
        username.style.border = "1px solid red";
        document.getElementById('username_div').style.color = "red";
        username_error.textContent = "Tài khoản không được để trống";
        username.focus();
        return false;
    }

    if (username.value.length < 3) {
        username.style.border = "1px solid red";
        document.getElementById('username_div').style.color = "red";
        username_error.textContent = "Tài khoản phải ít nhất 3 ký tự!";
        username.focus();
        return false;
    }

    if (illegalChars.test(username.value)) {
        username.style.border = "1px solid red";
        document.getElementById('username_div').style.color = "red";
        username_error.textContent = "Tài khoản không hợp lệ!";
        username.focus();
        return false;
    }


    // validate password
    if (password.value == "") {
        password.style.border = "1px solid red";
        document.getElementById('password_div').style.color = "red";
        password_error.textContent = "Mật khẩu không được để trống!";
        password.focus();
        return false;
    }
    if (password.value.length <4) {
        password.style.border = "1px solid red";
        document.getElementById('password_div').style.color = "red";
        password_error.textContent = "Mật khẩu tối thiểu là 4 kí tự!";
        password.focus();
        return false;
    }

}
// event handler functions
function usernameVerify() {
    if (username.value != "") {
        username.style.border = "1px solid #5e6e66";
        document.getElementById('username_div').style.color = "#5e6e66";
        username_error.innerHTML = "";
        return true;
    }
}

function passwordVerify() {
    if (password.value != "") {
        password.style.border = "1px solid #5e6e66";
        document.getElementById('password_div').style.color = "#5e6e66";
        password_error.innerHTML = "";
        return true;
    }
}