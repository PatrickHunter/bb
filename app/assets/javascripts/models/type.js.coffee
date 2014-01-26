# for more details see: http://emberjs.com/guides/models/defining-models/

Basebox.Type = DS.Model.extend
  name: DS.attr 'string'
  requiredTraits: DS.attr 'set'
  optionalTraits: DS.attr 'set'
