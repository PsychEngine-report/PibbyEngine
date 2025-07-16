function onCreate()

       makeLuaSprite('bg', 'ss/bg', 500, 400)
       scaleObject('bg', 3.0, 3.0)
       addLuaSprite('bg', false)

       makeLuaSprite('dark', 'ss/dark', 500, -450)
       scaleObject('dark', 6.0, 6.0)       
       addLuaSprite('dark', true)      
       
       makeLuaSprite('light', 'ss/light', 500, -450)
       scaleObject('light', 6.0, 6.0) 
       addLuaSprite('light', true)
       
       makeLuaSprite('bulb', 'ss/bulb', 500, -550)
       scaleObject('bulb', 6.0, 6.0) 
       addLuaSprite('bulb', true)

       makeLuaSprite('lights', 'lights',-500, -500)
       scaleObject('lights', 6, 6)
       addLuaSprite('lights', true)
       setProperty('lights.visible', false)

       doTweenAlpha('bulbAlpha','bulb',math.random(2,8)/10,0.25,'linear')
       doTweenAlpha('lightsAlpha','lights',math.random(2,8)/10,0.25,'linear')
       doTweenAlpha('lightAlpha','light',math.random(2,8)/10,0.25,'linear') 

end

function onUpdatePost (elapsed)

        setProperty('light.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 500) * ((getPropertyFromClass('Conductor', 'bpm') / 30) * 0.2)) * 5);                                           
        setProperty('dark.angle',getProperty('light.angle'));
        setProperty('bulb.angle', getProperty('light.angle'));

end

function onTweenCompleted(tag)         

        if tag == 'bulbAlpha' then
        doTweenAlpha('bulbAlpha2','bulb',1,0.5,'bounceInOut')
        end
        
        if tag == 'bulbAlpha2' then
        doTweenAlpha('bulbAlpha','bulb',0.4,0.5,'bounceInOut')
        end

        if tag == 'lightAlpha' then
        doTweenAlpha('lightAlpha2','light',0.3,0.5,'bounceInOut')
        end
        
        if tag == 'lightAlpha2' then
        doTweenAlpha('lightAlpha','light',1,0.5,'bounceInOut')
        end       

        if tag == 'lightsAlpha' then
        doTweenAlpha('lightsAlpha2','lights',1,0.5,'bounceInOut')
        end
        
        if tag == 'lightsAlpha2' then
        doTweenAlpha('lightsAlpha','lights',0.4,0.5,'bounceInOut')
        end     


 if curStep > 4657 and curStep < 4901 then  

        if tag == 'bulbAlpha' then
        doTweenAlpha('bulbAlpha2','bulb',0.6,0.1,'bounceInOut')
        end
        
        if tag == 'bulbAlpha2' then
        doTweenAlpha('bulbAlpha','bulb',0,0.1,'bounceInOut')
        end

        if tag == 'lightAlpha' then
        doTweenAlpha('lightAlpha2','light',0.3,0.2,'bounceInOut')
        end
        
        if tag == 'lightAlpha2' then
        doTweenAlpha('lightAlpha','light',0.7,0.2,'bounceInOut')
        end

 end

end