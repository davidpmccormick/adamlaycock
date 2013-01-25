$(document).ready(function(){
    
    $('.hero').click(function() {
	    $(this).addClass('hidden');
	    $('.nothero').removeClass('hidden');
	    $('.extralines').hide();
    });
    
    if(($('.maincontent').attr('rel') ==  '0') && ($('body').attr('rel') == '1')) {
	    $('.nothero').removeClass('hidden');
    }
    
    $('.adamlaycock, .photographer').click(function() {
    	// if the hero image is visible and we're on the homepage...
	    if(!($('.hero').hasClass('hidden')) && ($('body').attr('rel') == '1')) {
	    	$('.hero').addClass('hidden');
		    $('.nothero').removeClass('hidden');
		    $('.extralines').hide();
		    return false;
	    }
    });
      
    // hide the scrollbars on touchscreens (using native scrolling in windowload.js)
	if (Modernizr.touch) {
		$('.nano').css('height','800px');
		
	}
	
	$('.recentlyaddedlink').click(function() {
		var distanceToScroll = $('.recentlyaddedsection').offset().top - 5;
		$('body, html').animate({ scrollTop: distanceToScroll }, 500, 'easeInOutQuint');
	})
	$('.categorieslink').click(function() {
		var distanceToScroll = $('.categoriessection').offset().top - 5;
		$('body, html').animate({ scrollTop: distanceToScroll }, 500, 'easeInOutQuint');
	})
	
	          
	// change size of clicked element
	// only on the archive page
	if($('body').attr('rel') == '6') {
		$('.isotopecontainer').delegate( '.theimage', 'click', function(){
			// not on smaller screens (where the left margin has been set to 0px
			if ($('.row').css('margin-left') != '0px') {
				$this = $(this);
					$('.theimage').not($(this)).removeClass('largeimage');
				$(this).toggleClass('largeimage');
				$('.isotopecontainer').isotope('reLayout', function() {
				    var distanceToScroll = $this.offset().top - 100;
				    var minScreenHeight = $(window).height() * 2;
				    $('body').css('min-height', minScreenHeight);
				    if($this.hasClass('largeimage')) {
					    $('body, html').stop().animate({ scrollTop: distanceToScroll }, 500, 'easeInOutQuint');
				    } else {
					    $('body, html').stop().animate({ scrollTop: 0 }, 500, 'easeInOutQuint');
				    }
				});
			}
		});
	}
});

