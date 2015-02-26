angular.module 'wphax', [ 'ui.router', 'wphax.controllers' ]

.config [ '$stateProvider', '$urlRouterProvider',  ( $stateProvider, $urlRouterProvider ) ->
	$stateProvider

	.state 'main', {
		url: '/main'
		abstract: true
		templateUrl: 'templates/main.html'
		controller: 'AppCtrl'
	}

	.state 'main.home', {
		url: '/home'
		templateUrl: 'templates/main.home.html'
	}

	.state 'admin', {
		url: '/admin'
		abstract: true
		templateUrl: 'templates/admin.html'
		controller: 'AdminCtrl'
	}

	.state 'admin.dashboard', {
		url: '/dashboard'
		templateUrl: 'templates/admin.home.html'
	}

	$urlRouterProvider.otherwise '/main/home'

	return
]