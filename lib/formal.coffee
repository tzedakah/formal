class Formal
  @validators: [ "presence", "numeric" ]
  
  @validate: ->
    @valid = true

  @is_included_into: (object) ->
    object.__proto__.validate = Formal.validate

  @extends: (klass) ->
    klass.validate = Formal.validate

module.exports = Formal
