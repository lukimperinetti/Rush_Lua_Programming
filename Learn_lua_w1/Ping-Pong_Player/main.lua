--init player

player = {}
player.image = love.graphics.newImage("src/images/marche1.png")
player.x = 0
player.y = (love.graphics.getHeight() / 2) - (player.image:getHeight() / 2)


-- Do something on game first start
function love.load()

end

-- All my gameplay
function love.update(dt)
    local windowsWidth = love.graphics.getWidth()
    if love.keyboard.isDown("d") and player.x < windowsWidth - player.image:getWidth() then
        player.x = player.x + 5
    end
    if love.keyboard.isDown("q") and player.x > 0 then
        player.x = player.x - 5
    end
    -- if love.keyboard.isDown('q') and  then
    --     player.x = player.x - 5
    -- end
end

-- Display images
function love.draw()
    love.graphics.draw(player.image, player.x, player.y)
end
