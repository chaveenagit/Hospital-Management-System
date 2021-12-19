/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 500 || document.documentElement.scrollTop > 500) {
    document.getElementById("navbar").style.backgroundColor = "rgb(255,255,255,0.95)";
	document.getElementById("home").style.color = "black";
	document.getElementById("about").style.color = "black";
	document.getElementById("departments").style.color = "black";
	document.getElementById("doctors").style.color = "black";
	document.getElementById("contatc").style.color = "black";
  } else {
    document.getElementById("navbar").style.backgroundColor = "rgb(255,255,255,0.1)";
	document.getElementById("home").style.color = "black";
	document.getElementById("about").style.color = "black";
	document.getElementById("departments").style.color = "black";
	document.getElementById("doctors").style.color = "black";
	document.getElementById("contatc").style.color = "black";
  }
}