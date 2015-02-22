# for more details see: http://emberjs.com/guides/models/defining-models/

Dyla.Card = DS.Model.extend
  name: DS.attr('string')
  cost: DS.attr('number')
