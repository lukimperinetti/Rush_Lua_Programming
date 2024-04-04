pv = 5
hearts = {} -- Table to hold heart objects

function love.load()
    for i = 1, pv do
        local heart = {
            image = love.graphics.newImage("src/img/plain-heart.png"),
            posY = (i - 1) * 20, -- Position hearts with some space between them
            posX = 0
        }
        table.insert(hearts, heart)
    end
end

function love.update(dt)
    -- Update logic can be added here if needed
end

function love.draw()
    for i, heart in ipairs(hearts) do -- ipairs allow me to iterate over the table with an index
        love.graphics.draw(heart.image, heart.posX, heart.posY)
    end
end
