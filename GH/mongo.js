// Подключение к базе данных
db = connect("mongodb://localhost:27017/myDatabase");

// Выбор коллекции
var collection = db.getCollection("myCollection");

// Вставка документа
collection.insertOne({
    name: "John Doe",
    age: 30,
    city: "Москва"
});

// Поиск документа
var document = collection.findOne({ name: "John Doe" });
printjson(document);

// Обновление документа
collection.updateOne(
    { name: "John Doe" },
    { $set: { age: 31 } }
);

// Удаление документа
collection.deleteOne({ name: "John Doe" });
