
	<!DOCTYPE html>
	<html ng-app="app" ng-controller="mainController as cg">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title page-title></title>
		<link rel="shortcut icon" href="aspinia/icons/favicon.ico" />
		<!--Estilos-->
		<link href="aspinia/css/bootstrap.css" rel="stylesheet">
		<link href="aspinia/css/plugins/datapicker/angular-datapicker.css" rel="stylesheet">
		<link href="aspinia/font-awesome/css/font-awesome.css" rel="stylesheet">
		<link href="aspinia/material-icon/css/material-icons.css" rel="stylesheet">
		<link href="aspinia/css/plugins/toastr/toastr.min.css" rel="stylesheet">
		<link href="aspinia/css/animate.css" rel="stylesheet">
		<link href="aspinia/css/plugins/ladda/ladda-themeless.min.css" rel="stylesheet">
		<link href="aspinia/css/plugins/chosen/bootstrap-chosen.css" rel="stylesheet">
		<link href="aspinia/css/plugins/iCheck/custom.css" rel="stylesheet">
		<link href="aspinia/css/style.css" rel="stylesheet">
		<link href="aspinia/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
		<script src="aspinia/js/jquery-2.1.1.js"></script>
		<!--Angular librerias-->
		<script src="angular/lib/angular.min.js"></script>
		<script src="angular/lib/angular-ui-router.min.js"></script>
		<script src="angular/lib/angular-messages.min.js"></script>
		<!-- <script src="aspinia/js/plugins/masonry/masonry.pkgd.min.js"></script> -->
		<script src="aspinia/js/plugins/iCheck/icheck.min.js"></script>

		<!--Angular Modulos-->
		<script src="app/app.module.js"></script>
		<script src="app/app.route.js"></script>
		<script src="app/app.controller.js"></script>
		<script src="app/app.factory.js"></script>
		<script src="app/app.directives.js"></script>

	</head>

	<body class="landing-page">
		<div class="navbar-wrapper" ng-if="!cg.loading">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header page-scroll">						
						<a class="navbar-brand" ui-sref="inicio" ng-bind="cg.config.logo"></a>						
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li uib-dropdown ng-if="cg.data.usuario.nombre">
								<a href uib-dropdown-toggle> Administrador <span class="caret"></span></a>
								<ul role="menu" uib-dropdown-menu>
									<li><a ui-sref="preguntas">Preguntas</a></li>
									<li><a>Usuarios</a></li>
									<li><a>Reportes</a></li>
								</ul>
							</li>
							<li ng-class="{active: $state.includes('inicio')}">
								<a class="page-scroll" ui-sref="inicio">Inicio</a>
							</li>
							<li ng-class="{active: $state.includes('encuesta')}">
								<a class="page-scroll" ui-sref="encuesta">Encuesta</a>
							</li>
							<!-- <li ng-class="{active: $state.includes('proyecto')}">
								<a class="page-scroll" ui-sref="proyecto">Proyecto</a>
							</li>
							<li ng-class="{active: $state.includes('contacto')}">
								<a class="page-scroll" ui-sref="contacto">Contacto</a>
							</li> -->
							<li ng-class="{active: $state.includes('login')}" ng-if="!cg.data.usuario.nombre">
								<a class="page-scroll" ui-sref="login">Login</a>								
							</li>
							<li ng-if="cg.data.usuario.nombre">
								<a class="page-scroll" ng-click="cg.cerrarSesion()">
									<span class="text-danger">Cerrar sesión</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>

		<div id="wrapper" ng-if="!cg.loading">
			<div id="page-wrapper" class="gray-bg" ui-view>
			</div>
		</div>

		<section id="contact" class="gray-section contact no-margins" ng-if="!cg.loading">
			<div class="container">
				<div class="row m-b-lg">
					<div class="col-lg-12 text-center">
						<div class="navy-line"></div>
						<h1>Universidad de Guayaquil</h1>
						<p>Facultad de Ciencias Matemáticas y Físicas</p>
					</div>
				</div>
				<div class="row m-b-lg">
					<div class="col-lg-3 col-lg-offset-3">
						<address>
							<strong><span class="navy">Dirección.</span></strong><br>
							Victor Manuel Rendón 429<br>
							entre Baquerizo Moreno y Cordova<br>
							<abbr title="Phone">P:</abbr> (04) 230-7729
						</address>
					</div>
					<div class="col-lg-4">
						<p class="text-color">
								"El verdadero progreso es el que pone la tecnología al alcance de todos"
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 text-center m-b-sm">
						<a ui-sref="contacto" class="btn btn-primary">Contactanos!</a>
					</div>
				</div>
			</div>
		</section>

		<div class="wrapper wrapper-content no-padding m-t-xs" ng-if="cg.loading">
			<div  class="flex-center-center p-md">
				<svg class="spinner" width="40px" height="40px" viewBox="0 0 66 66">
					<circle class="path" fill="none" stroke-width="6" 
						stroke-linecap="round" cx="33" cy="33" r="30">
					</circle>
				</svg>
			</div>
		</div>
		

		<!-- Mainly scripts -->

		<script src="aspinia/js/bootstrap.min.js"></script>

		<!-- Custom and plugin javascript -->
		<script src="aspinia/js/inspinia.js"></script>
		<script src="aspinia/js/plugins/ladda/spin.min.js"></script>
		<script src="aspinia/js/plugins/ladda/ladda.min.js"></script>
		<script src="aspinia/js/plugins/ladda/ladda.jquery.min.js"></script>
		<script src="aspinia/js/plugins/toastr/toastr.min.js"></script>
		<script src="aspinia/js/plugins/moment/moment.min.js"></script>
		<script src="aspinia/js/plugins/moment/moment-timezone.js"></script>
		<script src="aspinia/js/bootstrap/ui-bootstrap-tpls-1.1.2.min.js"></script>
		<script src="aspinia/js/plugins/datapicker/angular-datepicker.js"></script>
		<script src="aspinia/js/plugins/autosize/autosize.min.js"></script>
		<script src="aspinia/js/plugins/chosen/chosen.js"></script>
		<script src="aspinia/js/plugins/dotdotdot/jquery.dotdotdot.min.js"></script>
		<script src="aspinia/js/plugins/input_masks/angular-input-masks-standalone.min.js"></script>
		<script src="aspinia/js/plugins/jasny/jasny-bootstrap.min.js"></script>
		<script src="aspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
		<script src="aspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="aspinia/js/plugins/masonry/angular-masonry.min.js"></script>
		<script src="aspinia/js/plugins/elastic/elastic.js"></script>
		<script src="aspinia/js/plugins/chosen/chosen.jquery.js"></script>
		<script src="aspinia/js/plugins/chosen/chosen.js"></script>
		<script src="aspinia/js/plugins/wow/wow.min.js"></script>

		<!--<div ng-include="'app/private/cambiarClave.jsp'"></div>-->

	

		<!-- Angular Usuarios -->
		<script src="app/login/login.controller.js"></script>
		<script src="app/login/login.factory.js"></script>

		<!-- Angular Preguntas -->
		<script src="app/preguntas/preguntas.controller.js"></script>
		<script src="app/preguntas/preguntas.factory.js"></script>
		<script src="app/preguntas/edicion.controller.js"></script>
		<script src="app/preguntas/selectPreguntas.controller.js"></script>

			<!-- Angular Encuesta -->
			<script src="app/encuesta/encuesta.controller.js"></script>
			<script src="app/encuesta/encuesta.factory.js"></script>		

	</body>
		<script>
			// $(document).ready(function () {
			// 	// Page scrolling feature
			// 	$('a.page-scroll').bind('click', function (event) {
			// 		var link = $(this);
			// 		$('html, body').stop().animate({
			// 			scrollTop: $(link.attr('href')).offset().top - 50
			// 		}, 500);
			// 		event.preventDefault();
			// 		if ($('body').hasClass('body-small')) {
			// 			$('#navbar').collapse('toggle');
			// 		}
			// 	});

			// 	// Activate WOW.js plugin for animation on scrol
			// 	new WOW().init();
			// });

			var cbpAnimatedHeader = (function () {
				var docElem = document.documentElement,
					header = document.querySelector('.navbar-default'),
					didScroll = false,
					changeHeaderOn = 200;

				function init() {
					window.addEventListener('scroll', function (event) {
						if (!didScroll) {
							didScroll = true;
							setTimeout(scrollPage, 250);
						}
					}, false);
				}

				function scrollPage() {
					var sy = scrollY();
					if (sy >= changeHeaderOn) {
						$(header).addClass('navbar-scroll')
					} else {
						$(header).removeClass('navbar-scroll')
					}
					didScroll = false;
				}

				function scrollY() {
					return window.pageYOffset || docElem.scrollTop;
				}
				init();

			})();
		</script>

	</html>