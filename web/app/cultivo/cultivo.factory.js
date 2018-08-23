(function () {
  'use strict';
  angular
    .module('app')
    .factory('cultivoFactory', cultivoFactory);

  cultivoFactory.$inject = ['$http', '$q'];

  function cultivoFactory($http, $q) {

    var factory = {
      getCultivos: getCultivos,
      getAllCultivos: getAllCultivos,
      getTipoAfecciones: getTipoAfecciones,
      cultivos: {},
      allCultivos: [],
      tiposAfecciones: [],
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

    function getAllCultivos() {
      var q = $q.defer();
      $http.get('api/cultivos/all')
        .success(function (data) {
          factory.allCultivos = data;
          q.resolve();
        })
        .error(function (error) {
          q.reject(error);
        });
      return q.promise;
    }

    function getTipoAfecciones() {
      var q = $q.defer();
      $http.get('api/afecciones/tipos')
        .success(function (data) {
          factory.tiposAfecciones = data;
          q.resolve();
        })
        .error(function (error) {
          q.reject(error);
        });
      return q.promise;
    }


  }
})();