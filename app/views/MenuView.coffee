{OrderModel} = require 'models/OrderModel'
class exports.MenuView extends Backbone.View
  id: 'head'

  events:   
    "click #addNewOrder": "onAddClick"

  initialize: (title, tooltip)=>
    @template = require('./templates/menu')
    @title = title
    @tooltip = tooltip

  render: ->
    $(@el).html @template({title: @title, tooltip: @tooltip})
    this

  onAddClick: ->
    m = new OrderModel
    app.orders.add m