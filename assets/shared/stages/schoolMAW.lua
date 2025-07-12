function onCreate()
runTimer('charge',0.1);
addLuaScript('scripts extras/healtbar2 by AnsfoxyMB') 

makeLuaSprite('BG0', 'stages/school/Ilustracion_sin_titulo-1', 240, -50);
scaleObject('BG0', 3.0, 3.0);
doTweenX('BG0X', 'BG0.scale', 4.5, 0.002, 'linear')
doTweenY('BG0Y', 'BG0.scale', 4.5, 0.002, 'linear')

makeLuaSprite('BG1', 'stages/school/Ilustracion_sin_titulo-2', 200, -50);
scaleObject('BG1', 4, 4);
doTweenX('BG1X', 'BG1.scale', 6, 0.002, 'linear')
doTweenY('BG1Y', 'BG1.scale', 6, 0.002, 'linear')

makeLuaSprite('BG2', 'stages/school/light', 240, -50);
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

makeLuaSprite('BG20', 'stages/void/Ilustracion_sin_titulo-1', 400, 0);
setProperty("BG20.scale.x", 2.5);
setProperty("BG20.scale.y", 2.5);

makeLuaSprite('BG21', 'stages/void/Ilustracion_sin_titulo-2', 400, 0);
setProperty("BG21.scale.x", 2.5);
setProperty("BG21.scale.y", 2.5);

makeLuaSprite('BG22', 'stages/void/Ilustracion_sin_titulo-3', 400, 0);
setProperty("BG22.scale.x", 2.5);
setProperty("BG22.scale.y", 2.5);

makeLuaSprite('BG23', 'stages/void/Ilustracion_sin_titulo-4', 400, 0);
setProperty("BG23.scale.x", 2.5);
setProperty("BG23.scale.y", 2.5);

makeLuaSprite('BG24', 'stages/void/Ilustracion_sin_titulo-5', 400, 0);
setProperty("BG24.scale.x", 2.5);
setProperty("BG24.scale.y", 2.5);

makeLuaSprite('BG25', 'stages/void/Ilustracion_sin_titulo-6', 400, 0);
setProperty("BG25.scale.x", 2.5);
setProperty("BG25.scale.y", 2.5);

makeLuaSprite('BG26', 'stages/void/Ilustracion_sin_titulo-7', 400, 0);
setProperty("BG26.scale.x", 2.5);
setProperty("BG26.scale.y", 2.5);

makeLuaSprite('BG27', 'stages/school/channels/chn1', -100, -150);
scaleObject('BG27', 2, 2);
doTweenX('BG27X', 'BG27.scale', 2, 0.001, 'linear')
doTweenY('BG27Y', 'BG27.scale', 2, 0.001, 'linear')

makeLuaSprite('BG28', 'stages/school/channels/chn2', -100, -150);
scaleObject('BG28', 2, 2);
doTweenX('BG28X', 'BG28.scale', 2, 0.001, 'linear')
doTweenY('BG28Y', 'BG28.scale', 2, 0.001, 'linear')

makeLuaSprite('BG29', 'stages/school/channels/chn3', -150, -150);
scaleObject('BG29', 4, 4);
doTweenX('BG29X', 'BG29.scale', 4, 0.001, 'linear')
doTweenY('BG29Y', 'BG29.scale', 4, 0.001, 'linear')

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
addLuaSprite('BG1', true);
addLuaSprite('BG2', true);
addLuaSprite('BG3', true);
addLuaSprite('BG4', true);
addLuaSprite('c', false);
addLuaSprite("black", true);
addLuaSprite("blackH", false);
addLuaSprite("black2", false);
addLuaSprite("white", false);
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='charge' then
setProperty('gf.visible', false)
doTweenAlpha("white","white", 0, 0.1, true);
doTweenAlpha("blackHA","blackH", 0, 0.1, true);
doTweenAlpha("BG27A","BG27", 0, 0.1, true);
doTweenAlpha("BG28A","BG28", 0, 0.1, true);
doTweenAlpha("BG29A","BG29", 0, 0.1, true);
doTweenAlpha("BG30A","BG30", 0, 0.1, true);
end
end
