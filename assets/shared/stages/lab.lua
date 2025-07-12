local spin = 6
local light=true

function onCreate()
addLuaScript('scripts extras/healtbar by AnsfoxyMB') 
addLuaScript('scripts extras/count by AnsfoxyMB') 
runTimer('Light2',0.6)
runTimer('movL',0.8)
runTimer('charge',0.1);

makeLuaSprite('BG0', 'stages/lab/bg', 1100, 650);
scaleObject('BG0', 1.5, 1.5);
doTweenX('BG0X', 'BG0.scale', 2.25, 0.001, 'linear')
doTweenY('BG0Y', 'BG0.scale', 2.25, 0.001, 'linear')

makeLuaSprite('BG1', 'stages/lab/dark', 1100, 650);
scaleObject('BG1', 2, 2);
doTweenX('BG1X', 'BG1.scale', 3, 0.001, 'linear')
doTweenY('BG1Y', 'BG1.scale', 3, 0.001, 'linear')

makeLuaSprite('BG2', 'stages/lab/light', 1100, 650);
scaleObject('BG2', 2, 2);
doTweenX('BG2X', 'BG2.scale', 3.01, 0.001, 'linear')
doTweenY('BG2Y', 'BG2.scale', 3, 0.001, 'linear')

makeLuaSprite('BG3', 'stages/lab/bulb', 450, 650);
scaleObject('BG3', 4, 4);
doTweenX('BG3X', 'BG3.scale', 6, 0.001, 'linear')
doTweenY('BG3Y', 'BG3.scale', 6, 0.001, 'linear')

makeLuaSprite("white","white", 680, 400);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 1380);
setProperty("white.scale.y", 820);

makeLuaSprite("white2","white", 680, 400);
setObjectCamera("white2", 'hud')
setProperty("white2.scale.x", 1380);
setProperty("white2.scale.y", 820);

makeLuaSprite('c', 'mov', 0, 0);
setObjectCamera('c', 'hud');
doTweenX('cX', 'c.scale', 2, 0.001, 'linear')
doTweenY('cY', 'c.scale', 2, 0.001, 'linear')

makeLuaSprite('c2', 'mov', 0, 0);
setObjectCamera('c2', 'other');

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')

makeLuaSprite("black2","blacktnt", 2240, 750);
setProperty("black2.scale.x", 3000);
setProperty("black2.scale.y", 2000);
setObjectCamera("black2", 'game')

if songName == 'mindless' then
makeAnimatedLuaSprite('Finn','Finn_Transformation', -280, -150);
luaSpriteAddAnimationByPrefix('Finn', 'transform', 'FINN-CUTSCENE', 19, true);
scaleObject('Finn', 2, 2);
doTweenX('FinnX', 'Finn.scale', 2.4, 0.001, 'linear')
doTweenY('FinnY', 'Finn.scale', 2.4, 0.001, 'linear')
setObjectCamera('Finn', 'hud')
end

addLuaSprite('BG0', false);
addLuaSprite('BG1', true);
addLuaSprite('BG2', true);
addLuaSprite('BG3', true);
addLuaSprite('c', false);
addLuaSprite('c2', false);
addLuaSprite("black", false);
addLuaSprite("black2", true);
addLuaSprite('Finn', false)
addLuaSprite("white", false);
addLuaSprite("white2", false);
end

function onUpdate(elapsed)
local songPos = getPropertyFromClass('Conductor', 'songPosition') / 300

if curStep >= 0 and curStep < 5000 then
setProperty("BG1.angle", spin * math.sin(songPos))
setProperty("BG2.angle", spin * math.sin(songPos))
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='Light1' then
if light then
doTweenAlpha("BG2Y","BG2", 0, 0.5, true);
doTweenAlpha("BG3Y","BG3", 1, 0.5, true);
runTimer('Light2',0.6)
end
end

if tag=='Light2' then
if light then
doTweenAlpha("BG2N","BG2", 1, 0.5, true);
doTweenAlpha("BG3N","BG3", 0.3, 0.5, true);
runTimer('Light1',0.6)
end
end

if tag=='movL' then
doTweenX('BG1X', 'BG1', 1080, 0.8, true);
doTweenX('BG2X', 'BG2', 1080, 0.8, true);
runTimer('movL2',0.9)
end

if tag=='movL2' then
doTweenX('BG1X2', 'BG1', 1120, 0.8, true);
doTweenX('BG2X2', 'BG2', 1120, 0.8, true)
runTimer('movL',0.9);
end

if tag=='charge' then
doTweenAlpha("BG2N","BG2", 0, 0.1, true);
doTweenAlpha("blackA","black", 0, 0.1, true);
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenAlpha("c2A","c2", 0, 0.1, true);
doTweenAlpha("white2","white2", 0, 0.1, true);
doTweenAlpha("white","white", 0, 0.1, true);

if songName == 'mindless' then
doTweenAlpha("black2A","black2", 1, 0.2, true);
doTweenAlpha("FinnA","Finn", 0, 0.1, true);
end
end

end