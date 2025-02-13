' _words is a string array that we'll sort alphabetically
Dim _words = New String() {
"the",
"quick",
"brown",
"fox",
"jumps"
}

Dim morewords = New String() {
"over",
"the",
"lazy",
"dog"
}

Dim query = From word In _words
            Order By word.Length
            Select word