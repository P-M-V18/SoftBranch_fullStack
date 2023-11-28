function clearErrors(){
    errors = document.getElementsByClassName('eror');
    for(let item of errors){
        item.innerHTML = "";
    }
}
function setError(id, error) {
    
    element = document.getElementById(id);
    element.getElementsByClassName('eror')[0].innerHTML = error;
}

function validateForm() {
    var returnVal = true;
    clearErrors();
    
    var fname = document.forms['myForm']["fname"].value;
    if (fname.length<3){
        setError("first", "Required");
        returnVal = false;
    }
    if (fname.length == 0){
        setError("first", "*Required");
        returnVal = false;
    }
    
    var lname = document.forms['myForm']["lname"].value;
    if (lname.length < 3){
        setError("last", "Required");
        returnVal = false;
    }
    if (lname.length == 0){
        setError("last", "*Required");
        returnVal = false;
    }

    var email = document.forms['myForm']["email"].value;
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if(!emailRegex.test(email)){
        setError("emal", "*Required");
    }else{
        setError("emal", "");
    }
    if(email.length == 0){
        setError("emal", "*Required");
        returnVal = false;
    }

    var password = document.forms['myForm']["fpass"].value;
if (password.length < 8) {
    setError("pass", "Required");
    returnVal = false;
} else {
    var numCount = (password.match(/\d/g) || []).length;
    var charCount = (password.match(/[a-zA-Z]/g) || []).length;
    var specialCount = (password.match(/[^a-zA-Z0-9]/g) || []).length;

    if (numCount < 3) {
        setError("pass", "Required");
        returnVal = false;
    } else if (charCount < 3) {
        setError("pass", "Required");
        returnVal = false;
    } else if (specialCount < 1) {
        setError("pass", "Required");
        returnVal = false;
    }
}

    
    
    var cpassword = document.forms['myForm']["fcpass"].value;
    if (cpassword != password){
        setError("cpass", "Required");
        returnVal = false;
    }

    var phone = document.forms['myForm']["phone"].value;
    if (phone.length != 10){
        setError("fphone", "Required");
        returnVal = false;
    }
    if (phone.length == 0){
        setError("fphone", "*Required");
        returnVal = false;
    }

    var birth = document.forms['myForm']["DOB"].value;
    if(birth.length == 0){
        setError("dofb", "*Required");
        returnVal = false;
    }
    return returnVal;
}

//----------------------------------------------------**********************************************-----------

//--------------LOGIC FOR First Name---------------------------------
var firna = document.getElementById('fname');

firna.addEventListener('focus', () => {
  document.getElementById('eror1').innerHTML = "";
})
firna.addEventListener('blur', () => {
  
  if (firna.value.length == 0) {
    document.getElementById('eror1').innerHTML = "Cannot be empty";
    return false;
  } else if (firna.value.length < 3) {
    document.getElementById('eror1').innerHTML = "must contain min 3 characters";
  return false;
  } else {
    document.getElementById('eror1').innerHTML = "";
  }
})
firna.addEventListener('keypress', (event) => {
  var ch = event.keyCode;
 if ( !((ch >=65 && ch <=90) || (ch >=97 && ch <=122) || (ch == 32) || (ch == 8) || (ch == 0))){

event.preventDefault(); //cancel the currently pressed character
}

})

//--------------LOGIC FOR Last Name---------------------------------
var  lasna = document.getElementById('lname');
lasna.addEventListener('focus', () => {
  document.getElementById('eror2').innerHTML = "";
})
lasna.addEventListener('blur', () => {
  
  if (lasna.value.length == 0) {
    document.getElementById('eror2').innerHTML = "Cannot be empty";
    return false;
  } else if (lasna.value.length < 3) {
    document.getElementById('eror2').innerHTML = "must contain min 3 characters";
  return false;
  } else {
    document.getElementById('eror2').innerHTML = "";
  }
})
lasna.addEventListener('keypress', (event) => {
  var ch = event.keyCode;
 if ( !((ch >=65 && ch <=90) || (ch >=97 && ch <=122) || (ch == 32) || (ch == 8) || (ch == 0))){

event.preventDefault(); //cancel the currently pressed character
}
})

//--------------LOGIC FOR Email---------------------------------
var  eml = document.getElementById('email');
eml.addEventListener('focus', () => {
  document.getElementById('eror3').innerHTML = "";
})
eml.addEventListener('blur', () => {
  var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  if(eml.value.length == 0) {
    document.getElementById('eror3').innerHTML = "Cannot be empty";
    return false;
  }else if(!emailRegex.test(eml.value)){
    document.getElementById('eror3').innerHTML = "invalid emial";
    return false;
  }else{
    document.getElementById('eror3').innerHTML = "";
  }
})

//--------------LOGIC FOR Password---------------------------------
const pwd = document.getElementById('fpass');
const cnpwd = document.getElementById('fcpass');
const error4 = document.getElementById('eror4');

pwd.addEventListener('focus', () => {
  error4.innerHTML = "";
});

pwd.addEventListener('blur', () => {
  var password = pwd.value;
 

  if (password.length === 0) {
    error4.innerHTML = "Password cannot be empty";
  } else if (password.length < 8) {
    error4.innerHTML = "Password must contain at least 8 characters";
  } else {
    // Check for at least 3 numbers, 3 characters, and 1 special character
    var numCount = (password.match(/\d/g) || []).length;
    var charCount = (password.match(/[a-zA-Z]/g) || []).length;
    var specialCount = (password.match(/[^a-zA-Z0-9]/g) || []).length;

    if (numCount >= 3 && charCount >= 3 && specialCount >= 1) {
      if (password !== cnpwd.value) {
        error4.innerHTML = "Passwords do not match";
        document.getElementById('eror5').innerHTML = "Passwords do not match";
        
      }
    } else {
      error4.innerHTML = "Password must contain at least 3 numbers, 3 characters, and 1 special character";
    }
  }
});

cnpwd.addEventListener('blur', () => {
    var password = document.forms['myForm']["fpass"].value;
    var cpassword = document.forms['myForm']["fcpass"].value;

  if(password !== cpassword || cpassword == ""){
    document.getElementById('eror5').innerHTML = "Passwords do not match";
  } else{
    document.getElementById('eror5').innerHTML = "";
    document.getElementById('eror4').innerHTML = "";
  }
  
});

//--------------LOGIC FOR Phone Number---------------------------------
var phn = document.getElementById('phone');

phn.addEventListener('focus', () => {
  document.getElementById('eror6').innerHTML = "";
})
phn.addEventListener('blur', () => {
  
  if (phn.value.length == 0) {
    document.getElementById('eror6').innerHTML = "Cannot be empty";
    return false;
  } else if (phn.value.length !== 10) {
    document.getElementById('eror6').innerHTML = "must contain min 10 digits";
  return false;
  } else {
    document.getElementById('eror6').innerHTML = "";
  }
})
phn.addEventListener('keypress', (event) => {
  var ch = event.charCode;
  if (!((ch >= 48 && ch <= 57) || (ch === 8) || (ch === 0))) {
    event.preventDefault(); 
  }
});