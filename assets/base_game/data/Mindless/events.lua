local followchars = true;
local focus=false
local cam = true

function onSongStart()
if songName == 'Mindless' then
focus2=true
cam=true
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("DADC","dad", 0, 0.0001, true);
doTweenAlpha("black2A","black2", 0, 10, true);
end
end

function onUpdate(elapsed)
if focus2 then
triggerEvent('Camera Follow Pos', 2300, 1300)
end 

if followchars == true and cam then
if mustHitSection == false then
           
setProperty('defaultCamZoom',0.90)
else
setProperty('defaultCamZoom',1.1)
end
end
end

function onEvent(name, value1, value2)
if name == 'Ansfoxy' then

if value1 == 'Mindless1' then
cam=false
focus2=false
doTweenZoom('camz','camGame', 1.5, 2,'linear')
doTweenAlpha("black2A","black2", 1, 2, true);
end

if value1 == 'Mindless2' then
cam=true
setProperty('BG3.visible', true)
setProperty('BG2.visible', true)
setProperty('BG1.visible', true)
setProperty('BG0.visible', true)
doTweenAlpha("DADC","dad", 1, 0.0001, true);
doTweenAlpha("black2A","black2", 0, 5, true);
end

if value1 == 'Mindless3' then
doTweenAlpha("black2A","black2", 1, 0.01, true);
doTweenAlpha("FinnA","Finn", 1, 0.001, true);
luaSpritePlayAnimation('Finn', 'transform', true);
end

if value1 == 'Mindless4' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("black2A","black2", 0, 0.001, true);
doTweenAlpha("FinnA","Finn", 0, 0.001, true);
end

end
end
