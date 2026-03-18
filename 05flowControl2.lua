-- and operator
-- True and True => executes
-- True and False => does not execute
-- False and True => does not execute
-- False and False => does not execute

-- or operator
-- True or True => executes
-- True or False => executes
-- False or True => executes
-- False or False => does not execute

--[[ 
    Task: Smart City Traffic Management System

    The goal is to implement a traffic light control system for a smart city that adjusts 
    traffic light timings and states based on the following inputs:
    
    1. Traffic Density: Traffic density for North-South and East-West directions (values range from 0 to 100).
    2. Emergency Vehicle: A boolean value that indicates whether an emergency vehicle is detected (True or False).
    3. Weather Condition: The weather condition can be "Clear", "Rain", "Snow", or "Fog".
    4. Road Closure: A list of closed intersections, where roads are temporarily blocked (e.g., {"North-South"}).
    
    The program will:
    - Adjust the traffic light timings dynamically based on traffic density. If traffic density is higher in one direction, 
      that direction should get more green time, and the other direction should get reduced green time.
    
    - Handle emergency vehicles. When an emergency vehicle is detected, the normal traffic flow should be overridden, 
      and the emergency vehicle's direction should be given priority (green light).
    
    - Adjust the traffic light timings based on the weather. For instance, during rain or snow, increase the yellow light 
      duration and reduce the green light time to ensure safer driving.
    
    - Adjust for road closures. If a road is closed, reroute the traffic through available directions and change the 
      timings accordingly.
    
    Final Output:
    - Print the current states of the traffic lights (Green, Red, Yellow) and the corresponding timings.
]]

-- Traffic Light Control System (Using Flow-Control)
local north_south_light = "Red"       
local east_west_light = "Red"         
local green_time_ns = 30              
local green_time_ew = 30              
local yellow_time = 10                
local traffic_density_ns = 0          
local traffic_density_ew = 0          
local emergency_vehicle = false       
local weather_condition = "Clear"     
local road_closure = {}               

-- Inputs (these would come from sensors)
traffic_density_ns = 70       
traffic_density_ew = 30       
emergency_vehicle = true      
weather_condition = "Rain"    
road_closure = {"North-South"}

-- Adjust Green Light Timing Based on Traffic Density
if traffic_density_ns > traffic_density_ew then
    green_time_ns = math.min(60, green_time_ns + 5) -- North-South is busier
    green_time_ew = math.max(15, green_time_ew - 5)
elseif traffic_density_ew > traffic_density_ns then
    green_time_ew = math.min(60, green_time_ew + 5) -- East-West is busier
    green_time_ns = math.max(15, green_time_ns - 5)
else
    -- Equal traffic density, default times
    green_time_ns = green_time_ns
    green_time_ew = green_time_ew
end

-- Adjust Timings Based on Weather Condition
if weather_condition == "Rain" or weather_condition == "Snow" then
    yellow_time = 15  -- Longer yellow light duration in bad weather
    green_time_ns, green_time_ew = math.max(10, green_time_ns - 10), math.max(10, green_time_ew - 10)  -- Reduce green light time
elseif weather_condition == "Fog" then
    yellow_time = 15  -- Longer yellow light duration in fog
    green_time_ns, green_time_ew = math.max(10, green_time_ns - 15), math.max(10, green_time_ew - 15)  -- Reduce green light time more
else
    yellow_time = 10  -- Default yellow time for clear weather
end

-- Handle Emergency Vehicle
if emergency_vehicle then
    -- Emergency vehicle prioritize East-West direction
    north_south_light = "Red"
    east_west_light = "Green"
    green_time_ew = 5  -- Short green time for emergency vehicle
end

-- Handle Road Closure
for _, closure in ipairs(road_closure) do
    if closure == "North-South" then
        -- North-South road closed, all traffic goes East-West
        green_time_ns = 0
        green_time_ew = 60
        north_south_light = "Red"
        east_west_light = "Green"
    elseif closure == "East-West" then
        -- East-West road closed, all traffic goes North-South
        green_time_ew = 0
        green_time_ns = 60
        north_south_light = "Green"
        east_west_light = "Red"
    end
end

-- Output the Results (Traffic light states and timings)
print("North-South Light: " .. north_south_light)
print("East-West Light: " .. east_west_light)
print("Green time (North-South): " .. green_time_ns .. " seconds")
print("Green time (East-West): " .. green_time_ew .. " seconds")
print("Yellow light duration: " .. yellow_time .. " seconds")