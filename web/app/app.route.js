(function () {
  'use strict';

  angular
    .module('app')
    .config(route)
    .run(function ($rootScope, $state) {
      $rootScope.$state = $state;
    });

  function route($stateProvider, $urlRouterProvider, $ocLazyLoadProvider) {

    $ocLazyLoadProvider.config({
      debug: false
    });
    $urlRouterProvider.otherwise("/inicio");

    $stateProvider
      .state("inicio", {
        url: "/inicio",
        templateUrl: "app/inicio/inicio.html",
        controller: "inicioController",
        controllerAs: "vm",
      })
      .state("cultivo", {
        abstract: true,
        url: "/cultivo",
        templateUrl: "app/content.html",
        data: {
          pageTitle: "Cultivos"
        },
      })
      .state("cultivo.lista", {
        url: "/lista",
        templateUrl: "app/cultivo/cultivo.html",
        controller: "cultivoController",
        controllerAs: "vm",
        data: {
          pageTitle: "Cultivos"
        },
      })
      .state("cultivo.afecciones", {
        url: "/afecciones",
        params: {
          idTipo: null,
          idCultivo: null
        },
        templateUrl: "app/cultivo/afecciones/afecciones.html",
        controller: "afeccionesController",
        controllerAs: "vm",
        data: {
          pageTitle: "Afecciones"
        },
      })
      .state("diagnostico", {
        url: "/diagnostico",
        templateUrl: "app/diagnostico/diagnostico.html",
        data: {
          pageTitle: "Diagnostico"
        }
      })
      .state("recomendaciones", {
        url: "/encuesta",
        templateUrl: "app/encuesta/encuesta.jsp",
        controller: "encController",
        controllerAs: "vm",
        data: {
          pageTitle: "Encuesta"
        }
      });
  }

})();