(function () {
  'use strict';
  angular
    .module('app')
    .factory('afeccionesFactory', afeccionesFactory);

  afeccionesFactory.$inject = ['$http', '$q'];

  function afeccionesFactory($http, $q) {

    var factory = {
      getAfecciones: getAfecciones,
      afecciones: [],
    };

    return factory;

    function getAfecciones(idTipo, idCultivo) {
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