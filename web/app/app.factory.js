(function () {
  'use strict';
  angular
    .module('app')
    .factory('cultivoFactory', cultivoFactory);

    cultivoFactory.$inject = ['$http', '$q'];

  function cultivoFactory($http, $q) {

    var factory = {
      getCultivos: getCultivos,
      cultivos: {}
    };

    return factory;

    function getCultivos() {
      var q = $q.defer();
      $http.get('api/cultivos')
        .success(function (data) {
          factory.cultivos = data;
          q.resolve();
        })
        .error(function (error) {
          q.reject(error);
        });
      return q.promise;
    }

  }

})();