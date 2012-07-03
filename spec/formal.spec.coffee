Formal = require "../lib/formal"

describe "Formal", ->
  Class = null

  beforeEach ->
    class Class
      constructor: (@attribute) ->

  it "is included in an object", ->
    Formal.is_included_into Class
    object = new Class
    expect(object.validate).toBeDefined()

  it "extends a object", ->
    Formal.extends Class
    expect(Class.validate).toBeDefined()

  describe "an object", ->
    object = null

    beforeEach ->
      Formal.is_included_into Class
      object = new Class

    it "validates an object with no validations", ->
      object.validate()
      expect(object.valid).toBeTruthy()
