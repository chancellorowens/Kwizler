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
<script>

	function createdSet(){
	<% String [][] vocabSet=new String [2][25];
	   for( int i=0; i<25; i++){
	   	int termValue=i+1;
		String param1="term"+termValue;
		String param2="definition"+termValue;
		if(request.getParameter(param1)!=null){
		vocabSet[0][i]=request.getParameter(param1).toString();
		}
		if(request.getParameter(param2)!=null){
		vocabSet[1][i]=request.getParameter(param2).toString();
		}
	   }//for
	   Kwizler myKwiz= new Kwizler();
	   String vocabSetName= request.getParameter("VocabSetName")+"";
	   if(vocabSet!=null){
	   myKwiz.setVocabList(vocabSetName, vocabSet);
	   }
	   %>


	}//createdSet

</script>
<html>

<h1>Vocabulary Set:</h1>
<h2>Please add in 25 terms and definitions.</h2>
<form>
	Set Name: <input type="text" name="VocabSetName">
	</br>
	</br>
	



	</br>
	</br>
	<input type="text" name="term1" placeholder="Term">
	<input type="text" name="definition1" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term2" placeholder="Term">
	<input type="text" name="definition2" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term4" placeholder="Term">
	<input type="text" name="definition4" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term5" placeholder="Term">
	<input type="text" name="definition5" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term6" placeholder="Term">
	<input type="text" name="definition6" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term7" placeholder="Term">
	<input type="text" name="definition7" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term8" placeholder="Term">
	<input type="text" name="definition8" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term9" placeholder="Term">
	<input type="text" name="definition9" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term10" placeholder="Term">
	<input type="text" name="definition10" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term11" placeholder="Term">
	<input type="text" name="definition11" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term12" placeholder="Term">
	<input type="text" name="definition12" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term13" placeholder="Term">
	<input type="text" name="definition13" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term14" placeholder="Term">
	<input type="text" name="definition14" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term15" placeholder="Term">
	<input type="text" name="definition15" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term16" placeholder="Term">
	<input type="text" name="definition16" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term17" placeholder="Term">
	<input type="text" name="definition17" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term18" placeholder="Term">
	<input type="text" name="definition18" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term19" placeholder="Term">
	<input type="text" name="definition19" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term20" placeholder="Term">
	<input type="text" name="definition20" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term21" placeholder="Term">
	<input type="text" name="definition21" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term22" placeholder="Term">
	<input type="text" name="definition22" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term23" placeholder="Term">
	<input type="text" name="definition23" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term24" placeholder="Term">
	<input type="text" name="definition24" placeholder="Definition">
	</br>
	</br>
	<input type="text" name="term25" placeholder="Term">
	<input type="text" name="definition25" placeholder="Definition">
	</br>
	</br>

	<input type="submit" name="addTerms" onclick="createdSet()" placeholder="Save Set">


</form>
</html>
