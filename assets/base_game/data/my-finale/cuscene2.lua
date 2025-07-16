function onCreate()
	makeLuaSprite('darknessss', 'fw/darkinthecam', 0, 0)
    setObjectCamera('darknessss', 'camHUD')
    scaleObject('darknessss', 2.0, 2.0)
    addLuaSprite('darknessss', true)
    setProperty('darknessss.alpha', 0.85, 0.85)
    setProperty('darknessss.visible', false)

    makeLuaSprite('bblack', '', 0, 0);
    makeGraphic('bblack',1280,720,'000000')
	addLuaSprite('bblack', true);
	setProperty('bblack.scale.x',5)
	setProperty('bblack.scale.y',5)
	setProperty('bblack.visible', false)

    makeLuaSprite('bblacky', '', 0, 0);
    makeGraphic('bblacky',1280,720,'000000')
    addLuaSprite('bblacky', true);
    setProperty('bblacky.scale.x',5)
    setProperty('bblacky.scale.y',5)

	makeLuaSprite('home', 'home', 0, 0)
	setObjectCamera('home', 'other')
    scaleObject('home', 2.0, 2.0)
	addLuaSprite('home', true)
	setProperty('home.visible', false)

	makeLuaSprite('school', 'school', 0, 0)
	setObjectCamera('school', 'other')
    scaleObject('school', 2.0, 2.0)
	addLuaSprite('school', true)

	makeLuaSprite('school1', 'school1', 0, 0)
	setObjectCamera('school1', 'other')
    scaleObject('school1', 2.0, 2.0)
	addLuaSprite('school1', true)

    makeLuaSprite('flashss', '', 0, 0);
    makeGraphic('flashss',1280,720,'FFFFFF')
	addLuaSprite('flashss', true);
	setObjectCamera('flashss', 'other')
	setProperty('flashss.scale.x',3)
	setProperty('flashss.scale.y',3)
	setProperty('flashss.visible', false)

	makeLuaSprite('flashbl', '', 0, 0);
    makeGraphic('flashbl',1280,720,'000000')
	addLuaSprite('flashbl', true);
	setObjectCamera('flashbl', 'other')
	setProperty('flashbl.scale.x',3)
	setProperty('flashbl.scale.y',3)
	setProperty('flashbl.visible', false)

    makeLuaSprite('flashwht', '', 0, 0);
    makeGraphic('flashwht',1280,720,'FFFFFF')
    addLuaSprite('flashwht', true);
    setObjectCamera('flashwht', 'other')
    setProperty('flashwht.scale.x',3)
    setProperty('flashwht.scale.y',3)
    setProperty('flashwht.visible', false)

	makeLuaSprite('dh', 'fw/darwin heart', 500, 225)
    setObjectCamera('dh', 'other')
	scaleObject('dh', 0.6, 0.6)
	setProperty('dh.alpha', 0)
	addLuaSprite('dh', true)
end

function onUpdate()
    if curStep == 0 then
    	setProperty('school.alpha', 0)
    	setProperty('school1.alpha', 0)
    	setProperty('flashbl.alpha', 0)
    	setProperty('dh.visible', false)
        setProperty('bblacky.alpha', 0)
    end

    if curStep >= 1296 then
    	setProperty('home.visible', true)
    	setProperty('flashss.visible', true)
    	doTweenX('scaleX', 'home.scale', 2.8, 28, 'cubeOut')
        doTweenY('scaleY', 'home.scale', 2.8, 28, 'cubeOut')
        doTweenAlpha('flashss', 'flashss', 0, 1, 'cubeOut')
    end

    if curStep >= 1327 then
    	doTweenAlpha('school', 'school', 1, 1, 'cubeOut')
    	doTweenX('scaleX', 'school.scale', 2.8, 40, 'cubeOut')
        doTweenY('scaleY', 'school.scale', 2.8, 40, 'cubeOut')
    end

    if curStep >= 1360 then
    	doTweenAlpha('school1', 'school1', 1, 1, 'cubeOut')
    	doTweenX('scaleX', 'school1.scale', 2.8, 40, 'cubeOut')
        doTweenY('scaleY', 'school1.scale', 2.8, 40, 'cubeOut')
    end

    if curStep >= 1392 then
    	setProperty('flashbl.visible', true)
    	doTweenAlpha('flashbl', 'flashbl', 1, 3, 'cubeOut')
    end

    if curStep >= 1424 then
    	setProperty('dh.visible', true)
    	doTweenAlpha('dh', 'dh', 1, 3, 'linear')
        doTweenX('scaleX', 'dh.scale', 1.0, 24, 'cubeOut')
        doTweenY('scaleY', 'dh.scale', 1.0, 24, 'cubeOut')
    end

    if curStep >= 1616 then
    	doTweenAlpha('dh', 'dh', 0, 1.5, 'linear')
        doTweenX('scaleX', 'dh.scale', 8, 8, 'cubeOut')
        doTweenY('scaleY', 'dh.scale', 8, 8, 'cubeOut')
    end

    if curStep >= 1680 then
        setProperty('home.visible', false)
        setProperty('school.visible', false)
    	setProperty('school1.visible', false)
        setProperty('dh.visible', false)
        setProperty('flashbl.visible', false)
    end

    if curStep >= 1904 then
        setProperty('cut9.visible', false)
        setProperty('bblack.visible', true)
        setProperty('flashbl.visible', true)
        doTweenAlpha('flashbl', 'flashbl', 0, 0.5, 'cubeOut')
    end

    if curStep >= 1936 then
        setProperty('bblack.visible', false)
    end

    if curStep >= 2968 then
        doTweenAlpha('bblacky', 'bblacky', 1, 1, 'cubeOut')
    end

    if curStep >= 2976 then
        setProperty('bblacky.visible', false)
        setProperty('darknessss.visible', true)
    end

    if curStep >= 3520 then
        setProperty('flashbl.visible', true)
        setProperty('flashwht.visible', true)
        doTweenAlpha('flashwht', 'flashwht', 0, 1, 'cubeOut')
        doTweenAlpha('flashbl', 'flashbl', 1, 0.001, 'cubeOut')
    end
end