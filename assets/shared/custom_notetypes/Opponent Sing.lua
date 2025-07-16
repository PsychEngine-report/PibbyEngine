local singName = {
	{'singLEFT'},
	{'singDOWN'},
	{'singUP'},
	{'singRIGHT'},
	}
	
	
	
function onCreate()

      for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Opponent Sing' then
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
            setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);

			--if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
            --    setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			--end
		end
	end
end

function goodNoteHit(id,dir,type,sus)
if type == 'Opponent Sing' then
		characterPlayAnim('dad',singName[dir+1][1] , true)
		setProperty('dad.holdTimer', 0)
	end
	end
	
	function noteMiss(id,data,type,sus)
	if type == 'Opponent Sing' then 
	characterPlayAnim('dad',singName[data+1][1] , true)
		setProperty('dad.holdTimer', 0)
		setProperty('dad.color',getColorFromHex('0000FF'))
		runTimer('resetTheColor',1)
		end
		end
		
		function onTimerCompleted(tag)
		if tag =='resetTheColor' then
		setProperty('dad.color',getColorFromHex('FFFFFF'))
		end
		end