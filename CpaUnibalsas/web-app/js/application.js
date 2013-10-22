if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}


_.templateSettings = {
	    interpolate : /\{\{(.+?)\}\}/g,
	    evaluate : /\{!(.+?)!\}/g
};