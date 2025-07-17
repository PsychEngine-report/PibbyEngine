function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Second Char Glitch' then
			        setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties

			end
		end
	end
	
function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Second Char Glitch' then
if not isSustainNote then
cameraShake('game', 0.001, 0.1)
cameraShake('hud', 0.010, 0.1)
end
end
end
