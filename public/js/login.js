var txtName=document.getElementsByName("account")[0];
var txtPwd=document.getElementsByName("pwd")[0];
txtName.onfocus=txtPwd.onfocus=function(){
  this.className="txt_focus";
  this.parentNode         
      .nextElementSibling
      .children[0]       
      .className="";
}
txtName.onblur=function(){ 
  vali(this,/^\d{1,8}$/) 
}
function vali(txt,reg){
  txt.className="";
  var pass=reg.test(txt.value);
  var div=
    txt.parentNode.nextElementSibling.children[0];
  if(pass)
    div.className="vali_success";
  else
    div.className="vali_fail";
}
txtPwd.onblur=function(){ 
  vali(this,/^\d{6}$/) 
}