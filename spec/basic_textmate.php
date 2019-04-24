<?

/* PHP still uses textmate highlighting, so this serves as an example of the "old" way.
 * Should they ever tarnish PHP by converting it to a tree-sitter grammar, this file should be
 * replaced with some other language.
 *
 * That, or you could update the parser so that the textmate version appears in the language
 * selection list, which would be very *lip smack* NOICE :D
 */

 /**
              // For some cute reason, PHPDoc thinks missing asterisks are the devil, Bobby :3 //
  * @api
  *
  * @api {}           // TODO, should highlight as method, also FIXME highlighing out here
  * @api {get}
  * @api {get}abc
  *
  * @api /            // TODO, should highlight here
  * @api /path:id
  * @api /path?abc    // This is correct, the path shouldn't be highlighted here
  *
  * @api Title        // TODO, should highlight here
  * @api Title here
  * @api Title here */

 /**
  * @api /path Title  // TODO, should highlight here
  * @api {get} /path
  * @api {get} Title  // TODO, should highlight as title, not path
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
  * @apiError ()            // TODO, should highlight group, also FIXME highlighting the // as a name
  * @apiError (group)
  * @apiError (group space)
  *
  * @apiError {}            // TODO, should highlight type, also FIXME highlighting the // as a name
  * @apiError {Type}
  * @apiError {Spaces Aren't Allowed}  // TODO, maybe change to no highlighting instead of this invalid stuff
  * @apiError {Type}}  // TODO, see the one above
  *
  * @apiError field
  * @apiError field%  // TODO, maybe change to no highlighting instead of this invalid stuff
  *
  * @apiError {type} name
  * @apiError (group) name
  * @apiError (group) {type}
  * @apiError (group) {type} name
  *
  *
  * @apiErrorExample
  *
  * @apiErrorExample {}    // TODO, should highlight type
  * @apiErrorExample {Type}  // TODO, should highlight brackets, also FIXME highlighting out here
  * @apiErrorExample {Spaces Aren't Allowed}
  * @apiErrorExample {Type}}  // NOTE as above, maybe just do no highlighting instead of invalid stuff
  *
  * @apiErrorExample Title here  // TODO, should highlight here
  * @apiErrorExample Title here
  * Some example things
  *
  * @apiErrorExample {type} Title here
  * Some example thingys
  *
  *
  * @apiExample
  *
  * @apiExample {}    // TODO, should highlight type
  * @apiExample {Type}
  * @apiExample {Spaces Aren't Allowed}
  * @apiExample {Type}}
  *
  * @apiExample Title here  // TODO, should highlight here
  * @apiExample Title here
  * Some example things
  *
  * @apiExample {type} Title here  // TODO, should highlight brackets, also FIXME highlighting out here
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
  * @apiHeader ()            // TODO, should highlight group, also FIXME highlighting the // as a name
  * @apiHeader (group)
  * @apiHeader (group space)
  *
  * @apiHeader {}            // TODO, should highlight type, also FIXME highlighting the // as a name
  * @apiHeader {Type}
  * @apiHeader {Spaces Aren't Allowed}
  * @apiHeader {Type}}
  *
  * @apiHeader field
  * @apiHeader [field]                        // TODO, should not highlight brackets here
  * @apiHeader [field=]                       // TODO, equals should not be highlighted
  * @apiHeader [field=default here]
  * @apiHeader field=nohighlight
  * @apiHeader field Some description
  *
  * @apiHeader {type} name
  * @apiHeader {type} [name]                  // TODO, should not highlight brackets here
  * @apiHeader {type} [name=default]          // TODO, equals should not be highlighted
  *
  * @apiHeader {type} name=nohighlight
  * @apiHeader {type} name Some description
  * @apiHeader (group) name
  * @apiHeader (group) [name]                 // TODO, should not highlight brackets here
  * @apiHeader (group) [name=default]         // TODO, equals should not be highlighted
  * @apiHeader (group) name=nohighlight
  * @apiHeader (group) name Some description
  * @apiHeader (group) {type}
  * @apiHeader (group) {type} name
  * @apiHeader (group) {type} [name]          // TODO, should not highlight brackets here
  * @apiHeader (group) {type} [name=default]  // TODO, equals should not be highlighted
  * @apiHeader (group) {type} name=nohighlight
  * @apiHeader (group) {type} name Some description
  *
  *
  * @apiHeaderExample
  *
  * @apiHeaderExample {}    // TODO, should highlight type
  * @apiHeaderExample {Type}
  * @apiHeaderExample {Spaces Aren't Allowed}
  * @apiHeaderExample {Type}}
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
  * @apiSuccess {Spaces Aren't Allowed}
  * @apiSuccess {Type}}
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
  * @apiSuccessExample {}    // TODO, should highlight type
  * @apiSuccessExample {Type}
  * @apiSuccessExample {Spaces Aren't Allowed}
  * @apiSuccessExample {Type}}
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


?>
