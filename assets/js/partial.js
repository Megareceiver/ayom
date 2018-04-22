var base_url = window.location.origin + '/ayom';

$(function(){
	header();
	footer();
	backToTop();

	/* navbar fly shadow */
	$(window).on('scroll', function () {
		var elem = 'header.parent';
		var act = 'fly';
		if($(window).width() <= 991){
			if ($(this).scrollTop() > 30) {
				if (!$(elem).hasClass(act)) { $(elem).addClass(act); }
			} else {
				if ($(elem).hasClass(act)) { $(elem).removeClass(act); }
			}
		}else{
			$(elem).removeClass(act);
		}
	});
});

function r_setCookie(cname,cvalue,exdays="1") {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = "ayom_" + cname + "=" + cvalue + ";" + expires + ";path=/";
}

function r_getCookie(cname) {
    var name = "ayom_" + cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function header(){
	var system = p_getData('support', 'systemFetch');
			system = system.feedData;

	var active_page = "home-route";
	var html =
	'<!--div class="row"-->' +
		'<nav class="navbar navbar-default plain">' +
	    '<!-- Brand and toggle get grouped for better mobile display -->' +
	    '<div class="navbar-header">' +
	    	'<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#syncard-nav" aria-expanded="false">' +
		        '<span class="sr-only">Toggle navigation</span>' +
		        '<span class="icon-bar"></span>' +
		        '<span class="icon-bar"></span>' +
		        '<span class="icon-bar"></span>' +
	    	'</button>' +
      	'<a href="' + base_url + '" class="hidden-lg hidden-md"><img id="topnav-logo" src="' + base_url + '/assets/system/' + system.logo + '" /></a>' +
	    '</div>' +

	    '<!-- Collect the nav links, forms, and other content for toggling -->' +
			'<div class="row">' +
			 '<div class="collapse navbar-collapse" id="syncard-nav">' +
					'<div id="navbar-custom">' +
						'<ul class="nav navbar-nav main-menu gillsans">' +
				        '<li class="hidden-sm hidden-xs"><a href="' + base_url + '"><img id="topnav-logo" src="' + base_url + '/assets/system/' + system.logo + '" /></a></li>' +
				        '<li><a id="home-route" href="' + base_url + '/page/donate/donate.html"><span>DONASI</span></a></li>' +
				        '<li><a id="shop-route" href="' + base_url + '/page/blog/blog.html"><span>BLOG</span></a></li>' +
				        // '<li><a id="story-route" href="' + base_url + '/page/shop/shop.html"><span>SHOP</span></a></li>' +
				        '<li><a id="report-route" href="' + base_url + '/page/report/report.html"><span>LAPORAN</span></a></li>' +
				        '<li><a id="partner-route" href="' + base_url + '/page/partner.html"><span>MITRA</span></a></li>' +
				        '<li><a id="video-route" href="' + base_url + '/page/about.html"><span>TENTANG KAMI</span></a></li>' +
								'<li class="right"><a href="' + base_url + '/page/cart/cart_donate.html"><span id="cart-bubble" class="bubble">0</span><span id="cart-text">KERANJANG ANDA KOSONG</span><img src="' + base_url + '/assets/img/icon/shopping-cart.png" style="width: 25px; margin-left:7px; margin-bottom:7px;" /></a></li>' +
								// '<li class="right"><a href="' + base_url + '/page/cart/cart_donate.html"><span id="cart-bubble" class="bubble active">2</span><span id="cart-text" style="display:none">YOUR CART IS EMPTY</span><img src="' + base_url + '/assets/img/icon/shopping-cart.png" style="width: 25px; margin-left:7px; margin-bottom:7px;" /></a></li>' +
					   '</ul>' +
					'</div>' +
				'</div>' +
			'</div>' +
		'</nav>' +
	'<!--/div--><!-- /.navbar-collapse -->';

	$("header.parent").html(html);
	$("header.parent .main-menu a").removeClass('black');
	$("header.parent .main-menu a#" + active_page).addClass('black');
	$("#cart-bubble").removeClass('active');

	if(r_getCookie("ayom_USER_CART_STATUS") == "active") {
		$("#cart-bubble").addClass('active');
		$("#cart-text").attr('style', 'display:none');
		dumb = r_getCookie("ayom_donate_cart");
		dumb = JSON.parse(dumb);
		$("#cart-bubble").html(dumb.length);
	}
}

function footer(){
	var html 	 = "";

	var d = new Date();
	var n = d.getFullYear();
	var license = "Copyright © 2010-" + n + " PT Tulisan Susunan Tinta. All Rights Reserved.";

	html =
	'<hr>' +
	'<div class="article-title text-color-footer">' +
			'<p class="gillsans-18">Daftar ke milis kami.</p>' +
	'</div>' +
	'<div class="clearfix"></div>' +
	'<!-- Medium, Large Footer -->' +
	'<div class="form">' +
			'<form class="form-inline" id="syncrom" f-group="support" f-target="mailing_list">' +
					'<div class="title-footer text-color-footer gillsans-16">Alamat E-Mail :</div>' +
					'<div class="input-group">' +
							'<input type="text" name="email" class="form-control input-default">' +
							'<span class="input-group-btn">' +
									'<button type="submit" class="btn btn-default button-default">Daftar</button>' +
							'</span>' +
					'</div>' +
					'<div class="license-footer text-color-footer gillsans-12 hidden-xs">Copyright &copy; 2018 Ayom. All Right Reserved</div>' +
					'<div class="sosmed-footer text-color-footer gillsans-16">' +
							'<a href=""><img src="' + base_url + '/assets/img/icon/instagram.png"  style="width:20px;"/></a>' +
							'<a href=""><img src="' + base_url + '/assets/img/icon/twitter.png"  style="width:20px;"/></a>' +
							'<a href=""><img src="' + base_url + '/assets/img/icon/facebook.png"  style="width:20px;"/></a>' +
					'</div>' +
					'<div class="license-footer text-color-footer gillsans-12 hidden-sm hidden-md hidden-lg">Copyright &copy; 2018 Ayom. All Right Reserved</div>' +
			'</form>' +
	'</div>';

	$("footer.parent").html(html);

	p_formHandler('syncrom', 'addData', '', 'yes');

}

function toTitleCase(str)
{
    return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
}

function backToTop(){
	if ($('#back-to-top').length) {
	    var scrollTrigger = 100, // px
	        backToTop = function () {
	            var scrollTop = $(window).scrollTop();
	            if (scrollTop > scrollTrigger) {
	                $('#back-to-top').addClass('show');
	            } else {
	                $('#back-to-top').removeClass('show');
	            }
	        };
	    backToTop();
	    $(window).on('scroll', function () {
	        backToTop();
	    });
	    $('#back-to-top').on('click', function (e) {
	        e.preventDefault();
	        $('html,body').animate({
	            scrollTop: 0
	        }, 700);
	    });
	}
}


//==============================================================================
// loader
var $container = $('.container');
var $status = $('#status');
var $progress = $('progress');

var supportsProgress = $progress[0] &&
  // IE does not support progress
  $progress[0].toString().indexOf('Unknown') === -1;

var loadedImageCount, imageCount;

$(function(){
	  // $container.imagesLoaded()
	  //   .progress( onProgress )
	  //   .always( onAlways );
	  // // reset progress counter
	  // imageCount = $container.find('img').length;
	  // resetProgress();
	  // updateProgress( 0 );
});

function resetProgress() {
  $status.css({ opacity: 1 });
  loadedImageCount = 0;
  if ( supportsProgress ) {
    $progress.attr( 'max', imageCount );
  }
}

function updateProgress( value ) {
  if ( supportsProgress ) {
    $progress.attr( 'value', value );
  } else {
    // if you don't support progress elem
    $status.text( value + ' / ' + imageCount );
  }
}

// triggered after each item is loaded
function onProgress( imgLoad, image ) {
  // change class if the image is loaded or broken
  var $item = $( image.img ).parent();
  $item.removeClass('is-loading');
  if ( !image.isLoaded ) {
    $item.addClass('is-broken');
  }
  // update progress element
  loadedImageCount++;
  updateProgress( loadedImageCount );
}

// hide status when done
function onAlways() {
  $status.css({ opacity: 0 });
}

/* maps */
function openMaps(plc,lng,lat){
	var url = "https://www.google.com/maps/place/" + plc + "/@" + lat + "," + lng;
	window.open(url);
}

/* tab */
function tabChange(elem){
	target = $(elem).attr('t-target');
	$(".tab-button, .tab-container").removeClass('active');
	$(elem).addClass('active');
	$(target).addClass('active');
}

function tabWizardChange(elem){
	target = $(elem).attr('t-target');
	$(".tab-button, .tab-container").removeClass('active');
	$(elem).addClass('active');
	$(target).addClass('active');

	switch(target){
		case "#2" : $("[t-target='#1']").addClass('active'); break;
		case "#3" : $("[t-target='#1'], [t-target='#2'], [t-target-disabled='#0']").addClass('active'); break;
	}
}

// currency
function currencyFormat(num, curr = 'Rp. ') {
    var p = num;
    return curr + p.split("").reverse().reduce(function(acc, num, i, orig) {
        return  num=="-" ? acc : num + (i && !(i % 3) ? "," : "") + acc;
    }, "");
}

//country list option
function listOption(data){
	var html  = "";
	var state = "";
	for(var loop=0; loop<data.length; loop++){
		state = (data[loop].value == "ID") ? "selected" : "";
		html += '<option value="' + data[loop].value + '" ' + state + '>' + data[loop].caption + '</option>';
	}

	return html;
}

/* =============================================================================================== */
/* time converter */
function timeSince(date) {
	var seconds = Math.floor((new Date() - date) / 1000);
	var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
	if (seconds < 5){
		return "Just now";
	}else if (seconds < 60){
		return seconds + " seconds ago";
	}
	else if (seconds < 3600) {
		minutes = Math.floor(seconds/60)
		if(minutes > 1)
			return minutes + " minutes ago";
		else
			return "1 minute ago";
	}
	else if (seconds < 86400) {
		hours = Math.floor(seconds/3600)
		if(hours > 1)
			return hours + " hours ago";
		else
			return "1 hour ago";
	}
	//2 days and no more
	else if (seconds < 172800) {
		days = Math.floor(seconds/86400)
		if(days > 1)
			return days + " days ago";
		else
			return "1 day ago";
	}
	else{

		//return new Date(time).toLocaleDateString();
		return date.getDate().toString() + " " + months[date.getMonth()] + ", " + date.getFullYear();
	}
}

/* local request management */
/* =============================================================================================== */
function getData(group, target, page="1", keyword=""){
	var data = null;
	$.ajax({
		url: base_url + '/data/router.php?session=requestData&group=' + group + '&target=' + target,
		type: 'post',
		dataType: 'json',
		async: false,
		data: { page : page, keyword: keyword },
		success: function(result){
			console.log(result);
			data = result;
		},
		complete: function(xhr,status) {  },
		error: function(xhr,status,error) { console.log(xhr); }
	});

	return data;
}
