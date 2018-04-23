<%@page contentType="text/html;charset=UTF-8" import="kwizler.Kwizler" %>
<%@page contentType="text/html;charset=UTF-8" import="kwizler.DBManager" %>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
Study Vocab Set
</title>
<link rel="stylesheet" href="styles.css">
<script>
<script>
	var visible=false;
	function ShowTerm(currentID){
	if (visible==true){
	   document.getElementById(currentID).style.visibility= "hidden";
	   visible=false;
	}else{
	   document.getElementById(currentID).style.visibility="visible";
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

<div id= "Term: <%=counter%>">
     Term <%=counter+1 %> : <%=currentVocab[0][counter]%>
</div>
<div onclick=ShowTerm("Term: <%=counter%>" )>
     Definition <%=counter+1%> :<%=currentVocab[1][counter]%>
</div>
	<% counter++;
}//for%>
</body>
</html>
