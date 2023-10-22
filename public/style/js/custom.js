/* -------------------- Check Browser --------------------- */

function browser() {

	var isOpera = !!(window.opera && window.opera.version);  // Opera 8.0+
	var isFirefox = testCSS('MozBoxSizing');                 // FF 0.8+
	var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
	    // At least Safari 3+: "[object HTMLElementConstructor]"
	var isChrome = !isSafari && testCSS('WebkitTransform');  // Chrome 1+
	//var isIE = /*@cc_on!@*/false || testCSS('msTransform');  // At least IE6

	function testCSS(prop) {
	    return prop in document.documentElement.style;
	}

	if (isOpera) {

		return false;

	}else if (isSafari || isChrome) {

		return true;

	} else {

		return false;

	}

}

/* ---------- IE8 list style hack (:nth-child(odd)) ---------- */

jQuery(document).ready(function($){

	if($('.messagesList').width()) {

		if(jQuery.browser.version.substring(0, 2) == "8.") {

			$('ul.messagesList li:nth-child(2n+1)').addClass('odd');

		}

	}

});

$(document).ready(function(){


	$("#username").focus(function() {

		$(this).parent(".input-prepend").addClass("input-prepend-focus");

	});

	$("#username").focusout(function() {

		$(this).parent(".input-prepend").removeClass("input-prepend-focus");

	});

	$("#password").focus(function() {

		$(this).parent(".input-prepend").addClass("input-prepend-focus");

	});

	$("#password").focusout(function() {

		$(this).parent(".input-prepend").removeClass("input-prepend-focus");

	});


	/* ---------- Add class .active to current link  ---------- */
	$('ul.main-menu li a').each(function(){

			if($($(this))[0].href==String(window.location)) {

				$(this).parent().addClass('active');

			}

	});

	$('ul.main-menu li ul li a').each(function(){

			if($($(this))[0].href==String(window.location)) {

				$(this).parent().addClass('active');
				$(this).parent().parent().show();

			}

	});

	/* ---------- Submenu  ---------- */

	$('.dropmenu').click(function(e){

		e.preventDefault();

		$(this).parent().find('ul').slideToggle();

	});

	/* ---------- Acivate Functions ---------- */
	template_functions();
	// init_masonry();
	// sparkline_charts();
	// charts();
	// calendars();
	// growlLikeNotifications();
	// widthFunctions();

	// if(jQuery.browser.version.substring(0, 2) == "8.") {

	// 	//disable jQuery Knob

	// } else {

	// 	circle_progess();

	// }
	circle_progess();
	chart();
	messageLike();

});

/* ---------- Like/Dislike ---------- */

function messageLike(){

	if($('.messagesList')) {

		$('.messagesList').on('click', '.star', function(){

			$(this).removeClass('star');

			$(this).addClass('dislikes');

			//here add your function

		});

		$('.messagesList').on('click', '.dislikes', function(){

			$(this).removeClass('dislikes');

			$(this).addClass('star');

			//here add your function

		});

	}

}

/* ---------- Check Retina ---------- */

function retina(){

	retinaMode = (window.devicePixelRatio > 1);

	return retinaMode;

}

/* ---------- Chart ---------- */

function chart(){

	if($('.verticalChart')) {

		$('.singleBar').each(function(){

			var theColorIs = $(this).parent().parent().parent().css("background");

			var percent = $(this).find('.value span').html();

			$(this).find('.value span').css('color',theColorIs);

			$(this).find('.value').animate({height:percent}, 2000, function() {

				$(this).find('span').fadeIn();

			});

		});

	}

}/* ---------- Circle Progess Bars ---------- */

function circle_progess() {

	var divElement = $('div'); //log all div elements

	if (retina()) {

		$(".whiteCircle").knob({
	        'min':0,
	        'max':100,
	        'readOnly': true,
	        'width': 240,
	        'height': 240,
			'bgColor': 'rgba(255,255,255,0.5)',
	        'fgColor': 'rgba(255,255,255,0.9)',
	        'dynamicDraw': true,
	        'thickness': 0.2,
	        'tickColorizeValues': true
	    });

		$(".circleStat").css('zoom',0.5);
		$(".whiteCircle").css('zoom',0.999);
		$(".whiteCircle").css('margin-top', '112.7143px');


	} else {

		$(".whiteCircle").knob({
	        'min':0,
	        'max':100,
	        'readOnly': true,
	        'width': 120,
	        'height': 120,
			'bgColor': 'rgba(255,255,255,0.5)',
	        'fgColor': 'rgba(255,255,255,0.9)',
	        'dynamicDraw': true,
	        'thickness': 0.2,
	        'tickColorizeValues': true
	    });

	}



	$(".circleStatsItemBox").each(function(){

		var value = $(this).find(".value > .number").html();
		var unit = $(this).find(".value > .unit").html();
		var percent = $(this).find("input").val()/100;

		countSpeed = 2300*percent;

		endValue = value*percent;

		// $(this).find(".count > .unit").html(unit);
		// $(this).find(".count > .number").countTo({

		// 	from: 0,
		//     to: endValue,
		//     speed: countSpeed,
		//     refreshInterval: 50

		// });

		//$(this).find(".count").html(value*percent + unit);

	});

	$(".circleStatsItem, .circleStatsItemBox").each(function() {

		var getOnTablet = $(this).parent().attr('onTablet');
		var getOnDesktop = $(this).parent().attr('onDesktop');

		if (getOnTablet) {

			$(this).parent().removeClass(getOnDesktop);
			$(this).parent().addClass(getOnTablet);

		}

	});

	$(".circleStatsItem, .circleStatsItemBox").each(function() {

		var getOnTablet = $(this).parent().attr('onTablet');
		var getOnDesktop = $(this).parent().attr('onDesktop');

		if (getOnTablet) {

			$(this).parent().removeClass(getOnTablet);
			$(this).parent().addClass(getOnDesktop);

		}

	});

}

/* ---------- Masonry Gallery ---------- */


/* ---------- Numbers Sepparator ---------- */

function numberWithCommas(x) {
    x = x.toString();
    var pattern = /(-?\d+)(\d{3})/;
    while (pattern.test(x))
        x = x.replace(pattern, "$1.$2");
    return x;
}

/* ---------- Template Functions ---------- */

function template_functions(){

	/* ---------- ToDo List Action Buttons ---------- */

	$(".todo-remove").click(function(){

		$(this).parent().parent().fadeTo("slow", 0.00, function(){ //fade
			$(this).slideUp("slow", function() { //slide up
		    	$(this).remove(); //then remove from the DOM
		    });
		});


		return false;
	});

	$(".todo-list").find('.action').each(function(){

		$(this).click(function(){

			if($(this).hasClass('icon-check-empty')) {

				$(this).removeClass('icon-check-empty');
				$(this).addClass('icon-check');

				$(this).parent().css('text-decoration','line-through');

			} else {

				$(this).removeClass('icon-check');
				$(this).addClass('icon-check-empty');

				$(this).parent().css('text-decoration','none');

			}

			return false;

		});

	});



	/* ---------- Skill Bars ---------- */
	$(".meter > span").each(function() {

		var getColor = $(this).parent().css('borderTopColor');

		$(this).css('background',getColor);

		$(this)
		.data("origWidth", $(this).width())
		.width(0)
		.animate({
			width: $(this).data("origWidth")
		}, 3000);
	});

	/* ---------- Disable moving to top ---------- */
	$('a[href="#"][data-top!=true]').click(function(e){
		e.preventDefault();
	});

}