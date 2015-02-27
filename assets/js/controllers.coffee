angular.module 'wphax.controllers', [ 'ui.router' ]

.controller 'AppCtrl', [ '$scope', '$state', '$http', ( $scope, $state, $http ) ->
	$scope.contact = []

	$scope.sendEmail = ->
		console.log $scope.contact

		if !$scope.contact.sender_name or !$scope.contact.sender_email or !$scope.contact.message
			alert 'busted!'

	return
]

.controller 'AdminCtrl', [ '$scope', '$state', ( $scope, $state ) ->
	return
]