var DUNE = DUNE || {};

DUNE.Module = (function() {
  
  let init = () => {
    new Clipboard('button');
    _resizeBackground();
    $(window).resize(_resizeBackground);
  };

  let _resizeBackground = () => {
    $('body').height( $(window).height() + 60);
  };

  return {
    init: init
  };

})();

$(document).ready( () => {
  DUNE.Module.init();
});
