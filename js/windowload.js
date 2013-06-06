$(window).load(function() {

	$('.box-wrap').antiscroll({
     autoHide: true
  });

	$('.nano').nanoScroller({iOSNativeScrolling: true});
	
	$('.isotopecontainer').isotope({
		itemSelector : '.theimage',
		layoutMode : 'masonry'
	});

    $(window).resize(function() {
	    $('.isotopecontainer').isotope({
			itemSelector : '.theimage',
			layoutMode : 'masonry'
   		});
    })
    
    if (Modernizr.touch) {
		$('.pane').attr('style','display:none!important;');
	}
	
	if($('.categories .slider').height() >= $('.categories .pane').height()) {
		$('.categories .pane').attr('style','display:none!important;');
	}
	
});

  

