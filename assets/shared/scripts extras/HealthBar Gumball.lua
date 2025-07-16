function getHealthColor(arg)
    return "0xFF" ..
        rgbToHex(getProperty(arg .. ".healthColorArray[0]"), getProperty(arg .. ".healthColorArray[1]"),
            getProperty(arg .. ".healthColorArray[2]"));
end

function rgbToHex(r, g, b)
    return string.format("%02X%02X%02X", r, g, b)
end

--local yyy=600
local locboy=true
local locboy2=false
local boyer=true
local darvida=false

function onCreatePost()
local yyy = downscroll and 50 or 600; 
setTextFont('botplayTxt', 'Gumball.ttf')
setTextFont('scoreTxt', 'Gumball.ttf')
setTextFont('timeTxt', 'Gumball.ttf')
doTweenColor('scoreTxt', 'scoreTxt', '00CCEE', 0.01, 'linear');

makeAnimatedLuaSprite('uglyHB', 'healthbar/healthbar_bf',50, yyy);
setProperty('glitchshit.origin.x', 150)
setObjectCamera('uglyHB', 'hud')
setObjectOrder('uglyHB',getObjectOrder('iconP1')-1)

makeAnimatedLuaSprite('uglyHB2', 'healthbar/healthbar_drw',50, yyy);
setProperty('glitchshit.origin.x', 150)
setObjectCamera('uglyHB2', 'hud')
setObjectOrder('uglyHB2',getObjectOrder('iconP1')-1)

makeLuaSprite('DRW', 'icons/healthicon/icon-darwin', -720, -720)
scaleObject('DRW', 1, 1);
setProperty('DRW.flipX', true)
setObjectCamera('DRW', 'hud')

makeLuaSprite('DRWL', 'icons/healthicon/icon-darwin2', -720, -720)
scaleObject('DRWL', 1, 1);
setProperty('DRWL.flipX', true)
setObjectCamera('DRWL', 'hud')

doTweenX('dwnX', 'DRW.scale', 0.8, 0.0001, 'linear')
doTweenY('dwnY', 'DRW.scale', 0.8, 0.0001, 'linear')
doTweenX('dwn2X', 'DRWL.scale', 0.8, 0.0001, 'linear')
doTweenY('dwn2Y', 'DRWL.scale', 0.8, 0.0001, 'linear')

addLuaSprite('uglyHB', true)
addLuaSprite('uglyHB2', true)
addLuaSprite('DRW', true)
addLuaSprite('DRWL', true)

setProperty('uglyHB.visible',false)
setProperty('uglyHB2.visible',false)
setProperty('iconP1.visible',false)
setProperty('iconP2.visible',false)
setProperty('scoreTxt.visible',false)
setProperty('DRW.visible', false);
setProperty('DRWL.visible', false);
setProperty('healthBar.visible',false)
setProperty('healthBarBG.visible',false)

if nooooo and songName == 'Retcon' then
duple=true
darvida=true
triggerEvent('Ansfoxy', 'boyf', '')
darwin=false
locboy=true
locboy2=false
setObjectOrder('iconP1', 54)
setObjectOrder('DRW', 52)
setObjectOrder('DRWL', 53)
setProperty('DRWL.visible', false);
else
duple=false
setProperty('DRW.visible', false);
setProperty('DRWL.visible', false);
end
end

function onUpdatePost(e)
addAnimationByIndices('uglyHB', 'a','healthbar', (2 - getHealth()) / 2 * 100 ,24)
addAnimationByIndices('uglyHB', 'b','healthbar',(2 - getHealth()) / 2 * 100 + 1  ,24)
addAnimationByIndices('uglyHB', 'c','healthbar',(2 - getHealth()) / 2 * 100 + 2  ,24)
addAnimationByIndices('uglyHB', 'd','healthbar',(2 - getHealth()) / 2 * 100 + 3 ,24)
addAnimationByIndices('uglyHB', 'e','healthbar',(2 - getHealth()) / 2 * 100 + 4 ,24)
addAnimationByIndices('uglyHB', 'f','healthbar',(2 - getHealth()) / 2 * 100 + 5 ,24)

addAnimationByIndices('uglyHB2', 'a','healthbar', (2 - getHealth()) / 2 * 100 ,24)
addAnimationByIndices('uglyHB2', 'b','healthbar',(2 - getHealth()) / 2 * 100 + 1  ,24)
addAnimationByIndices('uglyHB2', 'c','healthbar',(2 - getHealth()) / 2 * 100 + 2  ,24)
addAnimationByIndices('uglyHB2', 'd','healthbar',(2 - getHealth()) / 2 * 100 + 3 ,24)
addAnimationByIndices('uglyHB2', 'e','healthbar',(2 - getHealth()) / 2 * 100 + 4 ,24)
addAnimationByIndices('uglyHB2', 'f','healthbar',(2 - getHealth()) / 2 * 100 + 5 ,24)

scaleObject('healthbar_bf',1,1)
scaleObject('healthbar_drw',1,1)
scaleObject('healthBar',0.8,2)
scaleObject('healthBarBG',0.8,1.79)
setProperty('iconP1.x', 550)
setProperty('iconP2.x', 50)

xx2= getProperty('healthBar.x')-650
xx1= getProperty('healthBar.x')+0
yy1= getProperty('healthBar.y')+0
setProperty('scoreTxt.x',xx2)

if locdrrwn then
setProperty('DRW.x', 560)
setProperty('DRWL.x', 560)
setProperty('DRW.y', 500)
setProperty('DRWL.y', 500)
end
if locboy then
    setProperty('iconP1.x', 510)
    setProperty('iconP1.y', 550)
end

if locboy2 then
setProperty('iconP1.x', 560)
setProperty('iconP1.y', 500)
end

setProperty('iconP2.x', 20)
setProperty('iconP2.y', 550)
    if downscroll then 
    setProperty('scoreTxt.x',xx1)
    setProperty('scoreTxt.y',yy1)
    setProperty('iconP1.y', -5)
    setProperty('iconP2.y', -5)
    setProperty('DRW.y', -5)
    setProperty('DRWL.y', -5)
    end
    
if getProperty('health') >= 0.05 and darvida then
setProperty('DRW.visible', true);
setProperty('DRWL.visible', false);
else
setProperty('DRW.visible', false);
setProperty('DRWL.visible', true);
end

end

function goodNoteHit(id, direction, noteType, isSustainNote)
if duple then
if noteType == 'GF Sing' then
triggerEvent('Ansfoxy', 'drwn', '')
darwin=true
end

if noteType == '' then
triggerEvent('Ansfoxy', 'boyf', '')
darwin=false
end
end
end

function onSongStart()
locdrwn=false

setProperty('uglyHB.visible',true)
setProperty('iconP1.visible',true)
setProperty('iconP2.visible',true)
setProperty('scoreTxt.visible',true)

if songName == 'Retcon' then
duple=true
darvida=true
triggerEvent('Ansfoxy', 'boyf', '')
darwin=false
locboy=true
locboy2=false
setObjectOrder('iconP1', 54)
setObjectOrder('DRW', 52)
setObjectOrder('DRWL', 53)
setProperty('DRWL.visible', false);
else
duple=false
setProperty('DRW.visible', false);
setProperty('DRWL.visible', false);
end
end

function onStepHit()
if curStep % 2 == 0 then
luaSpritePlayAnimation('uglyHB', 'b', true);
luaSpritePlayAnimation('uglyHB2', 'b', true);
elseif curStep % 1 == 0 then
luaSpritePlayAnimation('uglyHB', 'a', true);
luaSpritePlayAnimation('uglyHB2', 'a', true);
elseif curStep % 3 == 0 then
luaSpritePlayAnimation('uglyHB', 'c', true);
luaSpritePlayAnimation('uglyHB2', 'c', true);
elseif curStep % 4 == 0 then
luaSpritePlayAnimation('uglyHB', 'd', true);
luaSpritePlayAnimation('uglyHB2', 'd', true);
elseif curStep % 5 == 0 then
luaSpritePlayAnimation('uglyHB', 'e', true);
luaSpritePlayAnimation('uglyHB2', 'e', true);
elseif curStep % 6 == 0 then
luaSpritePlayAnimation('uglyHB', 'f', true);
luaSpritePlayAnimation('uglyHB2', 'f', true);
end
end


function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'Drwplay' then
triggerEvent('Ansfoxy', 'drwn', '')
setProperty('DRW.visible', true);
setProperty('iconP1.visible', false);
darwin=true
darvida=true
boyer=false
end
if value1 == 'drwn' then
doTweenColor('scoreTxt', 'scoreTxt', 'FFAA00', 0.01, 'linear');
setProperty('uglyHB.visible', false);
setProperty('uglyHB2.visible', true);
locboy=false
locboy2=true
setObjectOrder('iconP1', 50)
setObjectOrder('DRW', 52)
setObjectOrder('DRWL', 53)

setProperty('DRW.x', 510)
setProperty('DRWL.x', 510)
setProperty('DRW.y', 550)
setProperty('DRWL.y', 550)
doTweenX('dwnX', 'DRW.scale', 1, 0.0001, 'linear')
doTweenY('dwnY', 'DRW.scale', 1, 0.0001, 'linear')
doTweenX('dwn2X', 'DRWL.scale', 1, 0.0001, 'linear')
doTweenY('dwn2Y', 'DRWL.scale', 1, 0.0001, 'linear')

--
doTweenX('boyX', 'iconP1.scale', 0.8, 0.0001, 'linear')
doTweenY('boyY', 'iconP1.scale', 0.8, 0.0001, 'linear')
end

if value1 == 'boyf' then
doTweenColor('scoreTxt', 'scoreTxt', '00CCEE', 0.01, 'linear');
setProperty('uglyHB.visible', true);
setProperty('uglyHB2.visible', false);
locboy=true
locboy2=false
setObjectOrder('iconP1', 54)
setObjectOrder('DRW', 52)
setObjectOrder('DRWL', 53)
doTweenX('boyX', 'iconP1.scale', 1, 0.0001, 'linear')
doTweenY('boyY', 'iconP1.scale', 1, 0.0001, 'linear')

----
setProperty('DRW.x', 560)
setProperty('DRWL.x', 560)
setProperty('DRW.y', 500)
setProperty('DRWL.y', 500)
doTweenX('dwnX', 'DRW.scale', 0.8, 0.0001, 'linear')
doTweenY('dwnY', 'DRW.scale', 0.8, 0.0001, 'linear')
doTweenX('dwn2X', 'DRWL.scale', 0.8, 0.0001, 'linear')
doTweenY('dwn2Y', 'DRWL.scale', 0.8, 0.0001, 'linear')
end
end
end


