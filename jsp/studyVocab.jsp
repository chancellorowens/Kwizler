<%@page contentType="text/html;charset=UTF-8" import="kwizler.Kwizler" %>
<%@page contentType="text/html;charset=UTF-8" import="kwizler.DBManager" %>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
Study Vocab Set
</title>
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
	visibility: hidden;
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
<script type="text/javascript" language="javascript">	
	function ShowTerm(idVar){
	var elementToChange= document.getElementById(idVar);
	if (elementToChange.style.visibility=="visible"){
	   elementToChange.style.visibility= "hidden";
	}else{
	   elementToChange.style.visibility="visible";
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

<div id="<%=i%>" class="term">
     Term <%=counter+1 %> :
     </br><%=currentVocab[0][counter]%>
</div>
<div id="definition" onclick='ShowTerm("<%=i%>");' class="definition">
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
