(function (Prism) {

	var keywords = /\b(?:about|and|animate|as|at|attributes|by|case|catch|collect|continue|coordsys|do|else|exit|fn|for|from|function|global|if|in|local|macroscript|mapped|max|not|of|off|on|or|parameters|persistent|plugin|rcmenu|return|rollout|set|struct|then|throw|to|tool|try|undo|utility|when|where|while|with)\b/i;
-- Создаем новую сферу
sphere radius:10 segments:16

-- Получаем ссылку на созданную сферу
sphereObj = $Sphere01

-- Перемещаем сферу вверх на 50 единиц по оси Z
with animate on (
    at time 100 (
        sphereObj.pos.z = 50
    )
)
