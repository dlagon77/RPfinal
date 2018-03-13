

function check() {

	var classname = document.getElementById("class").value;
	classname.trim();
	if(classname == ""){
/*		alert("enter valid class name !!");*/
		document.getElementById("class").focus();
	}
	else{
		document.getElementById("maincode").innerHTML = "public class " + classname + "{\n\t public static void main(String[] args){ \n\n\n		} \n}" ;
	}
	
}


function  compile() {
	console.log("compiling");
	if(document.getElementById("maincode")==""){
		alert("Insert some code please !");
	}
	else{
		//code = maincode
		//classname = class
		var code=encodeURIComponent(document.getElementById("maincode").value);
		var url = "compileAssign.do?code=" + code + "&className=" + document.getElementById("class").value;
		
		if(window.XMLHttpRequest){
           xmlhttp=new XMLHttpRequest();
        }
        else{
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }  

        xmlhttp.onreadystatechange=function(){
            if(xmlhttp.readyState==4 && xmlhttp.status==200){
            	document.getElementById("output").innerHTML=xmlhttp.responseText;                       
            }
        }
        xmlhttp.open("POST",url,true);
        xmlhttp.send();
	}
	console.log("compiled !!");
}


/*function run() {
	
	var url = "runAssign.do?classname=" + document.getElementById("class").value;
	
	if(window.XMLHttpRequest){
        xmlhttp=new XMLHttpRequest();
     }
     else{
         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
     }  

	xmlhttp.onreadystatechange=function(){
        if(xmlhttp.readyState==4 && xmlhttp.status==200){
        	document.getElementById("output").innerHTML=xmlhttp.responseText;  
       	if(document.getElementById('an').innerHTML==document.getElementById("output").innerHTML){
        	document.getElementById("output").innerHTML=(document.getElementById('an').innerHTML==document.getElementById("output").innerHTML);
      		var button_joinus = document.getElementById('subutton');
       		 button_joinus.enabled = true; 
      		button_joinus.disabled = true;
       	}else{
       		document.getElementById("output").innerHTML=bbb;
       	}
        }
    }
     xmlhttp.open("POST",url,true);
     xmlhttp.send();
}*/
 function startass(){
	var button_joinus1 = document.getElementById('subutton');
	button_joinus.disabled = false;
}


function empty() {
	
	document.getElementById("class").value="";
  	document.getElementById("maincode").value="";
  	document.getElementById("output").value="";
	
}

function subass() {
	console.log("submiting");
	if(document.getElementById("maincode")==""){
		alert("Insert some code please !");
	}
	else{
		//code = maincode
		//classname = class
		var code=encodeURIComponent(document.getElementById("maincode").value);
		var url = "submitAssign.do?code=" + code + "&className=" + document.getElementById("class").value + "&tutorno=" + document.getElementById("tutorno").value;
		
		if(window.XMLHttpRequest){
           xmlhttp=new XMLHttpRequest();
        }
        else{
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }  

        xmlhttp.onreadystatechange=function(){
            if(xmlhttp.readyState==4 && xmlhttp.status==200){
            	document.getElementById("output").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("POST",url,true);
        xmlhttp.send();
	}
	console.log("submited !!");
}

