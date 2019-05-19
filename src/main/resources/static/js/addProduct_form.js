var category = document.forms['add_product']['category'];
var producer = document.forms['add_product']['producer'];
var nameProduct = document.forms['add_product']['name'];
var unitPrice = document.forms['add_product']['unitPrice'];
var description = document.forms['add_product']['description'];
var image = document.forms['add_product']['image'];


var category_error = document.getElementById('category_error');
var producer_error = document.getElementById('producer_error');
var nameProduct_error = document.getElementById('nameProduct_error');
var unitPrice_error = document.getElementById('unitPrice_error');
var description_error = document.getElementById('description_error');
var image_error = document.getElementById('image_error');

category.addEventListener('blur', categoryVerify, true);
producer.addEventListener('blur', producerVerify, true);
nameProduct.addEventListener('blur', nameProductVerify, true);
unitPrice.addEventListener('blur', unitPriceVerify, true);
description.addEventListener('blur', descriptionVerify, true);
image.addEventListener('blur', imageVerify, true);

function ValidateAddProduct() {
    // var illegalChars = /\W/;

    if (category.value == 0) {
        category.style.border = "1px solid red";
        document.getElementById('category_div').style.color = "red";
        category_error.textContent = "Lựa chọn loại sản phẩm!";
        category.focus();
        return false;
    }

    if (producer.value == 0) {
        producer.style.border = "1px solid red";
        document.getElementById('producer_div').style.color = "red";
        producer_error.textContent = "Lựa chọn hãng sản xuất!";
        producer.focus();
        return false;
    }

    if (nameProduct.value == "") {
        nameProduct.style.border = "1px solid red";
        document.getElementById('nameProduct_div').style.color = "red";
        nameProduct_error.textContent = "Nhập tên sản phẩm!";
        nameProduct.focus();
        return false;
    }

    if (unitPrice.value == "" || unitPrice.value==0) {
        unitPrice.style.border = "1px solid red";
        document.getElementById('unitPrice_div').style.color = "red";
        unitPrice_error.textContent = "Nhập giá sản phẩm!";
        unitPrice.focus();
        return false;
    }

    if(isNaN(unitPrice.value) || unitPrice.value<1000){
        unitPrice.style.border = "1px solid red";
        document.getElementById('unitPrice_div').style.color = "red";
        unitPrice_error.textContent = "Giá sản phẩm là số và lớn hơn 1000 VND!";
        unitPrice.focus();
        return false;
    }


    if (description.value == "") {
        description.style.border = "1px solid red";
        document.getElementById('description_div').style.color = "red";
        description_error.textContent = "Nhập mô tả sản phẩm!";
        description.focus();
        return false;
    }

    if (image.value == "") {
        image.style.border = "1px solid red";
        document.getElementById('image_div').style.color = "red";
        image_error.textContent = "Nhập tên ảnh sản phẩm!";
        image.focus();
        return false;
    }
}
// event handler functions
function categoryVerify() {
    if (category.value != 0) {
        category.style.border = "1px solid #5e6e66";
        document.getElementById('category_div').style.color = "#5e6e66";
        category_error.innerHTML = "";
        return true;
    }
}

function producerVerify() {
    if (producer.value != 0) {
        producer.style.border = "1px solid #5e6e66";
        document.getElementById('producer_div').style.color = "#5e6e66";
        producer_error.innerHTML = "";
        return true;
    }
}

function nameProductVerify() {
    if (nameProduct.value != "") {
        nameProduct.style.border = "1px solid #5e6e66";
        document.getElementById('nameProduct_div').style.color = "#5e6e66";
        nameProduct_error.innerHTML = "";
        return true;
    }
}

function unitPriceVerify() {
    if (unitPrice.value != "") {
        unitPrice.style.border = "1px solid #5e6e66";
        document.getElementById('unitPrice_div').style.color = "#5e6e66";
        unitPrice_error.innerHTML = "";
        return true;
    }
}
function descriptionVerify() {
    if (description.value != "") {
        description.style.border = "1px solid #5e6e66";
        document.getElementById('description_div').style.color = "#5e6e66";
        description_error.innerHTML = "";
        return true;
    }
}

function imageVerify() {
    if (image.value != "") {
        image.style.border = "1px solid #5e6e66";
        document.getElementById('image_div').style.color = "#5e6e66";
        image_error.innerHTML = "";
        return true;
    }
}