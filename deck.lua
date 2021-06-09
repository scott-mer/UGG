-- Untitled Gumball Game
-- functions and classes dealing with decks

-- Card class
-- holds the information of a single card
Card = {
    id = 0,
    damage = 0,
    block = 0,
    time = 0
}
function Card:new(o, id, damage, block, time)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.id = 1
    self.damage = 1
    self.block = 1
    self.time = 1
    return o
end

function Card:printCard()
    print(self.id)
end

-- Deck class
-- holds the inforation of a deck
Deck = {
    cards = {},
    count = 0
}
function Deck:new(o, count)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    for i = 1, count, 1
    do
        table.insert(self.cards, Card:new(nil, i))
    end
    self.count = count
    return o
end