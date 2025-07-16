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


function onEvent(n,v1,v2)


	if n == 'WhiteFlash' then
	local table=valuesplit(v2,",")

	   makeLuaSprite('flashs', '', 0, 0);
        makeGraphic('flashs',1280,720,'FFFFFF')
	      addLuaSprite('flashs', true);
	      setLuaSpriteScrollFactor('flashs',0,0)
	      setProperty('flashs.scale.x',3)
	      setProperty('flashs.scale.y',3)
	      setProperty('flashs.alpha',v2)
		setProperty('flashs.alpha',table[1])
		doTweenAlpha('flTw','flashs',table[2],v1, 'linear')
	end



end