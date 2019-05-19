var categoryName = document.forms['add_category']['name'];
var category_error = document.getElementById('category_error');
categoryName.addEventListener('blur', categoryNameVerify, true);

function ValidateAddCategory() {
    if (categoryName.value == "") {
        categoryName.style.border = "1px solid red";
        document.getElementById('category_div').style.color = "red";
        category_error.textContent = "Tên loại sản phẩm không được để trống!";
        categoryName.focus();
        return false;
    }
    if(!isNaN(categoryName.value) || categoryName.value.length<2){
        categoryName.style.border = "1px solid red";
        document.getElementById('category_div').style.color = "red";
        category_error.textContent = "Tên loại sản phẩm không hợp lệ!";
        categoryName.focus();
        return false;
    }
}

function categoryNameVerify() {
    if (categoryName.value != "") {
        categoryName.style.border = "1px solid #5e6e66";
        document.getElementById('category_div').style.color = "#5e6e66";
        category_error.innerHTML = "";
        return true;
    }
}