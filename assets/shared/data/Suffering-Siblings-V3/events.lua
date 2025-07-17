local followchars = true;
local focus=false

function onCreate()
addCharacterToList('pibby_angy', 'gf');
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'intro' then
setProperty('defaultCamZoom',0.90)
cameraFlash('camGame', 'FFFFFF', 1);
doTweenY('Move1Y', 'Move1', -110, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 720, 0.8, 'sineInOut');
introfocada=false
end

if value1 == 'flash' then
cameraFlash('camGame', 'FFFFFF', 1);
end

if value1 == 'flash2' then
cameraFlash('camOTHER', 'FFFFFF', 1);
doTweenAlpha("black","black", 0, 1, true);
end

if value1 == 'flash3' then
cameraFlash('camOTHER', 'FFFFFF', 1);
doTweenAlpha("black","black", 0, 1, true);
end

if value1 == 'black' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("black","black", 1, 1, true);
doTweenAlpha('fadeInn', 'camHUD', 0, 0.001, 'linear')
end

if value1 == 'blackM' then
doTweenAlpha("black","black", 0, 5, true);
doTweenAlpha('fadeInn', 'camHUD', 1, 0.001, 'linear')
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("JakeA","Jake", 0, 0.0001, true);
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
end

if value1 == 'black2' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("black","black", 0, 0.0001, true);
doTweenAlpha('fadeInn', 'camHUD', 1, 0.001, 'linear')
end

if value1 == 'Duet1' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('fadeInn', 'camHUD', 1, 0.001, 'linear')
doTweenAlpha("JakeA","Jake", 0.5, 0.0001, true);
doTweenAlpha("bfA","boyfriend", 0.5, 0.0001, true);
doTweenAlpha("PbbyA","gf", 1, 0.5, true);
doTweenAlpha("FinnA","dad", 1, 0.5, true);
end

if value1 == 'Duet2' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('fadeInn', 'camHUD', 1, 0.001, 'linear')
doTweenAlpha("JakeA","Jake", 1, 0.5, true);
doTweenAlpha("bfA","boyfriend", 1, 0.5, true);
doTweenAlpha("PbbyA","gf", 0.5, 0.5, true);
doTweenAlpha("FinnA","dad", 0.5, 0.5, true);
end

if value1 == 'PreD3' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('fadeInn', 'camHUD', 0, 0.001, 'linear')
doTweenAlpha("JakeA","Jake", 1, 0.0001, true);
doTweenAlpha("bfA","boyfriend", 1, 0.0001, true);
end

if value1 == 'Fight' then
prefight=false
cam=false
focada=true
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
cameraFlash('camGame', 'FFFFFF', 1);
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("GFA","gf", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true);
focado=true
nonotas=true
end

end
end

function onSongStart()
doTweenAlpha("blackA","black", 1, 0.001, true);
doTweenAlpha("black","black", 0, 6, true);
setProperty('defaultCamZoom',0.70)
doTweenY('Move1Y', 'Move1', 0, 0.001, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.001, 'sineInOut');
introfocada=true
runTimer('focan',0.6)
foca2=true
cam=true
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='pibby' then
focus=false
cam=true
prefight=false
end
if tag=='focan' then
foca2=false
end
end

function onUpdate(elapsed)
if nonotas then
setPropertyFromGroup('opponentStrums', 0, 'x', 100000)
setPropertyFromGroup('opponentStrums', 1, 'x', 100000)
setPropertyFromGroup('opponentStrums', 2, 'x', 100000)
setPropertyFromGroup('opponentStrums', 3, 'x', 100000)
setPropertyFromGroup('opponentStrums', 4, 'x', 100000)
end
if focus then
triggerEvent('Camera Follow Pos', 2200, 1200)
end 
if focado then
setProperty('defaultCamZoom',0.70)
end 
if introfocada then
triggerEvent('Camera Follow Pos', 1950, 1100)
setProperty('defaultCamZoom',0.80)
if foca2 then
doTweenZoom('camz','camGame', 0.80, 0.001,'linear')
end 
end
if focada then
triggerEvent('Camera Follow Pos', 1900, 1200)
setProperty('defaultCamZoom',0.60)
end 
if prefight then
triggerEvent('Camera Follow Pos', 1950, 1100)
end 

if followchars == true and cam then
if mustHitSection == false then
setProperty('defaultCamZoom',0.90)
else
setProperty('defaultCamZoom',1.1)
end
end
end