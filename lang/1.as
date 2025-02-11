package {
    // Вывод текста в консоль
    trace("Hello, World!");

    // Определение класса
    class MyClass {
        public var name:String;

        public function MyClass(name:String) {
            this.name = name;
        }

        public function greet():void {
            trace("Hello, " + name + "!");
        }
    }

    // Создание экземпляра класса
    var myObject:MyClass = new MyClass("John");

    // Вызов метода
    myObject.greet();
    

 import flash.display.Sprite;
 import flash.text.TextField;
 import flash.events.Event;

 public class Test extends Sprite {

  private var textField:TextField;

  public function Test() {
   // constructor
   trace("Hello, World!"); // Вывод в Output panel (Ctrl+Shift+M)

   textField = new TextField();
   textField.text = "Hello, ActionScript!";
   textField.x = 50;
   textField.y = 50;
   addChild(textField);

   this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
  }

  private function addedToStageHandler(event:Event):void {
   trace("Added to stage!");
  }
 }
}

Prism.languages.actionscript = Prism.languages.extend('javascript', {
	'keyword': /\b(?:as|break|case|catch|class|const|default|delete|do|dynamic|each|else|extends|final|finally|for|function|get|if|implements|import|in|include|instanceof|interface|internal|is|namespace|native|new|null|override|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|use|var|void|while|with)\b/,
	'operator': /\+\+|--|(?:[+\-*\/%^]|&&?|\|\|?|<<?|>>?>?|[!=]=?)=?|[~?@]/
});
Prism.languages.actionscript['class-name'].alias = 'function';

// doesn't work with AS because AS is too complex
delete Prism.languages.actionscript['parameter'];
delete Prism.languages.actionscript['literal-property'];

if (Prism.languages.markup) {
	Prism.languages.insertBefore('actionscript', 'string', {
		'xml': {
			pattern: /(^|[^.])<\/?\w+(?:\s+[^\s>\/=]+=("|')(?:\\[\s\S]|(?!\2)[^\\])*\2)*\s*\/?>/,
			lookbehind: true,
			inside: Prism.languages.markup
		}
	});
}
