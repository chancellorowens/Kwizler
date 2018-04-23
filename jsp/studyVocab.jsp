<%@page contentType="text/html;charset=UTF-8" import="kwizler.Kwizler" %>
<%@page contentType="text/html;charset=UTF-8" import="kwizler.DBManager" %>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
Study Vocab Set
</title>
<link rel="stylesheet" href="styles.css">
<style>
	div{display:inline;}
	.WelcomeMessage {
	background-color:teal;
	font-size: 26pt;
	width:1200pt;
	}
	.tile {
	display:inline-block;
	width:205px;
	text-align: center;
	vertical-align: middle;
	height:150px;
	line-height: 50px;
	background-color:silver;
	font-size: 18pt;
	margin: 10px;
	}
	.SetDesc {
	background-color:gray;
	font-size:20pt;
	width:1200pt;
	}
	.term {
	
	display:inline-block;
	width:150px;
	text-align: center;
	vertical-align: middle;
	height:150px;
	line-height: 25px;
	background-color: gray;
	font-size: 16pt;
	margin: 10px;
	}

	.definition{
	display:inline-block;
	width:200px;
	text-align: center;
	vertical-align: middle;
	height:150px;
	line-height: 25px;
	background-color: gray;
	font-size: 16pt;
	margin: 10px;
	}





</style>
<script>
<script>
	var visible=false;
	function ShowTerm(){
	if (visible==true){
	   Document.getElementById(term).style.visibility= "hidden";
	   visible=false;
	}else{
	   Document.getElementById(term).style.visibility="visible";
	   visible=true;
	}
	}




</script>
</head>
<body>
<div class ="WelcomeMessage">
</br>
Click on the definition tiles to see the vocabulary term!
</br>
</br>
</div>
<% Kwizler kwiz= new Kwizler();
String vocabSet="calculus";
String [][] currentVocab=kwiz.getVocabList(vocabSet);
int counter=0;
for(int i=0; i<25; i++){
%>

<div id="term" class="term">
     Term <%=counter+1 %> :
     </br><%=currentVocab[0][counter]%>
</div>
<div onclick="ShowTerm()" id="definition" class="definition">
     Definition <%=counter+1%> :
     </br>
     <%=currentVocab[1][counter]%>
</div>
</br>
</br>
	<% counter++;
}//for%>
</body>
</html>
