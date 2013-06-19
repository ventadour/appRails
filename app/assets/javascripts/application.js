// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .



function moins(cpt){
	
	//window.alert('moins');
	//var connection = new WebSocket('ws://localhost:2000');

   // connection.onopen = function () {
    //connection.send('doMoins');
    //};
    
	cpt.moins;
    
   /* connection.send('doMoins');
    
    // Listen for messages
	connection.onmessage = function(evt) { 
		//alert( "Received Message: " + evt.data); 
		label = document.getElementById("cpt");
		label.innerHTML = evt.data;
	};*/
}

function plus(){
	
	//window.alert('plus');
	//var connection = new WebSocket('ws://localhost:2000');

    //connection.onopen = function () {
    //connection.send('doPlus');
    //};
    
    connection.send('doPlus');
    
    // Listen for messages
	connection.onmessage = function(evt) { 
		//alert( "Received Message: " + evt.data); 
		label = document.getElementById("cpt");
		label.innerHTML = evt.data;
	};
}

/*$(function() {
    var optionMenu_ul = $('.optionMenu > li > ul'),
        optionMenu_a  = $('.optionMenu > li > a');
    optionMenu_ul.hide();
    optionMenu_a.click(function(e) {
        e.preventDefault();
        if(!$(this).hasClass('active')) {
            optionMenu_a.removeClass('active');
            optionMenu_ul.filter(':visible').slideUp('normal');
            $(this).addClass('active').next().stop(true,true).slideDown('normal');
        } else {
            $(this).removeClass('active');
            $(this).next().stop(true,true).slideUp('normal');
        }
    });
});*/
