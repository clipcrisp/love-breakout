player_paddle = { 
    size = { x = 60, y = 15 }, 
    pos = { x = 300, y = 200 },
    speed = 500 
}

function love.load()
    love.window.setVSync( 0 )
end

function love.update(dt)
    if love.keyboard.isDown({ "left", 'a' }) then 
        player_paddle.pos.x = player_paddle.pos.x - 
            (player_paddle.speed * dt)
    elseif love.keyboard.isDown({ "right", 'd' }) then
        player_paddle.pos.x = player_paddle.pos.x + 
            (player_paddle.speed * dt)
    end
end

function love.draw()
    love.graphics.print('Hello World!', 400, 300)
    love.graphics.rectangle("fill" , player_paddle.pos.x, player_paddle.pos.y,
        player_paddle.size.x, player_paddle.size.y)
    love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
end
