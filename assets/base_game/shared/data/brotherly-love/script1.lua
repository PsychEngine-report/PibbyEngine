function onEvent(name, value1, value2)
if name == 'Ansfoxy' then

if value1 == 'cinema1' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
doTweenAlpha("blackA","black", 0.5, 0.5, true);
end

if value1 == 'blackJ' then
doTweenAlpha("blackC","black", 0, 0.0001, true);
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenX('cX', 'c.scale', 1, 0.0001, 'linear')
doTweenY('cY', 'c.scale', 1, 0.0001, 'linear')
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
doTweenAlpha("white1","white", 1, 6, 'linear');
end

if value1 == 'blackJ2' then
doTweenAlpha("white2","white", 0, 0.001, 'linear');
doTweenAlpha("blackA","black", 1, 0.001, true);
doTweenX('cX', 'c.scale', 2, 0.0001, 'linear')
doTweenY('cY', 'c.scale', 2, 0.0001, 'linear')
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
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'fim' then
doTweenAlpha("blackA","black", 1, 2, true);
doTweenAlpha("huds","camHUD", 0, 2, true);
end

end
end
