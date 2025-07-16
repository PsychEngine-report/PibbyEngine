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
setProperty("skipCountdown", true)
runTimer('3',4.5)
runTimer('non',0.1)
   precacheSound('3')
   precacheSound('2')
   precacheSound('1')
   precacheSound('go')
   
makeAnimatedLuaSprite('Num', 'Numbers', 500, 200);
addAnimationByPrefix('Num', '3', '3', 24, false)
addAnimationByPrefix('Num', '2', '2', 24, false)
addAnimationByPrefix('Num', '1', '1', 24, false)
addAnimationByPrefix('Num', 'go', 'Go', 24, false)
scaleObject('Num', 4, 4);
setObjectCamera("Num", 'other')
doTweenAlpha("NumN","Num", 0, 0.1, true);

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
addLuaSprite('Num', true);

if boyfriendName == 'newbf2' then
setProperty('bf.x', (getProperty('boyfriend.x')-90))
setProperty('bf.y', (getProperty('boyfriend.y')-125))
setObjectOrder('bf',getObjectOrder('boyfriendGroup')+1)
else
setProperty('bf.x', (getProperty('boyfriend.x')-140))
setProperty('bf.y', (getProperty('boyfriend.y')-145))
setObjectOrder('bf',getObjectOrder('boyfriendGroup')+1)
end
-----
setProperty('pibby.x', (getProperty('gf.x')-170))
setProperty('pibby.y', (getProperty('gf.y')-135))
setObjectOrder('pibby',getObjectOrder('boyfriendGroup')-1)
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='non' then
setProperty('gf.visible', false)
setProperty('boyfriend.visible', false)
end
if tag=='3' then
doTweenAlpha("NumN","Num", 1, 0.1, true);
setProperty('Num.visible', true)
setProperty('Num.y', 170)
setProperty('Num.x', 450)
doTweenZoom('cam1','camGame', 1, 0.001,'linear')
doTweenZoom('cam2','camGame', 0.9, 0.2,'linear')
playSound('3')
runTimer('2',0.6)
objectPlayAnimation('bf', '1', false)
objectPlayAnimation('pibby', '3', false)
objectPlayAnimation('Num', '3', false)
if boyfriendName == 'newbf2' then
setProperty('bf.x', (getProperty('boyfriend.x')-160))
setProperty('bf.y', (getProperty('boyfriend.y')-245))
else
setProperty('bf.x', (getProperty('boyfriend.x')-210))
setProperty('bf.y', (getProperty('boyfriend.y')-265))
end

setProperty('pibby.x', (getProperty('gf.x')-170))
setProperty('pibby.y', (getProperty('gf.y')-130))
end

if tag=='2' then
setProperty('Num.visible', true)
setProperty('Num.y', 200)
setProperty('Num.x', 500)
doTweenZoom('cam1','camGame', 1, 0.001,'linear')
doTweenZoom('cam2','camGame', 0.9, 0.2,'linear')
playSound('2')
runTimer('1',0.6)
objectPlayAnimation('bf', '3and2', false)
objectPlayAnimation('pibby', '2', false)
objectPlayAnimation('Num', '2', false)
if boyfriendName == 'newbf2' then
setProperty('bf.x', (getProperty('boyfriend.x')-90))
setProperty('bf.y', (getProperty('boyfriend.y')-125))
else
setProperty('bf.x', (getProperty('boyfriend.x')-140))
setProperty('bf.y', (getProperty('boyfriend.y')-145))
end

setProperty('pibby.x', (getProperty('gf.x')-190))
setProperty('pibby.y', (getProperty('gf.y')-275))
end
if tag=='1' then
setProperty('Num.visible', true)
doTweenZoom('cam1','camGame', 1.2, 0.2,'linear')
playSound('1')
runTimer('go',0.6)
objectPlayAnimation('bf', '1', false)
objectPlayAnimation('pibby', '1', false)
objectPlayAnimation('Num', '1', false)
if boyfriendName == 'newbf2' then
setProperty('bf.x', (getProperty('boyfriend.x')-160))
setProperty('bf.y', (getProperty('boyfriend.y')-235))
else
setProperty('bf.x', (getProperty('boyfriend.x')-210))
setProperty('bf.y', (getProperty('boyfriend.y')-255))
end
setProperty('pibby.x', (getProperty('gf.x')-170))
setProperty('pibby.y', (getProperty('gf.y')-110))
end
if tag=='go' then
setProperty('Num.visible', true)
doTweenZoom('camz','camGame', 1.1, 0.2,'linear')
playSound('go')
setProperty('Num.y', 180)
setProperty('Num.x', 300)
objectPlayAnimation('bf', 'go', false)
objectPlayAnimation('pibby', 'go', false)
objectPlayAnimation('Num', 'go', false)
runTimer('start',1)
if boyfriendName == 'newbf2' then
setProperty('bf.x', (getProperty('boyfriend.x')-160))
setProperty('bf.y', (getProperty('boyfriend.y')-105))
else
setProperty('bf.x', (getProperty('boyfriend.x')-210))
setProperty('bf.y', (getProperty('boyfriend.y')-125))
end
end
if tag=='start' then
startCountdown()
setProperty('Num.visible', false)
setProperty('bf.visible', false)
setProperty('boyfriend.visible', true)

setProperty('pibby.visible', false)
setProperty('gf.visible', true)
foca=false
end
end

function onUpdate(elapsed)
if getProperty('Num.animation.curAnim.finished') and getProperty('Num.visible') then
 setProperty('Num.visible', false)
end
if foca then
triggerEvent('Camera Follow Pos', 2300, 1300)
end 
end