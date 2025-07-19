function onCreate()

		   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'000000');
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0);
	      setProperty('flash.scale.x',4);
	      setProperty('flash.scale.y',4);

          makeAnimatedLuaSprite('ctscn', 'ctscn', 0, 0)
          addAnimationByPrefix('ctscn', 'ctsn idle', 'ctsn idle', 9, false)
          addLuaSprite('ctscn', true)
          setObjectCamera('ctscn', 'other')
          scaleObject('ctscn', 1.0, 1.0)
end

function onUpdate()

    if curStep <= 9 then
        noteTweenAlpha('PlayerNote0', 4, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 0, 0.0001, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 0, 0.0001, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 0, 0.0001, 'linear')
        doTweenAlpha('songLength', 'songLength', 0, 0.0001, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.0001, 'linear')
    end

    if curStep <= 0 then
        setProperty('ctscn.visible', false)
    end

    if curStep == 120 then
        noteTweenAlpha('PlayerNote4', 0, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 1, 1, 'linear')
        doTweenAlpha('songLength', 'songLength', 2, 1, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 1, 1, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 1, 1, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 2, 1, 'linear')
    end

    if curStep == 152 then
        noteTweenAlpha('PlayerNote0', 4, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 1, 1, 'linear')
    end

    if curStep == 1084 then
        noteTweenAlpha('PlayerNote0', 4, 0, 0.23, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 0, 0.23, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 0, 0.23, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 0, 0.23, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 0, 0.23, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 0, 0.23, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 0, 0.23, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 0, 0.23, 'linear')
        doTweenAlpha('songLength', 'songLength', 0, 0.23, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 0, 0.23, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 0, 0.23, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.23, 'linear')
    end

    if curStep == 1088 then
        setProperty('flash.alpha', 1)
        setProperty('flash.visible', true)
        setProperty('ctscn.visible', true)
        objectPlayAnimation('ctscn', 'ctsn idle')
    end

    if curStep == 1096 then
        doTweenAlpha('ctscn', 'ctscn', 0, 0.1, 'linear')
    end

    if curStep == 1157 then
        setProperty('flash.visible', false)
        noteTweenAlpha('PlayerNote0', 4, 1, 0.23, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 1, 0.23, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 1, 0.23, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 1, 0.23, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 1, 0.23, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 1, 0.23, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 1, 0.23, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 1, 0.23, 'linear')
        doTweenAlpha('songLength', 'songLength', 1, 0.23, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 1, 0.23, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 1, 0.23, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.23, 'linear')
    end

    if curStep == 256 then
    	doTweenAlpha('flash', 'flash', 1, 0.75, 'linear')
        noteTweenAlpha('PlayerNote0', 4, 0, 0.75, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 0, 0.75, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 0, 0.75, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 0, 0.75, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 0, 0.75, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 0, 0.75, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 0, 0.75, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 0, 0.75, 'linear')
        doTweenAlpha('songLength', 'songLength', 0, 0.75, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 0, 0.75, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 0, 0.75, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.75, 'linear')
    end

    if curStep > 266 and curStep < 385 then
    	triggerEvent('Camera Follow Pos', 1000, 400)

    end

    if curStep == 320 then
    	setProperty('flash.visible', false)
    end

    if curStep == 384 then
        noteTweenAlpha('PlayerNote0', 4, 1, 0.5, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 1, 0.5, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 1, 0.5, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 1, 0.5, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 1, 0.5, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 1, 0.5, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 1, 0.5, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 1, 0.5, 'linear')
        doTweenAlpha('songLength', 'songLength', 1, 0.5, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 1, 0.5, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 1, 0.5, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.5, 'linear')

    end
     
     if curStep == 1600 then
        setProperty('flash.visible', true)
     end

     if curStep == 1614 then
        setProperty('flash.visible', false)
     end
     
     if curStep == 1912 then
        setProperty('flash.visible', true)
     end

     if curStep == 1917 then
        setProperty('flash.visible', false)
     end

     if curStep == 1920 then
        doTweenX('GF', 'gf', 1000, 2, 'cubeOut')
     end

     if curStep == 2064 then
        doTweenAlpha('flash', 'flash', 1, 1, 'linear')
     end
end
