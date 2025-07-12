function onCreate()
	-- background shit
	makeLuaSprite('bg', 'class', -300, -300);
    addLuaSprite('bg', false);
    scaleObject('bg', 2, 2);

    makeLuaSprite('bg2', 'thefunnyeffect', 0, 0);
    addLuaSprite('bg2', true);
    setProperty('bg2.alpha',0.5)
    scaleObject('bg2', 1, 1);
end
function onCountdownStarted()
	doTweenAlpha('camGame', 'camGame', 0, 0.00001, 'quadInOut');
	doTweenAlpha('camHUD', 'camHUD', 0, 0.00001, 'quadInOut');
	end
function onStepHit()
       if curStep == 1 then
       doTweenAlpha('camGame', 'camGame', 10, 10.86, 'quadInOut');
       doTweenAlpha('camHUD', 'camHUD', 10, 10.86, 'quadInOut');
       end
end

