-- Untitled Gumball Game
-- utilities for running the game

function abort()
    if love.keyboard.isDown('escape') then
        love.event.push('quit')
    end
end