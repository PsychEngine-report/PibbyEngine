function onCreate()

     makeLuaSprite('blckc', '', 0, 0);
     makeGraphic('blckc',1280,720,'000000');
     addLuaSprite('blckc', true);
     setLuaSpriteScrollFactor('blckc',0,0)
     setProperty('blckc.scale.x',2)
     setProperty('blckc.scale.y',2)
     setObjectCamera('blckc', 'other')

     makeLuaSprite('flfl', '', 0, 0);
     makeGraphic('flfl',1280,720,'000000');
     addLuaSprite('flfl', true);
     setLuaSpriteScrollFactor('flfl',0,0)
     setProperty('flfl.scale.x',2)
     setProperty('flfl.scale.y',2)
     setObjectCamera('flfl', 'other')

       makeLuaSprite('blacklightdark', 'ss/blacklightdark', 500, 400)
       scaleObject('blacklightdark', 6.0, 6.0)
       addLuaSprite('blacklightdark', true)

       makeLuaSprite('blacklightdarkopp', 'ss/blacklightdarkopp', 500, 400)
       scaleObject('blacklightdarkopp', 6.0, 6.0)
       addLuaSprite('blacklightdarkopp', true)

       makeLuaSprite('blacklightdarkbf', 'ss/blacklightdarkbf', 500, 400)
       scaleObject('blacklightdarkbf', 6.0, 6.0)
       addLuaSprite('blacklightdarkbf', true)

	   makeLuaSprite('blackkk', 'ss/blackkk', 500, 400)
       scaleObject('blackkk', 6.0, 6.0)
       addLuaSprite('blackkk', true)

      makeLuaSprite('blackkkk', 'ss/blackkk', 500, 400)
       scaleObject('blackkkk', 6.0, 6.0)
       addLuaSprite('blackkkk', true)

       --setProperty('blacklightdark.alpha', 1)
       --setProperty('blackkk.alpha', 1)
       --doTweenAlpha('blackkk','blackkk',1,1,'linear')
       
       doTweenAlpha('blackkkkAlpha','blackkkk',math.random(2,8)/10,0.25,'linear')
       doTweenAlpha('blackkkAlpha','blackkk', 0.9,1,'linear')


end

 function onTweenCompleted(tag)
  if tag == 'blackkkAlpha' then
         doTweenAlpha('blackkkAlpha','blackkk',0.9,0.5,'linear')
  end

  if tag == 'blackkkkAlpha' then
        doTweenAlpha('blackkkkAlpha2','blackkkk',0,0.1,'bounceInOut')
  end
        
  if tag == 'blackkkkAlpha2' then
        doTweenAlpha('blackkkkAlpha','blackkkk',0.6,0.2,'bounceInOut')
  end
  
  if curStep > 4768 and curStep < 4804 then

   if tag == 'blackkkkAlpha' then
        doTweenAlpha('blackkkkAlpha2','blackkkk',0,0.04,'bounceInOut')
   end
        
   if tag == 'blackkkkAlpha2' then
        doTweenAlpha('blackkkkAlpha','blackkkk',0.6,0.04,'bounceInOut')
   end
  
  end	
 end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	doTweenAlpha('blackkk','blackkk',0,0.2,'linear')

    if noteType == 'Attack Note' then
        triggerEvent('WhiteFlash', '0.05', '0.9')
    end
end

function onUpdate()
	setProperty('blacklightdark.visible', false)
	setProperty('blackkk.visible', false)
 
 if curStep <= 0 then    
    setProperty('blckc.visible', false)
    setProperty('flfl.visible', false)
    setProperty('blacklightdarkbf.visible', false)
    setProperty('blacklightdarkopp.visible', false)
    setProperty('blacklightdarkopp.alpha', 0)
 end

 if curStep == 3264 then
   setProperty('blckc.visible', true)
 end

 if curStep == 3296 then
    setProperty('blacklightdarkopp.visible', true)
    doTweenAlpha('blacklightdarkopp', 'blacklightdarkopp', 1, 0.5, 'cubeInOut')
    doTweenAlpha('blckc', 'blckc', 0, 1, 'cubeInOut')
 end

 if curStep == 3480 then
    doTweenAlpha('blacklightdarkopp', 'blacklightdarkopp', 0, 0.5, 'cubeInOut')
    setProperty('blacklightdarkbf.visible', true)
    doTweenAlpha('blacklightdarkbf', 'blacklightdarkbf', 1, 0.5, 'cubeInOut')
 end

 if curStep == 3610 then
    doTweenAlpha('blacklightdarkbf', 'blacklightdarkbf', 0, 0.5, 'cubeOut')
 end

  if curStep == 4901 then
       doTweenAlpha('flash','flash',1,2,'linear')
   end
 if curStep > 4927 and curStep < 5297 then
       setProperty('blacklightdark.visible', true)
	    setProperty('blackkk.visible', true)
       doTweenAlpha('flash','flash',0,0.1,'linear')
  end   
end

function onStepHit()
  if curStep < 4658 then
    setProperty('blackkkk.visible', false)
  end

 if curStep >= 4658 then
    setProperty('blackkkk.visible', true)
 end

  if curStep == 4900 then
    setProperty('blackkkk.visible', false)
 end


 if curStep == 4928 then
 setProperty('dark.visible',false)
 setProperty('light.visible',false)
 setProperty('bulb.visible',false)
 end
 
 if curStep == 5312 then
 setProperty('dark.visible',true)
 setProperty('light.visible',true)
 setProperty('bulb.visible',true)
 setProperty('flfl.visible', true)
 end

 if curStep == 5440 then
    setProperty('flfl.visible', false)
 end

 if curStep == 5712 then
  setProperty('flfl.visible', true)
  setProperty('flfl.alpha', 0)
  doTweenAlpha('flfl', 'flfl', 1, 1, 'cubeIn')
 end

 if curStep > 4987 and curStep < 4993 then
 setProperty('dark.visible', false)
 setProperty('light.visible', false)
 setProperty('bulb.visible',false)
 setProperty('blacklightdark.visible', false)
 setProperty('blackkk.visible', false)
 end
end

function noteMiss()
  if curStep > 4927 and curStep < 5297 then
    health = getProperty('health')
    setProperty('health', health- 500);
  end
end
