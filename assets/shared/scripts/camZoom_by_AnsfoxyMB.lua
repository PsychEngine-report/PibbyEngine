local LastNoteStrumdad=nil
local LastNoteDatadad=nil
local LastNoteStrumbf=nil
local LastNoteDatabf=nil

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
triggerEvent('Add Camera Zoom','0.01','0.06')
end
    LastNoteStrumdad=getPropertyFromGroup('notes', membersIndex, 'strumTime')
    LastNoteDatadad=noteData
end
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
if not isSustainNote then
if LastNoteStrumbf==getPropertyFromGroup('notes', membersIndex, 'strumTime') then
triggerEvent('Add Camera Zoom','0.01','0.06')
end
    LastNoteStrumbf=getPropertyFromGroup('notes', membersIndex, 'strumTime')
    LastNoteDatabf=noteData
end
end
