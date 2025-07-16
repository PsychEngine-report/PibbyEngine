function onEvent(n,v1,v2)


	if n == 'BlackFlash' then

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'000000');
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0);
	      setProperty('flash.scale.x',4);
	      setProperty('flash.scale.y',4);
	      setProperty('flash.alpha',v2);
		setProperty('flash.alpha',v2);
		doTweenAlpha('flTw','flash',0,v1,'linear')
	end



end