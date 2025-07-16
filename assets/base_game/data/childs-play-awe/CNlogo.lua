function onCreatePost()

    makeLuaSprite("CNlogo", 'cnlogo', 960,600)
    setObjectCamera("CNlogo", "other")
    addLuaSprite("CNlogo", true)
scaleObject('CNlogo', 0.2,0.2)
if songName == 'FreePlay' then
setProperty('CNlogo.alpha',0)
else setProperty('CNlogo.alpha',0.65)
end
if downscroll then
setProperty('CNlogo.y',70)
end
end

function onCreate()
       makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'000000');
          addLuaSprite('flash', true);
          setLuaSpriteScrollFactor('flash',0,0);
          setProperty('flash.scale.x',4);
          setProperty('flash.scale.y',4);

       makeLuaSprite('flash11', '', 0, 0);
        makeGraphic('flash11',1280,720,'000000');
          addLuaSprite('flash11', true);
          setLuaSpriteScrollFactor('flash11',0,0);
          setObjectCamera('flash11', 'other')
          setProperty('flash11.scale.x',4);
          setProperty('flash11.scale.y',4);
          setProperty('flash11.visible', false)

       makeLuaSprite('flash22', '', 0, 0);
        makeGraphic('flash22',1280,720,'000000');
          addLuaSprite('flash22', true);
          setLuaSpriteScrollFactor('flash22',0,0);
          setObjectCamera('flash22', 'other')
          setProperty('flash22.scale.x',4);
          setProperty('flash22.scale.y',4);

       makeLuaSprite('fff', '', 0, 0);
        makeGraphic('fff',1280,720,'000000');
          addLuaSprite('fff', true);
          setLuaSpriteScrollFactor('fff',0,0);
          setProperty('fff.scale.x',6);
          setProperty('fff.scale.y',6);

          makeLuaSprite('sf', 'school/sf', 200, 100)
          addLuaSprite('sf', true)
          scaleObject('sf', 1.1, 1.1)
  end


function onUpdate()
      if curStep <= 0 then
       setProperty('flash22.alpha', 0)
       setProperty('fff.alpha', 0)
       setProperty('sf.visible', false)
      end

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
        doTweenAlpha('glitchshit', 'glitchshit', 0, 0.0001, 'linear')
        doTweenAlpha('glitchshit2', 'glitchshit2', 0, 0.0001, 'linear')
      end

      if curStep == 112 then
        noteTweenAlpha('PlayerNote0', 4, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 1, 1, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 1, 1, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 1, 1, 'linear')
        doTweenAlpha('songLength', 'songLength', 1, 1, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'linear')
        doTweenAlpha('glitchshit', 'glitchshit', 1, 1, 'linear')
        doTweenAlpha('glitchshit2', 'glitchshit2', 1, 1, 'linear')
      end

    if curStep >= 0 and curStep < 125 then
     triggerEvent('Camera Follow Pos','1200','700')
    end

    if curStep == 928 then
    setProperty('flash11.visible', true)
    end 

    if curStep == 1056 then 
      doTweenAlpha('flash11', 'flash11', 0, 1, 'cubeOut')
    end

    if curStep > 1311 and curStep < 1344 then
      triggerEvent('Camera Follow Pos','1200','700')
    end

    if curStep == 1312 then
      --doTweenAlpha('flash22', 'flash22', 1, 2, 'cubeInOut')
      setProperty('fff.visible', true)
      doTweenAlpha('fff', 'fff', 1, 1, 'cubeOut')
    end

    if curStep == 1328 then
     setProperty('sf.visible', true)
     doTweenAlpha('sf', 'sf', 0, 1, 'cubeOut')
    end


    if curStep == 1344 then
      setProperty('fff.alpha', 0)
      setProperty('sf.alpha', 0)
    end

    if curStep == 2403 then
    doTweenAlpha('flash22', 'flash22', 1, 2, 'cubeOut')
    end

end     