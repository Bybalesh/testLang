// Определяем пин, к которому подключен светодиод
const int ledPin = 13;
// Определение пина светодиода
const int ledPin = 13;

void setup() {
  // Настройка пина светодиода как выходного
  pinMode(ledPin, OUTPUT);
}

void loop() {
  // Включить светодиод
  digitalWrite(ledPin, HIGH);
  delay(1000); // Задержка на 1 секунду
  
  // Выключить светодиод
  digitalWrite(ledPin, LOW);
  delay(1000); // Задержка на 1 секунду
}

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
