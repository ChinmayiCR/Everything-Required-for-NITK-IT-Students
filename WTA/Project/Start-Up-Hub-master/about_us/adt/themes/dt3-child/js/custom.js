
/* bPopup v:0.10.0.min  (c)Bjoern Klinggaard (twitter@bklinggaard) http://dinbror.dk/bpopup */ 
(function(b){b.fn.bPopup=function(z,F){function M(){a.contentContainer=b(a.contentContainer||c);switch(a.content){case "iframe":var d=b('<iframe class="b-iframe" '+a.iframeAttr+"></iframe>");d.appendTo(a.contentContainer);r=c.outerHeight(!0);s=c.outerWidth(!0);A();d.attr("src",a.loadUrl);k(a.loadCallback);break;case "image":A();b("<img />").load(function(){k(a.loadCallback);G(b(this))}).attr("src",a.loadUrl).hide().appendTo(a.contentContainer);break;default:A(),b('<div class="b-ajax-wrapper"></div>').load(a.loadUrl,a.loadData,function(c,d,e){k(a.loadCallback,d);G(b(this))}).hide().appendTo(a.contentContainer)}}function A(){a.modal&&b('<div class="b-modal '+e+'"></div>').css({backgroundColor:a.modalColor,position:"fixed",top:0,right:0,bottom:0,left:0,opacity:0,zIndex:a.zIndex+t}).appendTo(a.appendTo).fadeTo(a.speed,a.opacity);D();c.data("bPopup",a).data("id",e).css({left:"slideIn"==a.transition||"slideBack"==a.transition?"slideBack"==a.transition?f.scrollLeft()+u:-1*(v+s):l(!(!a.follow[0]&&m||g)),position:a.positionStyle||"absolute",top:"slideDown"==a.transition||"slideUp"==a.transition?"slideUp"==a.transition?f.scrollTop()+w:x+-1*r:n(!(!a.follow[1]&&p||g)),"z-index":a.zIndex+t+1}).each(function(){a.appending&&b(this).appendTo(a.appendTo)});H(!0)}function q(){a.modal&&b(".b-modal."+c.data("id")).fadeTo(a.speed,0,function(){b(this).remove()});a.scrollBar||b("html").css("overflow","auto");b(".b-modal."+e).unbind("click");f.unbind("keydown."+e);h.unbind("."+e).data("bPopup",0<h.data("bPopup")-1?h.data("bPopup")-1:null);c.undelegate(".bClose, ."+a.closeClass,"click."+e,q).data("bPopup",null);clearTimeout(I);H();return!1}function J(d){w=y.innerHeight||h.height();u=y.innerWidth||h.width();if(B=E())clearTimeout(K),K=setTimeout(function(){D();d=d||a.followSpeed;c.dequeue().each(function(){g?b(this).css({left:v,top:x}):b(this).animate({left:a.follow[0]?l(!0):"auto",top:a.follow[1]?n(!0):"auto"},d,a.followEasing)})},50)}function G(d){var b=d.width(),e=d.height(),f={};a.contentContainer.css({height:e,width:b});e>=c.height()&&(f.height=c.height());b>=c.width()&&(f.width=c.width());r=c.outerHeight(!0);s=c.outerWidth(!0);D();a.contentContainer.css({height:"auto",width:"auto"});f.left=l(!(!a.follow[0]&&m||g));f.top=n(!(!a.follow[1]&&p||g));c.animate(f,250,function(){d.show();B=E()})}function N(){h.data("bPopup",t);c.delegate(".bClose, ."+a.closeClass,"click."+e,q);a.modalClose&&b(".b-modal."+e).css("cursor","pointer").bind("click",q);O||!a.follow[0]&&!a.follow[1]||h.bind("scroll."+e,function(){B&&c.dequeue().animate({left:a.follow[0]?l(!g):"auto",top:a.follow[1]?n(!g):"auto"},a.followSpeed,a.followEasing)}).bind("resize."+e,function(){J()});a.escClose&&f.bind("keydown."+e,function(a){27==a.which&&q()})}function H(d){function b(e){c.css({display:"block",opacity:1}).animate(e,a.speed,a.easing,function(){L(d)})}switch(d?a.transition:a.transitionClose||a.transition){case "slideIn":b({left:d?l(!(!a.follow[0]&&m||g)):f.scrollLeft()-(s||c.outerWidth(!0))-C});break;case "slideBack":b({left:d?l(!(!a.follow[0]&&m||g)):f.scrollLeft()+u+C});break;case "slideDown":b({top:d?n(!(!a.follow[1]&&p||g)):f.scrollTop()-(r||c.outerHeight(!0))-C});break;case "slideUp":b({top:d?n(!(!a.follow[1]&&p||g)):f.scrollTop()+w+C});break;default:c.stop().fadeTo(a.speed,d?1:0,function(){L(d)})}}function L(b){b?(N(),k(F),a.autoClose&&(I=setTimeout(q,a.autoClose))):(c.hide(),k(a.onClose),a.loadUrl&&(a.contentContainer.empty(),c.css({height:"auto",width:"auto"})))}function l(a){return a?v+f.scrollLeft():v}function n(a){return a?x+f.scrollTop():x}function k(a,e){b.isFunction(a)&&a.call(c,e)}function D(){x=p?a.position[1]:Math.max(0,(w-c.outerHeight(!0))/2-a.amsl);v=m?a.position[0]:(u-c.outerWidth(!0))/2;B=E()}function E(){return w>c.outerHeight(!0)&&u>c.outerWidth(!0)}b.isFunction(z)&&(F=z,z=null);var a=b.extend({},b.fn.bPopup.defaults,z);a.scrollBar||b("html").css("overflow","hidden");var c=this,f=b(document),y=window,h=b(y),w=y.innerHeight||h.height(),u=y.innerWidth||h.width(),O=/OS 6(_\d)+/i.test(navigator.userAgent),C=200,t=0,e,B,p,m,g,x,v,r,s,K,I;c.close=function(){q()};c.reposition=function(a){J(a)};return c.each(function(){b(this).data("bPopup")||(k(a.onOpen),t=(h.data("bPopup")||0)+1,e="__b-popup"+t+"__",p="auto"!==a.position[1],m="auto"!==a.position[0],g="fixed"===a.positionStyle,r=c.outerHeight(!0),s=c.outerWidth(!0),a.loadUrl?M():A())})};b.fn.bPopup.defaults={amsl:50,appending:!0,appendTo:"body",autoClose:!1,closeClass:"b-close",content:"ajax",contentContainer:!1,easing:"swing",escClose:!0,follow:[!0,!0],followEasing:"swing",followSpeed:500,iframeAttr:'scrolling="no" frameborder="0"',loadCallback:!1,loadData:!1,loadUrl:!1,modal:!0,modalClose:!0,modalColor:"#000",onClose:!1,onOpen:!1,opacity:.7,position:["auto","auto"],positionStyle:"absolute",scrollBar:!0,speed:250,transition:"fadeIn",transitionClose:!1,zIndex:9997}})(jQuery);



/* theme preview zoom */
(function($){
	$.fn.zoomOnHover = function(){
		xOffset = 80; yOffset = 100; 
		return this.each( function(){
			$(this).hover( 
		    	function(e){
			        $("body").append("<p id='preview'><img src='"+ $(this).attr("data-preview") + "' /></p>");                                
			        $("#preview")
			            .css("top",(e.pageY - yOffset) + "px")
			            .css("left",(e.pageX + xOffset) + "px")
			            .fadeIn("fast");                        
			    },
			    
			    function(){
			        $("#preview").remove();
			    }
			);
	
		    $(this).mousemove(function(e){
		        $("#preview")
		            .css("top",(e.pageY - yOffset) + "px")
		            .css("left",(e.pageX + xOffset) + "px");
		    });         
		});
	};
})(jQuery);



(function($){
	$.fn.juizScrollTo = function(speed, v_indent){
		
		if(!speed) var speed = 'slow';
		if(!v_indent) var v_indent = 0;
		
		return this.each(function(){
			$(this).click(function(){
				
				var goscroll = false;
				var the_hash = $(this).attr("href");
				var regex = new RegExp("\#(.*)","gi");

				if(the_hash.match("\#(.+)")) {

					the_hash = the_hash.replace(regex,"$1");

					if($("#"+the_hash).length>0) {
						the_element = "#" + the_hash;
						goscroll = true;
					}
					else if($("a[name=" + the_hash + "]").length>0) {
						the_element = "a[name=" + the_hash + "]";
						goscroll = true;
					}
				
					if(goscroll) {
						var container = 'html';
						if ($.browser.webkit) container = 'body';
						
						$(container).animate({
							scrollTop:$(the_element).offset().top + v_indent
						}, speed, 
							function(){$(the_element).attr('tabindex','0').focus().removeAttr('tabindex');});
						return false;
					}
				}
			});
		});
	};
})(jQuery)



$(document).ready( function() {

	$('#try-now-btn').juizScrollTo('slow');	

	// sequence slider
	var options = {
		nextButton: true,
		prevButton: true,
		pagination: true,
		animateStartingFrameIn: true,
		autoPlay: true,
		autoPlayDelay: 6000,
		preloader: true,
		preloadTheseFrames: [1]
    };
    
    var mySequence = $("#sequence").sequence(options).data("sequence");

	
	var popupBlockerTxt = "Please, disable your browser popup blocker if any." ;
	
	// edit theme window
	var editorWin ;
	$('.dteditor').click(function (event) {
	    event.preventDefault();
        var w = screen.width - 100 ;
        var h = screen.height - 40 ;
        var left = 50 ; 
        var top = 20 ;
        var windowArgs = 'height=' + h + ',width=' + w + ',top=' + top + ',left=' + left + ',scrollbars=yes,resizable=yes,location=no';		    
        editorWin = window.open( $(this).attr("href"), "editorWindow", windowArgs);
        
        if(!editorWin || editorWin.closed || typeof editorWin.closed=='undefined') { 	
			$('#popup').bPopup();
			$('#popupTxt').html( popupBlockerTxt ) ;
		} else {
        	editorWin.focus() ;
        }

	});
	

	// live preview theme window
	var previewWin ;
	$('.dtpreview').click(function (event) {
	    event.preventDefault();
        var w = screen.width - 100 ;
        var h = screen.height - 40 ;
        var left = 50 ; 
        var top = 20 ;
        var windowArgs = 'height=' + h + ',width=' + w + ',top=' + top + ',left=' + left + ',scrollbars=yes,resizable=yes,location=no';		    
        previewWin = window.open( $(this).attr("href"), "previewWindow", windowArgs);
    	
        if(!previewWin || previewWin.closed || typeof previewWin.closed=='undefined') { 	
			$('#popup').bPopup();
			$('#popupTxt').html( popupBlockerTxt ) ;
		} else {
        	previewWin.focus() ;
        }
        
	});


	// preview theme	
	$("a.preview").zoomOnHover() ;


});

