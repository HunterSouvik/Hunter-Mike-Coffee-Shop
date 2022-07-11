Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("mikel-showcase-cakes", vector3(121.03, -1040.42, 29.31), 0.6, 0.6, {
        name = "mikel-showcase-cakes",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:Cakes",
            icon = "fas fa-birthday-cake",
            label = "Open showcase",
            job = "mikel",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("coffee-machine-mikel1", vector3(118.48, -1043.62, 29.31), 0.8, 0.8, {
        name = "coffee-machine-mikel",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:MenuCafes",
            icon = "fas fa-coffee",
            label = "Use Coffe Machine",
            job = "mikel",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("coffee-machine-mikel2", vector3(118.21, -1045.05, 29.31), 0.8, 0.8, {
        name = "coffee-machine-mikel2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:MenuCafes",
            icon = "fas fa-coffee",
            label = "Use Coffe Machine",
            job = "mikel",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel-drinks1", vector3(119.41, -1041.44, 29.31), 0.3, 0.5, {
        name = "mikel-drinks1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:MenuBebidas",
            icon = "fas fa-glass",
            label = "Use Drink Machine",
            job = "mikel",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel-drinks2", vector3(119.55, -1041.01, 29.31), 0.3, 0.5, {
        name = "mikel-drinks2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:MenuBebidas",
            icon = "fas fa-glass",
            label = "Use Drink Machine",
            job = "mikel",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("mikel-washbasin", vector3(118.97, -1044.59, 29.31), 0.5, 0.5, {
        name = "mikel-washbasin",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:washbasin",
            icon = "fas fa-hand-holding",
            label = "Wash Hands",
            job = "mikel",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel-tray1", vector3(113.92, -1044.3, 29.31), 1, 2, {
        name = "mikel-tray1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:tray1",
            icon = "fas fa-clipboard",
            label = "Tray - 1",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel-tray2", vector3(117.8, -1033.61, 29.31), 1, 2, {
        name = "mikel-tray2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:tray2",
            icon = "fas fa-clipboard",
            label = "Tray - 2",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel-tray3", vector3(120.21, -1029.92, 29.31), 1, 2, {
        name = "mikel-tray3",
        heading = 250,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:tray3",
            icon = "fas fa-clipboard",
            label = "Tray - 3",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel-tray4", vector3(124.46, -1029.7, 29.31), 1, 2, {
        name = "mikel-tray4",
        heading = 70,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:tray4",
            icon = "fas fa-clipboard",
            label = "Tray - 4",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel-tray5", vector3(124.49, -1036.63, 29.31), 1, 2, {
        name = "mikel-tray5",
        heading = 250,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:tray5",
            icon = "fas fa-clipboard",
            label = "Tray - 5",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("mikel service", vector3(128.48, -1030.4, 29.31), 0.4, 0.3, {
        name = "mikel-service",
        heading = 250,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:service",
            icon = "fas fa-clipboard",
            label = "Clock In/Out",
            job = "mikel",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("mikel-register1", vector3(120.12, -1040.98, 29.31), 0.6, 0.6, {
        name = "mikel-register",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "hunter-mikel:client:invoicePlayer",
            icon = "fas fa-clipboard",
            label = "Bill Player",
            job = "mikel",
            },
        },
        distance = 1.5
    })

end)