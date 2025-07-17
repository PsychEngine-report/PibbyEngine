function onCreate()
makeLuaSprite('BG0', 'stages/lab-nh/bgnoherofull', -800, -300);
scaleObject('BG0', 2, 2);

makeLuaSprite('BG1', 'stages/lab-nh/place', -800, -300);
scaleObject('BG1', 2, 2);

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

makeAnimatedLuaSprite('Cutt','noherocutscenefirst', -350, -500);
luaSpriteAddAnimationByPrefix('Cutt', 'hola', 'play', 24, true);
scaleObject('Cutt', 2.4, 2.4);
setObjectCamera('Cutt', 'other')
doTweenAlpha("CuttA","Cutt", 0, 0.1, true);

makeLuaSprite("black","blacktnt", 0, 0);
setProperty("black.scale.x", 5380);
setProperty("black.scale.y", 5380);
setObjectCamera("black", 'other')

makeLuaSprite("blackFU","blacktnt", 680, 400);
setProperty("blackFU.scale.x", 1380);
setProperty("blackFU.scale.y", 820);
setObjectCamera("blackFU", 'other')

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
doTweenY('Move1BY', 'Move1B', 0, 0.001, 'sineInOut');
doTweenAlpha("Move1AlB","Move1B", 0, 0.1, 'linear');

makeLuaSprite('Move2B',nil, 0, 620)
setObjectCamera('Move2B','other')
makeGraphic('Move2B', screenWidth, 100, '000000')
doTweenY('Move2BY', 'Move2B', 620, 0.001, 'sineInOut');
doTweenAlpha("Move2AlB","Move2B", 0, 0.1, 'linear');

addLuaSprite('Move1',false)
addLuaSprite('Move2',false)
addLuaSprite('Move1B',false)
addLuaSprite('Move2B',false)
addLuaSprite('BG0', false);
addLuaSprite('BG1', false);
addLuaSprite("black", true);
addLuaSprite("black2", false);
addLuaSprite("blackFU", false);
addLuaSprite('Cutt', false)
addLuaSprite("white", false);

setProperty('BG0.visible', true)
setProperty('BG1.visible', false)
end

function onSongStart()
doTweenAlpha("CuttA","Cutt", 1, 0.1, true);
luaSpritePlayAnimation('Cutt', 'hola', true);
triggerEvent('Ansfoxy', 'inicio', '')
doTweenAlpha("black2","black", 0, 0.01, 'linear');
doTweenColor('icon1', 'iconP2', '000000', 0.1, 'linear')
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'inicio' then
doTweenY('Move1Y', 'Move1', 0, 0.6, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.6, 'sineInOut');
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
doTweenAlpha('fadeInn', 'camHUD', 1, 0.5, 'linear')
doTweenColor('icon1', 'iconP2', 'ffffff', 0.1, 'linear')
doTweenY('Move1Y', 'Move1', -110, 0.6, 'sineInOut');
doTweenY('Move2Y', 'Move2', 720, 0.6, 'sineInOut');
doTweenY('Move1BY', 'Move1B', -110, 0.6, 'sineInOut');
doTweenY('Move2BY', 'Move2B', 720, 0.6, 'sineInOut');
doTweenAlpha("Move1Al","Move1", 1, 0.5, 'linear');
doTweenAlpha("Move2Al","Move2", 1, 0.5, 'linear');
doTweenAlpha("Move1AlB","Move1B", 0, 0.5, 'linear');
doTweenAlpha("Move2AlB","Move2B", 0, 0.5, 'linear');
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

if value1 == 'hud2' then
doTweenAlpha('fadeInn', 'camHUD', 0, 0.5, 'linear')
doTweenAlpha("Move1Al","Move1", 0, 0.5, 'linear');
doTweenAlpha("Move2Al","Move2", 0, 0.5, 'linear');
doTweenAlpha("Move1AlB","Move1B", 1, 0.5, 'linear');
doTweenAlpha("Move2AlB","Move2B", 1, 0.5, 'linear');
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