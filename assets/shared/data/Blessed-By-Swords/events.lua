local followchars = true;
local cam = true;

function onSongStart()
doTweenAlpha("BFA","boyfriend", 0.5, 0.8, true);
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'blacker' then
doTweenAlpha("blackA","black", 1, 0.001, true);
end

if value1 == 'white2' then
doTweenAlpha("blackA","black", 0, 0.001, true);
cameraFlash('camGame', 'FFFFFF', 1);
end
end
end

function onUpdate(elapsed)
if followchars == true and cam then
if mustHitSection == false then
           
setProperty('defaultCamZoom',0.90)
else
setProperty('defaultCamZoom',1.1)
end
end
end