(function () {
  'use strict';

  angular
    .module('app')
    .controller('afeccionController', afeccionController);

  afeccionController.$inject = ["afeccionFactory", "$state",
    "$stateParams", "$window", "afeccionesFactory", "cultivoFactory"
  ];

  function afeccionController(afeccionFactory, $state,
    $stateParams, $window, afeccionesFactory, cultivoFactory) {
    var vm = this;
    vm.cargarAfeccion = cargarAfeccion;

    vm.data = afeccionFactory;
    vm.idCultivo = $stateParams.idCultivo;
    vm.idAfeccion = $stateParams.idAfeccion;

    console.log(vm.idCultivo + "  ==== " + vm.idAfeccion);

    vm.cultivo = {
      nombre: "",
      nombreCientifico: "",
      imagen: "",
    };

    vm.afeccion = {
      nombre: "",
      nombreCientifico: "",
      imagen: "",
      descripcion: "",
    };

    console.log(cultivoFactory.allCultivos);

    for (var i = 0; i < cultivoFactory.allCultivos.length; i++) {
      if (vm.idCultivo === cultivoFactory.allCultivos[i].id) {
        vm.cultivo.nombre = cultivoFactory.allCultivos[i].nombre;
        vm.cultivo.nombreCientifico = cultivoFactory.allCultivos[i].nombreCientifico;
        vm.cultivo.imagen = cultivoFactory.allCultivos[i].imagen;
      }
    }

    for (var j = 0; j < afeccionesFactory.afecciones.length; j++) {
      if (vm.idAfeccion === afeccionesFactory.afecciones[j].id) {
        vm.afeccion.nombre = afeccionesFactory.afecciones[j].nombre;
        vm.afeccion.nombreCientifico = afeccionesFactory.afecciones[j].nombreCientifico;
        vm.afeccion.imagen = afeccionesFactory.afecciones[j].rutaImagen;
        vm.afeccion.descripcion = afeccionesFactory.afecciones[j].descripcion;
      }
    }

    function cargarAfeccion() {
      return afeccionesFactory.getAfeccion(vm.idTipo, vm.idCultivo)
        .then(function () {
          vm.data = afeccionesFactory;
        })
        .catch(function (error) {
          console.log(error);
        });
    }
  }
})();