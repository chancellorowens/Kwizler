<%@page contentType="text/html;charset=UTF-8" import="diary.Diary" %>
<%@page contentType="text/html;charset=UTF-8" import="diary.DBManager" %>
<%@page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix ="c" uri= "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
        <title> Kwizler Diary </title>
</head>
<body>

<jsp:useBean id="diaryBean" class="diary.Diary" scope="application"></jsp:useBean>
	                    <jsp:setProperty name="diaryBean" property="*" />

</body>
	<style>
		h1{font-family: Arial, Helvetica, sans-serif;
	           font-size:20pt;
		   font-style:bold;
		   color:blue;
		   }
		   h2{font-family: Arial, Helvetica, sans-serif;
		   font-size:12pt;
		   color:black;
		   }
		   body{background-color:azure}
		   table, td, tr{border: 2px solid black;
		   border-collapse: collapse;
		   padding:15px;
		   }
		   </style>

<h1 id=titleScript> Kwizler Diary </h1>
        <br>

<form action="index.jsp" method=GET>
<br>
<br>
<br>

    Your Name:
            <br>
	    <p2>
	    <input type=text name=name  value="Your Name">
	    </p2>
<br>
<br>
<br>
    Your Diary Entry:
<br>
<p2>
<input type=text name=entry value="Your Entry">
</p2>


<br>
<br>
<br>
<input type=submit value="Add Entry" >
</form>

<%diaryBean.setName(request.getParameter("name"));
diaryBean.setEntry(request.getParameter("entry"));
diaryBean.setDate();
if(request.getParameter("name")!=null){
diaryBean.addEntry();
}
%>


<h1> All Previous Diary Entries: </h1>

<%
String [] completeLog= new String[0];
int stopper=0;
completeLog=diaryBean.getTable();%>
<table>
<tr>
<td>Name</td>
<td>Entry</td>
<td>Date</td>

</tr>
<% int i=0;
stopper= (completeLog.length)-1;
%>

<c:forEach var="i" begin="0" end= "<%=stopper%>">
<c:if test="${i%3==0}">
             <tr>
	     </c:if>
	     <td>  <%=completeLog[i]%></td>
	     <c:if test="${i%3==2 }">
	     </tr>
	     </c:if>
	     <% i++;%>
	     </c:forEach>

</table>


</html>

