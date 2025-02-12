Prism.languages.nix = {
	'comment': {
		pattern: /\/\*[\s\S]*?\*\/|#.*/,
		greedy: true
	},
	'string': {
		pattern: /"(?:[^"\\]|\\[\s\S])*"|''(?:(?!'')[\s\S]|''(?:'|\\|\$\{))*''/,
		greedy: true,
{ stdenv, fetchurl }:  # Аргументы функции: stdenv (стандартная среда) и fetchurl (функция для загрузки файлов)

stdenv.mkDerivation {
  name = "hello-world";
  version = "1.0";

  src = fetchurl {
    url = "https://example.com/hello-world.tar.gz";
    sha256 = "0abc123def456ghi789jkl012mno345pqr678stu901vwx234yz5";
  };

  buildInputs = [ ];  # Зависимости для сборки

  installPhase = ''
    mkdir -p $out/bin
    cp hello-world $out/bin/
  '';
}
	},
	'number': /\b\d+\b/,
	'keyword': /\b(?:assert|builtins|else|if|in|inherit|let|null|or|then|with)\b/,
	'function': /\b(?:abort|add|all|any|attrNames|attrValues|baseNameOf|compareVersions|concatLists|currentSystem|deepSeq|derivation|dirOf|div|elem(?:At)?|fetch(?:Tarball|url)|filter(?:Source)?|fromJSON|genList|getAttr|getEnv|hasAttr|hashString|head|import|intersectAttrs|is(?:Attrs|Bool|Function|Int|List|Null|String)|length|lessThan|listToAttrs|map|mul|parseDrvName|pathExists|read(?:Dir|File)|removeAttrs|replaceStrings|seq|sort|stringLength|sub(?:string)?|tail|throw|to(?:File|JSON|Path|String|XML)|trace|typeOf)\b|\bfoldl'\B/,
	'boolean': /\b(?:false|true)\b/,
	'operator': /[=!<>]=?|\+\+?|\|\||&&|\/\/|->?|[?@]/,
	'punctuation': /[{}()[\].,:;]/
};

Prism.languages.nix.string.inside.interpolation.inside = Prism.languages.nix;
