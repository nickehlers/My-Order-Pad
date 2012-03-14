{BrunchApplication} = require 'helpers'
{MainRouter} = require 'routers/main_router'
{HomeView} = require 'views/HomeView'
{OrderCollection} = require 'collections/OrderCollection'


class exports.Application extends BrunchApplication
  # This callback would be executed on document ready event.
  # If you have a big application, perhaps it's a good idea to
  # group things by their type e.g. `@views = {}; @views.home = new HomeView`.
  initialize: ->
    @router = new MainRouter()
    @orders = new OrderCollection
    @homeView = new HomeView
    

window.app = new exports.Application
