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


	if n == 'BlackFlashRev' then
	local table=valuesplit(v2,",")

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'000000')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',v2)
		setProperty('flash.alpha',table[1])
		doTweenAlpha('flTw','flash',table[2],v1, 'linear')
	end



end