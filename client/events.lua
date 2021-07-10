AddEventHandler('onClientRessourceStart'        ,function(res)

    if GetCurrentResourceName() ~= res then
        return false
    end

    while (function()
        
        if ESX == nil then
            return true
        end

        ESX.TriggerServerCallback('esx_shops:requestDBItems', function(ShopItems)
            for k,v in pairs(ShopItems) do
                Config.Zones[k].Items = v
            end
        end)

        return false
    end)() do
        TriggerEvent('esx:getSharedObject', function(obj) ESX =obj end)
        Wait(30)
    end

    if Config.ShowAllGasStations then
        for _, gasStationCoords in pairs(Config.GasStations) do
            CreateBlip(gasStationCoords)
        end
    end

    for name, shop in ipairs(Config.Zones) do
		local text	=shop.Name or name
		local blip	=shop.Blip.Type		or Config.Default.Blip.Type
		local scale	=shop.Blip.Scale	or Config.Default.Blip.Scale
		local color	=shop.Blip.Color	or Config.Default.Blip.Color

		for _, pos in pairs(shop.Pos) do
			CreateBlip(pos, text, type, size, color)
		end
	end

    print('##############')
    print('## AZ3T3KFR GAME ')
    print('## LifeLive RP ')
    print('## Discord: AZ3T3KFR Game#7183')
    print('##############')
end)

AddEventHandler('esx_shops:hasEnteredMarker'    ,function(zone)
	CurrentAction     = 'shop_menu'
	CurrentActionMsg  = _U('press_menu')
	CurrentActionData = {zone = zone}
end)
AddEventHandler('esx_shops:hasExitedMarker'     ,function(zone)
	CurrentAction = nil
	ESX.UI.Menu.CloseAll()
end)
