 var textarea=document.getElementById('maincode');
var editor = CodeMirror.fromTextArea(textarea, {
    lineNumbers: true,
    lineWrapping: true,
     theme: "pastel-on-dark", 
    val: textarea.value 
});


function check() {

	var classname = document.getElementById("class").value;
	classname.trim();
	if(classname == ""){
/*		alert("enter valid class name !!");*/
		document.getElementById("class").focus();
	}
	else{
	    document.getElementsByClassName("CodeMirror")[0].innerHTML = "public class " + classname + "{\n\t public static void main(String[] args){ \n\n\n		} \n}" ;
	}
	
}

function checkTest() {

	var classname = editor.getValue();
	classname.trim();
	if(classname == ""){
/*		alert("enter valid class name !!");*/
		document.getElementById("class").focus();
	}
	else{
		document.getElementsByClassName("CodeMirror")[0].innerHTML = "public class " + classname + "_test" + "{\n\t public static void main(String[] args){ \n\n\n		} \n}" ;
	}
	
}


function  compile() {
	console.log("compiling");
	if(document.getElementsByClassName("CodeMirror")[0]==""){
		alert("Insert some code please !");
	}
	else{
		//code = maincode
		//classname = class
		var code=encodeURIComponent(editor.getValue());
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

function run() {
	
	var url = "runAssign.do?classname=" + document.getElementById("class").value;
	
	if(window.XMLHttpRequest){
        xmlhttp=new XMLHttpRequest();
     }
     else{
         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
     }  
	var button_joinus = document.getElementById('subutton');
	xmlhttp.onreadystatechange=function(){
        if(xmlhttp.readyState==4 && xmlhttp.status==200){
        	document.getElementById("output").innerHTML=xmlhttp.responseText; 
       	if(document.getElementById("an").innerHTML==document.getElementById("output").innerHTML){

      	
      		button_joinus.disabled = false;
       	}else{
       		button_joinus.disabled = true;
       	}
        }
    }
     xmlhttp.open("POST",url,true);
     xmlhttp.send();
}

function  compileTest() {
	console.log("compiling");
	if(document.getElementById("maincode")==""){
		alert("Insert some code please !");
	}
	else{
		//code = maincode
		//classname = class
		var code=encodeURIComponent(document.getElementById("maincode").value);
		var url = "compileTest.do?code=" + code + "&className=" + document.getElementById("class").value;
		
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

function runTest() {
	
	var url = "runTest.do?classname=" + document.getElementById("class").value;
	
	if(window.XMLHttpRequest){
        xmlhttp=new XMLHttpRequest();
     }
     else{
         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
     }  
	var button_joinus = document.getElementById('subutton');
	xmlhttp.onreadystatechange=function(){
        if(xmlhttp.readyState==4 && xmlhttp.status==200){
        	document.getElementById("output").innerHTML=xmlhttp.responseText; 
       	if(document.getElementById("an").innerHTML==document.getElementById("output").innerHTML){

      	
      		button_joinus.disabled = false;
       	}else{
       		button_joinus.disabled = true;
       	}
        }
    }
     xmlhttp.open("POST",url,true);
     xmlhttp.send();
}

function startass(){
	var button_joinus1 = document.getElementById('subutton');
	button_joinus1.disabled = true;
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

function subtest() {
	console.log("submiting");
	if(document.getElementById("maincode")==""){
		alert("Insert some code please !");
	}
	else{
		//code = maincode
		//classname = class
		var code=encodeURIComponent(document.getElementById("maincode").value);
		var url = "submitTest.do?code=" + code + "&className=" + document.getElementById("class").value + "&tutorno=" + document.getElementById("tutorno").value
					+"&submit=sub"+"&test_orfile="+document.getElementById("class").value+"_test.java"+"&test_writer="+3+"&test_cate="+"배열";
		
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

