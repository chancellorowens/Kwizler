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
    <div class = "tile" onclick="displayMath();">
    	</br>
	Math
	</br>		
    </div>    
    <div class = "tile">
      </br>
      Computer Science
      </br>
    </div>
    <div class = "tile">
    	 </br>
	 SAT Prep Words
    	 </br>
    </div>
    <div class="tile">
    	 </br>
	 History
	 </br>
     </div>
     
      <div class="tile">
      	   </br>
	   Miscellaneous
	   </br>
      </div>
      <div class="tile">
      	   </br>
	   Foreign Language
	   </br>
      </div>
      <br>
      <div class = "catMth">
      	   Trigonometry
      </div>
      <div class = "catMth">
      	   Geometry
      </div>
      <div class = "catMth">
      	   Algebra
      </div>
      <div class = "catMth">
      	   Calculus
      </div>
 </body>
</html>
