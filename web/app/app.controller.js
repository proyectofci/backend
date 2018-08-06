(function () {
  'use strict';

  angular
    .module('app')
    .controller('mainController', mainController);

  mainController.$inject = ['data'];

  function mainController(data) {
    var vm = this;
    vm.cargarImagen = cargarImagen;
    vm.imagen = {};

    function cargarImagen() {
      vm.imagen = {
        ruta: "RUTA DE IMAGEN",
      };
      return;
      // return data.cargarImagen()
      //   .then(function () {
      //     vm.imagen = {
      //       ruta: "RUTA DE IMAGEN",
      //     };
      //   });
    }
  }

})();