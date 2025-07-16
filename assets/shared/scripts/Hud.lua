 local settings = {
	coolBar = false,
	hideTimeBar = false,
	--fixComboPos = true, impossible to move combo pos in psych lua, i dont wanna recreate it in lua :/
	shiftCameraOnNote = true,
	shiftCameraPixels = 25,
	smoothCamera = true,
	smoothZoom = false,
	smoothIntensity = .65, -- too much smooth or below 0 = camera wont move lmao
	showHealthPercent = false -- MEMORY LEAKS WARNING!!!
}

easing = {
	-- linear
	linear = function(t,b,c,d)
		return c * t / d + b
	end,
	
	-- quad
	inQuad = function(t, b, c, d)
		return c * math.pow(t / d, 2) + b
	end,
	outQuad = function(t, b, c, d)
		t = t / d
		return -c * t * (t - 2) + b
	end,
	inOutQuad = function(t, b, c, d)
		t = t / d * 2
		if t < 1 then return c / 2 * math.pow(t, 2) + b end
		return -c / 2 * ((t - 1) * (t - 3) - 1) + b
	end,
	outInQuad = function(t, b, c, d)
		if t < d / 2 then return outQuad(t * 2, b, c / 2, d) end
		return inQuad((t * 2) - d, b + c / 2, c / 2, d)
	end,
	
	-- cubic
	inCubic = function(t, b, c, d)
		return c * math.pow(t / d, 3) + b
	end,
	outCubic = function(t, b, c, d)
		return c * (math.pow(t / d - 1, 3) + 1) + b
	end,
	inOutCubic = function(t, b, c, d)
		t = t / d * 2
		if t < 1 then return c / 2 * t * t * t + b end
		t = t - 2
		return c / 2 * (t * t * t + 2) + b
	end,
	outInCubic = function(t, b, c, d)
		if t < d / 2 then return outCubic(t * 2, b, c / 2, d) end
		return inCubic((t * 2) - d, b + c / 2, c / 2, d)
	end,
	
	-- quint
	inQuint = function(t, b, c, d)
		return c * math.pow(t / d, 5) + b
	end,
	outQuint = function(t, b, c, d)
		return c * (math.pow(t / d - 1, 5) + 1) + b
	end,
	inOutQuint = function(t, b, c, d)
		t = t / d * 2
		if t < 1 then return c / 2 * math.pow(t, 5) + b end
		return c / 2 * (math.pow(t - 2, 5) + 2) + b
	end,
	outInQuint = function(t, b, c, d)
		if t < d / 2 then return outQuint(t * 2, b, c / 2, d) end
		return inQuint((t * 2) - d, b + c / 2, c / 2, d)
	end,
	
	-- elastics
	outElastic = function(t, b, c, d, a, p)
		a = a or 3
		p = p or 1
		if t == 0 then return b end
		t = t / d
		if t == 1 then return b + c end
		if not p then p = d * 0.3 end
		local s
		if not a or a < math.abs(c) then
			a = c
			s = p / 4
		else
			s = p / (2 * math.pi) * math.asin(c/a)
		end
		return a * math.pow(2, -10 * t) * math.sin((t * d - s) * (2 * math.pi) / p) + c + b
	end
}

local time = 0
local os = os
function os.clock()
	return time
end

tweenReqs = {}

function tnTick()
	local clock = os.clock()
	--print(songPos, #tweenReqs)
	if #tweenReqs > 0 then
		for i,v in next,tweenReqs do
			if clock>v[5]+v[6] then
				v[1][v[2]] =  v[7](v[6],v[3],v[4]-v[3],v[6])
				table.remove(tweenReqs,i)
				if v[9] then
					v[9]()
				end
			else
				v[1][v[2]] = v[7](clock-v[5],v[3],v[4]-v[3],v[6])
				--if (v[8]) then
				--	v[8] = false
				--	v[1][v[2]] = v[7](0,v[3],v[4]-v[3],v[6])
				--end
			end
		end
	end
end

function tweenNumber(maps, varName, startVar, endVar, time, startTime, easeF, onComplete)
	local clock = os.clock()
	maps = maps or getfenv()
	
	if #tweenReqs > 0 then
		for i2,v2 in next,tweenReqs do
			if v2[2] == varName and v2[1] == maps then
				v2[1][v2[2]] =  v2[7](v2[6],v2[3],v2[4]-v2[3],v2[6])
				table.remove(tweenReqs,i2)
				if v2[9] then
					v2[9]()
				end
				break
			end
		end
	end

    local t = {
		maps,
		varName,
		startVar,
		endVar,
		startTime or clock,
		time,
		easeF or easing.linear,
		true,
		onComplete
	}
	
	table.insert(tweenReqs,t)
	t[1][t[2]] = t[7](0,t[3],t[4]-t[3],t[6])
	
	return function()
		maps[varName] = t[7](v[6],t[3],t[4]-t[3],t[6])
		table.remove(tweenReqs,table.find(tweenReqs,t))
		if onComplete then
			onComplete()
		end
		return nil
	end
end

function math.clamp(x,min,max)return math.max(min,math.min(x,max))end
function math.lerp(from,to,i)return from+(to-from)*i end

function math.truncate(x, precision, round)
	if (precision == 0) then return math.floor(x) end
	
	precision = type(precision) == "number" and precision or 2
	
	x = x * math.pow(10, precision);
	return (round and math.floor(x + .5) or math.floor(x)) / math.pow(10, precision)
end

function math.snap(x, snap, next, round)
	snap = type(snap) == "number" and snap or 1
	next = type(ntext) == "number" and next or 0
	round = type(round) == "number" and round or .5
	
	return math.floor((x / snap) + round) * snap + (next * snap)
end

function toHexString(red, green, blue, prefix)
	if (prefix == nil) then prefix = true end
	
	return (prefix and "0x" or "") .. (
			string.format("%02X%02X%02X", red, green, blue)
		)
end

function centerOrigin(obj)
	setProperty(obj .. ".origin.x", getProperty(obj .. ".frameWidth") * .5)
	setProperty(obj .. ".origin.y", getProperty(obj .. ".frameHeight") * .5)
end

function getObjectRealClip(spr)
	if (type(spr) ~= "string" or type(getProperty(spr .. ".frame.frame.x")) ~= "number") then return end
	
	return 
		getProperty(spr .. ".frame.frame.x"),
		getProperty(spr .. ".frame.frame.y"),
		getProperty(spr .. ".frame.frame.width"),
		getProperty(spr .. ".frame.frame.height")
end

function getObjectClip(spr)
	if (type(spr) ~= "string" or type(getProperty(spr .. ".frame.frame.x")) ~= "number") then return end
	
	return 
		getProperty(spr .. "._frame.frame.x"),
		getProperty(spr .. "._frame.frame.y"),
		getProperty(spr .. "._frame.frame.width"),
		getProperty(spr .. "._frame.frame.height")
end

function setObjectClip(spr, x, y, width, height, offsetX, offsetY, offsetWidth, offsetHeight)
	-- Check and Fix Arguments
	if (type(spr) ~= "string" or type(getProperty(spr .. ".frame.frame.x")) ~= "number") then return end
	x = (type(x) == "number" and x or getProperty(spr .. ".frame.frame.x")) + (type(offsetX) == "number" and offsetX or 0)
	y = (type(y) == "number" and y or getProperty(spr .. ".frame.frame.y")) + (type(offsetY) == "number" and offsetY or 0)
	width = type(width) == "number" and width >= 0 and width or getProperty(spr .. ".frame.frame.width") + (type(offsetWidth) == "number" and offsetWidth or 0)
	height = type(height) == "number" and height >= 0 and height or getProperty(spr .. ".frame.frame.height") + (type(offsetHeight) == "number" and offsetHeight or 0)
	
	-- ClipRect
	setProperty(spr .. "._frame.frame.x", x)
	setProperty(spr .. "._frame.frame.y", y)
	setProperty(spr .. "._frame.frame.width", width)
	setProperty(spr .. "._frame.frame.height", height)
	
	return x, y, width, height
end

local function getCamString(cam)
	return type(cam) ~= "string" and "default" or (
		cam:lower():find("hud") and "camHUD" or
		cam:lower():find("other") and "camOther" or
		"default"
	)
end

local function getCamProperty(cam, p)
	if (p == nil) then p = cam; cam = nil end
	local str = getCamString(cam)
	
	if (str == "default") then
		return p == "scroll.x" and getProperty("camFollowPos.x") or p == "scroll.y" and getProperty("camFollowPos.y") or
			getPropertyFromClass("flixel.FlxG", "camera." .. p)
	end
	
	return getProperty(str .. "." .. p)
end

local function setCamProperty(cam, p, v)
	if (v == nil) then v = p; p = cam; cam = nil end
	local str = getCamString(cam)
	
	if (str == "default") then
		return p == "scroll.x" and setProperty("camFollowPos.x", v) or p == "scroll.y" and setProperty("camFollowPos.y", v) or
			setPropertyFromClass("flixel.FlxG", "camera." .. p, v)
	end
	
	return getProperty(str .. "." .. p, v)
end

local avZoom = .0375
local cX = -10 + (1280 * avZoom)
local cY = 720 - (720 * avZoom)

local realCamScX = 0
local realCamScY = 0
local realCamAngle = 45
local realCamZoom = 1

local camScX = 0
local camScY = 0
local camAngle = 45
local camZoom = 1

local judgementCounter = false --self explanatory
local displayAcc = false --whether or not the info bar shows accuracy/ranking details
local laneAlpha = 0 --lane underlay alpha

--real script shit

local ratingFCKade = ''
local ratingNameKade = ''

function onCreatePost()


	setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', true)

    makeLuaText('botPlayState', '', 0, getProperty('healthBarBG.x') + getProperty('healthBarBG.width') / 2 - 75, getProperty('healthBarBG.y') - 100)
    setTextSize('botPlayState', 42)
    setTextBorder('botPlayState', 4, '000000')
    addLuaText('botPlayState')
    setObjectCamera('botPlayState', 'camHUD')
    setProperty('botPlayState.visible', false)

    if judgementCounter then
        makeLuaText('judgementCounterTxt', '', screenWidth, 1050, 0)
        setTextSize('judgementCounterTxt', 20)
        setTextBorder('judgementCounterTxt', 2, '000000')
        screenCenter('judgementCounterTxt', 'Y')
        setTextAlignment('judgementCounterTxt', 'left')
        addLuaText('judgementCounterTxt')
        setObjectCamera('judgementCounterTxt', 'camHUD')
    end

    --downscroll positions
    if downscroll then
        setProperty('kadeEngineWatermark.y', screenHeight * 0.9 + 45)

        setProperty('botPlayState.y', getProperty('healthBarBG.y') + 100)
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

--[[function noteMiss(id, dir)
	if getDataFromSave('options', 'screenRotate', true) then
		setProperty('camGame.angle', 0)
		doTweenAngle('oof', 'camGame', 2, 0.05, 'bounce');
		end
		runTimer('oofie', 0.1)
		shiftCamNote(bfShift, dir)
end]]--

function noteMissPress(key)
	shiftCamNote(bfShift, key)
end

local isDead = false

function onGameOverStart()
	isDead = true
end

function onStepHit()
	
end

function onSongStart()
    if songPositionBar then
        daSongLength = getProperty('songLength') / 1000

        --i have zero clue if using lua tweens for this is the right idea but for now this is what i'm doing
        doTweenX('timeStart', 'songPosBar2.scale', 0.001, 0.001, 'linear')
    end
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

function milliToHuman(milliseconds) -- https://forums.mudlet.org/viewtopic.php?t=3258
	local totalseconds = math.floor(milliseconds / 1000)
	local seconds = totalseconds % 60
	local minutes = math.floor(totalseconds / 60)
	minutes = minutes % 60
	return string.format("%02d:%02d", minutes, seconds)  
end

function onTweenCompleted(tag)
    if songPositionBar then
        if tag == 'timeStart' then
            setProperty('songPosBar2.origin.x', 0)
            doTweenX('timeFill', 'songPosBar2.scale', 1, daSongLength, 'linear')
            setProperty('songPosBar2.alpha', 1)
        end
    end
end

notehitlol = 0
sadfasd = 0 -- unused
--font = "gumball.ttf" -- the font that the text will use.
cmoffset = -4
cmy = 20
tnhx = 20

function onCreate()

    --setProperty('cameraSpeed', 5.0); 
    setScrollFactor("songLength", 1, 1)
    setTextAlignment('songLength', 'center')
    makeLuaText('songLength', '00:00 - 00:00', 0, 547, 85)
    setObjectCamera('songLength', 'camHUD')
    --setProperty('songLength.antialiasing',true);
    setTextFont('songLength', 'gumball.ttf')

	if downscroll then
		setProperty('songLength.y', 610)
	end

	if middlescroll then
		setProperty('songLength.y', 0)
	end

	if (middlescroll and downscroll) then
		setProperty('songLength.y', 690)
	end
	
    setTextSize('songLength', 28)
    addLuaText("songLength");
  
end

local prevFollowXAdd = 0
local prevFollowYAdd = 0

function onUpdate(dt) 
    if displayAcc then
        if hits < 1 and misses < 1 then
            setTextString('newScoreTxt', 'Score:0 | Misses:0 | Accuracy:0 % | N/A')
			setTextFont('songLength', 'cawm.ttf')
        else
            setTextString('newScoreTxt', 'Score:' .. score .. '   Misses:' .. misses .. '  Accuracy:' .. round(rating * 100, 2) .. ' % | (' .. ratingFCKade .. ') ' .. ratingNameKade)
			setTextFont('songLength', 'cawm.ttf')
        end
    else
        if hits < 1 and misses < 1 then
        end
    end

    if botPlay and getProperty('botPlayState.visible') == false then
        setProperty('botPlayState.visible', true)
        setProperty('newScoreTxt.visible', false)
    elseif not botPlay and getProperty('botPlayState.visible') == true then
        setProperty('botPlayState.visible', false)
        setProperty('newScoreTxt.visible', true)
    end

    --sorry this could probably be so much better
    if rating >= 0.999935 then
        ratingNameKade = 'AAAAA'
    elseif rating >= 0.99980 then
        ratingNameKade = 'AAAA:'
    elseif rating >= 0.99970 then
        ratingNameKade = 'AAAA.'
    elseif rating >= 0.99955 then
        ratingNameKade = 'AAAA'
    elseif rating >= 0.9990 then
        ratingNameKade = 'AAA:'
    elseif rating >= 0.9980 then
        ratingNameKade = 'AAA.'
    elseif rating >= 0.9970 then
        ratingNameKade = 'AAA'
    elseif rating >= 0.99 then
        ratingNameKade = 'AA:'
    elseif rating >= 0.9650 then
        ratingNameKade = 'AA.'
    elseif rating >= 0.93 then
        ratingNameKade = 'AA'
    elseif rating >= 0.90 then
        ratingNameKade = 'A:'
    elseif rating >= 0.85 then
        ratingNameKade = 'A.'
    elseif rating >= 0.80 then
        ratingNameKade = 'A'
    elseif rating >= 0.70 then
        ratingNameKade = 'B'
    elseif rating >= 0.60 then
        ratingNameKade = 'C'
    elseif rating <= 0.60 then
        ratingNameKade = 'D'
    end

    notehitloltosting = tostring(notehitlol)
    setTextString('cm', 'Combos: ' .. getProperty('combo'))
    setTextString('sick', 'Sick!: ' .. getProperty('sicks'))
    setTextString('good', 'Goods: ' .. getProperty('goods'))
    setTextString('bad', 'Bads: ' .. getProperty('bads'))
    setTextString('shit', 'Shits: ' .. getProperty('shits'))
	-- start of "update", some variables weren't updated yet
    -- setTextString('tnh', 'Total Notes Hit: ' + 1)

	gDt = dt
	time = time + dt
	
end


local prevScoreTxt = ""
local prevMissesTxt = ""
local prevRatingTxt = ""
local prevHealthTxt = "50%"
  
	tnTick()
	
  function onStepHit()
      setTextString('songLength', milliToHuman(math.floor(getPropertyFromClass('Conductor', 'songPosition') - noteOffset)).. ' - ' .. milliToHuman(math.floor(songLength)) .. '\n')

  end
  
  function posOverlaps(
      x1, y1, w1, h1, --r1,
      x2, y2, w2, h2 --r2
  )
      return (
          x1 + w1 >= x2 and x1 < x2 + w2 and
          y1 + h1 >= y2 and y1 < y2 + h2
      )

  end
  
  function milliToHuman(milliseconds) -- https://forums.mudlet.org/viewtopic.php?t=3258
      local totalseconds = math.floor(milliseconds / 1000)
      local seconds = totalseconds % 60
      local minutes = math.floor(totalseconds / 60)
      minutes = minutes % 60
      return string.format("%02d:%02d", minutes, seconds)

  end
  
  function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
      n = math.pow(10, n or 0)
      x = x * n
      if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
      return x / n

     end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'oofie' then
	 if getDataFromSave('options', 'screenRotate', true) then
	 doTweenAngle('oof', 'camGame', 0, 0.1, 'bounce')

	    end
	end
end
  
  