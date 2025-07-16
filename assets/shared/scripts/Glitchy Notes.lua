function onCreatePost()
for n = 0,getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', n, 'noteType') == '' or getPropertyFromGroup('unspawnNotes', n, 'noteType') == 'Both Char Sing' or getPropertyFromGroup('unspawnNotes', n, 'noteType') == 'Second Char Glitch' or getPropertyFromGroup('unspawnNotes', n, 'noteType') == 'Second Char Sing' or getPropertyFromGroup('unspawnNotes', n, 'noteType') == 'Glitch Note' or getPropertyFromGroup('unspawnNotes', n, 'noteType') == 'Alt Animation' then
        if getPropertyFromGroup('unspawnNotes',n,'isSustainNote') then
            if getPropertyFromGroup('unspawnNotes',n,'mustPress') then
            else
            setPropertyFromGroup('unspawnNotes',n,'offsetX', getPropertyFromGroup('unspawnNotes',n,'offsetX')+ 50)
            end
            end
            if getPropertyFromGroup('unspawnNotes',n,'mustPress') then
            else
            setPropertyFromGroup('unspawnNotes',n,'texture','NOTE_assets2')
        end
        end

if getPropertyFromGroup('unspawnNotes', n, 'noteType') == 'Glitch' then
            if getPropertyFromGroup('unspawnNotes',n,'mustPress') then
            else
            setPropertyFromGroup('unspawnNotes',n,'offsetX', getPropertyFromGroup('unspawnNotes',n,'offsetX')+ 50)
         end
end
        
end
end

function onSongStart()
for i=0,4,1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets2');
end

for i=0,3 do
noteTweenX('NoteX'..i,i,getPropertyFromGroup('strumLineNotes',i,'x')- 50,0.001,'linear')
noteTweenY('NoteY'..i,i,getPropertyFromGroup('strumLineNotes',i,'y')- 50,0.001,'linear')
end
end