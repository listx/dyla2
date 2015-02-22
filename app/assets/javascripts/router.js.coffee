# For more information see: http://emberjs.com/guides/routing/

Dyla.Router.reopen
  location: 'auto'
#  rootURL: '/'

Dyla.Router.map ()->
  @resource 'game_decks', path: '/'

Dyla.GameDecksRoute = Ember.Route.extend
  model: -> @store.find 'game_deck'
