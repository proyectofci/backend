(function () {
  'use strict';

  angular
    .module('app')
    .controller('inicioController', inicioController);

  inicioController.$inject = ['cultivoFactory'];

  function inicioController(cultivoFactory) {
    var vm = this;
    vm.cargarCultivos = cargarCultivos;
    vm.cargarDescripcion = cargarDescripcion;
    vm.informacionCultivo = "";
    vm.data = cultivoFactory;

    cargarCultivos();

    function cargarCultivos() {
      return cultivoFactory.getCultivos()
        .then(function () {
          vm.data = cultivoFactory;
          console.log(vm.data);
        })
        .catch(function (error) {
          console.log(error);
        });
    }

    function cargarDescripcion(index) {
      var descripcionCultivo = $("informacion-cultivo");
      var main = $("#main");
      var posicion = main.offset().top;
      vm.informacionCultivo = vm.data.cultivos[index].resena;
      $("html, body").animate({
        scrollTop: posicion
      }, 500);
      descripcionCultivo.slideDown('1000');
    }
  }
})();