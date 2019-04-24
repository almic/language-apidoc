/**
 * Probably not the most elegant way to inject into comments, but right now
 * this is the best we can do until Max decides to either fix tree-sitter or
 * delete it entirely, which honeslty I think would be the best solution
 */

exports.activate = function () {

    /* We must do this so that the jsdoc parser f***s off so this parser can
     * actually highlight properly, because otherwise jsdoc goes crazy.
     * Let it be known this is an inherent flaw with tree-sitter, because for
     * some reason Max thought it'd be cool to let multiple parsers highlight
     * the same text    >:(
     */

    atom.packages.onDidActivatePackage(package => { if (package.name == 'language-javascript') {

        var js = atom.grammars.grammarForId('source.js')
        if (js) {
            delete js.injectionPointsByType['comment']

            for (const scopeName of ['source.js', 'source.flow', 'source.ts']) {
                atom.grammars.addInjectionPoint(scopeName, {
                    type: 'comment',
                    language (comment) {
                        if (comment.text.startsWith('/**') && !comment.text.includes('@api')) return 'jsdoc'
                    },
                    content (comment) {
                        return comment
                    }
                })
            }

            atom.grammars.grammarAddedOrUpdated(js)
        }

        for (const scopeName of ['source.js', 'source.flow', 'source.ts', 'source.php']) {
            atom.grammars.addInjectionPoint(scopeName, {
                type: 'comment',
                language (comment) {
                    if (comment.text.startsWith('/**')) return 'apidoc'
                },
                content: clean_content
            })
        }

        /* TODO: As soon as GitHub staff decide to make coffee script tree-sitter, uncomment this
            atom.grammars.addInjectionPoint('source.coffee', {
                type: 'comment',
                language (comment) {
                    if (comment.text.startsWidth('###')) return 'apidoc'
                }
            })
        */

        atom.grammars.addInjectionPoint('source.python', {
            type: 'string',
            language (string) {
                if (string.text.startsWith('"""') || string.text.startsWith("'''")) return 'apidoc'
            },
            content: clean_content
        })

        atom.grammars.addInjectionPoint('source.ruby', {
            type: 'comment',
            language (comment) {
                if (comment.text.startsWith('=begin')) return 'apidoc'
            },
            content: clean_content
        })
    }})

}

function clean_content (node) {
    //console.log(node)
    //console.log(node.text)
    //console.log(node.children)
    return node
}
