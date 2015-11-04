finalProject = angular.module 'finalProject', [
  'templates',
  'ui.router',
  'controllers',
]

finalProject.config [ '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $stateProvider
    .state 'home',
        url: '/'
        templateUrl: 'index.html'
        controller: 'HomeController'

    # default fall back route
    $urlRouterProvider.otherwise '/'

    # enable HTML5 Mode for SEO
    $locationProvider.html5Mode
      enabled: true
      requireBase: true
]

controllers = angular.module 'controllers', []