ESX                           =nil
local HasAlreadyEnteredMarker =false
local lastZone                =nil
local CurrentAction           =nil
local CurrentActionMsg        =""
local CurrentActionData       ={}


CreateThread(function()
	local currentGasBlip

	while (function()

		if not Config.ShowNearestGasStationOnly then
			return false
		end

		local coords	=GetEntityCoords(PlayerPedId())
		local closest	=1000
		local closestCoords

		for _, gasStationCoords in pairs(Config.GasStations) do
			local dstcheck = #(coords -gasStationCoords)

			if dstcheck < closest then
				closest = dstcheck
				closestCoords = gasStationCoords
			end
		end

		if DoesBlipExist(currentGasBlip) then
			RemoveBlip(currentGasBlip)
		end

		currentGasBlip = CreateBlip(closestCoords)

		return true
	end)() do
		Wait(1000)
	end
end)
CreateThread(function()
	local coords
	
	while (function()
		local isInMarker  = false
		local currentZone = nil

		for _, shop in pairs(Config.Zones) do
			local type	=shop.Blip.Type or -1
			local color	=shop.Marker.Color or Config.Default.Marker.Color
			local size	=shop.Marker.Size or Config.Default.Marker.Size

			for _, pos in pairs(shop.Pos) do
				local distance = #(coords -pos)

				if type ~= -1 then

					if distance < Config.DrawDistance or distance > Config.Size.x
						DrawMarker(
							type, pos,
							0.0, 0.0, 0.0, 0, 0.0, 0.0,
							size, color, 
							100, false, true, 2, false, false, false, false
						)
					end
				end

				if #(coords -pos) <= Config.Size.x) then
					isInMarker  =true
					ShopItems   =v.Items
					currentZone =k
					lastZone    =k

					break
				end
			end
		end

		if isInMarker and not HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = true
			TriggerEvent('esx_shops:hasEnteredMarker', currentZone)
		end
		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('esx_shops:hasExitedMarker', lastZone)
		end
	end)() do
		Wait(1)
		coords = GetEntityCoords(PlayerPedId())
	end
end)
CreateThread(function()
	local t

	while (function()
		t = 500

		if CurrentAction == nil then
			return true
		end

		ESX.ShowHelpNotification(CurrentActionMsg)

		if IsControlJustReleased(0, 51) then
			if CurrentAction == 'shop_menu' then
				OpenShopMenu(CurrentActionData.zone)
			end

			CurrentAction = nil
		end

		return true
	end)() do
		Wait(t)
	end
	
end)
