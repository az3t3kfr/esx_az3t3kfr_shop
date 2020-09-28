function CreateBlip(coords, text)
	local blip = AddBlipForCoord(coords)

	SetBlipSprite(blip, 52)
	SetBlipScale(blip, 0.9)
	SetBlipColour(blip, 2)
	SetBlipDisplay(blip, 4)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)

	return blip
end

function OpenShopMenu(zone)
	local elements = {}
	for i=1, #Config.Zones[zone].Items, 1 do
		local item = Config.Zones[zone].Items[i]

		if item.limit == -1 then
			item.limit = 100
		end

		table.insert(elements, {
			label      = ('%s - <span style="color:green;">%s</span>'):format(item.label, _U('shop_item', ESX.Math.GroupDigits(item.price))),
			label_real = item.label,
			item       = item.item,
			price      = item.price,

			value      = 1,
			type       = 'slider',
			min        = 1,
			max        = item.limit
		})
	end

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop', {
		css      =  'superete',
		title    = _U('shop'),
		align    = 'bottom-right',
		elements = elements
	}, function(data, menu)
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
			title    = _U('shop_confirm', data.current.value, data.current.label_real, ESX.Math.GroupDigits(data.current.price * data.current.value)),
			align    = 'bottom-right',
			elements = {
				{label = _U('no'),  value = 'no'},
				{label = _U('yes'), value = 'yes'}
			}
		}, function(data2, menu2)
			if data2.current.value == 'yes' then
				TriggerServerEvent('esx_shops:buyItem', data.current.item, data.current.value, zone)
			end

			menu2.close()
		end, function(data2, menu2)
			menu2.close()
		end)
	end, function(data, menu)
		menu.close()

		CurrentAction     = 'shop_menu'
		CurrentActionMsg  = _U('press_menu')
		CurrentActionData = {zone = zone}
	end)
end
