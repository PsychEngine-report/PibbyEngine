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
       anim2 = ''
       setProperty('boyfriend.specialAnim', true);
       setProperty('dad.specialAnim', true);
                if direction == 0 then
                    anim = 'shootLEFT'
                    anim2 = 'singLEFT'
                elseif direction == 1 then
                    anim = 'shootDOWN'
                    anim2 = 'singDOWN'
                elseif direction == 2 then
                    anim = 'shootUP'
                    anim2 = 'singUP'
                elseif direction == 3 then
                    anim = 'shootRIGHT'
                    anim2 = 'singRIGHT'
                end
                triggerEvent('Play Animation', anim, 'boyfriend');
                triggerEvent('Play Animation', anim2, 'dad');
    end
end