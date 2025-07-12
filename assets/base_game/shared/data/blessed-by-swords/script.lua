local followchars = true;
local cam = true;

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'blacker' then
doTweenAlpha("blackA","black", 1, 0.001, true);
end

if value1 == 'white2' then
doTweenAlpha("blackA","black", 0, 0.001, true);
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
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