// page elements
var email_input_field = document.getElementById("InputEmail1");
var psd_input_field = document.getElementById("InputPassword");

var email_warning_label = document.getElementById("emailHelp");
var psd_warning_label = document.getElementById("psdHelp");

//var form_send = document.getElementById("sendform");


function form_validation(){
    var error_count =0 ;

    if (is_available(email_input_field)) {
        email_warning(email_warning_label, "email input field is empty.", false);
        error_count +=1;
        return;
        
    }else{
        email_warning(email_warning_label, "", true);
        error_count -=1;
    }

    if (!email_validation(email_input_field)) {
        //email_warning(email_warning_label, "email adress is not valid.");
        email_warning(email_warning_label, "email address is not valid", false);
        error_count +=1;
        return;
        
    }else{
        email_warning(email_warning_label, "", true);
        error_count -=1;
    }

    //passsword validation
    if (is_available(psd_input_field)) {
        psd_warning(psd_warning_label, "password input filed empty", false);
        error_count +=1;
        return;
    }else{
        psd_warning(psd_warning_label, "", true);
        error_count -=1;
    }

    if (!psd_length_validation(psd_input_field)) {
        psd_warning(psd_warning_label, "password invalid legth", false);
        error_count +=1;
        return;
    }else{
        psd_warning(psd_warning_label, "", true);
        error_count -=1;
    }
}