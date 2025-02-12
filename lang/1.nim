Prism.languages.nim = {
	'comment': {
		pattern: /#.*/,
import strutils

var name = readLineFromStdin("What is your name? ")

if name.len == 0:
  echo("You didn't enter a name.")
else:
  echo("Hello, ", name)
