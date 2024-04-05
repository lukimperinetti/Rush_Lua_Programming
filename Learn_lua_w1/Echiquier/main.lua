io.stdout:setvbuf("no")


square = {}
square.x = 0
square.y = 0
square.size = 50
square.color = { 255, 223, 34 } -- 255, 0, 0 is red

-- Load the game
function love.load()
    love.window.setMode(800, 600)
    love.window.setTitle("chess game")
end

function love.update(dt)

end

function love.draw()
    local startX = 0
    for i = 0, 8, 1 do
        love.graphics.setColor(square.color)
        love.graphics.rectangle("fill", square.x, square.y, square.size, square.size)
        square.x = square.x + square.size
    end
    square.x = startX
end
