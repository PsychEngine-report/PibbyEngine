function onCreatePost()

    makeLuaSprite("ASlogo", 'aslogo', 960,600)
    setObjectCamera("ASlogo", "other")
    addLuaSprite("ASlogo", true)
scaleObject('ASlogo', 0.2,0.2)
if songName == 'FreePlay' then
setProperty('ASlogo.alpha',0)
else setProperty('ASlogo.alpha',0.65)
end
if downscroll then
setProperty('ASlogo.y',70)
end
end

function onCreate()
   makeLuaSprite('redeffect', 'sword/redeffect', 0, 0)
   setObjectCamera('redeffect', 'camHUD')
   addLuaSprite('redeffect', true)
   scaleObject('redeffect', 3.0, 3.0)
   setProperty('redeffect.visible', false)

   makeLuaSprite('dont miss', 'sword/dont miss', 175, 150)
   setObjectCamera('dont miss', 'camHUD')
   addLuaSprite('dont miss', true)
   scaleObject('dont miss', 2.0, 2.0)
   setProperty('dont miss.alpha', 0)

   makeLuaSprite('head', 'sword/head', 150, 150)
   setObjectCamera('head', 'camHUD')
   addLuaSprite('head', true)
   scaleObject('head', 2.0, 2.0)
   setProperty('head.alpha', 0)

     makeLuaSprite('flash', '', 0, 0);
     makeGraphic('flash',1280,720,'000000');
     addLuaSprite('flash', true);
     setLuaSpriteScrollFactor('flash',0,0)
     setProperty('flash.scale.x',2)
     setProperty('flash.scale.y',2)

    doTweenAlpha('redeffectAlpha','redeffect',math.random(2,8)/10,0.25,'linear')
    
end

function onTweenCompleted(tag)         

        if tag == 'redeffectAlpha' then
        doTweenAlpha('redeffectAlpha2','redeffect',1,0.5,'bounceInOut')
        end
        
        if tag == 'redeffectAlpha2' then
        doTweenAlpha('redeffectAlpha','redeffect',0.4,0.5,'bounceInOut')
        end

end


function onUpdate()
    if curStep <129 then
     triggerEvent('Camera Follow Pos','1700','1100')
    end 

    if curStep >1535 and curStep < 1857 then
     triggerEvent('Camera Follow Pos','1700','1100')
    end 

    if curStep == 4658  then
        setProperty('redeffect.visible', true)
        doTweenAlpha('dont miss','dont miss',1,2,'linear')
        doTweenAlpha('head','head',1,2.5,'linear')
    end

    if curStep == 4770 then
        setProperty('redeffect.visible', false)
        doTweenAlpha('dont miss','dont miss',0,2,'linear')
        doTweenAlpha('head','head',0,2,'linear')
end

    if curStep > 4135 and curStep < 4393 then
     triggerEvent('Camera Follow Pos','1700','1100') 
    end


    if curStep > 4900 and curStep < 4988 then
     triggerEvent('Camera Follow Pos','1700','1100')
    end 

    if curStep == 4988 then
        triggerEvent('Camera Follow Pos','1550','1100')
        setProperty('cameraSpeed', 7.0)
    end

    if curStep > 4991 and curStep < 5297 then
     triggerEvent('Camera Follow Pos','1700','1100')
     setProperty('cameraSpeed', 2.0)
    end

    if curStep > 5311 and curStep < 5441 then
     triggerEvent('Camera Follow Pos','1700','1100')
    end 

end