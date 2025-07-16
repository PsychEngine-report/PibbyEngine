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
runTimer('3',4.5)
runTimer('non',0.1)
setProperty("skipCountdown", true)
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
   
makeAnimatedLuaSprite('bfCount', 'bf_Pibby_Intro', 800, 400)
addAnimationByPrefix('bfCount', '3and2', 'BF 3 and 2', 24, false)
addAnimationByPrefix('bfCount', '1', 'BF 1', 24, false)
addAnimationByPrefix('bfCount', 'go', 'BF Go', 24, false)
scaleObject('bfCount', 2, 2)

addLuaSprite('bfCount', false);
addLuaSprite('Num', true);

if boyfriendName == 'newbf2' then
setProperty('bfCount.x', (getProperty('boyfriend.x')+50))
setProperty('bfCount.y', (getProperty('boyfriend.y')+15))
setObjectOrder('bfCount',getObjectOrder('boyfriendGroup')+1)
else
setProperty('bfCount.x', (getProperty('boyfriend.x')-125))
setProperty('bfCount.y', (getProperty('boyfriend.y')-190))
setObjectOrder('bfCount',getObjectOrder('boyfriendGroup')+1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='non' then
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
objectPlayAnimation('bfCount', '1', false)
objectPlayAnimation('Num', '3', false)
if boyfriendName == 'newbf2' then
setProperty('bfCount.x', (getProperty('boyfriend.x')-20))
setProperty('bfCount.y', (getProperty('boyfriend.y')-100))
else
setProperty('bfCount.x', (getProperty('boyfriend.x')-195))
setProperty('bfCount.y', (getProperty('boyfriend.y')-290))
end
end

if tag=='2' then
setProperty('Num.visible', true)
setProperty('Num.y', 200)
setProperty('Num.x', 500)
doTweenZoom('cam1','camGame', 1, 0.001,'linear')
doTweenZoom('cam2','camGame', 0.9, 0.2,'linear')
playSound('2')
runTimer('1',0.6)
objectPlayAnimation('bfCount', '3and2', false)
objectPlayAnimation('Num', '2', false)
if boyfriendName == 'newbf2' then
setProperty('bfCount.x', (getProperty('boyfriend.x')+50))
setProperty('bfCount.y', (getProperty('boyfriend.y')+15))
else
setProperty('bfCount.x', (getProperty('boyfriend.x')-125))
setProperty('bfCount.y', (getProperty('boyfriend.y')-170))
end
end
if tag=='1' then
setProperty('Num.visible', true)
doTweenZoom('cam1','camGame', 1.2, 0.2,'linear')
playSound('1')
runTimer('go',0.6)
objectPlayAnimation('bfCount', '1', false)
objectPlayAnimation('Num', '1', false)
if boyfriendName == 'newbf2' then
setProperty('bfCount.x', (getProperty('boyfriend.x')-20))
setProperty('bfCount.y', (getProperty('boyfriend.y')-100))
else
setProperty('bfCount.x', (getProperty('boyfriend.x')-195))
setProperty('bfCount.y', (getProperty('boyfriend.y')-280))
end
end
if tag=='go' then
setProperty('Num.visible', true)
setProperty('Num.y', 180)
setProperty('Num.x', 300)
doTweenZoom('camz','camGame', 1.1, 0.2,'linear')
playSound('go')
objectPlayAnimation('bfCount', 'go', false)
objectPlayAnimation('Num', 'go', false)
runTimer('start',1)
if boyfriendName == 'newbf2' then
setProperty('bfCount.x', (getProperty('boyfriend.x')-20))
setProperty('bfCount.y', (getProperty('boyfriend.y')+30))
else
setProperty('bfCount.x', (getProperty('boyfriend.x')-195))
setProperty('bfCount.y', (getProperty('boyfriend.y')-150))
end
end
if tag=='start' then
startCountdown()
setProperty('bfCount.visible', false)
setProperty('boyfriend.visible', true)
foca=false
end
end

function onUpdate(elapsed)
if songName == 'Retcon' then 
doTweenColor('bfCountColor', 'bfCount', 'A9A9A9', 0.1, 'cubeIn')
end
if getProperty('Num.animation.curAnim.finished') and getProperty('Num.visible') then
 setProperty('Num.visible', false)
end
if foca then
triggerEvent('Camera Follow Pos', 1500, 600)
if songName == 'Retcon' then 
triggerEvent('Camera Follow Pos', 1900, 1000)
end
end 
end

function onSongStart()
doTweenAlpha("blackG","black", 1, 0.001, true);
doTweenAlpha("blackF","blackFU", 0, 0.001, true);
end