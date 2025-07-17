function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Glitch Note' then
end
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note' then
if not isSustainNote then
cameraShake('game', 0.001, 0.1)
cameraShake('hud', 0.010, 0.1)
end
end
end
