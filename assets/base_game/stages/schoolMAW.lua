local spin = 3

function onCreate()
runTimer('charge',0.1);

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

makeLuaSprite("blackH","blacktnt", 680, 400);
setProperty("blackH.scale.x", 1380);
setProperty("blackH.scale.y", 820);
setObjectCamera("blackH", 'hud')

makeLuaSprite("black2","white", 1440, 0);
setProperty("black2.scale.x", 3000);
setProperty("black2.scale.y", 3000);
setObjectCamera("black2", 'game')
doTweenColor('black2C', 'black2', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("black2A","black2", 0, 0.1, true);

makeAnimatedLuaSprite('BG20', 'stages/voidschool/void', -1280, -800);
luaSpriteAddAnimationByPrefix('BG20', 'idle', 'idle', 24, true);
scaleObject('BG20', 10.0, 10.0);
setScrollFactor('BG20',0.9, 1)
doTweenX('BG20X', 'BG20.scale', 6.0, 0.004, 'cubeOut')
doTweenY('BG20Y', 'BG20.scale', 6.0, 0.004, 'cubeOut')
luaSpritePlayAnimation('BG20', 'idle', true);

makeLuaSprite('BG21', 'stages/voidschool/Ilustracion_sin_titulo-2', 600, 200);
setProperty("BG21.scale.x", 5.0);
setProperty("BG21.scale.y", 5.0);
setScrollFactor('BG21',0.9, 1)

makeLuaSprite('BG22', 'stages/voidschool/Ilustracion_sin_titulo-3', 400, 0);
setProperty("BG22.scale.x", 2.5);
setProperty("BG22.scale.y", 2.5);

makeLuaSprite('BG23', 'stages/voidschool/Ilustracion_sin_titulo-4', 600, 200);
setProperty("BG23.scale.x", 5.0);
setProperty("BG23.scale.y", 5.0);

makeLuaSprite('BG24', 'stages/voidschool/Ilustracion_sin_titulo-5', 600, 200);
setProperty("BG24.scale.x", 5.0);
setProperty("BG24.scale.y", 5.0);

makeLuaSprite('BG25', 'stages/voidschool/Ilustracion_sin_titulo-6', 600, 200);
setProperty("BG25.scale.x", 5.0);
setProperty("BG25.scale.y", 5.0);

makeLuaSprite('BG26', 'stages/voidschool/Ilustracion_sin_titulo-7', 700, 200);
setProperty("BG26.scale.x", 5.0);
setProperty("BG26.scale.y", 5.0);

makeLuaSprite('BG27', 'stages/school/channels/chn1', -100, -90);
scaleObject('BG27', 2, 2);

makeLuaSprite('BG28', 'stages/school/channels/chn2', -100, -150);
scaleObject('BG28', 2, 2);

makeLuaSprite('BG29', 'stages/school/channels/chn3', -150, -150);
scaleObject('BG29', 4, 4);

makeLuaSprite('Move1',nil, 0, 0)
setObjectCamera('Move1','hud')
makeGraphic('Move1', screenWidth, 100, '000000')

makeLuaSprite('Move2',nil, 0, 620)
setObjectCamera('Move2','hud')
makeGraphic('Move2', screenWidth, 100, '000000')

addLuaSprite('Move1',false)
addLuaSprite('Move2',false)
addLuaSprite('BG20', false);
addLuaSprite('BG21', false);
addLuaSprite('BG22', false);
addLuaSprite('BG23', false);
addLuaSprite('BG24', false);
addLuaSprite('BG25', false);
addLuaSprite('BG26', false);
addLuaSprite('BG27', false);
addLuaSprite('BG28', false);
addLuaSprite('BG29', false);
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
addLuaSprite('c', false);
addLuaSprite("black", true);
addLuaSprite("blackH", false);
addLuaSprite("black2", false);
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='charge' then
setProperty('gf.visible', false)
doTweenAlpha("blackHA","blackH", 0, 0.1, true);
doTweenAlpha("BG27A","BG27", 0, 0.1, true);
doTweenAlpha("BG28A","BG28", 0, 0.1, true);
doTweenAlpha("BG29A","BG29", 0, 0.1, true);
doTweenAlpha("BG30A","BG30", 0, 0.1, true);
end
if tag=='flot1' then
doTweenY('BG26Y', 'BG26', 450, 4, true);
runTimer('flot2', 4)
end
if tag=='flot2' then
doTweenY('BG26Y2', 'BG26', 350, 4, true);
runTimer('flot1', 4)
end
if tag=='stoneflot' then
doTweenAngle('stone1','BG24',-360, 30,'sineInOut')
runTimer('stoneflot2', 30)
end
if tag=='stoneflot2' then
doTweenAngle('stone2','BG24',360, 30,'sineInOut')
runTimer('stoneflot', 30)
end

end


function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'void' then
runTimer('flot2',0.1)
runTimer('stoneflot',0.1)
doTweenColor('houseColorTween', 'BG21', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('floorColorTween', 'BG22', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('stoneColorTween', 'BG23', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('stoneColorTween', 'BG24', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('stone2ColorTween', 'BG25', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('itensColorTween', 'BG26', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('gfColorTween', 'gf', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('dadColorTween', 'dad', 'A9A9A9', 0.1, 'cubeIn')
doTweenColor('bfColorTween', 'boyfriend', 'A9A9A9', 0.1, 'cubeIn')
end
end
end

function onUpdate(elapsed)
local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1300
if curStep >= 0 and curStep < 5000 then
setProperty("BG21.angle", spin * math.sin(songPos))
end
end