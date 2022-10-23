local inMenu = false

RegisterCommand('forcescratcher', function(source, args, raw)
  TriggerEvent('dr-scratching:nuiOpenCard', 'Rare', 2500, 1, 'money')
end)

RegisterNetEvent("dr-scratching:nuiOpenCard")
AddEventHandler("dr-scratching:nuiOpenCard", function(key, price, amount, price_type)
  if inMenu then return end
  SetNuiFocus(true, true)
  SendNUIMessage({
    type = 'openScratch',
    key = key,
    price = price,
    amount = amount,
    price_type = price_type,
    win_message = "You win",
    lose_message = "You lost",
    currency = "$",
    scratchAmount = 80,
    resourceName = GetCurrentResourceName(),
    debug = debugIsEnabled
  })
  inMenu = true
end)

RegisterNUICallback('nuiCloseCard', function(data)
	SetNuiFocus(false, false)
	SendNUIMessage({type = 'closeScratch'})
  TriggerEvent("dr-scratching:stopScratchingEmote")
  TriggerServerEvent('dr-scratching:stopScratching', data.price, data.amount, data.type)
  inMenu = false
end)