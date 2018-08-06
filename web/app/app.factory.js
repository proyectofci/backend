(function () {
  'use strict';
  angular
    .module('app')
    .factory('data', data);

  data.$inject = ['$http', '$q'];

  function data($http, $q) {

    var factory = {
      getImagen: getImagen,
      data: {}
    };

    return factory;

    function getImagen() {
      var q = $q.defer();
      $http.get('configuracion.json')
        .success(function (data) {
          factory.data = data;
          q.resolve();
        });
      return q.promise;
    }

  }

})();