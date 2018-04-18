console.log("script.js connected");

function displayMath() {
    mathCategories = document.getElementsByClassName("catMth");

    for (i=0; i < mathCategories.length; i++) {
	if (mathCategories[i].style.display == "inline-block") {
	    mathCategories[i].style.display = "none";
	} else if (mathCategories[i].stlye.display == "none"){
	    mathCategories[i].style.display = "inline-block";
    }
}
