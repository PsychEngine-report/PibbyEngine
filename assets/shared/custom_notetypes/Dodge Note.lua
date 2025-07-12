function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge Note' then
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); 
end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Dodge Note' then
       anim = ''
       setProperty('boyfriend.specialAnim', true);
                if direction == 0 then
                    anim = 'dodgeLEFT'
                elseif direction == 1 then
                    anim = 'dodgeDOWN'
                elseif direction == 2 then
                    anim = 'dodgeUP'
                elseif direction == 3 then
                    anim = 'dodgeRIGHT'
                end
                triggerEvent('Play Animation', anim, 'boyfriend');
    end
end

