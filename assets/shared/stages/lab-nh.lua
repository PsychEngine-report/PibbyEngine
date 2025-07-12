function onCreate()
makeLuaSprite('BG0', 'stages/lab-nh/bgnoherofull', -800, -300);
scaleObject('BG0', 2, 2);
doTweenX('BG0X', 'BG0.scale', 2, 0.001, 'linear')
doTweenY('BG0Y', 'BG0.scale', 2, 0.001, 'linear')

makeLuaSprite('BG1', 'stages/lab-nh/place', -800, -300);
scaleObject('BG1', 2, 2);
doTweenX('BG1X', 'BG1.scale', 2, 0.001, 'linear')
doTweenY('BG1Y', 'BG1.scale', 2, 0.001, 'linear')

makeLuaSprite("white","white", 0, 0);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 5380);
setProperty("white.scale.y", 5380);
doTweenAlpha("white","white", 0, 0.1, true);

makeLuaSprite("black2","white", 200, 0);
setProperty("black2.scale.x", 5380);
setProperty("black2.scale.y", 5380);
setObjectCamera("black2", 'game')
doTweenColor('black2C', 'black2', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("black2A","black2", 0, 0.1, true);

makeAnimatedLuaSprite('Cutt','noherocutscenefirst', -200, -400);
luaSpriteAddAnimationByPrefix('Cutt', 'hola', 'play', 24, true);
scaleObject('Cutt', 2, 2);
doTweenX('CuttX', 'Cutt.scale', 2.4, 0.001, 'linear')
doTweenY('CuttY', 'Cutt.scale', 2.4, 0.001, 'linear')
setObjectCamera('Cutt', 'other')
doTweenAlpha("CuttA","Cutt", 0, 0.1, true);

makeLuaSprite('c', 'mov', 0, 0);
setObjectCamera('c', 'hud');
doTweenX('cX', 'c.scale', 2, 0.001, 'linear')
doTweenY('cY', 'c.scale', 2, 0.001, 'linear')

makeLuaSprite("black","blacktnt", 0, 0);
setProperty("black.scale.x", 5380);
setProperty("black.scale.y", 5380);
setObjectCamera("black", 'other')

addLuaSprite('BG0', false);
addLuaSprite('BG1', false);
addLuaSprite("black", true);
addLuaSprite("black2", false);
addLuaSprite('Cutt', false)
addLuaSprite("white", false);
addLuaSprite('c', false);

setProperty('BG0.visible', true)
setProperty('BG1.visible', false)
end

function onSongStart()
doTweenAlpha("CuttA","Cutt", 1, 0.1, true);
luaSpritePlayAnimation('Cutt', 'hola', true);
triggerEvent('Ansfoxy', 'inicio', '')
doTweenAlpha("black2","black", 0, 0.01, 'linear');
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'inicio' then

doTweenX('cX', 'c.scale', 1, 0.001, 'linear')
doTweenY('cY', 'c.scale', 1, 0.001, 'linear')
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("black2A","black2", 1, 0.1, true);
setProperty('BG0.visible', false)
setProperty('BG1.visible', false)
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
end

if value1 == 'nocut' then
doTweenAlpha("CuttA","Cutt", 0, 0.1, true);
end

if value1 == 'inicio2' then
doTweenX('cX', 'c.scale', 2, 0.001, 'linear')
doTweenY('cY', 'c.scale', 2, 0.001, 'linear')
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("black2A","black2", 0, 0.1, true);
setProperty('BG0.visible', true)
setProperty('BG1.visible', false)
doTweenColor('bfC', 'boyfriend', 'FFFFFF', 0.01, 'linear')
doTweenColor('dadC', 'dad', 'FFFFFF', 0.01, 'linear')
end

if value1 == 'hud' then
doTweenAlpha('fadeInn', 'camHUD', 0, 0.5, 'linear')
end

if value1 == 'stage1' then
doTweenAlpha('fadeIn', 'camHUD', 1, 0.5, 'linear')
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('BG0.visible', false)
setProperty('BG1.visible', true)
end

if value1 == 'stage2' then
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('BG0.visible', true)
setProperty('BG1.visible', false)
end

end
end