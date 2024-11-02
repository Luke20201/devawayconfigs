Config = {
    debug = false,
    core = "qb", -- qb/esx
    notify = "ox",
    playerLoadedEvent = "QBCore:Client:OnPlayerLoaded", -- QBCore:Client:OnPlayerLoaded || esx:playerLoaded
    useItem = true,
    useCommand = false,

    vehiclesTable = 'player_vehicles', -- the db table where your vehicles are stored
    vehiclesTableVehicleName = 'vehicle', -- the vehicles spawncode in this table
    vehiclesTableIdentifier = 'citizenid', -- the players identifier in this table
    truckingGarageName = 'Trucker Garage', -- the name of the garage you store trucks in

    timeBetweenContracts =  5 * 60000, -- In ms
    payoutPerMile = math.random(800, 1200),
    baseIncomePerDriver = math.random(100, 200), -- Final income is baseIncomePerDriver * driver skill
    baseTruckMaintence = math.random(70, 150), -- Final maintance is baseTruckMaintence / truck quality in the table below

    trucks = { -- quality of truck
        ["phantom"] = 2,
        ["pounder"] = 1.25,
        ["packer"] = 1,
        ["hauler"] = 0.9,
    },

    translations = {
        ["trucking"] = "Trucking",
        ["accepted"] = "Contract Accepted!",
        ["collect"] = "Collect the cargo from the pickup location!",
        ["deliver"] = "Trailer Collected! Deliver the cargo to the dropoff location",
        ["dropoffBlip"] = "Delivery Location",
        ["dropoff"] = "You can deliver the cargo here!",
        ["success"] = "Delivery Completed!"
    },

    pickupLocations = {
        [1] = {
            companyName = "RON", 
            locationName = "Ron Gas Paleto", 
            validDropoffLocations = {4, 6, 12, 26, 19, 31, 34, 32}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(146.26, 6583.47, 31.86),
            },
            trailerModel = "Tanker"
        },
        [2] = {
            companyName = "Los Santos Customs", 
            locationName = "Los Santos Customs", 
            validDropoffLocations = {1, 2, 3, 4, 6, 7, 12, 18, 28, 30, 32}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(-368.41, -118.17, 38.7),
            },
            trailerModel = "trailers"
        },
        [3] = {
            companyName = "Los Santos Country Club", 
            locationName = "Los Santos Country Club", 
            validDropoffLocations = {7, 8, 9, 19, 34}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(-1395.54, 49.4, 53.49),
            },
            trailerModel = "trailers"
        },
        [4] = {
            companyName = "DMM Transit Co", 
            locationName = "Davis Mega Mall", 
            validDropoffLocations = {3, 4, 7, 10, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32, 33, 34}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(100.7406, -1822.8254, 26.3436),
            },
            trailerModel = "trailers"
        },
        [5] = {
            companyName = "Los Santos Sanitation", 
            locationName = "Junkyard", 
            validDropoffLocations = {11}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(-458.6936, -1715.1039, 18.2316),
            },
            trailerModel = "tr4"
        },
        [6] = {
            companyName = "Meteorite Candy", 
            locationName = "Airport Hanger", 
            validDropoffLocations = {2, 5, 6, 10, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 29, 30, 31, 32, 33, 34}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(-966.0858, -2938.0801, 13.5344),
            },
            trailerModel = "trailers"
        },
        [7] = {
            companyName = "Los Santos Pharma", 
            locationName = "Merryweather Dock", 
            validDropoffLocations = {2, 3, 6, 13, 16, 21, 23, 24, 25, 27, 29, 31, 32, 34}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(518.6503, -3030.8877, 6.0518),
            },
            trailerModel = "trailers"
        },
        [8] = {
            companyName = "Los Santos Oil", 
            locationName = "El Burro Heights", 
            validDropoffLocations = {6, 8, 9, 12, 26, 32, 34}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(1242.6007, -2389.6072, 48.1020),
            },
            trailerModel = "tanker"
        },
        [9] = {
            companyName = "Los Santos Shipping Co.", 
            locationName = "Octopus", 
            validDropoffLocations = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34}, -- Corresponding ID in dropoffLocations
            spawnCoords = {
                vector3(-202.7331, -2416.1873, 5.5950),
            },
            trailerModel = "trailers"
        },
   },
    dropoffLocations = {
        [1] = {locationName = "Merryweather Dock", coords = vector3(518.6503, -3030.8877, 6.0518), zoneSize = vector3(15, 15, 5)},
        [2] = {locationName = "Octopus", coords = vector3(-202.7331, -2416.1873, 5.5950), zoneSize = vector3(15, 15, 5)},
        [3] = {locationName = "Airport Hanger", coords = vector3(-966.0858, -2938.0801, 13.5344), zoneSize = vector3(15, 15, 5)},
        [4] = {locationName = "Auto Mechanics Autopia", coords = vector3(-408.3912, -2179.7551, 9.9069), zoneSize = vector3(15, 15, 5)},
        [5] = {locationName = "Maze Bank Arena", coords = vector3(-194.8615, -1963.0532, 27.2126), zoneSize = vector3(15, 15, 5)},
        [6] = {locationName = "LTD Gasoline Grove Street", coords = vector3(-19.6349, -1763.1235, 28.7379), zoneSize = vector3(15, 15, 5)},
        [7] = {locationName = "Junkyard", coords = vector3(-458.6936, -1715.1039, 18.2316), zoneSize = vector3(15, 15, 5)},
        [8] = {locationName = "La Puerta Harbour", coords = vector3(-779.0961, -1333.1096, 4.5887), zoneSize = vector3(15, 15, 5)},
        [9] = {locationName = "La Puerta Helipad", coords = vector3(-759.8924, -1488.7666, 4.5887), zoneSize = vector3(15, 15, 5)},
        [10] = {locationName = "Bishops Chicken", coords = vector3(156.7314, -1647.1798, 28.8810), zoneSize = vector3(15, 15, 5)},
        [11] = {locationName = "Water Treatment Plant", coords = vector3(511.8141, -2293.0090, 5.5114), zoneSize = vector3(15, 15, 5)},
        [12] = {locationName = "Globe Oil LTD La Puerta", coords = vector3(-335.5957, -1481.8892, 30.6067), zoneSize = vector3(15, 15, 5)},
        [13] = {locationName = "Davis Mega Mall", coords = vector3(100.7406, -1822.8254, 26.3436), zoneSize = vector3(15, 15, 5)},
        [14] = {locationName = "La Spada", coords = vector3(-1052.16, -1397.64, 5.43), zoneSize = vector3(15, 15, 5)},
        [15] = {locationName = "Burger Shot", coords = vector3(-1176.94, -882.05, 13.94), zoneSize = vector3(15, 15, 5)},
        [16] = {locationName = "Del Perro Plaza", coords = vector3(-1526.04, -439.86, 35.44), zoneSize = vector3(15, 15, 5)},
        [17] = {locationName = "Chumash Hotel", coords = vector3(-3045.43, 143.76, 11.6), zoneSize = vector3(15, 15, 5)},
        [18] = {locationName = "Los Santos Country Club", coords = vector3(-1395.54, 49.4, 53.49), zoneSize = vector3(15, 15, 5)},
        [19] = {locationName = "The Last Train", coords = vector3(-379.84, 288.15, 84.89), zoneSize = vector3(15, 15, 5)},
        [20] = {locationName = "Roosters Rest", coords = vector3(-159.98, 276.43, 93.63), zoneSize = vector3(15, 15, 5)},
        [21] = {locationName = "Gabriela's Market", coords = vector3(1152.59, -279.36, 68.94), zoneSize = vector3(15, 15, 5)},
        [22] = {locationName = "Hornys", coords = vector3(1252.48, -344.14, 69.08), zoneSize = vector3(15, 15, 5)},
        [23] = {locationName = "Dollar Pills", coords = vector3(70.61, -1546.78, 29.46), zoneSize = vector3(15, 15, 5)},
        [24] = {locationName = "Little Seoul Plaza", coords = vector3(-781.53, -588.49, 30.13), zoneSize = vector3(15, 15, 5)},
        [25] = {locationName = "North Rockford 24/7", coords = vector3(-1814.51, 780.04, 137.36), zoneSize = vector3(15, 15, 5)},
        [26] = {locationName = "Los Santos Customs Rockford", coords = vector3(-368.41, -118.17, 38.7), zoneSize = vector3(15, 15, 5)},
        [27] = {locationName = "Harmony 24/7", coords = vector3(550.12, 2680.39, 42.15), zoneSize = vector3(15, 15, 5)},
        [28] = {locationName = "Yellow Jack", coords = vector3(2010.32, 3069.47, 47.06), zoneSize = vector3(15, 15, 5)},
        [29] = {locationName = "Sandy 24/7", coords = vector3(1980.78, 3764.62, 32.18), zoneSize = vector3(15, 15, 5)},
        [30] = {locationName = "Grapeseed Gas Station", coords = vector3(1696.69, 4940.41, 42.13), zoneSize = vector3(15, 15, 5)},
        [31] = {locationName = "Paleto 24/7", coords = vector3(1726.26, 6399.97, 34.47), zoneSize = vector3(15, 15, 5)},
        [32] = {locationName = "Ron Gas Paleto", coords = vector3(146.26, 6583.47, 31.86), zoneSize = vector3(15, 15, 5)},
        [33] = {locationName = "Hookies Bar", coords = vector3(-2200.89, 4256.12, 47.77), zoneSize = vector3(15, 15, 5)},
        [34] = {locationName = "Chumash Plaza", coords = vector3(-3154.05, 1071.45, 20.68), zoneSize = vector3(15, 15, 5)},
    }
}
