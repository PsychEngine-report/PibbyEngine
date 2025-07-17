function onCreate()
makeLuaSprite("white","white", 680, 400);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 1380);
setProperty("white.scale.y", 820);
doTweenAlpha("white","white", 0, 0.1, true);

addLuaSprite("white", false);
end

function onEvent(name, value1, value2)
if name == 'Ansfoxy' then

if value1 == 'cinema1' then
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
doTweenAlpha("blackA","black", 0.5, 0.5, true);
end

if value1 == 'blackJ' then
doTweenAlpha("blackC","black", 0, 0.0001, true);
cameraFlash('camGame', 'FFFFFF', 1);
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
end

if value1 == 'whiteJ' then
doTweenAlpha("white","white", 1, 5.8, 'linear');
end

if value1 == 'blackJ2' then
doTweenAlpha("white2","white", 0, 0.001, 'linear');
doTweenAlpha("blackA","black", 1, 0.001, true);
doTweenY('Move1Y', 'Move1', -110, 0.001, 'sineInOut');
doTweenY('Move2Y', 'Move2', 720, 0.001, 'sineInOut');
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0)
setProperty('gf.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
setProperty('BG3.visible', true)
setProperty('BG2.visible', true)
setProperty('BG1.visible', true)
setProperty('BG0.visible', true)
end

if value1 == 'blackJ3' then
doTweenAlpha("blackA","black", 0, 0.001, true);
cameraFlash('camGame', 'FFFFFF', 1);
end

if value1 == 'fim' then
doTweenAlpha("blackA","black", 1, 2, true);
doTweenAlpha("huds","camHUD", 0, 2, true);
end

end
end
