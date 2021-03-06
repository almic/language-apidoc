## apiDoc highlighting for Atom

**Because tree-sitter is still in development, this pacakge will disable JSDoc highlighting in apiDoc comment blocks. If this is causing problems for you, the only solution is to disable tree-sitter in your settings.**

**Also, Python is broken. I really don't understand why. Trying to get this fixed ASAP**

The official unofficial atom grammar package for [apiDoc](http://apidocjs.com/). Install this and *it just works*. No extra setup neccessary.

* ```apm install language-apidoc```

I found apiDoc and was surprised it didn't have an Atom grammar yet, so I made it.

This should automatically work with any languages that support block comments for documentation. Since this injects itself into anything that looks like a documentation block comment, it may misbehave with other packages the work inside comment blocks. You can simply disable the package if this becomes a problem.

Please [open an issue](https://github.com/almic/language-apidoc/issues) if you find a language that isn't getting the right highlighting.

Supported languages:
* JavaScript
* CoffeeScript
* Ruby

Other languages may work as well, but these are guaranteed to work correctly.

## Snippets
Also comes with a few snippets to make life easier.

<br>

**`apiDoc`**
```js
/**
 * @api {get} /path title
 * @apiVersion 0.0.0
 * @apiName
 * @apiGroup
 */
```

<br>

**`apiDefine`**
```js
/**
 * @apiDefine Name Title
 * Description
 * @apiVersion 0.0.0
 */
```
