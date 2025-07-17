function onCreate()
setProperty('camHUD.y',-100)
setProperty('camHUD.x',-100)
doTweenAlpha("TheH","camHUD", 0, 0.1, true);
doTweenAngle('HudAngle','camHUD', -10, 0.1,'sineInOut')
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'inicio' then
doTweenX('c2X', 'c2.scale', 2, 1, 'linear')
doTweenY('c2Y', 'c2.scale', 2, 1, 'linear')
doTweenX('HudX', 'camHUD', 0, 0.8, 'sineInOut')
doTweenY('HudY', 'camHUD', 0, 1, 'sineInOut')
doTweenAlpha("TheH","camHUD", 1, 0.3, true);
doTweenAngle('HudAngle','camHUD', 0, 1.1,'sineInOut')
end
end
end