/// @description Создаёт объект и перемещает его по экрану

// Создание объекта
instance_create(x, y, obj_Player);

// Перемещение объекта
x += 5;
y += 5;

// Проверка границ экрана
if (x > room_width) {
    x = 0;
}
if (y > room_height) {
    y = 0;
}
