(function () {
  'use strict';

  angular
    .module('app')
    .controller('afeccionesController', afeccionesController);

  afeccionesController.$inject = ["afeccionesFactory", "$state",
    "$stateParams", "$window", "cultivoFactory"
  ];

  function afeccionesController(afeccionesFactory, $state,
    $stateParams, $window, cultivoFactory) {
    var vm = this;
    vm.cargarAfecciones = cargarAfecciones;

    vm.data = afeccionesFactory;
    vm.idTipo = $stateParams.idTipo;
    vm.idCultivo = $stateParams.idCultivo;
    vm.cultivo = {
      id: 0,
      nombre: "",
      nombreCientifico: "",
      imagen: "",
    };

    for (var index = 0; index < cultivoFactory.allCultivos.length; index++) {
      if (vm.idCultivo === cultivoFactory.allCultivos[index].id) {
        vm.cultivo.id = cultivoFactory.allCultivos[index].id;
        vm.cultivo.nombre = cultivoFactory.allCultivos[index].nombre;
        vm.cultivo.nombreCientifico = cultivoFactory.allCultivos[index].nombreCientifico;
        vm.cultivo.imagen = cultivoFactory.allCultivos[index].imagen;
      }
    }

    vm.data.afecciones = [];

    cargarAfecciones();

    function cargarAfecciones() {
      return afeccionesFactory.getAfecciones(vm.idTipo, vm.idCultivo)
        .then(function () {
          vm.data = afeccionesFactory;
          console.log(vm.data);
        })
        .catch(function (error) {
          console.log(error);
        });
    }
  }
})();