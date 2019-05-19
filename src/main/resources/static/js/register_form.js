// SELECTING ALL TEXT ELEMENTS
var username = document.forms['register_form']['username'];
var email = document.forms['register_form']['email'];
var fullname = document.forms['register_form']['fullname'];
var phone = document.forms['register_form']['phone'];
var address = document.forms['register_form']['address'];
var password = document.forms['register_form']['password'];
var password_confirm = document.forms['register_form']['password_confirm'];

// SELECTING ALL ERROR DISPLAY ELEMENTS
var username_error = document.getElementById('username_error');
var email_error = document.getElementById('email_error');
var fullname_error = document.getElementById('fullname_error');
var phone_error = document.getElementById('phone_error');
var address_error = document.getElementById('address_error');
var password_error = document.getElementById('password_error');
var password_confirm_error = document.getElementById('password_confirm_error');

// SETTING ALL EVENT LISTENERS
username.addEventListener('blur', usernameVerify, true);
email.addEventListener('blur', emailVerify, true);
fullname.addEventListener('blur', fullnameVerify, true);
phone.addEventListener('blur', phoneVerify, true);
address.addEventListener('blur', addressVerify, true);
password.addEventListener('blur', passwordVerify, true);
password_confirm.addEventListener('blur', passwordConfirmVerify, true);

// validation function
function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

function ValidateRegister() {
    var illegalChars = /\W/;
    // validate username
    if (username.value == "") {
        username.style.border = "1px solid red";
        document.getElementById('username_div').style.color = "red";
        username_error.textContent = "Tên tài khoản không được trống!";
        username.focus();
        return false;
    }
    // validate username
    if (username.value.length < 3) {
        username.style.border = "1px solid red";
        document.getElementById('username_div').style.color = "red";
        username_error.textContent = "Tên tài khoản phải ít nhất 3 ký tự";
        username.focus();
        return false;
    }

    if (illegalChars.test(username.value)) {
        username.style.border = "1px solid red";
        document.getElementById('username_div').style.color = "red";
        username_error.textContent = "Tên tài khoản không hợp lệ!";
        username.focus();
        return false;
    }

    // validate password
    if (password.value == "") {
        password.style.border = "1px solid red";
        document.getElementById('password_div').style.color = "red";
        password_error.textContent = "Mật khẩu không được trống!";
        password.focus();
        return false;
    }

    if (password.value.length < 4) {
        password.style.border = "1px solid red";
        document.getElementById('password_div').style.color = "red";
        password_error.textContent = "Mật khẩu tối thiểu là 4 kí tự!";
        password.focus();
        return false;
    }

    // check if the two passwords match
    if (password.value != password_confirm.value) {
        password_confirm.style.border = "1px solid red";
        document.getElementById('password_confirm_div').style.color = "red";
        password_confirm_error.textContent = "Nhập lại mật khẩu không đúng";
        password_confirm.focus();
        return false;
    }

    // validate fullname
    if (fullname.value == "") {
        fullname.style.border = "1px solid red";
        document.getElementById('fullname_div').style.color = "red";
        fullname_error.textContent = "Họ và tên không được trống!";
        fullname.focus();
        return false;
    }

    if (fullname.value.length < 2) {
        fullname.style.border = "1px solid red";
        document.getElementById('fullname_div').style.color = "red";
        fullname_error.textContent = "Họ và tên tối thiểu là 2 ký tự!";
        fullname.focus();
        return false;
    }

    // validate phone
    if (phone.value == "") {
        phone.style.border = "1px solid red";
        document.getElementById('phone_div').style.color = "red";
        phone_error.textContent = "Số điện thoại không được trống!";
        phone.focus();
        return false;
    }

    if (isNaN(phone.value) || phone.value < 0) {
        phone.style.border = "1px solid red";
        document.getElementById('phone_div').style.color = "red";
        phone_error.textContent = "Số điện thoại không hợp lệ!";
        phone.focus();
        return false;
    }

    if (phone.value.length < 10) {
        phone.style.border = "1px solid red";
        document.getElementById('phone_div').style.color = "red";
        phone_error.textContent = "Số điện thoại tối thiểu phải 10 chữ số!";
        phone.focus();
        return false;
    }


    // validate email
    if (email.value == "") {
        email.style.border = "1px solid red";
        document.getElementById('email_div').style.color = "red";
        email_error.textContent = "Email không được trống!";
        email.focus();
        return false;
    }

    if (!validateEmail(email.value)) {
        email.style.border = "1px solid red";
        document.getElementById('email_div').style.color = "red";
        email_error.textContent = "Email không hợp lệ!";
        email.focus();
        return false;
    }


    // validate address
    if (address.value == "") {
        address.style.border = "1px solid red";
        document.getElementById('address_div').style.color = "red";
        address_error.textContent = "Địa chỉ không được trống!";
        address.focus();
        return false;
    }

    if (address.value.length < 3) {
        address.style.border = "1px solid red";
        document.getElementById('address_div').style.color = "red";
        address_error.textContent = "Địa chỉ tối thiểu là 3 ký tự!";
        address.focus();
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
function passwordConfirmVerify(){
    if (password.value === password_confirm.value) {
        password_confirm.style.border = "1px solid #5e6e66";
        document.getElementById('password_confirm_div').style.color = "#5e6e66";
        password_confirm_error.innerHTML = "";
        console.log(password_confirm);
        console.log(password);
        return true;
    }
}

function fullnameVerify() {
    if (fullname.value != "") {
        fullname.style.border = "1px solid #5e6e66";
        document.getElementById('fullname_div').style.color = "#5e6e66";
        fullname_error.innerHTML = "";
        return true;
    }
}

function phoneVerify() {
    if (phone.value != "") {
        phone.style.border = "1px solid #5e6e66";
        document.getElementById('phone_div').style.color = "#5e6e66";
        phone_error.innerHTML = "";
        return true;
    }
}

function emailVerify() {
    if (email.value != "") {
        email.style.border = "1px solid #5e6e66";
        document.getElementById('email_div').style.color = "#5e6e66";
        email_error.innerHTML = "";
        return true;
    }
}

function addressVerify() {
    if (address.value != "") {
        address.style.border = "1px solid #5e6e66";
        document.getElementById('address_div').style.color = "#5e6e66";
        address_error.innerHTML = "";
        return true;
    }
}

