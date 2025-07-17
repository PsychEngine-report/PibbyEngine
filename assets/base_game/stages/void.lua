local spin = 3
local spin2 = 1.8
local version2 = false

function onCreatePost()
runTimer('flot2',0.1)
runTimer('stoneflot',0.1)
doTweenColor('floorColorTween', 'BG1', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('houseColorTween', 'BG2', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('stoneColorTween', 'BG4', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('stone2ColorTween', 'BG5', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('itensColorTween', 'BG6', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('gfColorTween', 'gf', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('dadColorTween', 'dad', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('bfColorTween', 'boyfriend', 'A9A9A9', 0.1, 'cubeIn')
end

function onCreate()
setProperty('defaultCamZoom',1)

makeAnimatedLuaSprite('BG0', 'stages/void/void', -730, -200); -- -80, 200
luaSpriteAddAnimationByPrefix('BG0', 'idle', 'idle', 24, true);
scaleObject('BG0', 10.0, 10.0);
setScrollFactor('BG0',0.9, 1)
doTweenX('B0X', 'BG0.scale', 6.0, 0.004, 'cubeOut')
doTweenY('B0Y', 'BG0.scale', 6.0, 0.004, 'cubeOut')
luaSpritePlayAnimation('BG0', 'idle', true);

makeAnimatedLuaSprite('BG02', 'stages/void/gumballglitchbg', 150, 80);
luaSpriteAddAnimationByPrefix('BG02', 'idle', 'spin', 24, true);
scaleObject('BG02', 10, 10);
setScrollFactor('BG02',0.9, 1)
luaSpritePlayAnimation('BG02', 'idle', true);
doTweenAlpha("BG02T","BG02", 0, 0.1, true);

makeLuaSprite('BG1', 'stages/void/Ilustracion_sin_titulo-2', 940, 550);
setProperty("BG1.scale.x", 2.5);
setProperty("BG1.scale.y", 2.5);
setScrollFactor('BG1',0.9, 1)

makeLuaSprite('BG2', 'stages/void/Ilustracion_sin_titulo-3', 840, 400);
setProperty("BG2.scale.x", 2.5);
setProperty("BG2.scale.y", 2.5);

makeLuaSprite('BG3', 'stages/void/Ilustracion_sin_titulo-4', 1040, 600);
setProperty("BG3.scale.x", 5.0);
setProperty("BG3.scale.y", 5.0);

makeLuaSprite('BG4', 'stages/void/Ilustracion_sin_titulo-5', 1040, 600);
setProperty("BG4.scale.x", 5.0);
setProperty("BG4.scale.y", 5.0);

makeLuaSprite('BG5', 'stages/void/Ilustracion_sin_titulo-6', 1040, 600);
setProperty("BG5.scale.x", 5.0);
setProperty("BG5.scale.y", 5.0);

makeLuaSprite('BG6', 'stages/void/Ilustracion_sin_titulo-7', 1140, 800);
setProperty("BG6.scale.x", 5.0);
setProperty("BG6.scale.y", 5.0);

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')
doTweenAlpha("blackC","black", 0, 0.1, true);

makeLuaSprite("blackA","blacktnt", 680, 400);
setProperty("blackA.scale.x", 1380);
setProperty("blackA.scale.y", 820);
setObjectCamera("blackA", 'hud')
doTweenAlpha("blackAC","blackA", 0, 0.1, true);

makeLuaSprite("black2","white", 1440, 400);
setProperty("black2.scale.x", 3000);
setProperty("black2.scale.y", 3000);
setObjectCamera("black2", 'game')
doTweenColor('black2C', 'black2', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("black2A","black2", 0, 0.1, true);

makeLuaSprite('Escuro', 'FiltroP', 2240, 750);
setProperty("Escuro.scale.x", 1);
setProperty("Escuro.scale.y", 1);
doTweenX('EscuroX', 'Escuro.scale', 2000, 0.001, 'linear')
doTweenY('EscuroY', 'Escuro.scale', 2000, 0.001, 'linear')
doTweenAlpha("EscuroC","Escuro", 0, 0.1, true);

makeLuaSprite('Verde', 'FiltroG', 2240, 750);
setProperty("Verde.scale.x", 1);
setProperty("Verde.scale.y", 1);
doTweenX('VerdeX', 'Verde.scale', 2000, 0.001, 'linear')
doTweenY('VerdeY', 'Verde.scale', 2000, 0.001, 'linear')
doTweenAlpha("VerdeC","Verde", 0, 0.1, true);

makeLuaSprite('Move1B',nil, 0, 0)
setObjectCamera('Move1B','other')
makeGraphic('Move1B', screenWidth, 100, '000000')
doTweenY('Move1BY', 'Move1B', -110, 0.001, 'sineInOut');

makeLuaSprite('Move2B',nil, 0, 620)
setObjectCamera('Move2B','other')
makeGraphic('Move2B', screenWidth, 100, '000000')
doTweenY('Move2BY', 'Move2B', 720, 0.001, 'sineInOut');

addLuaSprite('BG0', false);
addLuaSprite('BG02', false);
addLuaSprite('BG5', false);
addLuaSprite('BG4', false);
addLuaSprite('BG1', false);
addLuaSprite('BG2', false);
addLuaSprite('BG3', false);
addLuaSprite('BG6', true);
addLuaSprite('Verde', true);
addLuaSprite('Escuro', true);

addLuaSprite('Move1B',false)
addLuaSprite('Move2B',false)
addLuaSprite("blackA", false);
addLuaSprite("black", false);
addLuaSprite("black2", false);
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'Glitchy1' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("BG02T","BG02", 1, 0.1, true);
doTweenAlpha("VerdeC","Verde", 0.2, 0.1, true);
triggerEvent('Ansfoxy', 'Verde', '')
end

if value1 == 'Glitchy2' then
doTweenAlpha("BG02T","BG02", 0, 0.5, true);
doTweenAlpha("VerdeC","Verde", 0, 0.5, true);
triggerEvent('Ansfoxy', 'Escuro', '')
end

if value1 == 'Glitchy3' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("BG02T","BG02", 0, 0.1, true);
doTweenAlpha("VerdeC","Verde", 0, 0.1, true);
triggerEvent('Ansfoxy', 'Escuro', '')
end

if value1 == 'voidSpeed1' then
version2 = true
end

if value1 == 'voidSpeed2' then
version3 = true
end

if value1 == 'Escuro' then
doTweenColor('floorColorTween', 'BG1', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('houseColorTween', 'BG2', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('stoneColorTween', 'BG4', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('stone2ColorTween', 'BG5', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('itensColorTween', 'BG6', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('gfColorTween', 'gf', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('dadColorTween', 'dad', 'DCDCDC', 0.1, 'cubeIn')
doTweenColor('bfColorTween', 'boyfriend', 'A9A9A9', 0.1, 'cubeIn')
end

if value1 == 'Verde' then
doTweenColor('floorColorTween', 'BG1', 'FFFFFF', 0.1, 'cubeIn')
doTweenColor('houseColorTween', 'BG2', 'FFFFFF', 0.1, 'cubeIn')
doTweenColor('stoneColorTween', 'BG4', 'FFFFFF', 0.1, 'cubeIn')
doTweenColor('stone2ColorTween', 'BG5', 'FFFFFF', 0.1, 'cubeIn')
doTweenColor('itensColorTween', 'BG6', 'FFFFFF', 0.1, 'cubeIn')
doTweenColor('gfColorTween', 'gf', 'FFFFFF', 0.1, 'cubeIn')
doTweenColor('dadColorTween', 'dad', 'FFFFFF', 0.1, 'cubeIn')
doTweenColor('bfColorTween', 'boyfriend', 'FFFFFF', 0.1, 'cubeIn')
end
end
end

function onUpdate(elapsed)
local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1300
local songPos2 = getPropertyFromClass('Conductor', 'songPosition') / 165
local songPos3 = getPropertyFromClass('Conductor', 'songPosition') / 650

if not version2 and curStep >= 0 and curStep < 5000 then
setProperty("BG1.angle", spin * math.sin(songPos))
--setProperty("BG2.angle", spin2 * math.sin(songPos))
--setProperty("dad.angle", spin * math.sin(songPos))
--setProperty("boyfriend.angle", spin * math.sin(songPos))
--setProperty("gf.angle", spin * math.sin(songPos))
end

if version2 and curStep >= 0 and curStep < 5000 then
setProperty("BG1.angle", spin * math.sin(songPos2))
--setProperty("BG2.angle", spin * math.sin(songPos3))

--setProperty("dad.angle", spin * math.sin(songPos3))
--setProperty("boyfriend.angle", spin * math.sin(songPos3))
--setProperty("gf.angle", spin * math.sin(songPos3))
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='flot1' then
if version2 then
doTweenY('BG6Y', 'BG6', 450, 0.5, true);
runTimer('flot2', 0.5)
else
doTweenY('BG6Y', 'BG6', 450, 4, true);
runTimer('flot2', 4)
end
end

if tag=='flot2' then
if version2 then
doTweenY('BG6Y2', 'BG6', 350, 0.5, true);
runTimer('flot1', 0.5)
else
doTweenY('BG6Y2', 'BG6', 350, 4, true);
runTimer('flot1', 4)
end
end

if tag=='stoneflot' then
if version2 then
doTweenAngle('stone1','BG4',-360, 15,'sineInOut')
runTimer('stoneflot2', 15)
else
doTweenAngle('stone1','BG4',-360, 30,'sineInOut')
runTimer('stoneflot2', 30)
end
end

if tag=='stoneflot2' then
if version2 then
doTweenAngle('stone2','BG4',360, 15,'sineInOut')
runTimer('stoneflot', 15)
else
doTweenAngle('stone2','BG4',360, 30,'sineInOut')
runTimer('stoneflot', 30)
end
end
end
