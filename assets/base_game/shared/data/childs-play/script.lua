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
doTweenX('cX', 'c.scale', 1, 1, 'linear')
doTweenY('cY', 'c.scale', 1, 1, 'linear')
doTweenZoom('camz','camGame', 1.5, 3,'linear')
end

if value1 == 'cinema1' then
doTweenX('cX', 'c.scale', 2, 1, 'linear')
doTweenY('cY', 'c.scale', 2, 1, 'linear')
end

if value1 == 'black1' then
cam=true
doTweenAlpha("blackA","black", 1, 0.001, true);
end

if value1 == 'black2' then
cam=true
doTweenAlpha("blackA","black", 0, 0.001, true);
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'black3' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',1.1)
setProperty('BG0.visible', false)
setProperty('BG1.visible', false)
setProperty('BG2.visible', false)
setProperty('BG3.visible', false)
setProperty('BG4.visible', false)
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
end

if value1 == 'black4' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('BG0.visible', true)
setProperty('BG1.visible', true)
setProperty('BG2.visible', true)
setProperty('BG3.visible', true)
setProperty('BG4.visible', true)
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
end

end
end