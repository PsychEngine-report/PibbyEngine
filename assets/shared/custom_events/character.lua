function onEvent(name, value1, value2)
	if name == 'character' then
addLuaScript('characters/'..value1)
loadScript(value1, true)
removeLuaScript('characters/'..value2)
removeLuaSprite('characters/'..value2);
	end
	end