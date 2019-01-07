# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "Freemarker grammar", ->
  grammar = null

  beforeEach ->
    atom.config.set('core.useTreeSitterParsers', false)

    waitsForPromise ->
      atom.packages.activatePackage("tsl-freemarker")

    runs ->
      grammar = atom.syntax.grammarForScopeName("text.freemarker")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "text.freemarker"
