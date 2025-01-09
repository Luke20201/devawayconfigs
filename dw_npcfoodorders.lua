Config = {
    debug = true,
    lang = "en", -- en/jpn/pt/es/de, add custom languages yourself in locale.lua
    framework = "qb", -- qb, esx. qb = QBX as well
    inv = "qb", -- ox, qb, qs, ps, codem
    target = "ox", -- ox, qb
    orderWith3dText = true,

    targetOptions = {
        foodIcon = "fas fa-utensils", -- Specify the font awesome label for handing in food
        orderIcon = "fas fa-receipt", -- checking order,
        toggleNpcsIcon = "fas fa-shop-lock", -- toggle npc spawns
    },

    invinciblePeds = false, -- Make the peds invincible

    jobs = {
        ['ambulance'] = { -- Job Name
            enabled = true, -- Is the job enabled
            TimeBetweenOrders = 30, -- in seconds
            maxPeds = 5, -- Max peds to spawn before waiting to spawn more
            maxWaitTime = 5, -- in minutes, how long a ped will wait to be served before leaving 
            payoutPerItem = 65, -- Default payout for each item
            businessCut = false, -- Split payout to a society fund or other entity? (only supports qb-banking, esx_society, or av_restaurants society funds as examples. Customize @ (server/functions.lua -> businessPayment)
            cutPercent = .20, -- % of totalPayout (payoutPerItem * Workers * cutPercent)
            selectionChance = 85, -- chance to select multiple items when ordering.
            splitPaycheck = true, -- Split the paycheck amongst employees
            useAV = false, -- Set this if you want to use AV restuarants logic in selecting items based on jobs
            foodTypes = {"food", "drink"}, -- food types column from av_items (Set to default food/drink columns from AV_REST)
            spawnNpcs = true, -- Whether or not NPCS should spawn by default provided someone is on duty
            toggleNPCButton = vector3(-1640.8909, -2948.5186, 13.9444), -- adds a zone at these coords to stop NPCs spawning(keep at 0,0,0 if you want it disabled)
            items = {
                ["sandwich"] = 69, -- ONLY USED FOR CUSTOM PRICES or items not derived from menus.lua :) IF YOU DO NOT LIST AN ITEM HERE AND IT IS INSTEAD REFERENCED FROM MENUS.LUA THEY WILL INHERIT payoutPerItem AS THE PRICE
                ["water_bottle"] = 69,
            },
            itemBlacklist = { -- blacklist items (relevant when using av_business)
                -- weapon_pistol = true,
                -- weapon_grenade = true
            },
            npcroute = {
                vector4(-1631.9819, -2954.6140, 13.9447, 149.1573), -- SPAWNPOINT | NPCS WALK IN A STRAIGHT LINE TO THE STORE (Airport straight line for testing)
                vector4(-1646.7809, -2981.1987, 13.9448, 151.8292), -- NPCS WALK IN A STRAIGHT LINE TO THE STORE
            },
            npcrouteExit = {
                vector4(-1646.7809, -2981.1987, 13.9448, 151.8292), -- NPCS WALK IN A STRAIGHT LINE TO THE EXIT
                vector4(-1631.9819, -2954.6140, 13.9447, 149.1573), -- EXITPOINT | NPCS WALK IN A STRAIGHT LINE TO THE EXIT
            },
            tills = {
                vector4(-1646.8245, -2981.3110, 13.9448, 331.7082), -- Final heading + Standing Location (Face tills / Player)
            },
             npcModels = {
                "a_f_m_fatbla_01",
                "a_f_m_bevhills_01",
                "a_f_m_ktown_02",
                "a_f_m_soucent_01",
                "a_m_m_fatlatin_01",
                "a_m_m_genfat_01",
                "a_m_m_malibu_01",
                "a_m_m_paparazzi_01",
                "a_m_m_tourist_01",
                "a_m_m_tranvest_01",
                "a_m_y_mexthug_01",
                "cs_bankman",
                "cs_dreyfuss",
                "mp_f_execpa_02",
                "s_m_m_gaffer_01",
                "s_m_m_autoshop_01",
                "s_m_m_movspace_01",
                "s_m_y_clown_01"
            },
        },
    }
}
