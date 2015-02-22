# For more information see: http://emberjs.com/guides/routing/

Dyla.Router.reopen
  location: 'auto'
#  rootURL: '/'

Dyla.Router.map ()->
  @resource 'cards', path: '/'
#  @resource 'cards'

Dyla.CardsRoute = Ember.Route.extend
  model: -> @store.find 'card'
