# for more details see: http://emberjs.com/guides/models/defining-models/

Basebox.Type = DS.Model.extend
  name: DS.attr 'string'
  requiredAttributes: DS.attr 'set'
  optionalAttributes: DS.attr 'set'
