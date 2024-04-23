function is_available(element){
if (element.value == "") {
    return true;
} else {
    return false;
}
}

function email_warning(element, msg, hidden){

 element.innerHTML=msg;

 //style.display
 if (hidden == true) {
    element.display="none";
 }
 
 
}

function psd_warning(element, msg, hidden){
  element.innerHTML=msg;  
}

function email_validation(element){
    var address = element.value;
    var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/

    if (address.match(validRegex)) {
        return true;
    }else{
        return false;
}
}

function psd_length_validation(element){
    var psd = element.value;
    var myRegex = /^[a-zA-Z]{8,15}$/;
    if (psd.match(myRegex)) {
        return true
    }else{
        return false
    }
}