function onCreate()
makeLuaSprite('BG0', 'stages/school/Ilustracion_sin_titulo-1', -190, -200);
scaleObject('BG0', 3.0, 3.0);

makeLuaSprite('BG1', 'stages/school/Ilustracion_sin_titulo-2', -450, -200);
scaleObject('BG1', 6.0, 6.0);

makeLuaSprite('BG2', 'stages/school/light', -450, -200);
scaleObject('BG2', 6.0, 6.0);

makeLuaSprite('BG3', 'stages/school/188_sin_titulo11_20230523094718', -450, -200);
scaleObject('BG3', 6.0, 6.0);

makeLuaSprite('BG4', 'stages/school/Ilustracion_sin_titulo-3', -190, -200);
scaleObject('BG4', 6.0, 6.0);

--animated!!
makeAnimatedLuaSprite('Pibby1', 'stages/school/topgoop', -250, -310);
luaSpriteAddAnimationByPrefix('Pibby1', 'idle', 'gooey', 24, true);
scaleObject('Pibby1', 3.0, 3.0);
luaSpritePlayAnimation('Pibby1', 'idle', true);

makeAnimatedLuaSprite('Pibby2', 'stages/school/secondtopgoop', 1450, -60);
luaSpriteAddAnimationByPrefix('Pibby2', 'idle', 'gooey', 24, true);
scaleObject('Pibby2', 1.5, 1.5);
luaSpritePlayAnimation('Pibby2', 'idle', true);

makeAnimatedLuaSprite('Pibby3', 'stages/school/droplet', 910, 300);
luaSpriteAddAnimationByPrefix('Pibby3', 'idle', 'gooey', 24, true);
scaleObject('Pibby3', 1.7, 1.7);
luaSpritePlayAnimation('Pibby3', 'idle', true);

makeAnimatedLuaSprite('Pibby4', 'stages/school/sinkgoop', 600, 400);
luaSpriteAddAnimationByPrefix('Pibby4', 'idle', 'gooey', 24, true);
scaleObject('Pibby4', 1.7, 1.7);
luaSpritePlayAnimation('Pibby4', 'idle', true);

makeAnimatedLuaSprite('Penny', 'stages/school/penny', 680, 40);
luaSpriteAddAnimationByPrefix('Penny', 'idle', 'idle', 12, true);
scaleObject('Penny', 2.6, 2.6);
luaSpritePlayAnimation('Penny', 'idle', true);

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')
doTweenAlpha("blackA","black", 0, 0.1, true);

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
doTweenY('Move1BY', 'Move1B', -110, 0.001, 'sineInOut');

makeLuaSprite('Move2B',nil, 0, 620)
setObjectCamera('Move2B','other')
makeGraphic('Move2B', screenWidth, 100, '000000')
doTweenY('Move2BY', 'Move2B', 720, 0.001, 'sineInOut');

addLuaSprite('Move1',false)
addLuaSprite('Move2',false)
addLuaSprite('Move1B',false)
addLuaSprite('Move2B',false)
addLuaSprite('BG0', false);
addLuaSprite('Pibby2', true);
addLuaSprite('Pibby3', false);
addLuaSprite('Pibby4', false);
addLuaSprite('Penny', false);
addLuaSprite('BG1', true);
addLuaSprite('BG2', true);
addLuaSprite('BG3', true);
addLuaSprite('BG4', true);
addLuaSprite('Pibby1', true);
addLuaSprite("black", true);

setProperty('Pibby1.visible', false)
setProperty('Pibby2.visible', false)
setProperty('Pibby3.visible', false)
setProperty('Pibby4.visible', false)
setProperty('Penny.visible', false)
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'Apocalipse' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
end
end
end