function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Attack Note' then
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); 


end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Attack Note' then
       anim = ''
       setProperty('boyfriend.specialAnim', true);
                if direction == 0 then
                    anim = 'shootLEFT'
                elseif direction == 1 then
                    anim = 'shootDOWN'
                elseif direction == 2 then
                    anim = 'shootUP'
                elseif direction == 3 then
                    anim = 'shootRIGHT'
                end
                triggerEvent('Play Animation', anim, 'boyfriend');
    end
end
