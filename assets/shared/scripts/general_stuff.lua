function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function onCreate()
setPropertyFromClass("openfl.Lib", "application.window.title",'P:A EyeFanBuild')
end

function onCreatePost()

makeAnimatedLuaSprite('count', 'countdown', 600, 300)
scaleObject('count', 4.0, 4.0);
setObjectCamera('count', 'other')
addAnimationByPrefix('count', '1', '1', 24, true)
addAnimationByPrefix('count', '2', '2', 24, true)
addAnimationByPrefix('count', '3', '3', 24, true)
addAnimationByPrefix('count', 'Go', 'Go', 24, true)
setProperty('count.alpha', 0)
addLuaSprite('count', true)
end


function onCountdownTick(counter)
if counter == 0 then
setProperty('count.alpha', 1)
setProperty('count.offset.x', 100)
setProperty('count.offset.y', 50)
playAnim('count','3',true)
playSound('3', 1)


elseif counter == 1 then
setProperty('count.offset.x', 0)
setProperty('count.offset.y', 0)
playAnim('count','2',true)
playSound('2', 1)


elseif counter == 2 then
setProperty('count.offset.x', 0)
setProperty('count.offset.y', 0)
playAnim('count','1',true)
playSound('1', 1)

elseif counter == 3 then
setProperty('count.offset.x', 170)
setProperty('count.offset.y', 50)
playAnim('count','Go',true)
playSound('go', 1)

else
removeLuaSprite('count', true);
end
end
