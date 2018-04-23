<%@page contentType="text/html;charset=UTF-8" import="kwizler.*" %>
<%@page import="kwizler.Kwizler"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
 <head>
  <title>
   Kwizler
  </title>
  <link rel="stylesheet" href="styles.css">
  <script src="script.js"></script>
  </head>
 <body>
   <jsp:useBean id="kwizlerBean" class="kwizler.Kwizler"></jsp:useBean>
   <jsp:setProperty name="kwizlerBean" property="*" />
   
  <div class ="WelcomeMessage">
       </br>
   Hello. Welcome to Kwizler- an online vocabulary learning tool!
   	  </br>
	  </br>
</div>
<div class="SetDesc">
</br>
Available Vocabulary Categories:
</br>
</div>
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

      </script>
 </body>
</html>
