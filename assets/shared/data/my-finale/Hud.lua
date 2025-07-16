

function onCreatePost()


	setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', true)

    makeLuaText('newScoreTxt', '', 1000, 0, getProperty('healthBarBG.y') + 30)
    setTextSize('newScoreTxt', 20)
    setTextBorder('newScoreTxt', 1, '000000')
    screenCenter('newScoreTxt', 'X')
    addLuaText('newScoreTxt')
    setObjectCamera('newScoreTxt', 'hud')

    makeLuaText('botPlayState', '', 0, getProperty('healthBarBG.x') + getProperty('healthBarBG.width') / 2 - 75, getProperty('healthBarBG.y') - 100)
    setTextSize('botPlayState', 42)
    setTextBorder('botPlayState', 4, '000000')
    addLuaText('botPlayState')
    setObjectCamera('botPlayState', 'hud')
    setProperty('botPlayState.visible', false)

    if judgementCounter then
        makeLuaText('judgementCounterTxt', '', screenWidth, 1050, 0)
        setTextSize('judgementCounterTxt', 20)
        setTextBorder('judgementCounterTxt', 2, '000000')
        screenCenter('judgementCounterTxt', 'Y')
        setTextAlignment('judgementCounterTxt', 'left')
        addLuaText('judgementCounterTxt')
        setObjectCamera('judgementCounterTxt', 'hud')
    end

    --downscroll positions
    if downscroll then
        setProperty('kadeEngineWatermark.y', screenHeight * 0.9 + 45)

        setProperty('botPlayState.y', getProperty('healthBarBG.y') + 100)
end
    --lane underlays
    if laneAlpha >= 0 then
        makeLuaSprite('laneunderlay', null, defaultPlayerStrumX0 - 25, 0)
        makeGraphic('laneunderlay', 110 * 4 + 50, screenHeight * 2, '000000')
        screenCenter('laneunderlay', 'Y')
        setProperty('laneunderlay.alpha', laneAlpha)
        addLuaSprite('laneunderlay', true)
        setObjectCamera('laneunderlay', 'hud')
        setObjectOrder('laneunderlay', getObjectOrder('strumLineNotes') - 1)
    end

    if laneAlpha >= 0 and not middlescroll then
        makeLuaSprite('laneunderlayOpponent', null, defaultOpponentStrumX0 - 25, 0)
        makeGraphic('laneunderlayOpponent', 110 * 4 + 50, screenHeight * 2, '000000')
        screenCenter('laneunderlayOpponent', 'Y')
        setProperty('laneunderlayOpponent.alpha', laneAlpha)
        addLuaSprite('laneunderlayOpponent', true)
        setObjectCamera('laneunderlayOpponent', 'hud')
        setObjectOrder('laneunderlayOpponent', getObjectOrder('strumLineNotes') - 1)
    end

    local dS = getPropertyFromClass("ClientPrefs", "downScroll")
	local gAA = getPropertyFromClass("ClientPrefs", "globalAntialiasing")
	
	if (getPropertyFromClass("ClientPrefs", "downScroll")) then
		cY = (790 * avZoom) + (26 * 6)
	end

    realCamScX = getCamProperty("scroll.x")
	realCamScY = getCamProperty("scroll.y")
	realCamAngle = getCamProperty("angle")
	realCamZoom = getCamProperty("zoom")
	
	camScX = realCamScX
	camScY = realCamScY
	camAngle = realCamAngle
	camZoom = realCamZoom
	
	if (settings.coolBar) then
		setProperty("healthBarBG.yAdd", -25)
		setProperty("healthBarBG.xAdd", -54)
		
		
		setObjectCamera("healthBarP1", "hud")
		setObjectCamera("healthBarP2", "hud")
		
		addLuaSprite("healthBarP1")
		addLuaSprite("healthBarP2")
		
		setObjectOrder("healthBarP1", getObjectOrder("healthBar") - 1)
		setObjectOrder("healthBarP2", getObjectOrder("healthBar") - 1)

end

if (settings.showHealthPercent) then
    makeLuaText("healthper", "50%", 200, (1280 / 2) - (200 / 2), getProperty("healthBarBG.y") + (dS and -32 or 32))
    setTextAlignment("healthper", "center")
    setTextFont("healthper", dFont)
    setTextSize("healthper", 26)
    
    --setProperty("healthper.wordWrap", false)
    --setProperty("healthper.autoSize", true)
    setProperty("healthper.antialiasing", gAA)
    
    setScrollFactor("healthper", 0, 0)
    setObjectCamera("healthper", "hud")
    
    addLuaText("healthper", true)
end
end

scoreSX = 1
scoreSY = 1

missesSX = 1
missesSY = 1

ratingSX = 1
ratingSY = 1

local bfShift = {x = 0, y = 0}
local dadShift = {x = 0, y = 0}

function shiftCamNote(t, dir)
if (settings.shiftCameraOnNote) then
    local x = dir == 0 and -1 or (dir == 3 and 1) or 0
    local y = dir == 1 and 1 or (dir == 2 and -1) or 0
    tweenNumber(t, "x", x, 0, (stepCrochet / 1000) * 3.14, nil, easing.outCubic)
    tweenNumber(t, "y", y, 0, (stepCrochet / 1000) * 3.14, nil, easing.outCubic)
     end
end

function opponentNoteHit(id, dir)
	shiftCamNote(dadShift, dir)
end

function goodNoteHit(id, dir, typ, sus)
    -- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
    if not isSustainNote then    
        notehitlol = notehitlol + 1;
        setTextString('tnh', 'Total Notes Hit: ' .. tostring(notehitlol))
    end -- NOTE I DID NOT MAKE THIS FRANTASTIC24 MADE THIS!
	if (not sus) then
		tweenNumber(nil, "scoreSX", 1.075, 1, .2, nil, easing.linear)
		tweenNumber(nil, "scoreSY", 1.075, 1, .2, nil, easing.linear)
		
		tweenNumber(nil, "ratingSX", 1.075, 1, .2, nil, easing.linear)
		tweenNumber(nil, "ratingSY", 1.075, 1, .2, nil, easing.linear)
	end
	shiftCamNote(bfShift, dir)
end