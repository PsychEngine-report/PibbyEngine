local LastNoteStrumdad=nil
local LastNoteDatadad=nil
function onCreatePost()
    local StrumLast=nil
    local lastwassus = nil
local lastwassequel = nil
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if StrumLast==getPropertyFromGroup('unspawnNotes', i, 'strumTime') then
        end
        StrumLast=getPropertyFromGroup('unspawnNotes', i, 'strumTime')  
    end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
if not isSustainNote then
if LastNoteStrumdad==getPropertyFromGroup('notes', membersIndex, 'strumTime') then
cameraShake('game', 0.001, 0.1)
cameraShake('hud', 0.015, 0.1)
end
    LastNoteStrumdad=getPropertyFromGroup('notes', membersIndex, 'strumTime')
    LastNoteDatadad=noteData
end
end
