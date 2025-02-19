Prism.languages.processing = Prism.languages.extend('clike', {
	'keyword': /\b(?:break|case|catch|class|continue|default|else|extends|final|for|if|implements|import|new|null|private|public|return|static|super|switch|this|try|void|while)\b/,
	// Spaces are allowed between function name and parenthesis
	'function': /\b\w+(?=\s*\()/,
void setup() {
  size(400, 300);  // Устанавливаем размер окна
  background(255); // Белый фон
}

void draw() {
  fill(0);       // Черный цвет заливки
  ellipse(mouseX, mouseY, 50, 50); // Рисуем круг, центр которого находится в позиции курсора мыши
}
