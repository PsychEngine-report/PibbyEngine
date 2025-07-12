function onCreatePost()
doTweenColor('scoreTxt', 'scoreTxt', '00CCEE', 0.01, 'linear');
setProperty('timeBar.color', getIconColor('dad'))
if songName == 'Come Along With Me' then
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
end
if songName == 'Blessed by Swords' then
doTweenColor('scoreTxt', 'scoreTxt', 'FF69B4', 0.01, 'linear');
end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.010);
    end
end

function onCreate()
makeLuaSprite('CN', 'cnlogo', 950, 580)
scaleObject('CN', 0.4, 0.4);
setObjectCamera("CN", 'other')
if dadName == 'finncawm_start_new' or dadName == 'falsefinn'  then
doTweenAlpha("CN","CN", 0, 0.1, true);
else
doTweenAlpha("CN","CN", 0.5, 0.1, true);
end
addLuaSprite('CN', true)
end

function getIconColor(chr)
	return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function mathlerp(from,to,i)
	return from+(to-from)*i
end

function round(x, n)
	n = math.pow(10, n or 0)
	x = x * n
	if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
	return x / n
  end