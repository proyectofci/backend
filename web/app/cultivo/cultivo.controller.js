(function () {
  'use strict';

  angular
    .module('app')
    .controller('cultivoController', cultivoController);

  cultivoController.$inject = ['cultivoFactory'];

  function cultivoController(cultivoFactory) {
    var vm = this;
    vm.cargarAllCultivos = cargarAllCultivos;
    vm.cargarTipoAfecciones = cargarTipoAfecciones;
    vm.verTipoAfecciones = verTipoAfecciones;
    vm.volverAfecciones = volverAfecciones;
    vm.informacionCultivo = "";
    vm.data = cultivoFactory;

    vm.data.allCultivos = [];

    cargarAllCultivos();

    function cargarAllCultivos() {
      return cultivoFactory.getAllCultivos()
        .then(function () {
          vm.data = cultivoFactory;
          cargarTipoAfecciones();
        })
        .catch(function (error) {
          console.log(error);
        });
    }

    function cargarTipoAfecciones() {
      return cultivoFactory.getTipoAfecciones()
        .then(function () {
          vm.data = cultivoFactory;
        })
        .catch(function (error) {
          console.log(error);
        });
    }

    function verTipoAfecciones(index) {
      $("#cultivo__opciones" + index).animate({
        'margin-left': '-100%'
      }, 250);
    }

    function volverAfecciones(index) {
      $("#cultivo__opciones" + index).animate({
        'margin-left': '0'
      }, 250);
    }
  }
})();