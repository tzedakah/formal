Numeric = require "../../lib/rules/numeric"

describe "Numeric", ->
  validator = null

  beforeEach ->
    object = 
      number: "String"
    validator = new Numeric object, "number"

  it "invalidates attributes that are not numbers", ->
    expect(validator.valid()).toEqual false

  it "returns a message", ->
    expect(validator.run().message).toBeDefined()
