(function () {
  'use strict';
  angular
    .module('app')
    .factory('afeccionFactory', afeccionFactory);

  afeccionFactory.$inject = ['$http', '$q'];

  function afeccionFactory($http, $q) {

    var factory = {
      getTratamientos: getTratamientos,
      getTratamiento: getTratamiento,
      tratamientos: [],
      tratamiento: {},
    };

    return factory;

    function getTratamientos(idAfeccion) {
      var q = $q.defer();
      var url = "api/tratamientos/afeccion/" + idAfeccion;
      $http.get(url)
        .success(function (data) {
          console.log(data);
          factory.tratamientos = data;
          
          q.resolve();
        })
        .error(function (error) {
          q.reject(error);
        });
      return q.promise;
    }

    function getTratamiento(idTratamiento) {
      var q = $q.defer();
      var url = "api/tratamientos/" + idTratamiento;
      $http.get(url)
        .success(function (data) {
          factory.tratamiento = data;
          q.resolve();
        })
        .error(function (error) {
          q.reject(error);
        });
      return q.promise;
    }

  }
})();