-- IDCard

exports('watchidcard', function(slot)
    local playerPed = PlayerPedId(source)
    local inventory = exports.ox_inventory:GetPlayerItems(source)

    exports.ox_inventory:closeInventory()
    if exports.ox_inventory:GetItemCount('card_id') >= 1 then
        TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
        lib.notify({
            title = "Carte d'Identité",
            description = "Vous regardez votre carte d'identité",
            type = 'info'
        })
    else
        lib.notify({
            title = "Carte d'Identité",
            description = "Vous n'avez pas votre carte d'identité !",
            type = 'warning'
        })
    end
end)

exports('showidcard', function(slot)
    local playerPed = PlayerPedId(source)
    local inventory = exports.ox_inventory:GetPlayerItems(source)

    exports.ox_inventory:closeInventory()
    local player, distance = ESX.Game.GetClosestPlayer()
    if distance ~= -1 and distance <= 3.0 then
        TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
        lib.notify({
            title = "Carte d'Identité",
            description = "Vous montrez votre carte d'identité",
            type = 'info'
        })
    else
        lib.notify({
            title = "Carte d'Identité",
            description = "Il n'y a personne à côté de vous !",
            type = 'error'
        })
    end
end)

-- DriverCard

exports('watchdrivercard', function(slot)
    local playerPed = PlayerPedId(source)
    local inventory = exports.ox_inventory:GetPlayerItems(source)

    exports.ox_inventory:closeInventory()
    ESX.TriggerServerCallback('esx_license:checkLicense', function(hasLicense)
        if hasLicense then
            TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()),
                'driver')
            lib.notify({
                title = "Permis de Conduire",
                description = "Vous regardez votre Permis de Conduire",
                type = 'info'
            })
        else
            lib.notify({
                title = "Permis de Conduire",
                description = "Vous n'avez pas votre Permis de Conduire !",
                type = 'warning'
            })
        end
    end, GetPlayerServerId(PlayerId()), "drive")
end)

exports('showdrivercard', function(slot)
    local playerPed = PlayerPedId(source)
    local inventory = exports.ox_inventory:GetPlayerItems(source)

    exports.ox_inventory:closeInventory()
    ESX.TriggerServerCallback('esx_license:checkLicense', function(hasLicense)
        if hasLicense then
            local player, distance = ESX.Game.GetClosestPlayer()
            if distance ~= -1 and distance <= 3.0 then
                TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player),
                    'driver')
                lib.notify({
                    title = "Permis de Conduire",
                    description = "Vous montrez votre Permis de Conduire",
                    type = 'info'
                })
            else
                lib.notify({
                    title = "Permis de Conduire",
                    description = "Il n'y a personne à côté de vous !",
                    type = 'error'
                })
            end
        else
            lib.notify({
                title = "Permis de Conduire",
                description = "Vous n'avez pas votre Permis de Conduire !",
                type = 'warning'
            })
        end
    end, GetPlayerServerId(PlayerId()), "drive")
end)

-- weaponCard


exports('watchweaponcard', function(slot)
    local playerPed = PlayerPedId(source)
    local inventory = exports.ox_inventory:GetPlayerItems(source)

    exports.ox_inventory:closeInventory()
    ESX.TriggerServerCallback('esx_license:checkLicense', function(hasLicense)
        if hasLicense then
            TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()),
                'weapon')
            lib.notify({
                title = "Permis de Port d'Arme",
                description = "Vous regardez votre Permis de Port d'Arme",
                type = 'info'
            })
        else
            lib.notify({
                title = "Permis de Port d'Arme",
                description = "Vous n'avez pas votre Permis de Port d'Arme !",
                type = 'warning'
            })
        end
    end, GetPlayerServerId(PlayerId()), "weapon")
end)

exports('showweaponcard', function(slot)
    local playerPed = PlayerPedId(source)
    local inventory = exports.ox_inventory:GetPlayerItems(source)

    exports.ox_inventory:closeInventory()
    ESX.TriggerServerCallback('esx_license:checkLicense', function(hasLicense)
        if hasLicense then
            local player, distance = ESX.Game.GetClosestPlayer()
            if distance ~= -1 and distance <= 3.0 then
                TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player),
                    'weapon')
                lib.notify({
                    title = "Permis de Port d'Arme",
                    description = "Vous montrez votre Permis de Port d'Arme",
                    type = 'info'
                })
            else
                lib.notify({
                    title = "Permis de Port d'Arme",
                    description = "Il n'y a personne à côté de vous !",
                    type = 'error'
                })
            end
        else
            lib.notify({
                title = "Permis de Port d'Arme",
                description = "Vous n'avez pas votre Permis de Port d'Arme !",
                type = 'warning'
            })
        end
    end, GetPlayerServerId(PlayerId()), "weapon")
end)

