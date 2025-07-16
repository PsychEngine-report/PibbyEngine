function onCreate()
     makeAnimatedLuaSprite('finncs', 'finncs', 0, 0);
     scaleObject('finncs', 4.0, 4.0);
     luaSpriteAddAnimationByPrefix('finncs', 'finncs idle', 'finncs idle', 22, false);
     setObjectCamera('finncs', 'camHUD')
     addLuaSprite('finncs', true)

     --setProperty('finncs.visible', false)
     doTweenAlpha('finncs','finncs',0,0.001,'linear')

 end

function onUpdate()
   if curStep == 506 then
 	 --setProperty('finncs.visible', true)
 	 objectPlayAnimation('finncs', 'finncs idle')
    doTweenAlpha('finncs','finncs',1,0.05,'linear')
  end

   if curStep == 522 then
   setProperty('finncs.visible', false)
  end
end
