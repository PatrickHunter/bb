# for more details see: http://emberjs.com/guides/models/defining-models/

Basebox.Item = DS.Model.extend
  name: DS.attr 'string'
  type: DS.attr 'type'
  traits: DS.attr 'hash'
