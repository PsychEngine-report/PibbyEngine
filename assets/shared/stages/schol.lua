function onCreate()
addLuaScript('scripts extras/healtbar2 by AnsfoxyMB') 

makeLuaSprite('BG0', 'stages/school/Ilustracion_sin_titulo-1', 240, -50);
scaleObject('BG0', 3.0, 3.0);
doTweenX('BG0X', 'BG0.scale', 4.5, 0.002, 'linear')
doTweenY('BG0Y', 'BG0.scale', 4.5, 0.002, 'linear')

makeLuaSprite('BG1', 'stages/school/Ilustracion_sin_titulo-2', 200, -50);
scaleObject('BG1', 4, 4);
doTweenX('BG1X', 'BG1.scale', 6, 0.002, 'linear')
doTweenY('BG1Y', 'BG1.scale', 6, 0.002, 'linear')

makeLuaSprite('BG2', 'stages/school/light', 200, -50);
scaleObject('BG2', 4, 4);
doTweenX('BG2X', 'BG2.scale', 6, 0.002, 'linear')
doTweenY('BG2Y', 'BG2.scale', 6, 0.002, 'linear')

makeLuaSprite('BG3', 'stages/school/188_sin_titulo11_20230523094718', 240, -50);
scaleObject('BG3', 4, 4);
doTweenX('BG3X', 'BG3.scale', 6, 0.002, 'linear')
doTweenY('BG3Y', 'BG3.scale', 6, 0.002, 'linear')

makeLuaSprite('BG4', 'stages/school/Ilustracion_sin_titulo-3', 240, -50);
scaleObject('BG4', 4, 4);
doTweenX('BG4X', 'BG4.scale', 6, 0.002, 'linear')
doTweenY('BG4Y', 'BG4.scale', 6, 0.002, 'linear')

makeLuaSprite('c', 'mov', 0, 0);
setObjectCamera('c', 'hud');
doTweenX('cX', 'c.scale', 2, 0.001, 'linear')
doTweenY('cY', 'c.scale', 2, 0.001, 'linear')

makeLuaSprite("white","white", 680, 400);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 1380);
setProperty("white.scale.y", 820);
doTweenAlpha("white","white", 0, 0.1, true);

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')
doTweenAlpha("blackA","black", 1, 0.1, true);

addLuaSprite('BG0', false);
addLuaSprite('BG1', true);
addLuaSprite('BG2', true);
addLuaSprite('BG3', true);
addLuaSprite('BG4', true);
addLuaSprite('c', false);
addLuaSprite("black", true);
addLuaSprite("white", false);if value1 == 'cut' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
startVideo('forgottenscene')
setProperty('inCutscene', false)
end
end

