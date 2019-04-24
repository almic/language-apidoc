/**
 * @api
 *
 * @api {}           // TODO, should highlight as method, also FIXME highlighing out here
 * @api {get}
 * @api {get}abc
 *
 * @api /
 * @api /path:id
 * @api /path?abc   // TODO, should not highlight this at all because it's an invalid path
 *
 * @api Title
 * @api Title here
 * @api Title here */  // TODO, should not highlight the end of comment bit

/**
 * @api /path Title
 * @api {get} /path
 * @api {get} Title
 * @api {get} /path Title
 *
 *
 * @apiDefine
 *
 * @apiDefine name_abc
 * @apiDefine name_abc Title things
 * @apiDefine name_abc Title things
 * Additional decsriptive text.
 *
 *
 * @apiDeprecated
 *
 * @apiDeprecated Additional text
 *
 *
 * @apiDescription
 *
 * @apiDescription Some text
 *
 *
 * @apiError
 *
 * @apiError ()
 * @apiError (group)
 * @apiError (group space)
 *
 * @apiError {}            // TODO, should highlight type, also FIXME highlighting the // as a name
 * @apiError {Type}
 * @apiError {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiError {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiError field
 * @apiError field% // TODO, should stop highlighting on the '%'
 *
 * @apiError {type} name
 * @apiError (group) name
 * @apiError (group) {type}
 * @apiError (group) {type} name
 *
 *
 * @apiErrorExample
 *
 * @apiErrorExample {}    // TODO, should highlight type, also FIXME highlighting out here
 * @apiErrorExample {Type}
 * @apiErrorExample {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiErrorExample {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiErrorExample Title here
 * @apiErrorExample Title here
 * Some example things
 *
 * @apiErrorExample {type} Title here
 * Some example thingys
 *
 *
 * @apiExample
 *
 * @apiExample {}    // TODO, should highlight type, also FIXME highlighting out here
 * @apiExample {Type}
 * @apiExample {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiExample {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiExample Title here
 * @apiExample Title here
 * Some example things
 *
 * @apiExample {type} Title here
 * Some example thingys
 *
 *
 * @apiGroup
 *
 * @apiGroup Name
 * @apiGroup Longer Name
 *
 *
 * @apiHeader
 *
 * @apiHeader ()
 * @apiHeader (group)
 * @apiHeader (group space)
 *
 * @apiHeader {}            // TODO, should highlight type, also FIXME highlighting the // as a name
 * @apiHeader {Type}
 * @apiHeader {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiHeader {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiHeader field
 * @apiHeader [field]
 * @apiHeader [field=]
 * @apiHeader [field=default here]
 * @apiHeader field=nohighlight
 * @apiHeader field Some description
 *
 * @apiHeader {type} name
 * @apiHeader {type} [name]
 * @apiHeader {type} [name=default]
 * @apiHeader {type} name=nohighlight
 * @apiHeader {type} name Some description
 * @apiHeader (group) name
 * @apiHeader (group) [name]
 * @apiHeader (group) [name=default]
 * @apiHeader (group) name=nohighlight
 * @apiHeader (group) name Some description
 * @apiHeader (group) {type}
 * @apiHeader (group) {type} name
 * @apiHeader (group) {type} [name]
 * @apiHeader (group) {type} [name=default]
 * @apiHeader (group) {type} name=nohighlight
 * @apiHeader (group) {type} name Some description
 *
 *
 * @apiHeaderExample
 *
 * @apiHeaderExample {}    // TODO, should highlight type, also FIXME highlighting out here
 * @apiHeaderExample {Type}
 * @apiHeaderExample {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiHeaderExample {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiHeaderExample Title here
 * @apiHeaderExample Title here
 * Some example things
 *
 * @apiHeaderExample {type} Title here
 * Some example thingys
 *
 *
 * @apiIgnore
 *
 * @apiIgnore some text
 *
 *
 * @apiName
 *
 * @apiName name
 * @apiName longer name
 *
 *
 * @apiParam
 *
 * @apiParam ()
 * @apiParam (group)
 * @apiParam (group space)
 *
 * @apiParam {}            // TODO, should highlight type, also FIXME highlighting the // as a name
 * @apiParam {Type}
 * @apiParam {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiParam {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiParam field
 * @apiParam [field]
 * @apiParam [field=]
 * @apiParam [field=default here]
 * @apiParam field=nohighlight
 * @apiParam field Some description
 *
 * @apiParam {type} name
 * @apiParam {type} [name]
 * @apiParam {type} [name=default]
 * @apiParam {type} name=nohighlight
 * @apiParam {type} name Some description
 * @apiParam (group) name
 * @apiParam (group) [name]
 * @apiParam (group) [name=default]
 * @apiParam (group) name=nohighlight
 * @apiParam (group) name Some description
 * @apiParam (group) {type}
 * @apiParam (group) {type} name
 * @apiParam (group) {type} [name]
 * @apiParam (group) {type} [name=default]
 * @apiParam (group) {type} name=nohighlight
 * @apiParam (group) {type} name Some description
 *
 *
 * @apiParamExample
 *
 * @apiParamExample {}    // TODO, should highlight type, also FIXME highlighting out here
 * @apiParamExample {Type}
 * @apiParamExample {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiParamExample {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiParamExample Title here
 * @apiParamExample Title here
 * Some example things
 *
 * @apiParamExample {type} Title here
 * Some example thingys
 *
 *
 * @apiPermission
 *
 * @apiPermission name
 * @apiPermission longer name
 *
 *
 * @apiPrivate
 *
 * @apiPrivate some text
 *
 *
 * @apiSampleRequest
 *
 * @apiSampleRequest random text
 *
 * @apiSampleRequest http://www.normal-url.com/
 * @apiSampleRequest http://www.normal-url.com/ More text here
 * @apiSampleRequest https://www.secure-url.gov/and/more.html
 * @apiSampleRequest http://www.bad-url-because-of-params.com/?cannot=use,parameters
 *
 * @apiSampleRequest /path:id
 *
 * @apiSampleRequest off
 * @apiSampleRequest off Can use the "off" directive to disable test forms
 * @apiSampleRequest off_ must be surrounded by whitespace only
 *
 *
 * @apiSuccess
 *
 * @apiSuccess ()
 * @apiSuccess (group)
 * @apiSuccess (group space)
 *
 * @apiSuccess {}            // TODO, should highlight type, also FIXME highlighting the // as a name
 * @apiSuccess {Type}
 * @apiSuccess {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiSuccess {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiSuccess field
 * @apiSuccess field% // TODO, should stop highlighting on the '%'
 *
 * @apiSuccess {type} name
 * @apiSuccess (group) name
 * @apiSuccess (group) {type}
 * @apiSuccess (group) {type} name
 *
 *
 * @apiSuccessExample
 *
 * @apiSuccessExample {}    // TODO, should highlight type, also FIXME highlighting out here
 * @apiSuccessExample {Type}
 * @apiSuccessExample {Spaces Aren't Allowed}  // TODO, should not highlight type here
 * @apiSuccessExample {Type}}  // TODO, should not highlight last bracket at all
 *
 * @apiSuccessExample Title here
 * @apiSuccessExample Title here
 * Some example things
 *
 * @apiSuccessExample {type} Title here
 * Some example thingys
 *
 *
 * @apiUse
 *
 * @apiUse name
 * @apiUse longer name
 *
 *
 * @apiVersion
 *
 * @apiVersion bad
 * @apiVersion 0.1.2
 * @apiVersion 102.0.8
 * @apiVersion 0.0.0-release
 * @apiVersion 1.1.0+meta-data1234
 * @apiVersion 1.2.3-release+12345metaTIME
 */
