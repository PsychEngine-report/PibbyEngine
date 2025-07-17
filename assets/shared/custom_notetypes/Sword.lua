function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sword' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SwordNOTE_assets')
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0)
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false)
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Sword' then
		playSound('slice', 0.3);
		cameraShake('camGame', 0.01, 0.2)
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Sword' then
		setProperty('health', getProperty('health')-3)
		playSound('slice', 1);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001);
	end
end