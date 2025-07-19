
follow=true

function onCreatePost()
 runTimer('intro3',0.6)
setProperty('camHUD.alpha',0)
setProperty("skipCountdown", true)
   
makeAnimatedLuaSprite('bf', 'characters/BF_Intro', (getProperty('boyfriend.x')+80), (getProperty('boyfriend.y')+135))
addAnimationByPrefix('bf', '3and2', 'BF 3 and 2', 24, false)
addAnimationByPrefix('bf', '1', 'BF 1', 24, false)
addAnimationByPrefix('bf', 'go', 'BF Go', 24, false)

makeAnimatedLuaSprite('pibby', 'characters/Pibby_Intro', 800, 900)
addAnimationByPrefix('pibby', '3', 'Pibby 3', 24, false)
addAnimationByPrefix('pibby', '2', 'Pibby 2', 24, false)
addAnimationByPrefix('pibby', '1', 'Pibby 1', 24, false)
addAnimationByPrefix('pibby', 'go', 'Pibby Go', 24, false)


addLuaSprite('pibby', false);
addLuaSprite('bf', false);
setProperty('gf.visible', false)
setProperty('boyfriend.visible', false)

mustHitSection = true

setProperty('bf.x', (getProperty('boyfriend.x')))
setProperty('bf.y', (getProperty('boyfriend.y'))+20)
-----
setProperty('pibby.x', (getProperty('gf.x'))-50)
setProperty('pibby.y', (getProperty('gf.y'))-20)
end

function onTimerCompleted(tag)
if tag=='intro3' then
objectPlayAnimation('bf', '1', false)
objectPlayAnimation('pibby', '3', false)
setProperty('bf.x', (getProperty('boyfriend.x')-70))
setProperty('bf.y', (getProperty('boyfriend.y')-95))

setProperty('pibby.x', (getProperty('gf.x'))-50)
setProperty('pibby.y', (getProperty('gf.y')-15))

triggerEvent('Add Camera Zoom',0.03,0.06)
playSound('3')
runTimer('intro2',0.6)
pause = true
end

if tag=='intro2' then
triggerEvent('Add Camera Zoom',0.03,0.06)
playSound('2')
runTimer('intro1',0.6)

objectPlayAnimation('bf', '3and2', false)
objectPlayAnimation('pibby', '2', false)
setProperty('bf.x', (getProperty('boyfriend.x')))
setProperty('bf.y', (getProperty('boyfriend.y'))+20)

setProperty('pibby.x', (getProperty('gf.x')-70))
setProperty('pibby.y', (getProperty('gf.y')-160))
end

if tag=='intro1' then
triggerEvent('Add Camera Zoom',0.03,0.06)
playSound('1')
runTimer('introGo',0.6)

objectPlayAnimation('bf', '1', false)
objectPlayAnimation('pibby', '1', false)
setProperty('bf.x', (getProperty('boyfriend.x')-70))
setProperty('bf.y', (getProperty('boyfriend.y')-95))

setProperty('pibby.x', (getProperty('gf.x'))-50)
setProperty('pibby.y', (getProperty('gf.y')+5))
end

if tag=='introGo' then
triggerEvent('Add Camera Zoom',0.03,0.06)
playSound('go')
runTimer('start',0.25)

objectPlayAnimation('bf', 'go', false)
objectPlayAnimation('pibby', 'go', false)
setProperty('bf.x', (getProperty('boyfriend.x')-70))
setProperty('bf.y', (getProperty('boyfriend.y')+35))
end

if tag=='start' then
mustHitSection = false
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
		setProperty('vocals.volume', 1)		
triggerEvent('Add Camera Zoom',-0.12,-0.24)
cameraFlash('camOther','ffffff',0.4)

setProperty('boyfriend.visible', true)
setProperty('gf.visible', true)
follow=false
pause = false
setProperty('camHUD.alpha',1)
removeLuaSprite('bf',true)
removeLuaSprite('pibby',true)
end
end

function onCountdownTick(counter)
if counter  ==  1 then
end
end

function onUpdate(elapsed)
if follow == true then
triggerEvent('Camera Follow Pos','2300','1300')
else triggerEvent('Camera Follow Pos','','')
end 

if pause == true then
setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  )
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	end
end