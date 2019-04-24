/**
 * Probably not the most elegant way to inject into comments, but right now
 * this is the best we can do until Max decides that removing regex scope
 * injection was a poor decision ;)
 */

exports.activate = function () {
    if (!atom.grammars.addInjectionPoint) return

    for (const scopeName of ['source.js', 'source.flow', 'source.ts', 'source.php']) {
        atom.grammars.addInjectionPoint(scopeName, {
            type: 'comment',
            language (comment) {
                //console.log(comment)
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
            //console.log(string)
            if (string.text.startsWith('"""') || string.text.startsWith("'''")) return 'apidoc'
        },
        content: clean_content
    })

    atom.grammars.addInjectionPoint('source.ruby', {
        type: 'comment',
        language (comment) {
            console.log(comment)
            if (comment.text.startsWith('=begin')) return 'apidoc'
        },
        content: clean_content
    })

}

function clean_content (node) {
    //console.log(node)
    //console.log(node.text)
    //console.log(node.children)
    return node
}
