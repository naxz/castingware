(function () {
  'use strict';

  toastr.options.positionClass = 'toast-bottom-right';

  angular
    .module('cware')
    .value('toastr', toastr);

  angular
    .module('cware')
    .factory('notifier', notifierService);

  function notifierService(toastr) {
    return {
      notifySuccess: function (msg) {
        toastr.success(msg);
      },
      notifyError: function (msg) {
        toastr.error(msg);
      },
      notifyInfo: function (msg) {
        toastr.info(msg);
      },
      notifyWarning: function (msg) {
        toastr.warning(msg);
      }
    }
  }
})();