(function () {
  'use strict';
  angular
    .module('app')
    .factory('afeccionFactory', afeccionFactory);

  afeccionFactory.$inject = ['$http', '$q'];

  function afeccionFactory($http, $q) {

    var factory = {
      getTratamiento: getTratamiento,
      tratamiento: {},
    };

    return factory;

    function getTratamiento(idAfeccion) {
      var q = $q.defer();
      var url = "api/afecciones/tipos/" + idTipo + "/cultivos/" + idCultivo;
      $http.get(url)
        .success(function (data) {
          factory.afecciones = data;
          q.resolve();
        })
        .error(function (error) {
          q.reject(error);
        });
      return q.promise;
    }

  }
})();