/*syncard js*/
$(function(){
	headerAdmin();
	pageAdmin();
	footerAdmin();
	backToTop();
});

var getCookiesAll = function(){
  var pairs = document.cookie.split(";");
  var cookies = {};
  for (var i=0; i<pairs.length; i++){
    var pair = pairs[i].split("=");
    cookies[(pair[0]+'').trim()] = unescape(pair[1]);
  }
  return cookies;
}

function headerAdmin(){
	if(r_getCookie('user_name') == ""){
		window.location.href = base_url + "/page/login.html";
		return false;
	}else if(r_getCookie('user_type') == "Customer"){
		window.location.href = base_url + "/index.html";
		return false;
	}

	var departement = "";
	if(r_getCookie('user_departement') != ""){
		departement = r_getCookie('user_departement');
	}

	var system = p_getData('support', 'systemFetch');
			system = system.feedData;

	var html =
	'<div class="content-frame">'+
		'<div class="col-xs-5 col-md-3">'+
			'<div class="logo"><img class="medium-image" src="../assets/system/' + system.logo + '" /></div>'+
		'</div>'+
		'<div class="col-xs-7 col-md-9 di-left">'+
			'<div class="header-title"><h2><span id="departmentName">' + departement + '</span> - Department</h2></div>'+
			'<div class="header-menu fontserif hidden-sm hidden-xs">' +
				'<ul>' +
					'<li><form id="syncrom_logout" f-group="auth"><button type="submit" class="btn btn-custom">Logout</button></form></li>' +
					'<li>|</li>';
					if(r_getCookie('user_name') != ""){
						var res = r_getCookie('user_name');
						var img = r_getCookie('user_picture');
						html = html + '<li><img src="../assets/' + ((img) ? 'users/' + img : 'PICS/pattern3.jpg') + '"></li>';
						html = html + '<li>' + res + '</li>';
					}
					html = html +
					'<li><a href="setting.html"><i class="fa fa-cog fa-o"></i></a></li>' +
				'</ul>'+
			'</div>'+
		'</div>'+
		'<div class="clearfix"></div>' +
	'</div>';

	$("header.parent-admin").html(html);

	p_formHandler('syncrom_viewstore', 'logout', 'view-store', 'yes');
	p_formHandler('syncrom_logout', 'logout', 'logout', 'yes');
}

function pageAdmin(){
	var html =
	'<div class="content-frame">'+
		'<div class="row">'+
			'<div class="col-md-3 left-nav">'+
				'<div class="list-nav">'+
					'<h3 class="fontserif title hidden-lg hidden-md">MENU <span class="left-nav-toggle syn-fixed-right fa fa-chevron-down"></span></h3>' +
					'<ul class="toggle-target">' +
						'<li class="dashboard-route"><a href="index.html">DASHBOARD</a></li>'+
						'<li class="home-route"><a href="home.html">HOME</a></li>'+
						'<li class="blog-route"><a href="blog.html">BLOG</a></li>'+
						'<li class="product-route"><a href="products.html">PRODUCTS</a></li>'+
						'<li class="about-route"><a href="about.html">ABOUT</a></li>'+
						'<li class="partner-route"><a href="form_partner.html">PARTNER</a></li>'+
						'<li class="talk-route"><a href="talk_to_us.html">TALK</a></li>'+
						'<li class="donation-route"><a href="donation.html">DONATION</a></li>'+
						// '<li class="product-route"><a href="product.html">PRODUCTS</a></li>'+
						'<li class="mailing-route"><a href="mailing.html">MAILING LIST</a></li>'+
						// '<li class="order-route"><a href="orders.html">ORDERS</a></li>'+
						'<li class="report-route"><a href="report.html">REPORTS</a></li>'+
						'<li class="feedback-route"><a href="feedback.html">POLICIES FEEDBACK</a></li>'+
						'<li class="setting-route"><a href="system_setting.html">SYSTEM SETTING</a></li>'+
						'<li class="hidden-md hidden-lg"><hr style="border-color: #000;"/></li>' +
						'<li class="hidden-md hidden-lg"><form id="syncrom_logout_min" f-group="auth"><button type="submit" class="btn btn-custom">LOGOUT</button></form></li>' +
					'</ul>' +
				'</div>'+
			'</div>'+
			'<div class="col-md-9 col-md-offset-3 syn-clear di-left">'+
				'<div class="col-md-12 top-nav">'+
					'<ul>' +
						'<li class="product-equipment-route"><a href="product_equipment.html">Equipments</a></li>'+
						'<li class="product-foods-route"><a href="product_foods.html">Foods</a></li>'+
						'<li class="product-medical-route"><a href="product_medical.html">Medical</a></li>'+
						'<li class="product-category-route"><a href="category.html">Categories</a></li>'+
					'</ul>' +
				'</div>'+
				'<div class="col-md-12 main-content syn-clear">'+
				'</div>'+
				'<div class="col-md-12 main-footer">'+
				'</div>'+
			'</div>'+
		'</div><div class="clearfix"></div>' +
	'</div>';

	$("main.parent-admin").html(html);

	p_formHandler('syncrom_viewstore_min', 'logout', 'view-store', 'yes');
	p_formHandler('syncrom_logout_min', 'logout', 'logout', 'yes');

	$(".left-nav-toggle").on('click', function(){
		if($('.toggle-target').is(":hidden")){
			$(this).switchClass('fa-chevron-down', 'fa-chevron-up');
		}else{
			$(this).switchClass('fa-chevron-up', 'fa-chevron-down');
		}

		$($('.toggle-target')).slideToggle();

	});

	//breadcrum
	var page = window.location.href;
		page = page.substring(page.lastIndexOf("/")+ 1);
		page = (page.match(/[^.]+(\.[^?#]+)?/) || [])[0];

	if(page != null && page.length > 0){
		$(".list-nav li, .top-nav li").removeClass('active');
		switch(page){
			case "home.html": case "home_carousel.html": case "form_carousel.html":
			case "home_donate.html": case "form_group_donate.html": $(".home-route").addClass('active'); break;
			case "about.html": case "about_story.html": case "form_about_story.html":
			case "about_founder.html": case "form_about_founder.html": $(".about-route").addClass('active'); break;
			case "talk_to_us.html": $(".talk-route").addClass('active'); break;
			case "products.html": $(".product-route").addClass('active'); break;
			case "product_equipment.html": $(".product-route").addClass('active'); $(".product-equipment-route").addClass('active'); break;
			case "form_product_equipment.html": $(".product-route").addClass('active'); $(".product-equipment-route").addClass('active'); break;
			case "product_foods.html": $(".product-route").addClass('active'); $(".product-foods-route").addClass('active'); break;
			case "form_product_foods.html": $(".product-route").addClass('active'); $(".product-foods-route").addClass('active'); break;
			case "product_medical.html": $(".product-route").addClass('active'); $(".product-medical-route").addClass('active'); break;
			case "form_product_medical.html": $(".product-route").addClass('active'); $(".product-medical-route").addClass('active'); break;
			case "product_category.html": $(".product-route").addClass('active'); $(".product-category-route").addClass('active'); break;
			case "form_product_category.html": $(".product-route").addClass('active'); $(".product-category-route").addClass('active'); break;
			case "category.html": $(".product-category-route").addClass('active'); break;
			case "money_category.html": $(".product-category-route").addClass('active'); break;
			case "formBlog.html": case "blog.html": $(".blog-route").addClass('active'); break;
			case "formUser.html": case "setting.html":
			case "system_setting.html": case "ayom_setting.html": $(".setting-route").addClass('active'); break;
			case "donation.html": $(".donation-route").addClass('active'); break;
			case "donation_items.html": case "donation_detail.html":
			case "donation_money.html": case "donation_money_detail.html": $(".donation-route").addClass('active'); break;
			case "mailing.html": $(".mailing-route").addClass('active'); break;
			case "form_partner.html": $(".partner-route").addClass('active'); break;
			case "report.html": case "report_policies.html": $(".report-route").addClass('active'); break;
			case "report_description.html": $(".report-route").addClass('active'); break;
			default: $(".dashboard-route").addClass('active'); break;
		}
	}else{
		$(".dashboard-route").addClass('active');
	}
}

function footerAdmin(){
	var d = new Date();
	var n = d.getFullYear();
	var html =  "Copyright © 2010-" + n + " Ayom. All Rights Reserved.";
	html = html + '<a href="#" id="back-to-top" title="Back to top"><span class="fa fa-arrow-up fa-2x"></span></a>';

	$(".main-footer").html(html);
}

function checkboxToggle(source, targetName) {
  checkboxes = document.getElementsByName(targetName);
  for(var i=0, n=checkboxes.length;i<n;i++) {
    checkboxes[i].checked = source.checked;
  }
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

// currency
function currencyFormat(num, curr = 'Rp. ') {
    var p = num;
    return curr + p.split("").reverse().reduce(function(acc, num, i, orig) {
        return  num=="-" ? acc : num + (i && !(i % 3) ? "," : "") + acc;
    }, "");
}

//backToTop
function backToTop(){
	if ($('#back-to-top').length) {
	    var scrollTrigger = 100, // px
	        backToTop = function () {
	            var scrollTop = $("html,body").scrollTop();
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
