/**
 * Empty Check
 * obj : input type
 * msg : output message
 */
 function isEmpty(obj, msg){
	 if(obj.value == ""){
		 alert(msg);
		 obj.focus();
		 return true;
	 }
	 else{
		 return false;
	 }
	 
 }
 
 /**
 * id check
 * obj : input type
 * allow: character, number, _
 */
 
 function isID(obj){
	 var value = obj.value;
	 if(value.length == 0){
		 return true;
	 }
	 
	 value = value.toUpperCase();
	 
	 for(var i=0; i<value.length; i++){
		 if((value.charAt(i)>='A' && value.charAt(i)<='Z')||
				 (value.charAt(i)>='0' && value.charAt(i)<='9')||
				 (value.charAt(i)>='_')){
			 return false;
		 }
			
	 }
	 return true;
 }
 
 /**
  * password equal check
  *  obj1 : input type
  *  obj2 : input type
  */
 
 function isEqualPass(obj1,obj2){
	 var pw1 = obj1.value;
	 var pw2 = obj2.value;
	 
	 if(pw1.length ==0 || pw2.length ==0){
		 return true;
	 }
	 if(pw1 == pw2){
		 return false;
	 }
	 
	 return true;
 }
 
 function isAgree(obj,msg){
		 if(obj.checked == false ){
			 alert(msg);
			 return true;
		 }
		 else{
			 return false;
		 }
 }
 
 function isGender(obj,msg){
	 if(obj[0].checked == false && obj[1].checked == false){
		 alert(msg);
		 return true;
	 }
	 else{
		 return false;
	 }
 }