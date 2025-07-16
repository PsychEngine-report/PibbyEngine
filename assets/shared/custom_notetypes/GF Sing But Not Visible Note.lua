local singName = {
	{'singLEFT'},
	{'singDOWN'},
	{'singUP'},
	{'singRIGHT'},
	}
	
function onCreate()

      for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF Sing But Not Visible Note' then
            setPropertyFromGroup('unspawnNotes', i, "colorSwap.saturation", -10)
            setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -10);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
            setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

function opponentNoteHit(id,dir,type,sus)
if type == 'GF Sing But Not Visible Note' then
		characterPlayAnim('gf',singName[dir+1][1] , true)
		setProperty('gf.holdTimer', 0)
		
	end
	end
	
function onUpdatePost()
    for i = 0, getProperty('notes.length') do
		if getPropertyFromGroup('notes', i, 'noteType') == 'GF Sing But Not Visible Note' then
            setPropertyFromGroup('notes', i, 'alpha', 0)   

            if getPropertyFromGroup('notes',i,'isSustainNote') then
		    setPropertyFromGroup('notes', i, 'offset.x', -30)
		end
		end
		end
end
