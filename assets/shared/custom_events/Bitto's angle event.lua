function valuesplit(input, sep) --thanks SilverSnow
	if sep == nil then
		sep = '%s'
	end
	local t={}
	for str in string.gmatch(input,"([^"..sep.."]+)") do
		table.insert(t,str)
	end
	return t
end

-- default values just in case
local angletype = 'custom'
local angleamount = 0.9
local angleduration = 0.5
local tween = 'linear'

function onEvent(name,v1,v2)
	if name == "Bitto's angle event" then
		if v1 == 'regular' then
			--debugPrint(v2)
			setProperty("defaultCamAngle", v2)
		end
		
		if v1 == 'custom' then
			local table=valuesplit(v2,",")
		
			angletype = v1
			angleamount = table[1]	
			angleduration = table[2]
			tween = table[3]

		
			--debugPrint(zoomamount .. ' ',zoomduration .. ' ',tween .. ' ')
			doTweenAngle('BittoAngle', 'camGame', angleamount, angleduration, tween)
		end
	end
end

function onTweenCompleted(name)
	if name == 'BittoAngle' then
		setProperty("defaultCamAngle",getProperty('camGame.angle'))
	end
end