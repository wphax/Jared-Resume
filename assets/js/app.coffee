angular.module 'wphax', [ 'ui.router', 'wphax.controllers' ]

.config [ '$stateProvider', '$urlRouterProvider',  ( $stateProvider, $urlRouterProvider ) ->
	$stateProvider

	.state 'home', {
		url: '/home'
		templateUrl: 'templates/home.html'
		controller: 'HomeController'
	}

	$urlRouterProvider.otherwise '/home'

	return
]