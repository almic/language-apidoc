describe "apiDoc grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-apidoc")

    waitsForPromise ->
      atom.packages.activatePackage("language-javascript") # We'll make things simple and test with js only

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.js")

  describe "all tags", ->
    it "tokenises all standalone tags", ->
      {tokens} = grammar.tokenizeLine('/** @api */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'api', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiDefine */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDefine', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiDeprecated */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDeprecated', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiDescription */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDescription', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiError */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiError', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiErrorExample */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiErrorExample', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiExample */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiExample', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiGroup */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiGroup', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiHeader */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiHeaderExample */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeaderExample', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiIgnore */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiIgnore', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiName */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiName', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiParam */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiParamExample */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParamExample', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiPermission */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiPermission', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiPrivate */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiPrivate', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiSampleRequest */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSampleRequest', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiSuccess */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSuccess', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiSuccessExample */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSuccessExample', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiUse */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiUse', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiVersion */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiVersion', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@api tag", ->
    it "tokenises request methods", ->
      {tokens} = grammar.tokenizeLine('/** @api {get} */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'api', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{get}', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises method and path", ->
      {tokens} = grammar.tokenizeLine('/** @api {post} /path/to/api Description. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'api', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{post}', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '/path/to/api', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.link.apidoc']
      expect(tokens[8]).toEqual value: ' Description. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "ignores incorrect request methods", ->
      {tokens} = grammar.tokenizeLine('/** @api {none} */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'api', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' {none} ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiDefine tag", ->
    it "tokenises valid names", ->
      {tokens} = grammar.tokenizeLine('/** @apiDefine name_of_block */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDefine', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'name_of_block', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises invalid names", ->
      {tokens} = grammar.tokenizeLine('/** @apiDefine bad-name! */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDefine', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'bad-name!', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.illegal.syntax.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises optional titles", ->
      {tokens} = grammar.tokenizeLine('/** @apiDefine name_of_block Multiple word title. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDefine', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'name_of_block', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: 'Multiple word title.', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.link.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiDeprecated tag", ->
    it "tokenises base tag while ignoring extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiDeprecated Extra stuff here, totally optional. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDeprecated', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' Extra stuff here, totally optional. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiDescription tag", ->
    it "tokenises base tag while ignoring extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiDescription Extra stuff here, totally optional. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiDescription', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' Extra stuff here, totally optional. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiError tag", ->
    it "tokenises simple required name", ->
      {tokens} = grammar.tokenizeLine('/** @apiError field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiError', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises optional name", ->
      {tokens} = grammar.tokenizeLine('/** @apiError [optional="default"] */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiError', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '[', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'meta.brace.square.apidoc']
      expect(tokens[6]).toEqual value: 'optional', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'variable.other.apidoc']
      expect(tokens[7]).toEqual value: '=', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'keyword.operator.assignment.apidoc']
      expect(tokens[8]).toEqual value: '"default"', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'constant.other.apidoc']
      expect(tokens[9]).toEqual value: ']', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'meta.brace.square.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises group and type", ->
      {tokens} = grammar.tokenizeLine('/** @apiError (group name) field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiError', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '(', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[6]).toEqual value: 'group name', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[7]).toEqual value: ')', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiError {Type} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiError', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "ignores extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiError field_name Optional, additional information. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiError', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' Optional, additional information. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  # Because all example-type tags are under the same exact regex, we only need to test one of them
  describe "@apiExample tags", ->
    it "tokenises optional title and type", ->
      {tokens} = grammar.tokenizeLine('/** @apiExample {type_name} Example-Thing: */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiExample', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' {', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'type_name', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[6]).toEqual value: '} ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: 'Example-Thing:', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiGroup tag", ->
    it "tokenises name", ->
      {tokens} = grammar.tokenizeLine('/** @apiGroup Name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiGroup', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'Name', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiHeader tag", ->
    it "tokenises simple required name", ->
      {tokens} = grammar.tokenizeLine('/** @apiHeader field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises optional name", ->
      {tokens} = grammar.tokenizeLine('/** @apiHeader [optional="default"] */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '[', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'meta.brace.square.apidoc']
      expect(tokens[6]).toEqual value: 'optional', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'variable.other.apidoc']
      expect(tokens[7]).toEqual value: '=', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'keyword.operator.assignment.apidoc']
      expect(tokens[8]).toEqual value: '"default"', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'constant.other.apidoc']
      expect(tokens[9]).toEqual value: ']', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'meta.brace.square.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises group and type", ->
      {tokens} = grammar.tokenizeLine('/** @apiHeader (group name) field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '(', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[6]).toEqual value: 'group name', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[7]).toEqual value: ')', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiHeader {Type} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises additional type information", ->
      {tokens} = grammar.tokenizeLine('/** @apiHeader {Type{123}} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[8]).toEqual value: '123', scopes: ['source.js', 'comment.block.documentation.js', 'constant.numeric.apidoc']
      expect(tokens[9]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[10]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[11]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[12]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[13]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[14]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiHeader {Type="allowed", "values"} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '=', scopes: ['source.js', 'comment.block.documentation.js', 'keyword.operator.assignment.apidoc']
      expect(tokens[8]).toEqual value: '"allowed", "values"', scopes: ['source.js', 'comment.block.documentation.js', 'constant.other.apidoc']
      expect(tokens[9]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[12]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[13]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "ignores extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiHeader field_name Optional, additional information. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiHeader', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' Optional, additional information. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiIgnore tag", ->
    it "tokenises base tag while ignoring extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiIgnore Extra stuff here, totally optional. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiIgnore', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' Extra stuff here, totally optional. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiName tag", ->
    it "tokenises name", ->
      {tokens} = grammar.tokenizeLine('/** @apiName Name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiName', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'Name', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiParam tag", ->
    it "tokenises simple required name", ->
      {tokens} = grammar.tokenizeLine('/** @apiParam field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises optional name", ->
      {tokens} = grammar.tokenizeLine('/** @apiParam [optional="default"] */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '[', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'meta.brace.square.apidoc']
      expect(tokens[6]).toEqual value: 'optional', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'variable.other.apidoc']
      expect(tokens[7]).toEqual value: '=', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'keyword.operator.assignment.apidoc']
      expect(tokens[8]).toEqual value: '"default"', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'constant.other.apidoc']
      expect(tokens[9]).toEqual value: ']', scopes: ['source.js', 'comment.block.documentation.js', 'markup.underline', 'meta.brace.square.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises group and type", ->
      {tokens} = grammar.tokenizeLine('/** @apiParam (group name) field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '(', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[6]).toEqual value: 'group name', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[7]).toEqual value: ')', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiParam {Type} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises additional type information", ->
      {tokens} = grammar.tokenizeLine('/** @apiParam {Type{123}} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[8]).toEqual value: '123', scopes: ['source.js', 'comment.block.documentation.js', 'constant.numeric.apidoc']
      expect(tokens[9]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[10]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[11]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[12]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[13]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[14]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiParam {Type="allowed", "values"} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '=', scopes: ['source.js', 'comment.block.documentation.js', 'keyword.operator.assignment.apidoc']
      expect(tokens[8]).toEqual value: '"allowed", "values"', scopes: ['source.js', 'comment.block.documentation.js', 'constant.other.apidoc']
      expect(tokens[9]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[12]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[13]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "ignores extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiParam field_name Optional, additional information. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiParam', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' Optional, additional information. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiPermission tag", ->
    it "tokenises name", ->
      {tokens} = grammar.tokenizeLine('/** @apiPermission name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiPermission', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'name', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiPrivate tag", ->
    it "tokenises base tag while ignoring extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiPrivate Extra stuff here, totally optional. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiPrivate', scopes: ['source.js', 'comment.block.documentation.js', 'entity.other.apidoc', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' Extra stuff here, totally optional. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiSampleRequest tag", ->
    it "tokenises url", ->
      {tokens} = grammar.tokenizeLine('/** @apiSampleRequest https://example.com/path */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSampleRequest', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'https://example.com/path', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.link.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokensises special \"off\" property", ->
      {tokens} = grammar.tokenizeLine('/** @apiSampleRequest off */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSampleRequest', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'off', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiSuccess tag", ->
    it "tokenises name", ->
      {tokens} = grammar.tokenizeLine('/** @apiSuccess field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSuccess', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises group and type", ->
      {tokens} = grammar.tokenizeLine('/** @apiSuccess (200) field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSuccess', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '(', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[6]).toEqual value: '200', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[7]).toEqual value: ')', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.round.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiSuccess {Type} field_name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSuccess', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '{', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[6]).toEqual value: 'Type', scopes: ['source.js', 'comment.block.documentation.js', 'entity.name.type.instance.apidoc']
      expect(tokens[7]).toEqual value: '}', scopes: ['source.js', 'comment.block.documentation.js', 'meta.brace.curly.apidoc']
      expect(tokens[8]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[9]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[10]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[11]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "ignores extra content", ->
      {tokens} = grammar.tokenizeLine('/** @apiSuccess field_name Optional, additional information. */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiSuccess', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'field_name', scopes: ['source.js', 'comment.block.documentation.js', 'variable.other.apidoc']
      expect(tokens[6]).toEqual value: ' Optional, additional information. ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiUse tag", ->
    it "tokenises name", ->
      {tokens} = grammar.tokenizeLine('/** @apiUse Name */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiUse', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'Name', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "@apiVersion tag", ->
    it "tokenises semantic versions", ->
      {tokens} = grammar.tokenizeLine('/** @apiVersion 3.5.2-beta+13062018 */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiVersion', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: '3.5.2-beta+13062018', scopes: ['source.js', 'comment.block.documentation.js', 'markup.raw.constant.numeric.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

    it "tokenises other version formats", ->
      {tokens} = grammar.tokenizeLine('/** @apiVersion V2 */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc', 'punctuation.definition.block.tag.apidoc']
      expect(tokens[3]).toEqual value: 'apiVersion', scopes: ['source.js', 'comment.block.documentation.js', 'storage.type.class.apidoc']
      expect(tokens[4]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[5]).toEqual value: 'V2', scopes: ['source.js', 'comment.block.documentation.js', 'constant.language.symbol-type.apidoc']
      expect(tokens[6]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[7]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

  describe "deprecated tags", ->
    it "tokenises all deprecated tags", ->
      {tokens} = grammar.tokenizeLine('/** @apiDefineErrorStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiDefineErrorStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiDefineHeaderStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiDefineHeaderStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiDefinePermission */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiDefinePermission', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiDefineStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiDefineStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiDefineSuccessStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiDefineSuccessStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiErrorStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiErrorStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiErrorTitle */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiErrorTitle', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiGroupDescription */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiGroupDescription', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiHeaderStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiHeaderStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiHeaderTitle */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiHeaderTitle', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiParamTitle */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiParamTitle', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiSuccessStructure */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiSuccessStructure', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']

      {tokens} = grammar.tokenizeLine('/** @apiSuccessTitle */')
      expect(tokens[0]).toEqual value: '/**', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.begin.js']
      expect(tokens[1]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[2]).toEqual value: '@apiSuccessTitle', scopes: ['source.js', 'comment.block.documentation.js', 'invalid.deprecated.syntax.apidoc']
      expect(tokens[3]).toEqual value: ' ', scopes: ['source.js', 'comment.block.documentation.js']
      expect(tokens[4]).toEqual value: '*/', scopes: ['source.js', 'comment.block.documentation.js', 'punctuation.definition.comment.end.js']
