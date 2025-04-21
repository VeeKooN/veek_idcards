--- Debug

RegisterCommand("checkpermis", function(source, args, raw)
    local licenseType = args[1]

    if not licenseType then
        lib.notify({ title = "Erreur Commande", description = "❌ Tu n'as pas spécfié le type de permis dans la commande !", type = 'error' })
    else
        ESX.TriggerServerCallback('esx_license:checkLicense', function(hasLicense)
            if hasLicense then
                lib.notify({ title = "Permis Obtenu", description = "✅ Tu as ce permis !", type = 'success' })
            else
                lib.notify({ title = "Permis Non Obtenu", description = "🚫 Tu n'as pas ce permis !", type = 'warning' })
            end
        end, GetPlayerServerId(PlayerId()), licenseType)
    end
end)