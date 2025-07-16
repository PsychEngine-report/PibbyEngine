function onCreate()

makeAnimatedLuaSprite('void1', 'fw/void', -450, -100)
addAnimationByPrefix('void1', 'idle', 'idle', 50, true)
scaleObject('void1', 5.6, 5.6)
setScrollFactor('void1', 0.3, 0.3)
addLuaSprite('void1')
setProperty('void1.visible', true)

makeAnimatedLuaSprite('void', 'fw/void', -450, -100)
addAnimationByPrefix('void', 'idle', 'idle', 50, true)
scaleObject('void', 5.6, 5.6)
setScrollFactor('void', 0.3, 0.3)
addLuaSprite('void')
setProperty('void.visible', false)

makeLuaSprite('glitch', 'fw/glitch', -350, 250)
setScrollFactor('glitch', 0.5, 0.5)
scaleObject('glitch', 4.8, 4.8)
addLuaSprite('glitch', false)

makeLuaSprite('glitch2', 'fw/glitch2', -550, -200)
setScrollFactor('glitch2', 0.5, 0.5)
scaleObject('glitch2', 4.8, 4.8)
addLuaSprite('glitch2', false)
setProperty('glitch2.visible', false)

makeLuaSprite('4', 'fw/4', 50, 100)
scaleObject('4', 4, 4)
setScrollFactor('4', 0.5, 0.5 )
addLuaSprite('4')

makeLuaSprite('3', 'fw/3', 100, 400)
scaleObject('3', 3.0, 3.0)
setScrollFactor('3', 0.7, 0.7)
addLuaSprite('3', false)

makeLuaSprite('3b', 'fw/3b', 100, 400)
scaleObject('3b', 3.0, 3.0)
setScrollFactor('3b', 0.7, 0.7)
addLuaSprite('3b', false)
setProperty('3b.visible', false)

makeLuaSprite('1obj', 'fw/1obj', 1000, 550)
scaleObject('1obj', 1, 1)
setScrollFactor('1obj', 0.7, 0.7)
addLuaSprite('1obj')
setProperty('1obj.visible', false)

makeLuaSprite('2obj', 'fw/2obj', 750, 650)
scaleObject('2obj', 1, 1)
setScrollFactor('2obj', 0.7, 0.7)
addLuaSprite('2obj')
setProperty('2obj.visible', false)

makeLuaSprite('3obj', 'fw/3obj', 900, 800)
scaleObject('3obj', 1, 1)
setScrollFactor('3obj', 0.7, 0.7)
addLuaSprite('3obj')
setProperty('3obj.visible', false)

makeLuaSprite('4obj', 'fw/4obj', 1200, 700)
scaleObject('4obj', 1, 1)
setScrollFactor('4obj', 0.7, 0.7)
addLuaSprite('4obj')
setProperty('4obj.visible', false)

makeLuaSprite('11', 'fw/11', -50, 100)
scaleObject('11', 4, 4)
setScrollFactor('11', 0.8, 0.8 )
addLuaSprite('11')

makeLuaSprite('lights', 'lights',-1600, -900)
scaleObject('lights', 8, 8)
addLuaSprite('lights', true)
setProperty('lights.visible', false)

makeLuaSprite('6bg', 'fw/6bg', 100, 200)
scaleObject('6bg', 4, 4)
setScrollFactor('6bg', 0.7, 0.7)
addLuaSprite('6bg')

makeLuaSprite('5b', 'fw/5b', -150, 200)
scaleObject('5b', 2.6, 2.6)
addLuaSprite('5b')

makeLuaSprite('ok', 'fw/ok', -200, 800)
scaleObject('ok', 1.2, 1.2)
setScrollFactor('ok', 1.2, 1.2)
addLuaSprite('ok', true)

makeLuaSprite('66', 'fw/66', -100, 1100)
scaleObject('66', 4.8, 4.8)
setScrollFactor('66', 1.6, 1.6)
addLuaSprite('66', true)

makeLuaSprite('6', 'fw/6', 400, 1050)
scaleObject('6', 6.0, 6.0)
setScrollFactor('6', 1.6, 1.6)
addLuaSprite('6', true)

-------------heart--------------------------

makeLuaSprite('darwin heart', 'fw/darwin heart', 450, 175)
addLuaSprite('darwin heart', true)
setProperty('darwin heart.alpha', 0)
scaleObject('darwin heart', 0.8, 0.8)
setObjectCamera('darwin heart', 'camHUD')

-------------heart--------------------------

makeLuaSprite('12', 'fw/12', -450, 200)
setScrollFactor('12', 0.5, 0.5)
scaleObject('12', 4.8, 4.8)
addLuaSprite('12', true)
setProperty('12.visible', false)

doTweenAlpha('voidAlpha','void',math.random(1,8)/3,0.15,'linear')
doTweenAlpha('lightsAlpha','lights',math.random(2,8)/10,0.25,'linear')
doTweenAngle('rightangle2','5b',-0.7,2.5,'sineInOut') 
end

function onUpdatePost(elapsed)
setProperty('11.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 4000) * ((getPropertyFromClass('Conductor', 'bpm') / 20) * 0.2)) * 3);

if curStep == 0 then

        started = true

    end

songPos = getSongPosition()

local currentBeat = (songPos/7000)*(curBpm/50)

doTweenY('ymove', '3', 400 - 400*math.sin((currentBeat+12*20)*math.pi), 10)

doTweenY('ymove1', '3b', 400 - 410*math.sin((currentBeat+12*15)*math.pi), 10)

doTweenY('ymove2', '6bg', 350 - 450*math.sin((currentBeat+12*16)*math.pi), 25)

doTweenY('ymove3', '6', 1050 - 1050*math.sin((currentBeat+13*19)*math.pi), 20)

doTweenY('ymove4', '66', 1100 - 1100*math.sin((currentBeat+13*19)*math.pi), 20)

doTweenY('ymove5', 'ok', 800 - 800*math.sin((currentBeat+10*19)*math.pi), 15)

end

function onTweenCompleted(tag)         

        if tag == 'rightangle2' then
        doTweenAngle('leftangle2','5b',0.7,2.5,'sineInOut')
         end
   
        if tag == 'leftangle2' then
        doTweenAngle('rightangle2','5b',-0.7,2.5,'sineInOut')
        end

        if tag == 'voidAlpha' then
        doTweenAlpha('voidAlpha2','void',1,0.03,'linear')
        end
        
        if tag == 'voidAlpha2' then
        doTweenAlpha('voidAlpha','void',0.4,0.1,'linear')
        end

        if tag == 'lightsAlpha' then
        doTweenAlpha('lightsAlpha2','lights',1,1, 'linear')
        end
        
        if tag == 'lightsAlpha2' then
        doTweenAlpha('lightsAlpha','lights',0.4,1.5,'linear')
        end

end

function opponentNoteHit(id, direction, noteType, isSustainNote)
setProperty('void1.visible', false)
setProperty('void.visible', true)
end

function goodNoteHit(id, direction, noteType, isSustainNote)
setProperty('void1.visible', true)
setProperty('void.visible', false)
end


function onUpdate()
setProperty('dad.angle',getProperty('5b.angle'))
setProperty('boyfriend.angle',getProperty('5b.angle'))

 songPos = getSongPosition()

 if curStep > 1 and curStep < 1920 then
       setProperty('3.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 600) * ((getPropertyFromClass('Conductor', 'bpm') / 30) * 0.1)) * 4); 
       setProperty('4.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 4000) * ((getPropertyFromClass('Conductor', 'bpm') / 30) * 0.3)) * 3); 
 end
 
 if curStep > 1919 then
      setProperty('3.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 3500) * ((getPropertyFromClass('Conductor', 'bpm') / 30) * 0.6)) * 7); 
      setProperty('3b.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 6000) * ((getPropertyFromClass('Conductor', 'bpm') / 30) * 0.6)) * 10); 
      setProperty('4.angle',math.sin((getPropertyFromClass('Conductor','songPosition') / 25000) * ((getPropertyFromClass('Conductor', 'bpm') / 25) * 1)) * 25);
      setProperty('3.visible', false)
      setProperty('3b.visible', true)
 end 

 if curStep > 1919 then
        setProperty('glitch2.visible', true)
        setProperty('12.visible', true)
        setProperty('1obj.visible', true)
        setProperty('2obj.visible', true)
        setProperty('3obj.visible', true)
        setProperty('4obj.visible', true)

    if curBeat % 5 == 0 then
        
        doTweenX('6bg', '6bg', -2000, 1, 'linear')
        setProperty('6bg.x', 4000)
    end
 
 end

 if curStep >= 1 then
        doTweenAlpha('darwin heart', 'darwin heart', 1, 3, 'linear')
        doTweenX('scaleX', 'darwin heart.scale', 1.0, 20, 'cubeOut')
        doTweenY('scaleY', 'darwin heart.scale', 1.0, 20, 'cubeOut')
 end

 if curStep >= 112 then
        doTweenAlpha('darwin heart', 'darwin heart', 0, 0.2, 'linear')
        doTweenX('scaleX', 'darwin heart.scale', 0.2, 0.4, 'cubeIn')
        doTweenY('scaleY', 'darwin heart.scale', 0.2, 0.4, 'cubeIn')
 end

 if curBeat % 6 == 0 then
       doTweenX('3b', '3b', -2000, 1, 'linear')
       setProperty('3b.x', 2000)

       doTweenX('1obj', '1obj', -3000, 1, 'linear')
       setProperty('1obj.x', 4000)

       doTweenX('3obj', '3obj', -2500, 1.1, 'linear')
       setProperty('3obj.x', 4000)  
   
 end

 if curBeat % 5 == 0 then
        
        doTweenX('2obj', '2obj', -3000, 0.7, 'linear')
        setProperty('2obj.x', 4000)
 
 end

  if curBeat % 8 == 0 then

       doTweenX('4obj', '4obj', -2000, 3, 'linear')
       setProperty('4obj.x', 4000)  
  end

end