// Определяем пин, к которому подключен светодиод
const int ledPin = 13;

// Функция setup выполняется один раз при запуске платы Arduino
void setup() {
  // Устанавливаем пин ledPin в режим выхода
  pinMode(ledPin, OUTPUT);
}

// Функция loop выполняется постоянно, повторяясь снова и снова
void loop() {
  // Включаем светодиод
  digitalWrite(ledPin, HIGH);
  // Ждем 1 секунду
  delay(1000);
  // Выключаем светодиод
  digitalWrite(ledPin, LOW);
  // Ждем 1 секунду
  delay(1000);
}
