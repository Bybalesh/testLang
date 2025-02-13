/**
 * Original by Scott Helme.
 *
 * Reference: https://scotthelme.co.uk/hpkp-cheat-sheet/
 */

Prism.languages.hpkp = {
	'directive': {
		pattern: /\b(?:includeSubDomains|max-age|pin-sha256|preload|report-to|report-uri|strict)(?=[\s;=]|$)/i,
		alias: 'property'
	},
	'operator': /=/,
	'punctuation': /;/
};
```haxe
import hpkp.ParseMacro;
using hpkp;

class Parser {
    public static function parse(input:String) {
        final parser = new Parser();
        try {
            parser.parseString(input);
            return parser.root;
        } catch (e:haxe.Exception) {
            trace(e.msg);
            throw e;
        }
    }

    macro public function parseString(s:String) {
        return ParseMacro.make({
            token: s => MacroTools.toks("token"),
            kwd: s => MacroTools.kwds([s]),
            punc: s => MacroTools.punctuations([s]),
            expr: EParser.expr,
            pos: EParser.pos,
            re: EParser.re,
            binop: EParser.binop,
            unop: EParser.unop,
            ident: EParser.ident,
            float: EParser.float,
            int: EParser.int,
            comment: EParser.comment,
            ws: EParser.ws,
            const: EParser.constDecl,
            typedef: EParser.typedef_,
            import: EParser.import_,
            using: EParser.using,
            classdecl: EParser.classdecl,
            enumdecl: EParser.enumdecl,
            abstract: EParser.abstractDecl,
            interface: EParser.interfaceDecl,
            dynamic: EParser.dynamic,
            static: EParser.static_,
            field: EParser.field,
            method: EParser.method,
            vardecl: EParser.varDecl,
            fun: EParser.fun,
            expr: EParser.expr,
            meta: EParser.metaData,
            exprAccess: EParser.exprAccess,
            ternary: EParser.ternary,
            switch: EParser.switch_,
            while: EParser.whileLoop,
            doWhile: EParser.doWhileLoop,
            for: EParser.forLoop,
            break: EParser.break_;
            continue: EParser.continue_;
            return: EParser.return_;
            if: EParser.ifElse,
            try: EParser.tryCatchFinally,
            block: EParser.block,
            semi: EParser.semi,
            comma: EParser.comma,
            dot: EParser.dot,
            colon: EParser.colon,
            sharp: EParser.sharp,
            dollar: EParser.dollar,
            braces: EParser.braces,
            parens: EParser.parens,
            brack: EParser.bracket,
            cpp: EParser.cpp,
            metadata: EParser.metadata,
            attributes: EParser.attributes,
            constraint: EParser.constraint,
            package: EParser.package_,
            import: EParser.import_,
            using: EParser.using,
            typedef: EParser.typedef_,
            enum: EParser.enumDecl,
            abstract: EParser.abstractDecl,
            interface: EParser.interfaceDecl,
            classdecl: EParser.classdecl,
            static: EParser.static_,
            field: EParser.field,
            method: EParser.method,
            vardecl: EParser.varDecl,
            fun: EParser.fun,
            expr: EParser.expr,
            exprAccess: EParser.exprAccess,
            switch: EParser.switch_,
            while: EParser.whileLoop,
            doWhile: EParser.doWhileLoop,
            for: EParser.forLoop,
            break: EParser.break_;
            continue: EParser.continue_;
            return: EParser.return_;
            if: EParser.ifElse,
            try: EParser.tryCatchFinally,
            block: EParser.block,
            semi: EParser.semi,
            comma: EParser.comma,
            dot: EParser.dot,
            colon: EParser.colon,
            sharp: EParser.sharp,
            dollar: EParser.dollar,
            b...
