Prism.languages.unrealscript = {
	'comment': /\/\/.*|\/\*[\s\S]*?\*\//,
	'string': {
		pattern: /(["'])(?:\\(?:\r\n|[\s\S])|(?!\1)[^\\\r\n])*\1/,
		greedy: true
	},
class MyActor extends Actor;

event PostBeginPlay()
{
    Log("MyActor has been spawned!");
}

defaultproperties
{
    Begin Object Class=SpriteComponent Name=MySprite
        Sprite=Texture2D'EngineResources.CircleTexture'
        HiddenGame=False
        AlwaysLoadOnClient=True
        AlwaysLoadOnServer=True
    End Object
    Components.Add(MySprite);
}
