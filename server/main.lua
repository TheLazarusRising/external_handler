local npcs = {}

RegisterNetEvent("external_handler:deleteEntities")
AddEventHandler("external_handler:deleteEntities", function()
  if GetInvokingResource() == "esx-reborn" then
    if npcs then
      for k,v in pairs(npcs) do
        if DoesEntityExist(v.id) then
          DeleteEntity(v.id)
        end
      end
    end
  end
end)

RegisterNetEvent("external_handler:storeNPCs")
AddEventHandler("external_handler:storeNPCs", function(entities)
  if GetInvokingResource() == "esx-reborn" then
    if entities then
      npcs = entities
    end
  end
end)
