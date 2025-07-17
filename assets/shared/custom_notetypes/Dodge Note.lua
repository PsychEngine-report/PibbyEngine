function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge Note' then
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); 
end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Dodge Note' then
if songName == 'Suffering Siblings' then 
       anim = ''
       setProperty('boyfriend.specialAnim', true);
                if direction == 0 then
                    anim = 'singLEFT'
                elseif direction == 1 then
                    anim = 'singDOWN'
                elseif direction == 2 then
                    anim = 'singUP'
                elseif direction == 3 then
                    anim = 'singRIGHT'
                end
                triggerEvent('Play Animation', anim, 'boyfriend');
    else
    
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
end

