"use strict";
function increment (id){
//get the element for the quantity field and its value
var inputField = document.getElementById("quantity" + id);
console.log(inputField.value);
var quantity = inputField.value;
//convert the value to integer
var quantityInt = parseInt(quantity);
//add 1 to the integer
quantityInt = quantityInt + 1;
//set the value of the input field to the new integer
if(quantityInt>0){
inputField.value = quantityInt;
}
}





function decrement (id){
//get the element for the quantity field and its value
var inputField = document.getElementById("quantity" + id);
console.log(inputField.value);
var quantity = inputField.value;
//convert the value to integer
var quantityInt = parseInt(quantity);
//add 1 to the integer
quantityInt = quantityInt - 1;
//set the value of the input field to the new integer
if(quantityInt>0){
inputField.value = quantityInt;
}

}

//function decrement
