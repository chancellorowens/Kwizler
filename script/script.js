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

