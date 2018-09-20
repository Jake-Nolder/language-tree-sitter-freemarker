# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "TreeSitterFreemarker grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-tree-sitter-freemarker")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.tree-sitter-freemarker")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.tree-sitter-freemarker"
