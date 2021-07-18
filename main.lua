-- Untitled Gumball Game
-- main game code

require("utilities")
require("deck")

function love.load()
    deck1 = deck:new({"jab", "punch", "punch", "block"})
    deck2 = deck:new({"block", "punch", "jab", "block"})

    print("Deck1")
    deck1:print()
    print("Deck2")
    deck2:print()
end

function love.update(dt)
    abort()
end

function love.draw()
end