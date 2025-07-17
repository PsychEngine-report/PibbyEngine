--script by BCTIX

-- ez settings lol

local centerMod = 1

local xOffset = 0
local yOffset = 120

local size = 62

local setColor = 'ffffff'
local sungColor = '0000ff'
local font = 'Sonic Barrier.ttf'

function onCreate()

	makeLuaText('setlyric','',5000,screenWidth/2 + xOffset,screenHeight/2 + yOffset);
	setTextSize('setlyric',size);
	setTextAlignment('setlyric','left'); 
	setTextColor('setlyric', setColor)
	setObjectCamera('setlyric', 'hud')
	setTextFont('setlyric', font)
	addLuaText('setlyric');

	makeLuaText('sunglyric','',5000,screenWidth/2 +  xOffset,screenHeight/2 + yOffset);
	setTextSize('sunglyric',size);
	setTextAlignment('sunglyric','left');
	setTextColor('sunglyric', sungColor)
	setObjectCamera('sunglyric', 'hud')
	setTextFont('sunglyric', font)
	addLuaText('sunglyric');
end

function onUpdate()
setProperty('sunglyric.x', getProperty('setlyric.x')) -- make sure sung text is always ontop of set text
end

function onEvent(name, value1, value2)
	if name == 'lyrics' then
		if value1 == 'setcolor' then
			setTextColor('setlyric', value2)
		elseif value1 == 'sungcolor' then
			setTextColor('sunglyric', value2)
		end
		if value1 == 'set' or value1 == '' then
			setProperty('setlyric.x', screenWidth/2-(#value2*11*centerMod)+ xOffset) --attempt to emulate center alignment
			setTextString('setlyric', value2)
			setTextString('sunglyric', '')
		end
		if value1 == 'sung' then
			setTextString('sunglyric', value2)
		end
	end
end