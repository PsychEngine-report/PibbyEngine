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
     makeLuaSprite('glitchcam1', 'glitchcam1', 0, 0)
     setObjectCamera('glitchcam1', 'other')
     scaleObject('glitchcam1', 0.5, 0.5)
     addLuaSprite('glitchcam1', true)
     setProperty('glitchcam1.visible', false)

     makeLuaSprite('glitchcam2', 'glitchcam2', 0, 0)
     setObjectCamera('glitchcam2', 'other')
     scaleObject('glitchcam2', 0.5, 0.5)
     addLuaSprite('glitchcam2', true)
     setProperty('glitchcam2.visible', false)

     makeLuaSprite('glitchcam3', 'glitchcam3', 0, 0)
     setObjectCamera('glitchcam3', 'other')
     scaleObject('glitchcam3', 0.5, 0.5)
     addLuaSprite('glitchcam3', true)
     setProperty('glitchcam3.visible', false)

     makeLuaSprite('glitchcam4', 'glitchcam4', 0, 0)
     setObjectCamera('glitchcam4', 'other')
     scaleObject('glitchcam4', 0.5, 0.5)
     addLuaSprite('glitchcam4', true)
     setProperty('glitchcam4.visible', false)

     makeLuaSprite('flash', '', 0, 0);
     makeGraphic('flash',1280,720,'000000');
     addLuaSprite('flash', true);
     setLuaSpriteScrollFactor('flash',0,0)
     setProperty('flash.scale.x',4)
     setProperty('flash.scale.y',4)
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
        doTweenAlpha('glitchshit', 'glitchshit', 0, 0.0001, 'linear')
        doTweenAlpha('glitchshit2', 'glitchshit2', 0, 0.0001, 'linear')
        doTweenAlpha('hc', 'hc', 0, 0.0001, 'linear')
        doTweenAlpha('hc1', 'hc1', 0, 0.0001, 'linear')
        doTweenAlpha('hc2', 'hc2', 0, 0.0001, 'linear')
        doTweenAlpha('hc3', 'hc3', 0, 0.0001, 'linear')
       -- doTweenAlpha('glitchcam1', 'glitchcam1', 0, 0.0001, 'linear')
       -- doTweenAlpha('glitchcam2', 'glitchcam2', 0, 0.0001, 'linear')
        --doTweenAlpha('glitchcam3', 'glitchcam3', 0, 0.0001, 'linear')
       -- doTweenAlpha('glitchcam4', 'glitchcam4', 0, 0.0001, 'linear')
      end

      if curStep >= 120 then
        noteTweenAlpha('PlayerNote4', 0, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 1, 1, 'linear')
        doTweenAlpha('songLength', 'songLength', 2, 1, 'linear')
      end

    if curStep < 129 then
     triggerEvent('Camera Follow Pos','1300','1350') 
    end

    if curStep >= 248 then
        noteTweenAlpha('PlayerNote0', 4, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 1, 1, 'linear')
    end

    if curStep >= 400 then
        doTweenAlpha('iconP1', 'iconP1', 1, 0.0001, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 1, 0.0001, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.0001, 'linear')
        doTweenAlpha('glitchshit', 'glitchshit', 1, 0.0001, 'linear')
        doTweenAlpha('glitchshit2', 'glitchshit2', 1, 0.0001, 'linear')
        doTweenAlpha('hc', 'hc', 1, 0.0001, 'linear')
        doTweenAlpha('hc1', 'hc1', 1, 0.0001, 'linear')
        doTweenAlpha('hc2', 'hc3', 1, 0.0001, 'linear')
        doTweenAlpha('hc3', 'hc2', 1, 0.0001, 'linear')
       -- doTweenAlpha('glitchcam1', 'glitchcam1', 1, 0.0001, 'linear')
       -- doTweenAlpha('glitchcam2', 'glitchcam2', 1, 0.0001, 'linear')
       -- doTweenAlpha('glitchcam3', 'glitchcam3', 1, 0.0001, 'linear')
       -- doTweenAlpha('glitchcam4', 'glitchcam4', 1, 0.0001, 'linear')
    end

    if curStep == 528 then
     doTweenAlpha('flash', 'flash', 1, 0.2, 'linear')
    end

    --health = getProperty('health')
    
    --if getProperty('health') > 1 then
    -- setProperty('glitchcam1.visible', true)
    -- setProperty('glitchcam2.visible', false)
    -- setProperty('glitchcam3.visible', false)
    -- setProperty('glitchcam4.visible', false)
    --end  

    --if getProperty('health') <= 1 then
   --  setProperty('glitchcam1.visible', false)
   --  setProperty('glitchcam2.visible', true)
    -- setProperty('glitchcam3.visible', false)
   --  setProperty('glitchcam4.visible', false)

   -- end 

   -- if getProperty('health') <= 0.55 then
    -- setProperty('glitchcam1.visible', false)
    -- setProperty('glitchcam2.visible', false)
   --  setProperty('glitchcam3.visible', true)
   --  setProperty('glitchcam4.visible', false)

    --end 

   -- if getProperty('health') <= 0.25 then
    -- setProperty('glitchcam1.visible', false)
    -- setProperty('glitchcam2.visible', false)
    -- setProperty('glitchcam3.visible', false)
    -- setProperty('glitchcam4.visible', true)
    --end 

end