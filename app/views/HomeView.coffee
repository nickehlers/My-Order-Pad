{MenuView} = require 'views/MenuView'
{ContentView} = require 'views/ContentView'

class exports.HomeView extends Backbone.View
  id: 'viewporter'
  
  initialize: =>
  	@template = require('./templates/home')

  render: ->
    $(@el).html @template()
    contentView = new ContentView(app.orders)
    menuView = new MenuView("My Pizza App", "Add New Pizza Order")
    $(@el).append menuView.render().el
    $(@el).append contentView.render().el
    this
