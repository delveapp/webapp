delve = angular.module('delve')

delve.directive 'dvMenuSelection', () ->
  (scope, elem, attrs) ->
    elem.bind 'change', (e) ->
      if attrs.id is 'search-radius'
        scope.searchRadius = e.target.selectedOptions[0].attributes['data-value']['value']
      else if attrs.id is 'sort-order'
        scope.sortOrder = e.target.selectedOptions[0].attributes['data-value']['value']
      scope.$apply()
      getTopMenuItems()

    getTopMenuItems = ->
      jQuery.ajax
        url: '/api/home/top_menu_items?latitude=42.337443&longitude=-71.086074&range=' + scope.searchRadius + '&limit=2$sortOrder=' + scope.sortOrder,
        success: (response) ->
          scope.menuItems = response['data']
          scope.$apply()