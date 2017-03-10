var DUNE = DUNE || {};

DUNE.InitModule = (function() {
  
  let init = () => {
    new Clipboard('button');
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
  DUNE.InitModule.init();
});
