Prism.languages.monkey = {
	'comment': {
		pattern: /^#Rem\s[\s\S]*?^#End|'.+/im,
		greedy: true
	// Импорт модуля для работы с графикой
Import mojo

// Настройки окна
App: SetTargetFPS(60)
Window:Set("Monkey Example", 800, 600)

// Класс игрока
Class Player Extends Actor
    Method New(x, y, image)
        Super.New(x, y, image)
        Self.velocity = New Vector2D()
    End

    Method Update()
        Local vx# = 0
        If KeyDown(KEY_LEFT) Then vx# = -5
        If KeyDown(KEY_RIGHT) Then vx# = 5
        Self.velocity.x = vx#
        Self.SetPosition(Self.x, Self.y)
    End
End

// Главный метод
Function Main()
    player := New Player(400, 300, LoadImage("player.png"))

    While Not KeyHit(KEY_ESCAPE)
        player.Update()
        DrawString("Press left or right to move the player.", 0, 0)
        DrawSelf(player)
        Flip()
        Flush()
    End
End
