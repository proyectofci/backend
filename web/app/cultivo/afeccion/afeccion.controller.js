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
    vm.cargarTratamientos = cargarTratamientos;
    vm.cargarTratamiento = cargarTratamiento;

    vm.data = afeccionFactory;
    vm.idCultivo = $stateParams.idCultivo;
    vm.idAfeccion = $stateParams.idAfeccion;
    vm.tratamientoActual = 0;

    afeccionFactory.tratamientos = [];
    afeccionFactory.tratamiento = {};

    vm.cultivo = {
      nombre: "",
      nombreCientifico: "",
      imagen: "",
    };

    vm.afeccion = {
      id: 0,
      nombre: "",
      nombreCientifico: "",
      imagen: "",
      descripcion: "",
    };

    cargarTratamientos();

    for (var i = 0; i < cultivoFactory.allCultivos.length; i++) {
      if (vm.idCultivo === cultivoFactory.allCultivos[i].id) {
        vm.cultivo.nombre = cultivoFactory.allCultivos[i].nombre;
        vm.cultivo.nombreCientifico = cultivoFactory.allCultivos[i].nombreCientifico;
        vm.cultivo.imagen = cultivoFactory.allCultivos[i].imagen;
      }
    }

    for (var j = 0; j < afeccionesFactory.afecciones.length; j++) {
      if (vm.idAfeccion === afeccionesFactory.afecciones[j].id) {
        vm.afeccion.id = afeccionesFactory.afecciones[j].id;
        vm.afeccion.nombre = afeccionesFactory.afecciones[j].nombre;
        vm.afeccion.nombreCientifico = afeccionesFactory.afecciones[j].nombreCientifico;
        vm.afeccion.imagen = afeccionesFactory.afecciones[j].rutaImagen;
        vm.afeccion.descripcion = afeccionesFactory.afecciones[j].descripcion;
      }
    }

    function cargarTratamientos() {
      return afeccionFactory.getTratamientos(vm.idAfeccion)
        .then(function () {
          vm.data = afeccionFactory;
          if (vm.data.tratamientos.length > 0) {
            cargarTratamiento(vm.data.tratamientos[0].id);
          }
        })
        .catch(function (error) {
          console.log(error);
        });
    }

    function cargarTratamiento(idTratamiento) {
      vm.tratamientoActual = idTratamiento;
      return afeccionFactory.getTratamiento(idTratamiento)
        .then(function () {
          vm.data = afeccionFactory;
        })
        .catch(function (error) {
          console.log(error);
        });
    }


  }
})();