function onCreate()
	makeLuaSprite('uswf', 'uswf', 750, 150)
	scaleObject('uswf', 0.8, 0.8)
	setScrollFactor('uswf', 1, 1)
	setObjectCamera('uswf', 'camHUD')
	addLuaSprite('uswf', true)

	doTweenAlpha('uswf','uswf',0,0.001,'linear')
end

function onUpdate()
	if curStep >= 81 then
		doTweenAlpha('uswf','uswf',1,0.4,'linear')
	end

	if curStep >= 117 then
		doTweenAlpha('uswf','uswf',0,0.15,'linear')
	end
end