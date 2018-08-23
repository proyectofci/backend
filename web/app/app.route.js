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
        url: "/cultivo",
        templateUrl: "app/cultivo/cultivo.html",
        controller: "cultivoController",
        controllerAs: "vm",
        data: {
          pageTitle: "Cultivos"
        },
        // resolve: {
        //   loadPlugin: function ($ocLazyLoad) {
        //     return $ocLazyLoad.load([
        //       {
        //         files: ['app/cultivo/cultivo.controller.js']
        //       }
        //     ]);
        //   }
        // },
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