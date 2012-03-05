class exports.MainRouter extends Backbone.Router
  routes :
    '': 'home'

  home: ->
    $('body').html app.homeView.render().el
    $('#viewporter').append app.menuView.render().el
    $('#viewporter').append app.contentView.render().el
   