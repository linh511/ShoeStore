var producerName = document.forms['add_producer']['name'];
var logo = document.forms['add_producer']['logo'];

var name_error = document.getElementById('name_error');
var logo_error = document.getElementById('logo_error');

producerName.addEventListener('blur', producerNameVerify, true);
logo.addEventListener('blur', logoVerify, true);

function ValidateAddProducer() {
    if (producerName.value == "") {
        producerName.style.border = "1px solid red";
        document.getElementById('producerName_div').style.color = "red";
        name_error.textContent = "Tên hãng sản xuất không được để trống!";
        producerName.focus();
        return false;
    }
    if(!isNaN(producerName.value) || producerName.value.length<2){
        producerName.style.border = "1px solid red";
        document.getElementById('producerName_div').style.color = "red";
        name_error.textContent = "Tên hãng sản xuất không hợp lệ!";
        producerName.focus();
        return false;
    }

    if (logo.value == "") {
        logo.style.border = "1px solid red";
        document.getElementById('producerLogo_div').style.color = "red";
        logo_error.textContent = "Tên ảnh logo không được để trống!";
        logo.focus();
        return false;
    }
}

function producerNameVerify() {
    if (producerName.value != "") {
        producerName.style.border = "1px solid #5e6e66";
        document.getElementById('producerName_div').style.color = "#5e6e66";
        producer_error.innerHTML = "";
        return true;
    }
}
function logoVerify() {
    if (logo.value != "") {
        logo.style.border = "1px solid #5e6e66";
        document.getElementById('producerLogo_div').style.color = "#5e6e66";
        logo_error.innerHTML = "";
        return true;
    }
}