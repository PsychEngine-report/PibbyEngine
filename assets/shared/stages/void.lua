local spin = 3
local spin2 = 3
function onCreatePost()
runTimer('flot2',0.1)
runTimer('stoneflot',0.1)
end

function onCreate()
setProperty('defaultCamZoom',1)
addLuaScript('scripts extras/healtbar2 by AnsfoxyMB') 

makeLuaSprite('BG0', 'stages/void2/Ilustracion_sin_titulo-1', 840, 400);
setProperty("BG0.scale.x", 2.5);
setProperty("BG0.scale.y", 2.5);
setScrollFactor('BG0',0.7, 0.7)

makeLuaSprite('BG1', 'stages/void2/Ilustracion_sin_titulo-2', 840, 400);
setProperty("BG1.scale.x", 2.5);
setProperty("BG1.scale.y", 2.5);

makeLuaSprite('BG2', 'stages/void2/Ilustracion_sin_titulo-3', 840, 400);
setProperty("BG2.scale.x", 2.5);
setProperty("BG2.scale.y", 2.5);

makeLuaSprite('BG3', 'stages/void2/Ilustracion_sin_titulo-4', 840, 400);
setProperty("BG3.scale.x", 2.5);
setProperty("BG3.scale.y", 2.5);

makeLuaSprite('BG4', 'stages/void2/Ilustracion_sin_titulo-5', 840, 400);
setProperty("BG4.scale.x", 2.5);
setProperty("BG4.scale.y", 2.5);

makeLuaSprite('BG5', 'stages/void2/Ilustracion_sin_titulo-6', 840, 400);
setProperty("BG5.scale.x", 2.5);
setProperty("BG5.scale.y", 2.5);

makeLuaSprite('BG6', 'stages/void2/Ilustracion_sin_titulo-7', 840, 400);
setProperty("BG6.scale.x", 2.5);
setProperty("BG6.scale.y", 2.5);

makeLuaSprite("white","white", 680, 400);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 1380);
setProperty("white.scale.y", 820);
doTweenAlpha("white","white", 0, 0.1, true);

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')

makeLuaSprite("blackA","blacktnt", 680, 400);
setProperty("blackA.scale.x", 1380);
setProperty("blackA.scale.y", 820);
setObjectCamera("blackA", 'hud')
doTweenAlpha("blackAC","blackA", 0, 0.1, true);

makeLuaSprite('c', 'mov', 0, 0);
setObjectCamera('c', 'hud');
doTweenX('cX', 'c.scale', 1.5, 0.001, 'cubeOut')
doTweenY('cY', 'c.scale', 1.5, 0.001, 'cubeOut')

makeLuaSprite("black2","white", 1440, 400);
setProperty("black2.scale.x", 3000);
setProperty("black2.scale.y", 3000);
setObjectCamera("black2", 'game')
doTweenColor('black2C', 'black2', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("black2A","black2", 0, 0.1, true);

addLuaSprite('BG0', false);
addLuaSprite('BG5', false);
addLuaSprite('BG4', false);
addLuaSprite('BG1', false);
addLuaSprite('BG2', false);
addLuaSprite('BG3', false);
addLuaSprite('BG6', false);

addLuaSprite('c', false);
addLuaSprite("blackA", false);
addLuaSprite("black", false);
addLuaSprite("black2", false);
addLuaSprite("white", false);
end

function onUpdate(elapsed)
local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1300

if curStep >= 0 and curStep < 5000 then
setProperty("BG1.angle", spin * math.sin(songPos))
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='flot1' then
doTweenY('BG6Y', 'BG6', 450, 4, true);
runTimer('flot2',4)
end
if tag=='flot2' then
doTweenY('BG6Y2', 'BG6', 350, 4, true);
runTimer('flot1',4)
end

if tag=='stoneflot' then
doTweenAngle('stone1','BG4',-360,30,'sineInOut')
runTimer('stoneflot2',30)
end

if tag=='stoneflot2' then
doTweenAngle('stone2','BG4',360,30,'sineInOut')
runTimer('stoneflot',30)
end
end
