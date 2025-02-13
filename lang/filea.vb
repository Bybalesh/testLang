Prism.languages.vbnet = Prism.languages.extend('basic', {
	'comment': [
		{
			pattern: /(?:!|REM\b).+/i,
			inside: {
	Module Program
    Sub Main()
        Dim name As String = "Мир"
        Console.WriteLine($"Привет, {name}!")
    End Sub
End Module
