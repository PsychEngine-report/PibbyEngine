local LastNoteStrumdad=nil
local LastNoteDatadad=nil
local normal=false
local normal2=true

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
if notes then
runTimer('normal',0.01)
end
    end
    LastNoteStrumdad=getPropertyFromGroup('notes', membersIndex, 'strumTime')
    LastNoteDatadad=noteData
    
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if not downscroll then 
if tag=='normal' and not middlescroll then
if normal then
setPropertyFromGroup('opponentStrums', 0, 'x', 90)
setPropertyFromGroup('opponentStrums', 1, 'x', 200)
setPropertyFromGroup('opponentStrums', 2, 'x', 310)
setPropertyFromGroup('opponentStrums', 3, 'x', 420)

setPropertyFromGroup('playerStrums', 0, 'x', 735)
setPropertyFromGroup('playerStrums', 1, 'x', 845)
setPropertyFromGroup('playerStrums', 2, 'x', 955)
setPropertyFromGroup('playerStrums', 3, 'x', 1065)
-----
setPropertyFromGroup('opponentStrums', 0, 'y', 50)
setPropertyFromGroup('opponentStrums', 1, 'y', 50)
setPropertyFromGroup('opponentStrums', 2, 'y', 50)
setPropertyFromGroup('opponentStrums', 3, 'y', 50)
setPropertyFromGroup('opponentStrums', 4, 'y', 50)

setPropertyFromGroup('playerStrums', 0, 'y', 50)
setPropertyFromGroup('playerStrums', 1, 'y', 50)
setPropertyFromGroup('playerStrums', 2, 'y', 50)
setPropertyFromGroup('playerStrums', 3, 'y', 50)
setPropertyFromGroup('playerStrums', 4, 'y', 50)
runTimer('note1',0.01)
end

if normal2 then
setPropertyFromGroup('opponentStrums', 0, 'x', 80)
setPropertyFromGroup('opponentStrums', 1, 'x', 200)
setPropertyFromGroup('opponentStrums', 2, 'x', 310)
setPropertyFromGroup('opponentStrums', 3, 'x', 420)

setPropertyFromGroup('playerStrums', 0, 'x', 725)
setPropertyFromGroup('playerStrums', 1, 'x', 845)
setPropertyFromGroup('playerStrums', 2, 'x', 955)
setPropertyFromGroup('playerStrums', 3, 'x', 1065)
-----
setPropertyFromGroup('opponentStrums', 0, 'y', 50)
setPropertyFromGroup('opponentStrums', 1, 'y', 60)
setPropertyFromGroup('opponentStrums', 2, 'y', 40)
setPropertyFromGroup('opponentStrums', 3, 'y', 50)
setPropertyFromGroup('opponentStrums', 4, 'y', 50)

setPropertyFromGroup('playerStrums', 0, 'y', 50)
setPropertyFromGroup('playerStrums', 1, 'y', 60)
setPropertyFromGroup('playerStrums', 2, 'y', 40)
setPropertyFromGroup('playerStrums', 3, 'y', 50)
setPropertyFromGroup('playerStrums', 4, 'y', 50)
runTimer('note2',0.01)
end

if normal3 then
setPropertyFromGroup('opponentStrums', 0, 'x', 95)
setPropertyFromGroup('opponentStrums', 1, 'x', 200)
setPropertyFromGroup('opponentStrums', 2, 'x', 310)
setPropertyFromGroup('opponentStrums', 3, 'x', 420)

setPropertyFromGroup('playerStrums', 0, 'x', 740)
setPropertyFromGroup('playerStrums', 1, 'x', 845)
setPropertyFromGroup('playerStrums', 2, 'x', 955)
setPropertyFromGroup('playerStrums', 3, 'x', 1065)
----
setPropertyFromGroup('opponentStrums', 0, 'y', 40)
setPropertyFromGroup('opponentStrums', 1, 'y', 50)
setPropertyFromGroup('opponentStrums', 2, 'y', 50)
setPropertyFromGroup('opponentStrums', 3, 'y', 50)
setPropertyFromGroup('opponentStrums', 4, 'y', 50)

setPropertyFromGroup('playerStrums', 0, 'y', 40)
setPropertyFromGroup('playerStrums', 1, 'y', 50)
setPropertyFromGroup('playerStrums', 2, 'y', 50)
setPropertyFromGroup('playerStrums', 3, 'y', 50)
setPropertyFromGroup('playerStrums', 4, 'y', 50)
runTimer('note3',0.01)
end

if normal4 then
setPropertyFromGroup('opponentStrums', 0, 'x', 80)
setPropertyFromGroup('opponentStrums', 1, 'x', 200)
setPropertyFromGroup('opponentStrums', 2, 'x', 310)
setPropertyFromGroup('opponentStrums', 3, 'x', 430)

setPropertyFromGroup('playerStrums', 0, 'x', 725)
setPropertyFromGroup('playerStrums', 1, 'x', 845)
setPropertyFromGroup('playerStrums', 2, 'x', 955)
setPropertyFromGroup('playerStrums', 3, 'x', 1075)
-----
setPropertyFromGroup('opponentStrums', 0, 'y', 50)
setPropertyFromGroup('opponentStrums', 1, 'y', 40)
setPropertyFromGroup('opponentStrums', 2, 'y', 45)
setPropertyFromGroup('opponentStrums', 3, 'y', 60)
setPropertyFromGroup('opponentStrums', 4, 'y', 50)

setPropertyFromGroup('playerStrums', 0, 'y', 50)
setPropertyFromGroup('playerStrums', 1, 'y', 40)
setPropertyFromGroup('playerStrums', 2, 'y', 45)
setPropertyFromGroup('playerStrums', 3, 'y', 60)
setPropertyFromGroup('playerStrums', 4, 'y', 50)
runTimer('note4',0.01)
end
end

if tag=='note1' then
normal=false
normal2=true
end

if tag=='note2' then
normal2=false
normal3=true
end

if tag=='note3' then
normal3=false
normal4=true
end

if tag=='note4' then
normal4=false
normal=true
end

if tag=='aclivedS' then
runTimer('aclivedN',0.2)
notes=true
end

if tag=='aclivedN' then
runTimer('aclivedS',0.2)
notes=false
end
end
end

function onSongStart()
runTimer('aclivedS',0.01)
end