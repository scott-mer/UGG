-- Untitled Gumball Game
-- functions and classes dealing with decks

-- Card class
-- holds the information of a single card
Cards = {
    {
        name = "punch",
        damage = 5,
        block = 0,
        time = 2
    },
    {
        name = "block",
        damage = 0,
        block = 0,
        time = 5
    }
}

Card = {
    id = 0,
    name = "",
    damage = 0,
    block = 0,
    time = 0
}
function Card:add(o, id, name)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.id = 1
    
    -- search for card in present cards
    isFound = false
    for _,v in pairs(Cards) do
        if(v["name"] == name)
        then
            self.name = v["name"]
            self.damage = v["damage"]
            self.block = v["block"]
            self.time = v["time"]
            isFound = true
        end
    end

    -- check that card was found
    if(not isFound)
    then
        print("ERROR: Could not find card name")
    end

    return o
end

function Card:print()
    print("Name:", self.name, "\nDamage:", self.damage, "\nBlock:", self.block, "\nTime:", self.time)
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
        table.insert(self.cards, Card:add(nil, i, "block"))
        print(self.cards[i]:print())
    end
    return o
end