function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF No Visible' then
		setPropertyFromGroup('unspawnNotes', i, 'texture', 'noNOTE_assets'); --Change texture
			        setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties

			end
		end
	end
	
	
function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'GF No Visible' then
anim = ''
if direction == 0 then
anim = 'singLEFT'
elseif direction == 1 then
anim = 'singDOWN'
elseif direction == 2 then
anim = 'singUP'
elseif direction == 3 then
anim = 'singRIGHT'
end
triggerEvent('Play Animation', anim, 'gf');
end
end

function onUpdatePost(elapsed)
setProperty('gf.specialAnim',true)
for i=0, getProperty('notes.length') do
if getSongPosition() > getPropertyFromGroup('notes',i,'strumTime') and getPropertyFromGroup('notes',i,'noteType') == 'GF No Visible' then
noteData = getPropertyFromGroup('notes',i,'noteData')
anim = ''
if noteData == 0 then
anim = 'singLEFT'
elseif noteData == 1 then
anim = 'singDOWN'
elseif noteData == 2 then
anim = 'singUP'
elseif noteData == 3 then
anim = 'singRIGHT'
end
triggerEvent('Play Animation', anim, 'gf');
removeFromGroup('notes', i);
end
end
end
