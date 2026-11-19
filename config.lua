-- This is just an example of the config for the bulgar_crafting script
-- In the example config some settings have been removed that you will get only after getting the script 
-- This is just an example of the config for the bulgar_crafting script
-- In the example config some settings have been removed that you will get only after getting the script 
-- This is just an example of the config for the bulgar_crafting script
-- In the example config some settings have been removed that you will get only after getting the script 
-- This is just an example of the config for the bulgar_crafting script
-- In the example config some settings have been removed that you will get only after getting the script 

Config = {}

-- Developer mode (disable on production servers)
Config.DeveloperMode = false

-- General Settings
Config.Currency = 0 -- 0 = Cash, 1 = Gold (used for recipe prices)
Config.ItemImagePath = 'vorp_inventory/html/img/items/' -- Path to inventory item images

Config.MaxCraftAmount = 20 -- Maximum crafts per request
Config.PendingMaxItems = 50 -- Maximum pending item units per book (should exceed Config.MaxCraftAmount)
Config.PendingInfinity = false -- true = No expiration
Config.PendingExpirySeconds = 1200 -- Expiration in seconds when infinity is disabled

Config.CraftingAnimation = true
Config.CraftingCancel = {
    Enabled = true,
    Key = 0x760A9C6F, -- G
    KeyLabel = 'G', -- Key displayed in the progress bar
}

-- UI sound effects
Config.Sounds = {
    Enabled = true, -- false: disable every sound
    Volume = 0.50, -- master volume, 0.0 - 1.0
	-- MORE OPTIONS AVAIBLE HERE AFTER U GET THE SCRIPT
}

-- Crafting books
-- Cover images are stored in the html folder
Config.Books = { -- Book = 'itemname'
    {Book = 'cookingbook', Category = 'Cookbook', Cover = 'cooking_cover.png'},
    {Book = 'itemsbook', Category = 'Crafting Book', Cover = 'book_closed.png'},
    {Book = 'weaponsbook', Category = 'Crafting Weapons', Cover = 'weapons_cover.png'},
	-- More can be added here
}

-- Crafting locations
Config.UseLocations = true -- Set to false to disable fixed crafting locations
Config.OpenKey = 0xCEFD9220 -- E
Config.LocationDistance = 2.0
Config.LocationDrawDistance = 2.0
Config.Locations = {
    -- Cover = filename from html/; overrides Config.Books cover for this location.
    -- Without Cover, uses matching Config.Books cover, then book_closed.png.
    -- JobLocked = false: everyone can use this location.
    -- JobLocked = true: only jobs listed in AllowedJobs can use it.
    -- An empty AllowedJobs list with JobLocked = true denies everyone.
    {Name = 'Crafting Weapons Location 1', coords = vector3(1329.67, -1320.96, 77.89), Category = 'Crafting Weapons', Cover = 'weapons_cover.png', JobLocked = true, AllowedJobs = {'blacksmith', 'gunsmith'}},
    -- {Name = 'Public Crafting', coords = vector3(1329.67, -1320.96, 77.89), Category = 'Crafting Book', JobLocked = false, AllowedJobs = {}},
	-- More can be added here
}

-- Crafting levels (XP for next level)
Config.Levels = {
    ['Cookbook'] = {
        [0] = {Level = 0, XP = 100},
        [1] = {Level = 1, XP = 100},
		-- More can be added here
    },
    ['Crafting Book'] = {
        [0] = {Level = 0, XP = 500},
        [1] = {Level = 1, XP = 500},
		-- More can be added here
    },
    ['Crafting Weapons'] = {
        [0] = {Level = 0, XP = 1000},
        [1] = {Level = 1, XP = 1000},
		-- More can be added here
    },
	-- More can be added here
}

-- Crafting recipes
Config.Receipes = {
    {
        Item = 'consumable_meat_greavy', Amount = 1,
        Category = 'Cookbook',
        Desc = 'A hearty meat stew with potatoes and carrots.',
        Level = 0, XP = 25, weapon = false, Time = 10, Price = 0,
        Ingredients = {
            {Item = 'meat', Amount = 2},
            {Item = 'carrots', Amount = 1},
            {Item = 'water', Amount = 1},
            {Item = 'salt', Amount = 1},
        },
        Jobs = {},
        OtherRewards = {
            {Item = 'empty_bottle', Amount = 1},
        },
    },

    {
        Item = 'wooden_boards', Amount = 4,
        Category = 'Crafting Book',
        Desc = 'Wooden boards crafted from freshly cut timber.',
        Level = 0, XP = 20, weapon = false, Time = 10, Price = 0,
        Ingredients = {
            {Item = 'wood', Amount = 5},
        },
        Jobs = {},
        OtherRewards = {},
    },

    {
        Item = 'weapon_revolver_cattleman', Amount = 1,
        Category = 'Crafting Weapons',
        Desc = 'A reliable Cattleman Revolver assembled from metal and wooden components.',
        Level = 0, XP = 100, weapon = true, Time = 10, Price = 0,
        Ingredients = {
            {Item = 'revolverbarrel', Amount = 1},
            {Item = 'revolvercylinder', Amount = 1},
            {Item = 'revolverhandle', Amount = 1},
            {Item = 'wood', Amount = 2},
        },
        Jobs = {'blacksmith', 'gunsmith'},
        OtherRewards = {},
    },
	
	-- More can be added here
}

-- Notifications (customize the notification function here)
function Notification(text)
	-- ITS CONFIGURED HERE AFTER U GET THE SCRIPT
end

-- Translations
Config.Locale = {
	-- ITS CONFIGURED HERE AFTER U GET THE SCRIPT
}
