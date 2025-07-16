function goodNoteHit(id, noteData, noteType, isSustainNote)

    if noteType == 'Duet' then

        local animToPlay = getProperty('singAnimations')[noteData + 1];

        playAnim('boyfriend', animToPlay, true);

        playAnim('gf', animToPlay, true);

    end

end