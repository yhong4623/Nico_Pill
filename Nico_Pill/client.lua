ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


local Pill_1, Pill_2 = false, false
local Pill_1_Time, Pill_2_Time = 0, 0



RegisterNetEvent('Nico_Pill:Pill_1')
AddEventHandler('Nico_Pill:Pill_1', function()

  Pill_1 = true
  Pill_1_Time = 120 ---藥效秒數


  RequestAnimDict("mp_suicide")
  while not HasAnimDictLoaded("mp_suicide") do
  Citizen.Wait(100)
  end

  TaskPlayAnim(GetPlayerPed(-1), "mp_suicide", "pill_fp", 8.0, 8.0, -1, 50, 0, false, false, false)
  Citizen.Wait(3000)
  ESX.ShowAdvancedNotification("藥物", "通知", "~y~你吃了回血藥(HP持續回復)~g~\n藥效2分鐘", "CHAR_MP_MORS_MUTUAL")
  ClearPedSecondaryTask(GetPlayerPed(-1))
  
  
  
    while Pill_1 do
      Citizen.Wait(1000)
      Pill_1_Time = Pill_1_Time - 1
      local HP = GetEntityHealth(PlayerPedId())
	  HP = HP + 1
	  SetEntityHealth(PlayerPedId(), HP)	 
        if Pill_1_Time <= 0 then
         Pill_1_Time = 0 
         Pill_1 = false
	     ESX.ShowAdvancedNotification("藥物", "通知", "~r~回血藥狀態沒了", "CHAR_MP_MORS_MUTUAL") 
        end
    end


end)



RegisterNetEvent('Nico_Pill:Pill_2')
AddEventHandler('Nico_Pill:Pill_2', function()

  Pill_2 = true
  Pill_2_Time = 120 ---藥效秒數
  
  RequestAnimDict("mp_suicide")
  while not HasAnimDictLoaded("mp_suicide") do
  Citizen.Wait(100)
  end

  TaskPlayAnim(GetPlayerPed(-1), "mp_suicide", "pill_fp", 8.0, 8.0, -1, 50, 0, false, false, false)
  Citizen.Wait(3000)
  ESX.ShowAdvancedNotification("藥物", "通知", "~y~你吃了回甲藥(護甲持續回復)~g~\n藥效2分鐘", "CHAR_MP_MORS_MUTUAL")
  ClearPedSecondaryTask(GetPlayerPed(-1))



  local playerPed = GetPlayerPed(-1)
  
    while Pill_2 do
      Citizen.Wait(1000)
      Pill_2_Time = Pill_2_Time - 1
	  AddArmourToPed(playerPed, 1)	 
        if Pill_2_Time <= 0 then
         Pill_2_Time = 0 
         Pill_2 = false
	     ESX.ShowAdvancedNotification("藥物", "通知", "~r~回甲藥狀態沒了", "CHAR_MP_MORS_MUTUAL") 	 
        end
    end

end)


RegisterNetEvent('Nico_Pill:Pill_3')
AddEventHandler('Nico_Pill:Pill_3', function()


  RequestAnimDict("mp_suicide")
  while not HasAnimDictLoaded("mp_suicide") do
  Citizen.Wait(100)
  end

  TaskPlayAnim(GetPlayerPed(-1), "mp_suicide", "pill_fp", 8.0, 8.0, -1, 50, 0, false, false, false)
  Citizen.Wait(3000)
  ESX.ShowAdvancedNotification("藥物", "通知", "~y~你吃了特級全能藥~g~\nHP和護甲補至全滿", "CHAR_MP_MORS_MUTUAL")
  ClearPedSecondaryTask(GetPlayerPed(-1))



  local playerPed = PlayerPedId()
  local maxHealth = GetEntityMaxHealth(playerPed)

  SetEntityHealth(playerPed, maxHealth)
  AddArmourToPed(playerPed, 100)	
  

end)



RegisterNetEvent('Nico_Pill:Pill_4')
AddEventHandler('Nico_Pill:Pill_4', function()


  RequestAnimDict("mp_suicide")
  while not HasAnimDictLoaded("mp_suicide") do
  Citizen.Wait(100)
  end

  TaskPlayAnim(GetPlayerPed(-1), "mp_suicide", "pill_fp", 8.0, 8.0, -1, 50, 0, false, false, false)
  Citizen.Wait(3000)
  ESX.ShowAdvancedNotification("藥物", "通知", "~y~你吃了全能藥~g~\nHP和護甲補充50%", "CHAR_MP_MORS_MUTUAL")
  ClearPedSecondaryTask(GetPlayerPed(-1))
  
  local playerPed = GetPlayerPed(-1)
  local HP = GetEntityHealth(PlayerPedId())
  HP = HP + 50
  SetEntityHealth(PlayerPedId(), HP)
  AddArmourToPed(playerPed, 50)

end)