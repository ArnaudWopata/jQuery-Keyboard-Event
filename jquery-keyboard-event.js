(function($){
  $.fn.simulateKeyboardEvent = function(options) {

    var defaults = {
      type: 'keydown'
    };

    options = $.extend({}, defaults, options);

    this.each(function(){
      var event = document.createEvent('KeyboardEvent');
      if(event.initKeyboardEvent)
        event.initKeyboardEvent(options.type, true, true);
      else // Firefox
        event.initKeyEvent(options.type, true, true, null, false, false, false, false, 0, 32);
      this.dispatchEvent(event);
    });
  };
})(jQuery);
