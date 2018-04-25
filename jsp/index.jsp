<%@page contentType="text/html;charset=UTF-8" import="kwizler.*" %>
<%@page import="kwizler.Kwizler"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
 <head>
  <title>
   Kwizler
  </title>
  <%-- This is from Bootstrap for styling --%>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link rel="shortcut icon" href="#" />
  <link rel="stylesheet" href="styles.css">
  <script src="script.js"></script>
  </head>
 <body>
   <jsp:useBean id="kwizlerBean" class="kwizler.Kwizler"></jsp:useBean>
   <jsp:setProperty name="kwizlerBean" property="*" />

  <div class="jumbotron">
    <h1 class="display-4">Hello, people</h1>
    <p class="lead">Welcome to Kwizler</p>
    <hr class="my-4">
    <p>Make studying fun with our online vocabulary learning tool!</p>
  </div>

<%--
</br>
Available Vocabulary Categories:
</br>
--%>
				    

<ul class="nav nav-pills mb-3 nav-justified nav-custom" role="tabList">
  <li class="nav-item">
    <a class="nav-link active" id="pills-Math-tab" data-toggle="pill" href="#pills-Math" role="tab" aria-controls="pills-Math" aria-selected="true">Math</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-CS-tab" data-toggle="pill" href="#pills-CS" role="tab" aria-controls="pills-CS" aria-selected="false">Computer Science</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-SAT-tab" data-toggle="pill" href="#pills-SAT" role="tab" aria-controls="pills-SAT" aria-selected="false">SAT Prep Words</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-History-tab" data-toggle="pill" href="#pills-History" role="tab" aria-controls="pills-History" aria-selected="false">History</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-Lang-tab" data-toggle="pill" href="#pills-Lang" role="tab" aria-controls="pills-Lang" aria-selected="false">Foreign Language</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-Misc-tab" data-toggle="pill" href="#pills-Misc" role="tab" aria-controls="pills-Misc" aria-selected="false">Miscellaneous</a>
  </li>
</ul>


<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-Math" role="tabpanel" aria-labelledby="pills-Math-tab">
    Trigonometry
    Geometry
    Algebra
    Calculus

  </div>
  <div class="tab-pane fade" id="pills-CS" role="tabpanel" aria-labelledby="pills-CS-tab">
    CS things
  </div>
  <div class="tab-pane fade" id="pills-SAT" role="tabpanel" aria-labelledby="pills-SAT-tab">
    SAT things
  </div>
  <div class="tab-pane fade" id="pills-History" role="tabpanel" aria-labelledby="pills-History-tab">
    History things
  </div>
  <div class="tab-pane fade" id="pills-Lang" role="tabpanel" aria-labelledby="pills-Lang-tab">
    Foreign Language things
  </div>
  <div class="tab-pane fade" id="pills-Misc" role="tabpanel" aria-labelledby="pills-Misc-tab">
    Miscellaneous things
  </div>
  


   
      <script type="text/javascript"  language="javascript">





      <%-- This is from Bootstrap for styling --%>
      </script>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


 </body>
</html>
