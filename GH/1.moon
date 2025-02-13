-- Пример кода на MoonScript
local window = require("window")

-- Класс игрока
Player = Object:extend{
    init = function(self, x, y, img)
        self.img = love.graphics.newImage(img)
        self.x = x
        self.y = y
        self.speed = 200
    end,

    draw = function(self)
        love.graphics.draw(self.img, self.x, self.y)
    end,

    update = function(self, dt)
        if love.keyboard.isDown("left") then
            self.x = self.x - self.speed * dt
        end
        
        if love.keyboard.isDown("right") then
            self.x = self.x + self.speed * dt
        end
    end
}

-- Основной метод
function love.load()
    local player = Player(400, 300, "player.png")
end

function love.update(dt)
    player:update(dt)
end

function love.draw()
    player:draw()
end
