local followchars = true;
local cam = true

function onUpdate(elapsed)
if followchars == true and cam then
if mustHitSection == false then
setProperty('defaultCamZoom',1.1)
else
setProperty('defaultCamZoom',0.90)
end
end
end

function onSongStart()
doTweenAlpha("black","black", 0, 5, true);
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'cinema' then
cam=false
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
setProperty('defaultCamZoom',1.5)
doTweenZoom('camz','camGame', 1.5, 2.5,'linear')
end

if value1 == 'cinema1' then
doTweenY('Move1Y', 'Move1', -110, 0.6, 'sineInOut');
doTweenY('Move2Y', 'Move2', 720, 0.6, 'sineInOut');
end

if value1 == 'black1' then
--cam=true
setProperty('Pibby1.visible', true)
setProperty('Pibby2.visible', true)
setProperty('Pibby3.visible', true)
setProperty('Pibby4.visible', true)
setProperty('Penny.visible', true)
doTweenAlpha("blackA","black", 1, 0.001, true);
end

if value1 == 'black2' then
cam=true
doTweenAlpha("blackA","black", 0, 0.001, true);
cameraFlash('camGame', 'FFFFFF', 1);
end

if value1 == 'black3' then
cam=true
cameraFlash('camGame', 'FFFFFF', 1);
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz','camGame', 1.1, 0.5,'linear')
setProperty('BG0.visible', false)
setProperty('BG1.visible', false)
setProperty('BG2.visible', false)
setProperty('BG3.visible', false)
setProperty('BG4.visible', false)
setProperty('Pibby1.visible', false)
setProperty('Pibby2.visible', false)
setProperty('Pibby3.visible', false)
setProperty('Pibby4.visible', false)
setProperty('Penny.visible', false)
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
end

if value1 == 'black4' then
cameraFlash('camGame', 'FFFFFF', 1);
setProperty('BG0.visible', true)
setProperty('BG1.visible', true)
setProperty('BG2.visible', true)
setProperty('BG3.visible', true)
setProperty('BG4.visible', true)
setProperty('Pibby1.visible', true)
setProperty('Pibby2.visible', true)
setProperty('Pibby3.visible', true)
setProperty('Pibby4.visible', true)
setProperty('Penny.visible', true)
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
end

end
end

function onBeatHit() --zoons
if curBeat == 16 then
cam=false
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz1','camGame', 1.3, 9,'linear')
end
if curBeat == 30 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz2','camGame', 1.1, 0.5,'linear')
end
if curBeat == 32 then
cam=true
end
if curBeat == 88 then
cam=false
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz1','camGame', 1.3, 9,'linear')
end
if curBeat == 99 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz2','camGame', 1.1, 0.001,'linear')
end
if curBeat == 100 then
cam=true
end
end