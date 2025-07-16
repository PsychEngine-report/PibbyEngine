--scripts by NTH208
function onCreatePost()
for i =0,3 do
noteTweenX('NoteX'..i,i,getPropertyFromGroup('strumLineNotes',i,'x')- 50,0.1,'linear')
noteTweenY('NoteY'..i,i,getPropertyFromGroup('strumLineNotes',i,'y')- 50,0.1,'linear')
end

for i = 0,7 do
        setPropertyFromGroup('opponentStrums',i,'texture','opponentNote/Arrows')
    end
    
    for n = 0,getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes',n,'isSustainNote') then
            if getPropertyFromGroup('unspawnNotes',n,'mustPress') then
            else
            setPropertyFromGroup('unspawnNotes',n,'offsetX', getPropertyFromGroup('unspawnNotes',n,'offsetX')+ 50)
            end
            end
            if getPropertyFromGroup('unspawnNotes',n,'mustPress') then
            else
            setPropertyFromGroup('unspawnNotes',n,'texture','opponentNote/Arrows')
        end
        end
    
end