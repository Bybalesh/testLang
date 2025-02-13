Prism.languages.jolie = Prism.languages.extend('clike', {
	'string': {
		pattern: /(^|[^\\])"(?:\\[\s\S]|[^"\\])*"/,
include "console.io"

execution { concurrent }

outputPorts {
  Console {
    Location: "socket://localhost:8000"
  }
}

main
{
  Console|println@Print("Hello, World!")()
}
