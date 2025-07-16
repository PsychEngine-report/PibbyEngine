function onEvent(name, value1, value2)
	if name == 'stage test' then
addLuaScript('stages/'..value1)
removeLuaScript('stages/'..value2)
removeLuaSprite('stages/'..value2);
loadScript(value1, value2, true)

	end
	end