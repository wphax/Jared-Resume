// Generated by CoffeeScript 1.8.0
(function() {
  angular.module('wphax.controllers', ['ui.router']).controller('AppCtrl', [
    '$scope', '$state', '$http', function($scope, $state, $http) {
      $scope.contact = [];
      $scope.sendEmail = function() {
        console.log($scope.contact);
        if (!$scope.contact.sender_name || !$scope.contact.sender_email || !$scope.contact.message) {
          return alert('busted!');
        }
      };
    }
  ]).controller('AdminCtrl', ['$scope', '$state', function($scope, $state) {}]);

}).call(this);
