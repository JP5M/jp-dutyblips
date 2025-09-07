Config = {
    framework = 'qbx', -- qbx, qbcore or esx
    refreshRate = 10000, -- in ms (10000 = 10 seconds)
}

Config.Blips = {
    {
        id = "mechanic", -- Unique identifier
        label = "Mechanics", -- Blip name on map
        job = "mechanic", -- Job associated with the blip
        coords = vector3(-327.6184, -135.9356, 39.0097),
        requiredCount = 1,
        appearance = {
            sprite = 446, -- Symbol (https://docs.fivem.net/docs/game-references/blips/)
            scale = 0.7, -- Scale from 0.0 - x.0
            colorAvailable = 2, -- Green, if enough employees
            colorUnavailable = 1, -- Red, if not enough employees
            display = 4
        }
    },
    {
        id = "hospital",
        label = "Ocean Side Medical Department",
        job = "ambulance",
        coords = vector3(-1854.4440, -343.5552, 58.0560),
        requiredCount = 1,
        appearance = {
            sprite = 61,
            scale = 0.7,
            colorAvailable = 2,
            colorUnavailable = 1,
            display = 4
        }
    },
    {
        id = "police",
        label = "Los Santos Police Department",
        job = "police",
        coords = vector3(-571.3316, -423.4971, 45.5232),
        requiredCount = 1,
        appearance = {
            sprite = 60,
            scale = 0.7,
            colorAvailable = 29,
            colorUnavailable = 1,
            display = 4
        }
    },
}