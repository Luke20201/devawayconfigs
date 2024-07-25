Config = {
    framework = "qb", -- qb/esx
    target = "ox", -- ox/qb
    inv = "ps", -- ox/qb/ps/codem/qs
    dispatch = "ps", -- only ps supported natively. You can add functionality in client/functions.lua
    translations = {
        ["rob_safe"] = "Rob Safe",
        ["rob_register"] = "Rob Register",
        ["already_robbed"] = "This location has already been robbed!",
        ["escort"] = "Escort Hostage",
        ["move_backroom"] = "Move to Backroom",
        ["release"] = "Release Hostage",
    },
    onesyncDelay = 25000, -- Because of onesync the main program loop cannot run as peds are not spawned on the client. A loop is executed in this timeframe to detect if they exist on the client. Setting it too low will cause serious performance defiects
    buildings = {
        [1] = { -- Grove Street LTD
            backRoomCoords = vector3(-42.4121, -1749.6012, 29.4210),
            registers = {
                {
                    coords = vector4(-47.8603, -1759.3477, 29.4210, 25), 
                    itemRewards = {},
                    moneyReward = math.random(200, 400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(-46.5788, -1757.8209, 29.4210, 25), 
                    itemRewards = {},
                    moneyReward = math.random(200, 400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            safes = {
                {
                    coords = vector4(-43.3802, -1748.3873, 29.4210, 25), 
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-46.5829, -1757.8289, 29.4210, 50.5191),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-48.7491, -1756.9325, 29.4210, 167.0694),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-51.9837, -1753.2919, 29.4210, 8.6212),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "cellphone@str",
                    animName = "cellphone_text_press_a",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [2] = { -- Store Innocent Blvd
            backRoomCoords = vector3(30.1369, -1339.8181, 29.4970),
            registers = {
                {
                    coords = vector4(24.4072, -1347.1918, 29.4970, 263.5446), 
                    itemRewards = {},
                    moneyReward = math.random(200, 400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(24.4582, -1344.9757, 29.4970, 273.9489), 
                    itemRewards = {},
                    moneyReward = math.random(200, 400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            safes = {
                {
                    coords = vector4(28.2654, -1339.3540, 29.4970, 6.7536), 
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(24.4046, -1345.9940, 29.4970, 272.7130),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(30.3287, -1345.2963, 29.4970, 260.3547),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(33.4254, -1343.4858, 29.4970, 352.4624),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "idle_b",
                    animName = "ex03_dingy_search_case_base_michael",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [4] = {
                    coords = vector4(26.2414, -1346.3245, 29.4970, 106.9489),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "timetable@gardener@smoking_joint",
                    animName = "idle_cough",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [3] = { -- Robs Liquor El Rancho
            backRoomCoords = vector3(1125.8329, -982.4861, 45.4158),
            registers = {
                {
                    coords = vector4(1134.2124, -982.4327, 46.4158, 281.3112),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(1126.7102, -980.0698, 45.4158, 353.8965), 
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
            [1] = {
                coords = vector4(1134.2124, -982.4327, 46.4158, 281.3112),
                models = {"mp_m_shopkeep_01"},
                animDict = "missheistdockssetup1ig_12@idle_b",
                animName = "talk_gantry_idle_b_worker4",
                role = "teller" -- customer(normal), teller(can loot registers/safes)
            },
            [2] = {
                coords = vector4(1138.4803, -984.3419, 46.4158, 207.1852),
                models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                animDict = "rcmjosh1",
                animName = "idle",
                role = "customer" -- customer(normal), teller(can loot registers/safes)
            }
            }
        },
        [4] = { -- Little Seoul LTD
            backRoomCoords = vector3(-708.0987, -904.8870, 19.2156),
            registers = {
                {
                    coords = vector4(-706.0627, -913.4576, 19.2156, 103.4626),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(-706.1174, -915.3737, 19.2156, 94.9812),
                    itemRewards = {},
                    moneyReward = math.random(200, 400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            safes = {
                {
                    coords = vector4(-709.6829, -904.2821, 19.2156, 85.5932),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-706.1359, -914.5486, 19.2156, 77.8508),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-714.6476, -909.1780, 19.2156, 8.9080),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-715.7733, -915.3320, 19.2156, 191.7173),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [4] = {
                    coords = vector4(-711.2633, -913.7106, 19.2156, 299.4965),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [5] = { -- Robs Liquor Vespucci
            backRoomCoords = vector3(-1218.9044, -916.0107, 11.3263),
            registers = {
                {
                    coords = vector4(-1222.0341, -908.3467, 12.3264, 9.6456),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(-1220.8552, -915.9056, 11.3263, 136.5104),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-1222.0341, -908.3467, 12.3264, 9.6456),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [6] = { -- Mirror Park LTD
            backRoomCoords = vector3(1161.1753, -314.1532, 69.2051),
            registers = {
                {
                    coords = vector4(1165.0663, -324.4753, 69.2051, 118.9734),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(1164.6672, -322.6417, 69.2051, 106.2957),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(1159.7001, -314.0526, 69.2051, 114.2201),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(1164.8698, -323.6666, 69.2051, 107.8186),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(1160.9990, -319.7430, 69.2051, 350.4213),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(1160.0452, -322.0203, 69.2051, 181.5436),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [7] = { -- Robs Liqour Prosperity
            backRoomCoords = vector3(-1479.7365, -373.3868, 39.1634),
            registers = {
                {
                    coords = vector4(-1486.1339, -378.0621, 40.1634, 107.5333),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(-1478.9814, -375.4160, 39.1634, 221.1844),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-1486.1339, -378.0621, 40.1634, 107.5333),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [8] = { -- Mirror Park LTD
            backRoomCoords = vector3(378.9454, 332.3269, 103.5664),
            registers = {
                {
                    coords = vector4(372.4887, 326.4121, 103.5664, 241.6800),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(373.1072, 328.6169, 103.5664, 254.2366),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(378.1924, 333.3358, 103.5664, 350.0181),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(372.8143, 327.7073, 103.5665, 276.1725),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(378.1843, 329.4626, 103.5665, 328.2328),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(380.9601, 324.3027, 103.5665, 171.6927),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [9] = { -- 24/7 Palomino Freeway
            backRoomCoords = vector3(2550.2605, 386.7925, 108.6229),
            registers = {
                {
                    coords = vector4(2557.3411, 380.7434, 108.6230, 16.6665),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(2554.9111, 380.8546, 108.6230, 354.3615),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(2549.2834, 384.7327, 108.6229, 79.9967),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(2555.7271, 380.7921, 108.6230, 1.9681),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(2555.2793, 383.8896, 108.6229, 13.6268),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(2557.1643, 387.4362, 108.6229, 106.7963),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [10] = { -- Robs Liquor GOH
            backRoomCoords = vector3(-2958.5198, 388.9968, 14.0433),
            registers = {
                {
                    coords = vector4(-2966.4331, 390.8409, 15.0433, 73.5461),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(-2959.5151, 387.1496, 14.0433, 190.5553),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-2966.4089, 390.8999, 15.0433, 83.8590),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-2970.0552, 388.2215, 15.0433, 175.0475),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-2969.7761, 391.1961, 15.0433, 2.5216),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [11] = { -- 24/7 GOH
            backRoomCoords = vector3(-3047.2688, 587.2483, 7.9089),
            registers = {
                {
                    coords = vector4(-3038.9480, 584.5083, 7.9089, 9.3092),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(-3041.1501, 583.8695, 7.9089, 23.5556),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(-3047.6873, 585.7266, 7.9089, 105.4735),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-3040.5503, 583.9565, 7.9089, 9.1531),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [12] = { -- 24/7 Chumas
            backRoomCoords = vector3(-3248.8728, 1005.8371, 12.8307),
            registers = {
                {
                    coords = vector4(-3242.3503, 999.9272, 12.8307, 10.0171),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(-3244.6365, 1000.1200, 12.8307, 352.0982),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(-3249.8953, 1004.3989, 12.8307, 102.3175),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-3243.9463, 1000.1310, 12.8307, 358.6392),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-3241.3293, 1001.9753, 12.8307, 264.8401),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [13] = { --  LTD North Rockford Drive
            backRoomCoords = vector3(-1828.1133, 799.4474, 138.1663),
            registers = {
                {
                    coords = vector4(-1819.0078, 792.9859, 138.0824, 139.0212),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(-1820.1649, 794.2436, 138.0894, 131.5409),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(-1829.0753, 798.8385, 138.1890, 152.4291),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(-1819.4972, 793.5087, 138.0856, 136.8001),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-1821.4874, 790.6355, 138.1486, 224.9517),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-1825.4484, 789.6954, 138.2238, 116.4601),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [14] = { --  24/7 rOUTE 68
            backRoomCoords = vector3(544.7755, 2663.5540, 42.1565),
            registers = {
                {
                    coords = vector4(549.1294, 2671.3574, 42.1565, 111.9700),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(549.4238, 2669.0054, 42.1565, 105.9583),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(546.3684, 2662.9722, 42.1565, 190.4699),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(549.3393, 2669.7761, 42.1565, 94.8766),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(540.4344, 2666.7874, 42.1565, 89.7826),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(541.2061, 2671.3479, 42.1565, 7.4050),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [15] = { --  Robs Liquor ROUTE 68
            backRoomCoords = vector3(1167.1495, 2718.5291, 37.1577),
            registers = {
                {
                    coords = vector4(1165.9626, 2710.8679, 38.1577, 191.3438),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(1169.2319, 2717.8872, 37.1577, 265.2120),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(1165.9626, 2710.8679, 38.1577, 191.3438),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(1168.8821, 2706.9041, 38.1577, 269.4065),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [16] = { --  24/7 Sandy
            backRoomCoords = vector3(1961.4661, 3749.0864, 32.3437),
            registers = {
                {
                    coords = vector4(1960.0560, 3740.0442, 32.3437, 314.6824),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(1958.8667, 3742.1260, 32.3437, 290.4948),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(1959.3021, 3748.8872, 32.3437, 33.7320),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(1959.2874, 3741.2695, 32.3437, 290.2186),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(1966.8206, 3742.8179, 32.3438, 197.0493),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(1967.6479, 3745.3416, 32.3438, 306.0741),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [4] = {
                    coords = vector4(1963.0703, 3743.8909, 32.3438, 101.7431),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [5] = {
                    coords = vector4(1960.3580, 3745.0403, 32.3438, 40.1914),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [17] = { --  24/7 Senora
            backRoomCoords = vector3(2674.3677, 3287.4951, 55.2411),
            registers = {
                {
                    coords = vector4(2677.9849, 3279.3687, 55.2411, 335.6745),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(2675.9944, 3280.5754, 55.2411, 336.6258),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(2672.7534, 3286.5220, 55.2411, 50.7133),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(2676.4670, 3280.2085, 55.2411, 310.9689),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(2681.0801, 3285.3699, 55.2411, 78.8262),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(2677.4604, 3287.2327, 55.2411, 112.5323),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [18] = { --  24/7 PALETO
            backRoomCoords = vector3(1736.1473, 6419.2603, 35.0372),
            registers = {
                {
                    coords = vector4(1727.7980, 6415.2510, 35.0373, 248.1967),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
                {
                    coords = vector4(1728.9340, 6417.3208, 35.0373, 258.1583),
                    itemRewards = {},
                    moneyReward = math.random(300, 600),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                }
            },
            safes = {
                {
                    coords = vector4(1734.8534, 6420.7808, 35.0373, 338.2271),
                    itemRewards = {},
                    moneyReward = math.random(800, 1400),
                    timeToRob = 8000,
                    hasBeenRobbed = false, -- DO NOT EDIT
                },
            },
            peds = {
                [1] = {
                    coords = vector4(1728.4371, 6416.5410, 35.0373, 236.2780),
                    models = {"mp_m_shopkeep_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(1730.0981, 6415.5337, 35.0373, 78.4773),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(1735.7072, 6411.7319, 35.0373, 254.3906),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [19] = { --  PALETO Bay Bamk
            backRoomCoords = vector3(-107.4257, 6475.0400, 31.6267), -- You may want to move this
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(-112.2457, 6471.2363, 31.6267, 151.8368),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-111.1173, 6470.0181, 31.6267, 130.1060),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-113.3854, 6469.9468, 31.6267, 308.0553),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [4] = {
                    coords = vector4(-111.8617, 6467.0645, 31.6267, 320.2621),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [5] = {
                    coords = vector4(-114.4984, 6465.5303, 31.6267, 304.4246),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "timetable@reunited@ig_10",
                    animName = "base_amanda",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [20] = { --  Fleeca Route 68
            backRoomCoords = vector3(1177.8815, 2712.2087, 38.0967),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(1174.7732, 2708.2288, 38.0879, 187.5187),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(1174.8948, 2706.8484, 38.0940, 3.9789),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(1174.8267, 2704.9446, 38.0978, 353.2234),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [21] = { --  Fleeca Chumash
            backRoomCoords = vector3(-2957.4290, 480.1746, 15.7068),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(-2961.0952, 482.8933, 15.6970, 93.9525),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-2963.3506, 483.0125, 15.7030, 279.2112),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-2964.0327, 478.2385, 15.6968, 336.7193),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [22] = { --  Fleeca bLVD Del Perro
            backRoomCoords = vector3(-1212.7477, -336.3957, 37.7908),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(-1213.4008, -332.6917, 37.7809, 20.4501),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-1214.0646, -330.9966, 37.7907, 214.8501),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-1212.4828, -330.3458, 37.7871, 199.8038),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [23] = { --  Fleeca Hawick West
            backRoomCoords = vector3(-355.1259, -54.1211, 49.0462),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(-351.3965, -51.2273, 49.0322, 333.7823),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-350.8846, -49.9209, 49.0426, 164.2626),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-347.5282, -49.3806, 49.0366, 83.0626),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [24] = { --  Fleeca Hawick East
            backRoomCoords = vector3(310.0014, -283.3805, 54.1745),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(312.5265, -280.0214, 54.1647, 339.7003),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(314.5002, -278.5044, 54.1708, 166.1847),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(307.8151, -279.7771, 54.1646, 77.9451),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [25] = { --  Fleeca Legion Square
            backRoomCoords = vector3(145.4111, -1044.7983, 29.3760),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(149.2884, -1042.1031, 29.3680, 338.4415),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(150.2228, -1040.2363, 29.3741, 157.5239),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(148.6127, -1039.8053, 29.3777, 169.9215),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                }
            }
        },
        [26] = { --  Vangelico
            backRoomCoords = vector3(-630.9219, -229.0581, 38.0570),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(-623.4372, -230.4361, 38.0571, 128.5753),
                    models = {"cs_jewelass", "ig_jewelass", "u_f_y_jewelass_01", "u_m_m_jewelsec_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(-627.1878, -233.2466, 38.0571, 212.5172),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(-620.1047, -234.3266, 38.0570, 229.9705),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [4] = {
                    coords = vector4(-617.7940, -230.6201, 38.0570, 309.9276),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
                [5] = {
                    coords = vector4(-624.8985, -231.2092, 38.0570, 313.1829),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "rcmjosh1",
                    animName = "idle",
                    role = "customer" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
        [27] = { --  Pacific
            backRoomCoords = vector3(267.3629, 220.5655, 110.2829),
            registers = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            safes = {}, -- Registers/safes were not added for bank robberies as most users will want something better than point gun and anim
            peds = {
                [1] = {
                    coords = vector4(254.2326, 222.4807, 106.2869, 154.7808),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [2] = {
                    coords = vector4(248.9424, 224.4086, 106.2871, 152.6698),
                    models = {"cs_bankman", "ig_bankman", "u_m_m_bankman"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [3] = {
                    coords = vector4(251.7974, 221.6947, 106.2866, 343.6444),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [4] = {
                    coords = vector4(251.3289, 220.1315, 106.2869, 341.1009),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [5] = {
                    coords = vector4(244.4397, 218.6358, 106.2869, 346.9477),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [6] = {
                    coords = vector4(247.9902, 222.1299, 106.2869, 339.7109),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [7] = {
                    coords = vector4(247.4013, 220.6006, 106.2869, 352.9295),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
                [8] = {
                    coords = vector4(237.3107, 217.7898, 106.2868, 292.4881),
                    models = {"a_f_m_fatbla_01","a_f_m_bevhills_01","a_f_m_ktown_02","a_f_m_soucent_01","a_m_m_fatlatin_01","a_m_m_genfat_01","a_m_m_malibu_01","a_m_m_paparazzi_01","a_m_m_tourist_01","a_m_m_tranvest_01","a_m_y_mexthug_01","cs_bankman","cs_dreyfuss","mp_f_execpa_02", "s_m_m_gaffer_01", "s_m_m_autoshop_01", "s_m_m_movspace_01", "s_m_y_clown_01"},
                    animDict = "missheistdockssetup1ig_12@idle_b",
                    animName = "talk_gantry_idle_b_worker4",
                    role = "teller" -- customer(normal), teller(can loot registers/safes)
                },
            }
        },
    }
}