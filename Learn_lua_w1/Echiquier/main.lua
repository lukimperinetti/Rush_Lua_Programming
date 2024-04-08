io.stdout:setvbuf("no")


square = {}
square.x = 0
square.y = 0
square.size = 40
square.color = { 255, 223, 34 } -- 255, 0, 0 is red
square.countRows = 9
square.countColumns = { "A", "B", "C", "D", "E", "F", "G", "H" }

-- Load the game
function love.load()
    love.window.setMode(800, 600)
    love.graphics.setBackgroundColor(255, 0, 0)
    love.window.setTitle("chess game")

    -- center the square
    square.x = (love.graphics.getWidth() / 2 - square.size / 2) - 4 * square.size
    square.y = (love.graphics.getHeight() / 2 - square.size / 2) - 4 * square.size
end

function love.update(dt)

end

function love.draw()
    local startX = square.x
    local startY = square.y
    local cRow = square.countRows
    local cColumn = 1
    for i = 1, 8, 1 do
        love.graphics.print(cRow - 1, square.x - square.size / 2, square.y + square.size / 2)
        for j = 1, 8, 1 do
            love.graphics.print(square.countColumns[cColumn], square.x + square.size / 2, square.y + square.size)
            if (i + j) % 2 == 0 then
                love.graphics.setColor(square.color)
            else
                love.graphics.setColor(0, 0, 0)
            end
            love.graphics.rectangle("fill", square.x, square.y, square.size, square.size)
            square.x = square.x + square.size
        end
        cRow = cRow - 1
        square.x = startX
        square.y = square.y + square.size
        cColumn = cColumn + 1
    end
    square.y = startY
end
