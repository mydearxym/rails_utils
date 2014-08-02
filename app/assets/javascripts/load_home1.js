//= require base
// for slider:
//= require owl-carousel/owl-carousel/owl.carousel
//= require pages/page_contacts.js
//= require plugins/owl-carousel

//= require circles-master/circles
//= require jquery.mixitup.min
//= require plugins/circles-master
//= require pages/page_portfolio

// for our client slider
//= require flexslider/jquery.flexslider

//= require image-hover/js/modernizr
//= require image-hover/js/touch

//= require jquery.sparkline.min


var myvalues = [5,1,3,7,4,4,10];
$('.dynamicsparkline').sparkline(myvalues, {
	width:100, height:30,
	tooltipFormat: '<span style="display:inline;color: {{color}}">●</span> 收益率： {{prefix}}{{y}}{{suffix}}', 
});

var myvalues2 = [5,1,2,1,1,4,8]
// var myvalues2 = [5,1,3,7,4,4,10];
$('.dynamicsparkline2').sparkline(myvalues2, {
	type:"line",
	width:100, height:30,
	tooltipFormat: '<span style="display:inline;color: {{color}}">●</span> 收益率： {{prefix}}{{y}}{{suffix}}', 
});

