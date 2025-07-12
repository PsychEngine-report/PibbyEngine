function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Dodge Note' then
       --setProperty('boyfriend.holdTimer', 0);
       setProperty('boyfriend.specialAnim', true);
            if direction == 0 then
                characterPlayAnim('boyfriend', 'dodgeLEFT', true);
            elseif direction == 1 then
                characterPlayAnim('boyfriend', 'dodgeDOWN', true);
            elseif direction == 2 then
                characterPlayAnim('boyfriend', 'dodgeUP', true);
            elseif direction == 3 then
                characterPlayAnim('boyfriend', 'dodgeRIGHT', true);
   end
end
if noteType == 'Attack Note' then
       --setProperty('boyfriend.holdTimer', 0);
       setProperty('boyfriend.specialAnim', true);
            if direction == 0 then
                characterPlayAnim('boyfriend', 'shootLEFT', true);
            elseif direction == 1 then
                characterPlayAnim('boyfriend', 'shootDOWN', true);
            elseif direction == 2 then
                characterPlayAnim('boyfriend', 'shootUP', true);
            elseif direction == 3 then
                characterPlayAnim('boyfriend', 'shootRIGHT', true);
        end
    end
end
