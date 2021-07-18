-- Untitled Gumball Game
-- functions and classes dealing with decks

cards = {
    {
        name = "punch",
        damage = 5,
        block = 0,
        time = 3
    },
    {
        name = "block",
        damage = 0,
        block = 5,
        time = 3
    },
    {
        name = "jab",
        damage = 3,
        block = 0,
        time = 2
    }
}

-- Card class
card = {
    id = nil,
    name = nil,
    damage = nil,
    block = nil,
    time = nil
}
function card:add(id, name)
    local o = {}

    o.id = id
    -- search for card in present cards
    isFound = false
    for _,v in pairs(cards) do
        if(v["name"] == name)
        then
            o.name = v["name"]
            o.damage = v["damage"]
            o.block = v["block"]
            o.time = v["time"]
            isFound = true
        end
    end

    -- check that card was found
    if(not isFound)
    then
        print("ERROR: Could not find card name")
    end

    self.__index = self
    return setmetatable(o, self)
end

function card:print()
    print("Name:", self.name, "\nDamage:", self.damage, "\nBlock:", self.block, "\nTime:", self.time)
end

-- Deck class
deck = {
    cards = {},
    count = nil
}
function deck:new(names)
    local o = {}
    
    o.cards = {}
    for id, name in ipairs(names) do
        table.insert(o.cards, card:add(id, name))
    end
    o.count = id

    self.__index = self
    return setmetatable(o, self)
end

function deck:print()
    for id, card in ipairs(self.cards) do
        card:print()
    end
end