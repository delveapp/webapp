delve = angular.module 'delve', [
  'templates',
  'ui.router',
  'controllers',
  'angularUtils.directives.dirPagination',
  'nya.bootstrap.select',
  'ui.bootstrap',
  'angular-input-stars',
  'Devise',
]

delve.config [ '$stateProvider', '$urlRouterProvider', '$locationProvider', '$urlMatcherFactoryProvider'
  ($stateProvider, $urlRouterProvider, $locationProvider, $urlMatcherFactoryProvider, AuthProvider) ->

    $.notifyDefaults({
      type: 'info',
      allow_dismiss: true
      placement: {
        from: "top",
        align: "right"
      },
      delay: 1000,
      animate: {
        enter: 'animated fadeInDown',
        exit: 'animated fadeOutUp'
      }

    });


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
    .state 'login',
      url: '/',
      templateUrl: '/app/views/welcome/_login_modal.html.erb',
      controller: 'AuthController',
      onEnter: ['$state', 'Auth', ($state, Auth) ->
          Auth.currentUser().then(() ->
            $state.go('/')
          )
        ]
    .state 'signup',
      url: '/users/sign_up',
      templateUrl: '/app/views/welcome/_signup_modal.html.erb',
      controller: 'AuthController',

    # default fall back route
    $urlRouterProvider.otherwise '/'

    # enable HTML5 Mode for SEO
    $locationProvider.html5Mode
      enabled: true
      requireBase: true
]

controllers = angular.module 'controllers', []