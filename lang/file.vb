Prism.languages['visual-basic'] = {
	'comment': {
		pattern: /(?:['‘’]|REM\b)(?:[^\r\n_]|_(?:\r\n?|\n)?)*/i,
		inside: {
			'keyword': /^REM/i
Public Module Example
    Sub Main()
        Dim name As String = "Мир"
        Console.WriteLine("Привет, " & name & "!")
    End Sub
End Module
