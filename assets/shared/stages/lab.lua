local light=true
function onCreate()
runTimer('Light2',0.6)
runTimer('movL',0.8)
runTimer('charge',0.1);

makeLuaSprite('BG0', 'stages/lab/bg', 700, 490);
scaleObject('BG0', 3.2, 3.0);

makeLuaSprite('BG1', 'stages/lab/dark', 800, -780);
scaleObject('BG1', 6.0, 6.0);
doTweenX('darkX', 'BG1.scale', 6.2, 0.004, 'linear')
--doTweenY('darkY', 'BG1.scale', 1.3, 0.001, 'linear')

makeLuaSprite('BG2', 'stages/lab/light', 800, -780);
scaleObject('BG2', 6.0, 6.0);
doTweenX('lightX', 'BG2.scale', 6.2, 0.004, 'linear')
--doTweenY('lightY', 'BG2.scale', 1.3, 0.001, 'linear')

makeLuaSprite('BG3', 'stages/lab/bulb', -50, 45);
scaleObject('BG3', 6.0, 6.0);
--doTweenX('BG3X', 'BG3.scale', 1.2, 0.001, 'linear')
--doTweenY('BG3Y', 'BG3.scale', 1.2, 0.001, 'linear')
--doTweenAlpha('Light2','BG2',math.random(2,8)/10,0.25,'linear')

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')

makeLuaSprite("black2","blacktnt", 2240, 750);
setProperty("black2.scale.x", 3000);
setProperty("black2.scale.y", 2000);
setObjectCamera("black2", 'game')

if songName == 'Mindless' then
makeAnimatedLuaSprite('Finn','Finn_Transformation', -455, -250);
luaSpriteAddAnimationByPrefix('Finn', 'transform', 'FINN-CUTSCENE', 19, true);
scaleObject('Finn', 2.4, 2.4);
setObjectCamera('Finn', 'hud')
end

makeLuaSprite('Move1',nil, 0, 0)
setObjectCamera('Move1','hud')
makeGraphic('Move1', screenWidth, 100, '000000')
doTweenY('Move1Y', 'Move1', -110, 0.001, 'sineInOut');

makeLuaSprite('Move2',nil, 0, 620)
setObjectCamera('Move2','hud')
makeGraphic('Move2', screenWidth, 100, '000000')
doTweenY('Move2Y', 'Move2', 720, 0.001, 'sineInOut');

makeLuaSprite('Move1B',nil, 0, 0)
setObjectCamera('Move1B','other')
makeGraphic('Move1B', screenWidth, 100, '000000')
doTweenY('Move1BY', 'Move1B', -110, 0.001, 'sineInOut');

makeLuaSprite('Move2B',nil, 0, 620)
setObjectCamera('Move2B','other')
makeGraphic('Move2B', screenWidth, 100, '000000')
doTweenY('Move2BY', 'Move2B', 720, 0.001, 'sineInOut');

addLuaSprite('Move1',false)
addLuaSprite('Move2',false)
addLuaSprite('Move1B',false)
addLuaSprite('Move2B',false)
addLuaSprite('BG0', false);
addLuaSprite('BG1', true);
addLuaSprite('BG2', true);
addLuaSprite('BG3', true);
flickerTween = true
addLuaSprite("black", false);
addLuaSprite("black2", true);
addLuaSprite('Finn', false)
end

function onUpdatePost (elapsed) 
if songGoo then
	setProperty('BG2.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 900) * ((getPropertyFromClass('Conductor', 'bpm') / 60) * 1.0)) * 6);                                           
	setProperty('BG1.angle',getProperty('BG2.angle'));
--    setProperty('BG3.angle', getProperty('BG2.angle'));
end
end
	
function onTimerCompleted(tag)
if tag=='Light1' then
if light then
doTweenAlpha("Light2","BG2", 0.4, 0.3, true);
doTweenAlpha("BG3Y","BG3", 1, 0.3, true);
runTimer('Light2',0.4)
end
end

if tag=='Light2' then
if light then
doTweenAlpha("Light1","BG2", 1, 0.3, true);
doTweenAlpha("BG3N","BG3", 0.3, 0.3, true);
runTimer('Light1',0.4)
end
end

if tag=='charge' then
doTweenAlpha("BG2N","BG2", 0, 0.1, true);
doTweenAlpha("blackA","black", 0, 0.1, true);
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenAlpha("c2A","c2", 0, 0.1, true);
if songName == 'Mindless' then
doTweenAlpha("black2A","black2", 1, 0.2, true);
doTweenAlpha("FinnA","Finn", 0, 0.1, true);
end
end

end

function onSongStart()
songGoo=true
end