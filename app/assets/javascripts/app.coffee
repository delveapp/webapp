delve = angular.module 'delve', [
  'templates',
  'ui.router',
  'controllers',
  'angularUtils.directives.dirPagination',
  'nya.bootstrap.select',
  'ui.bootstrap',
  'angular-input-stars',
]

delve.config [ '$stateProvider', '$urlRouterProvider', '$locationProvider', '$urlMatcherFactoryProvider'
  ($stateProvider, $urlRouterProvider, $locationProvider, $urlMatcherFactoryProvider) ->

    $urlMatcherFactoryProvider.strictMode false
    menuItemUrl = $urlMatcherFactoryProvider.compile("/restaurant/:restaurantName/:menuItemId");

    $stateProvider
    .state 'home',
      url: '/'
      templateUrl: 'home/home.html'
      controller: 'HomeController'
    .state 'restaurant',
      url: '/restaurant/{restaurantName}'
      templateUrl: 'restaurants/restaurant.html'
      controller: 'RestaurantController'
    .state 'menuItem',
      url: menuItemUrl
      templateUrl: 'menu_items/menu_item.html'
      controller: 'MenuItemController'

    # default fall back route
    $urlRouterProvider.otherwise '/'

    # enable HTML5 Mode for SEO
    $locationProvider.html5Mode
      enabled: true
      requireBase: true
]

controllers = angular.module 'controllers', []