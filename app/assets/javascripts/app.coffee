delve = angular.module 'delve', [
  'templates',
  'ui.router',
  'controllers',
  'angularUtils.directives.dirPagination',
  'nya.bootstrap.select',
]

delve.config [ '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $stateProvider
    .state 'home',
        url: '/'
        templateUrl: 'home/home.html'
        controller: 'HomeController'

    # default fall back route
    $urlRouterProvider.otherwise '/'

    # enable HTML5 Mode for SEO
    $locationProvider.html5Mode
      enabled: true
      requireBase: true
]

controllers = angular.module 'controllers', []