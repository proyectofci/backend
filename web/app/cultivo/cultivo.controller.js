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
    vm.verTipoAfecciones = verTipoAfecciones
    vm.informacionCultivo = "";
    vm.data = cultivoFactory;

    cargarAllCultivos();

    function cargarAllCultivos() {
      return cultivoFactory.getAllCultivos()
        .then(function () {
          vm.data = cultivoFactory;
          console.log(vm.data.allCultivos);
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

    function verTipoAfecciones() {
      console.log("tipo afecciones");
      var btnAfecciones = $(".btn-afecciones");
      var btnVolver = $(".btn-volver");
      var menuAfecciones;
      // menuAfecciones = $(".cultivo__opciones menu");
      $(".cultivo__opciones menu").animate({
        'margin-left': '-100%'
      }, 250);

      // btnVolver.click(function () {
      //   console.log('asd');
      //   menuAfecciones = $(this).parent().prev();
      //   menuAfecciones.animate({
      //     'margin-left': '0'
      //   }, 250);
      // });
    }



  }
})();