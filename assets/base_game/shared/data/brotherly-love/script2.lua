local allowCountdown = false
local cutsceneEnded = false
local foca=true
function onStartCountdown()
        if not allowCountdown and not seenCutscene then
            
            allowCountdown = true;
            return Function_Stop;
        
    end
    return Function_Continue;
end

function onCreatePost()
runTimer('3',1)
runTimer('non',0.1)
setProperty("skipCountdown", true)
   precacheSound('3')
   precacheSound('2')
   precacheSound('1')
   precacheSound('go')
   
makeAnimatedLuaSprite('bf', 'BF_Pibby_Intro', 800, 800)
addAnimationByPrefix('bf', '3and2', 'BF 3 and 2', 24, false)
addAnimationByPrefix('bf', '1', 'BF 1', 24, false)
addAnimationByPrefix('bf', 'go', 'BF Go', 24, false)
scaleObject('bf', 2, 2)

makeAnimatedLuaSprite('pibby', 'Pibby_Intro', 800, 800)
addAnimationByPrefix('pibby', '3', 'Pibby 3', 24, false)
addAnimationByPrefix('pibby', '2', 'Pibby 2', 24, false)
addAnimationByPrefix('pibby', '1', 'Pibby 1', 24, false)
addAnimationByPrefix('pibby', 'go', 'Pibby Go', 24, false)
scaleObject('pibby', 2, 2)

addLuaSprite('pibby', false);
addLuaSprite('bf', false);

setProperty('bf.x', (getProperty('boyfriend.x')-80))
setProperty('bf.y', (getProperty('boyfriend.y')-135))
setObjectOrder('bf',getObjectOrder('boyfriendGroup')+1)
-----
setProperty('pibby.x', (getProperty('gf.x')-150))
setProperty('pibby.y', (getProperty('gf.y')-185))
setObjectOrder('pibby',getObjectOrder('boyfriendGroup')-1)
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='non' then
setProperty('gf.visible', false)
setProperty('boyfriend.visible', false)
end
if tag=='3' then
doTweenZoom('cam1','camGame', 1, 0.001,'linear')
doTweenZoom('cam2','camGame', 0.9, 0.2,'linear')
playSound('3')
runTimer('2',0.6)
objectPlayAnimation('bf', '1', false)
objectPlayAnimation('pibby', '3', false)
setProperty('bf.x', (getProperty('boyfriend.x')-150))
setProperty('bf.y', (getProperty('boyfriend.y')-250))

setProperty('pibby.x', (getProperty('gf.x')-150))
setProperty('pibby.y', (getProperty('gf.y')-180))
end

if tag=='2' then
doTweenZoom('cam1','camGame', 1, 0.001,'linear')
doTweenZoom('cam2','camGame', 0.9, 0.2,'linear')
playSound('2')
runTimer('1',0.6)
objectPlayAnimation('bf', '3and2', false)
objectPlayAnimation('pibby', '2', false)
setProperty('bf.x', (getProperty('boyfriend.x')-80))
setProperty('bf.y', (getProperty('boyfriend.y')-135))

setProperty('pibby.x', (getProperty('gf.x')-170))
setProperty('pibby.y', (getProperty('gf.y')-325))
end
if tag=='1' then
doTweenZoom('cam1','camGame', 1.2, 0.2,'linear')
playSound('1')
runTimer('go',0.6)
objectPlayAnimation('bf', '1', false)
objectPlayAnimation('pibby', '1', false)
setProperty('bf.x', (getProperty('boyfriend.x')-150))
setProperty('bf.y', (getProperty('boyfriend.y')-250))

setProperty('pibby.x', (getProperty('gf.x')-150))
setProperty('pibby.y', (getProperty('gf.y')-160))
end
if tag=='go' then
doTweenZoom('camz','camGame', 1.1, 0.2,'linear')
playSound('go')
objectPlayAnimation('bf', 'go', false)
objectPlayAnimation('pibby', 'go', false)
runTimer('start',1)
setProperty('bf.x', (getProperty('boyfriend.x')-150))
setProperty('bf.y', (getProperty('boyfriend.y')-120))
end
if tag=='start' then
startCountdown()
setProperty('bf.visible', false)
setProperty('boyfriend.visible', true)

setProperty('pibby.visible', false)
setProperty('gf.visible', true)
foca=false
end
end

function onUpdate(elapsed)
if foca then
triggerEvent('Camera Follow Pos', 2300, 1300)
end 
end