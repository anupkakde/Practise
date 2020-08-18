function check(nam,man,job,desc,num,exp){
var n=document.getElementById(nam);
var m=document.getElementById(man);
var j=document.getElementById(job);
var d=document.getElementById(desc);
var nu=document.getElementById(num);
var ex=document.getElementById(exp);
  if(n.value == ''){
    alert('missing name and other');
  }
else if (m.value == '') {
  alert('manager is missing');
}
else if (j.value == '') {
  alert('job is missing');
}
else if (d.value == '') {
  alert('Job Description  is missing');
}  
else if (nu.value == '') {
  alert('no of employee  is missing');
}
else if (ex.value == '') {
  alert('expiry date  is missing');
}

}

