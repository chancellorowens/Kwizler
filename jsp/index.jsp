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
    <a class="nav-link active" data-toggle="pill" href="#Math" role="tab" aria-controls="Math" aria-selected="true">Math</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="pill" href="#CS" role="tab" aria-controls="CS" aria-selected="false">Computer Science</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="pill" href="#SAT" role="tab" aria-controls="SAT" aria-selected="false">SAT Prep Words</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="pill" href="#History" role="tab" aria-controls="History" aria-selected="false">History</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="pill" href="#Lang" role="tab" aria-controls="Lang" aria-selected="false">Foreign Language</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="pill" href="#Misc" role="tab" aria-controls="Misc" aria-selected="false">Miscellaneous</a>
  </li>
</ul>


<%--
    <div id = "Math" class = "tile">
    	</br>
	Math
	</br>		
    </div>    
    <div id = "CS" class = "tile">
      </br>
      Computer Science
      </br>
    </div>
    <div id = "SAT" class = "tile">
    	 </br>
	 SAT Prep Words
    	 </br>
    </div>
    <div id = "History" class="tile">
    	 </br>
	 History
	 </br>
     </div>
     
      <div id = "Misc" class="tile">
      	   </br>
	   Miscellaneous
	   </br>
      </div>
      <div id = "Lang" class="tile">
      	   </br>
	   Foreign Language
	   </br>
      </div>
      <br>
      <div class = "catMth" style="display:none">
      	   Trigonometry
      </div>
      <div class = "catMth" style="display:none">
      	   Geometry
      </div>
      <div class = "catMth" style="display:none">
      	   Algebra
      </div>
      <div class = "catMth" style="display:none">
      	   Calculus
      </div>
   --%>
   
      <script type="text/javascript"  language="javascript">
              //ADD event listeners to each tileElement
      var tileElements = document.getElementsByClassName("tile");
      for (var i=0;i < tileElements.length; i++) {
      	(function () {
        //Add event listeners to each titeElement
	var tileElem = tileElements[i];
	tileElem.addEventListener('click', function() {hideCategories(tileElem);});
        }());
      }
      
      function hideCategories(tileElement) {
        var elements;
        if (tileElement.id == "Math") {
          elements = document.getElementsByClassName("catMth");
        }
        //loop through elements:
        for (var i = 0; i < elements.length; i++) {
          var elem = elements[i];

          //show if hidden, hide if showing:
          if (elem.style.display == "none") {
            elem.style.display = "inline-block";
          } else if (elem.style.display == "inline-block") {
            elem.style.display = "none";
          }
        }
      }

      <%-- This is from Bootstrap for styling --%>
      </script>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
 </body>
</html>
