local bg = 'Loading' -- don't touch this

local allowCountdown = false

function onStartCountdown()
    if not allowCountdown then
	    return Function_Stop
	end

	if allowCountdown then
	    return Function_Continue
	end
end

function onCreatePost() -- sprite loading
runTimer('CargaTimer',3)

	makeLuaSprite('Loading', 'loadingscreen/'..bg, 0, 0)
	scaleObject('Loading', 2.0, 2.0);
	setObjectCamera('Loading', 'camOther')
	
	makeLuaSprite('Carga', 'loadingscreen/Carga', 200, 650);
	setObjectCamera('Carga', 'camOther')
	doTweenX('CargaX', 'Carga.scale', 0.7, 0.001, 'linear')
    doTweenY('CargaY', 'Carga.scale', 0.3, 0.001, 'linear')
	doTweenAlpha('Carga1', 'Carga', 0, 0.1, 'linear')
	
	addLuaSprite('Loading', true)
	addLuaSprite('Carga', true)
end

function onTimerCompleted(tag)
if tag == 'CargaTimer' then
	    doTweenAlpha('carga', 'Carga', 1, 0.01, 'linear')
		runTimer('fadeTimer',0.3)
	end
    if tag == 'fadeTimer' then
	    doTweenAlpha('delete', 'Loading', 0, 0.5, 'backIn')
	    doTweenAlpha('carga2', 'Carga', 0, 0.5, 'backIn')
	    allowCountdown = true
		if songName == 'Come Along With Me' then 
         startCountdown()
        end 
	end
end

function onTweenCompleted(tag)
    if tag == 'delete' then
	    removeLuaSprite('Loading', true)
		removeLuaSprite('Carga', true)
	end
end