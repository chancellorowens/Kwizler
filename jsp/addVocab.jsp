<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="kwizler.Kwizler"%>
<style>
	div{display:inline;}
	h1{
	background-color:teal;
	font-size: 26pt;
	width:1200pt;
	}
	html,h2,form{
	background-color:silver;
	font-size: 18pt;
	margin: 10px;
	}

</style>
<jsp:useBean id="myKwiz" class="kwizler.Kwizler"></jsp:useBean>
<jsp:setProperty name="myKwiz" property="*"/>
<script>

	function createdSet(){
		 var vocabSet= new Array();
		     <%int counter=1;%>
		 for(var i=0; i<25; i++){
		 	 
		 	 var termValue=i+1;
		 	 var param1= "term"+termValue;
			 var param2="definition"+definitionValue;
			 
		 	 vocabSet[0][i]=<%=request.getParameter(counter)%>;
			 <%definitionCounter=100+counter%>
			 vocabSet[1][i]=<%=request.getParameter(definitionCounter)%>;
			 <%counter++;%>
			 }
		var vocabSetName=""+<%=request.getParameter("VocabSetName")%>;
		<!--vocabSetName="OnlyWorksFromJsp";-->

	   
	   myKwiz.setTableName(vocabSetName);
	   myKwiz.setVocabSet(vocabSet);
	   myKwiz.setVocabList();
	   
	   

console.log(vocabSetName);

	}//createdSet

</script>

<html>
<%System.out.println("I am able to print messages");%>

<h1>Vocabulary Set:</h1>
<h2>Please add in 25 terms and definitions.</h2>
<form   method=GET>
	Set Name: <input type="text" name="VocabSetName">
	</br>
	</br>
	



	</br>
	</br>
	<input type="text" name="1" placeholder="Term">
	<input type="text" name="101" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="2" placeholder="Term">
	<input type="text" name="102" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="3" placeholder="Term">
	<input type="text" name="103" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="4" placeholder="Term">
	<input type="text" name="104" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="5" placeholder="Term">
	<input type="text" name="105" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="6" placeholder="Term">
	<input type="text" name="106" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="7" placeholder="Term">
	<input type="text" name="107" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="8" placeholder="Term">
	<input type="text" name="108" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="9" placeholder="Term">
	<input type="text" name="109" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="10" placeholder="Term">
	<input type="text" name="110" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="11" placeholder="Term">
	<input type="text" name="111" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="12" placeholder="Term">
	<input type="text" name="112" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="13" placeholder="Term">
	<input type="text" name="113" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="14" placeholder="Term">
	<input type="text" name="114" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="15" placeholder="Term">
	<input type="text" name="115" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="16" placeholder="Term">
	<input type="text" name="116" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="17" placeholder="Term">
	<input type="text" name="117" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="18" placeholder="Term">
	<input type="text" name="118" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="19" placeholder="Term">
	<input type="text" name="119" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="20" placeholder="Term">
	<input type="text" name="120" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="21" placeholder="Term">
	<input type="text" name="121" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="22" placeholder="Term">
	<input type="text" name="122" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="23" placeholder="Term">
	<input type="text" name="123" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="24" placeholder="Term">
	<input type="text" name="124" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="25" placeholder="Term">
	<input type="text" name="125" placeholder="Definition">
	</br>
	</br>

	<input type="submit" name="addTerms" onclick="createdSet()" placeholder="Save Set">


</form>
</html>
