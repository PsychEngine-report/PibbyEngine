function onCreatePost()
makeLuaSprite("Fim",'', 0, 0);
makeGraphic("Fim",2480,1420,'000000')
setProperty('Fim.alpha',0)
setObjectCamera("Fim", 'camOther')
addLuaSprite('Fim', true)
end
function onBeatHit()
if curBeat == 34 then

end

if lento then
runHaxeCode([[
game.set_playbackRate(game.playbackRate -= 0.05);
]])
end

end

function onTimerCompleted(tag)
if tag=='Verify' then
lento=true
pauser=true 
doTweenZoom('camz','camGame', 2, 15,'linear')
doTweenAlpha("blackers","Fim", 1, 3.4, true);
doTweenAlpha("NOhuds","camHUD", 0, 3.3, true);
runTimer('noMusic',3.5)
end

if tag=='noMusic' then
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
setProperty('vocals.volume', 0)
NOmusic=true
runTimer('cutscene',0.8)
end

if tag=='crash' then
crashGame()
end

if tag=='cutscene' then
startVideo('Cheating_is_a_sin')
setProperty('inCutscene', false)
runTimer('crash',24)
end
end

function crashGame(...)
--lol code
setPropertyFromGroup('strumLineNotes', id, 'animation.name', anim)
end

function onPause()
if pauser then
Paused = not Paused
return Function_Stop
end
end

function onUpdate()
if NOmusic then
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
setProperty('vocals.volume', 0)
end
end

function onSongStart()
if getPropertyFromClass('PlayState', 'chartingMode') == true then
runTimer('Verify',3.5)
end
end
