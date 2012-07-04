Formal = require "../lib/formal"

describe "Formal", ->
  Class = null

  beforeEach ->
    class Class
      constructor: (@attribute) ->

  it "is included in an object", ->
    object = new Class
    Formal.is_included_into object
    expect(object.validate).toBeDefined()

  it "extends a object", ->
    Formal.extends Class
    expect(Class.validate).toBeDefined()

  describe "an object", ->
    object = null

    beforeEach ->
      object = new Class
      Formal.is_included_into object

    it "validates an object with no validations", ->
      object.validate()
      expect(object.valid).toBeTruthy()
