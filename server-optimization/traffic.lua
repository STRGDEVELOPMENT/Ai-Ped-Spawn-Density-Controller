-- the following values must satisfy the condtions (let x be the frequency) 
-- x ≥ 0.0
-- x must be a float type

local config = {
    pedFrequency = 0.0,
    trafficFrequency = 0.0,
    AnmialFrequency = 0.0,
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedFrequency) 
        --[[ 
        Values:  
        → 0.0 = no peds on streets  
        → 1.0 = normal peds on streets   
        ]]
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)
        -------------------------------
        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
        --[[ 
        Use this native inside a looped function.
        Values:
        0.0 = no vehicles on streets
        1.0 = normal vehicles on streets
        0.0 ≤ x ≤ 1.0
        ]]
    
    
    end 
end)