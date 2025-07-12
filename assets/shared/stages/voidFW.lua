local spin = 3

function onCreatePost()
triggerEvent('Ansfoxy', 'black1', '')
end

function onCreate()
runTimer('BG01',0.1);
runTimer('flot2',0.6)
runTimer('charge',0.1);
runTimer('BG03',1);

addLuaScript('scripts extras/healtbar2 by AnsfoxyMB') 

makeLuaSprite('BG02', 'stages/void/Ilustracion_sin_titulo-1', 800, 400);
setProperty("BG02.scale.x", 2.5);
setProperty("BG02.scale.y", 2.5);
setScrollFactor('BG02',0.8, 0.8)

makeLuaSprite('BG0', 'stages/voidFW/Ilustracion_sin_titulo-1', 800, 400);
setProperty("BG0.scale.x", 2.5);
setProperty("BG0.scale.y", 2.5);
setScrollFactor('BG0',0.8, 0.8)
doTweenAlpha("BG0A","BG0", 0.5, 0.1, true);

makeLuaSprite('BG1', 'stages/voidFW/Ilustracion_sin_titulo-2', 800, 400);
setProperty("BG1.scale.x", 2.5);
setProperty("BG1.scale.y", 2.5);

makeLuaSprite('BG2', 'stages/voidFW/Ilustracion_sin_titulo-3', 800, 400);
setProperty("BG2.scale.x", 2.5);
setProperty("BG2.scale.y", 2.5);

makeLuaSprite('BG3', 'stages/voidFW/Ilustracion_sin_titulo-4', 800, 400);
setProperty("BG3.scale.x", 2.5);
setProperty("BG3.scale.y", 2.5);

makeLuaSprite('BG4', 'stages/voidFW/Ilustracion_sin_titulo-5', 800, 400);
setProperty("BG4.scale.x", 2.5);
setProperty("BG4.scale.y", 2.5);

makeLuaSprite('BG5', 'stages/voidFW/Ilustracion_sin_titulo-6', 800, 400);
setProperty("BG5.scale.x", 2.5);
setProperty("BG5.scale.y", 2.5);

makeLuaSprite('BG6', 'stages/voidFW/Ilustracion_sin_titulo-7', 800, 400);
setProperty("BG6.scale.x", 2.5);
setProperty("BG6.scale.y", 2.5);

makeLuaSprite('BG7', 'stages/voidFW/Ilustracion_sin_titulo-8', 800, 400);
setProperty("BG7.scale.x", 2.5);
setProperty("BG7.scale.y", 2.5);

makeLuaSprite('BG8', 'stages/voidFW/Ilustracion_sin_titulo-9', 800, 400);
setProperty("BG8.scale.x", 2.5);
setProperty("BG8.scale.y", 2.5);

makeLuaSprite('c', 'mov', 0, 0);
setObjectCamera('c', 'hud');
doTweenX('cX', 'c.scale', 1.5, 0.001, 'linear')
doTweenY('cY', 'c.scale', 1.5, 0.001, 'linear')

makeLuaSprite("white","white", 680, 400);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 1380);
setProperty("white.scale.y", 820);

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')

makeLuaSprite("black2","white", 1440, 400);
setProperty("black2.scale.x", 3000);
setProperty("black2.scale.y", 3000);
setObjectCamera("black2", 'game')
doTweenColor('black2C', 'black2', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("black2A","black2", 0, 0.1, true);
----------
makeLuaSprite('BG9', 'stages/voidFW/void3/1b', 100, 100);
scaleObject('BG9', 2, 2);
doTweenX('BG9X', 'BG9.scale', 2, 0.001, 'linear')
doTweenY('BG9Y', 'BG9.scale', 2, 0.001, 'linear')
setScrollFactor('BG9',0.8, 0.8)

makeLuaSprite('BG10', 'stages/voidFW/void3/2b', 100, 100);
scaleObject('BG10', 2, 2);
doTweenX('BG10X', 'BG10.scale', 2, 0.001, 'linear')
doTweenY('BG10Y', 'BG9.scale', 2, 0.001, 'linear')
setScrollFactor('BG10',0.8, 0.8)

makeLuaSprite('BG12', 'stages/voidFW/void3/3b', 100, 100);
scaleObject('BG12', 2, 2);
doTweenX('BG12X', 'BG12.scale', 2, 0.001, 'linear')
doTweenY('BG12Y', 'BG12.scale', 2, 0.001, 'linear')

makeLuaSprite('BG13', 'stages/voidFW/void3/4b', 100, 100);
setProperty("BG13.scale.x", 1);
setProperty("BG13.scale.y", 1);

makeLuaSprite('BG14', 'stages/voidFW/void3/5b', 100, 100);
scaleObject('BG14', 2, 2);
doTweenX('BG14X', 'BG14.scale', 2, 0.001, 'linear')
doTweenY('BG14Y', 'BG14.scale', 2, 0.001, 'linear')

makeLuaSprite('BG15', 'stages/voidFW/Ilustracion_sin_titulo-8', 800, 400);
setProperty("BG15.scale.x", 2.5);
setProperty("BG15.scale.y", 2.5);

makeLuaSprite('BG16', 'stages/voidFW/void3/7', 100, 100);
scaleObject('BG16', 2, 2);
doTweenX('BG16X', 'BG16.scale', 2, 0.001, 'linear')
doTweenY('BG16Y', 'BG16.scale', 2, 0.001, 'linear')

makeLuaSprite('BG17', 'stages/voidFW/void3/8', 100, 100);
scaleObject('BG17', 2, 2);
doTweenX('BG17X', 'BG17.scale', 2, 0.001, 'linear')
doTweenY('BG17Y', 'BG17.scale', 2, 0.001, 'linear')

makeLuaSprite('BG18', 'stages/voidFW/void3/9', 100, 100);
scaleObject('BG18', 2, 2);
doTweenX('BG18X', 'BG18.scale', 2, 0.001, 'linear')
doTweenY('BG18Y', 'BG18.scale', 2, 0.001, 'linear')

makeLuaSprite('BG19', 'stages/voidFW/void3/10', 100, 100);
scaleObject('BG19', 2, 2);
doTweenX('BG19X', 'BG19.scale', 2, 0.001, 'linear')
doTweenY('BG19Y', 'BG19.scale', 2, 0.001, 'linear')

makeLuaSprite('BG20', 'stages/voidFW/void3/11', 100, 100);
scaleObject('BG20', 2, 2);
doTweenX('BG20X', 'BG20.scale', 2, 0.001, 'linear')
doTweenY('BG20Y', 'BG20.scale', 2, 0.001, 'linear')

makeLuaSprite('BG21', 'stages/voidFW/void3/12', 100, 100);
scaleObject('BG21', 2, 2);
doTweenX('BG21X', 'BG21.scale', 2, 0.001, 'linear')
doTweenY('BG21Y', 'BG21.scale', 2, 0.001, 'linear')

makeLuaSprite('BG22', 'stages/voidFW/Ilustracion_sin_titulo-7', 800, 400);
setProperty("BG22.scale.x", 2.5);
setProperty("BG22.scale.y", 2.5);

makeLuaSprite("BG23","vignette", 20, -25);
setObjectCamera("BG23", 'other')
setProperty("BG23.scale.x", 1.2);
setProperty("BG23.scale.y", 1.2);

addLuaSprite('BG02', false);
addLuaSprite('BG03', false);
addLuaSprite('BG0', false);
addLuaSprite('BG1', false);
addLuaSprite('BG2', false);
addLuaSprite('BG5', false);
addLuaSprite('BG3', false);
addLuaSprite('BG4', false);
addLuaSprite('BG6', false);
addLuaSprite('BG7', false);
addLuaSprite('BG8', false);
------
addLuaSprite('BG9', false);
addLuaSprite('BG10', false);
addLuaSprite('BG12', false);
addLuaSprite('BG22', false);
addLuaSprite('BG13', false);
addLuaSprite('BG14', false);
addLuaSprite('BG15', false);
addLuaSprite('BG16', false);
addLuaSprite('BG17', false);
addLuaSprite('BG18', false);
addLuaSprite('BG19', false);
addLuaSprite('BG20', false);
addLuaSprite('BG21', true);
addLuaSprite('c', false);
addLuaSprite('BG23', false);
addLuaSprite("black", false);
addLuaSprite("black2", false);
addLuaSprite("white", false);


setProperty('BG9.visible', false)
setProperty('BG10.visible', false)
setProperty('BG12.visible', false)
setProperty('BG13.visible', false)
setProperty('BG14.visible', false)
setProperty('BG15.visible', false)
setProperty('BG16.visible', false)
setProperty('BG17.visible', false)
setProperty('BG18.visible', false)
setProperty('BG19.visible', false)
setProperty('BG20.visible', false)
setProperty('BG21.visible', false)
setProperty('BG22.visible', false)
end

function onUpdate(elapsed)
local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1300

if curStep >= 0 and curStep < 5000 then
setProperty("BG12.angle", spin * math.sin(songPos))
setProperty("BG2.angle", spin * math.sin(songPos))
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='charge' then
doTweenAlpha("BG23N","BG23", 0, 1, true);
doTweenAlpha("white","white", 0, 0.1, true);
doTweenAlpha("BG8A","BG8", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
setProperty('gf.visible', false)
end

if tag=='BG01' then
runTimer('BG02',0.1);
doTweenAlpha("BG0A","BG0", 0.5, 0.1, true);
end

if tag=='BG02' then
runTimer('BG01',0.1);
doTweenAlpha("BG0A","BG0", 1, 0.1, true);
end

if tag=='BG03' then
runTimer('BG04',0.1);
setProperty('BG0.flipX', false)
setProperty('BG0.flipY', false)
setProperty('BG0.x', 850)
end

if tag=='BG04' then
runTimer('BG05',0.3);
setProperty('BG0.flipY', true)
setProperty('BG0.flipX', true)
setProperty('BG0.x', 800)
end

if tag=='BG05' then
runTimer('BG06',0.4);
setProperty('BG0.flipX', false)
setProperty('BG0.x', 750)
end

if tag=='BG06' then
runTimer('BG03',0.1);
setProperty('BG0.flipY', false)
setProperty('BG0.flipX', true)
setProperty('BG0.x', 700)
end
end
