local gf=false
local bf=true
local jake=false
local dad=true
local void=false

function onCreatePost()
doTweenColor('scoreTxt', 'scoreTxt', '00CCEE', 0.01, 'linear');
setProperty('timeBar.color', getIconColor('dad'))
if songName == 'Come Along With Me' then
doTweenColor('scoreTxt', 'scoreTxt', '000000', 0.01, 'linear');
end
if songName == 'Blessed by Swords' then
doTweenColor('scoreTxt', 'scoreTxt', 'FF69B4', 0.01, 'linear');
end
if songName == 'Retcon' or songName == 'Forgotten World' then
void=true
end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.010);
    end
    
if noteType == 'Second Char Sing' or noteType == 'Second Char Glitch' then
jake=true
dad=false
end
if noteType == '' or noteType == 'Glitch Note' then
jake=false
dad=true
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'GF Sing' then
gf=true
bf=false
end
if noteType == '' then
gf=false
bf=true
end
end

function onCreate()
makeLuaSprite('AS', 'aslogo', 1050, 630)
scaleObject('AS', 0.1, 0.1);
setObjectCamera("AS", 'other')
if dadName == 'finncawm_start_new' or dadName == 'falsefinn'  then
doTweenAlpha("AS","AS", 0, 0.1, true);
else
doTweenAlpha("AS","AS", 0.5, 0.1, true);
end
addLuaSprite('AS', true)
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

local followchars = true

function onUpdate()
if followchars == true then
        if mustHitSection == false then
            if dad and getProperty('dad.animation.curAnim.name') == 'singLEFT' then
if void then
doTweenAngle('camGameAngle','camGame',1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',1.5,0.5,'linear')
end
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
if void then
doTweenAngle('camGameAngle','camGame',-1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',-1.5,0.5,'linear')
end
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
if void then
doTweenAngle('camGameAngle','camGame',1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',1.5,0.5,'linear')
end
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
if void then
doTweenAngle('camGameAngle','camGame',-1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',-1.5,0.5,'linear')
end
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'idle-alt' then
            doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if dad and getProperty('dad.animation.curAnim.name') == 'idle' then
            doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singLEFT' then
if void then
doTweenAngle('camGameAngle','camGame',1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',1.5,0.5,'linear')
end
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singRIGHT' then
if void then
doTweenAngle('camGameAngle','camGame',-1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',-1.5,0.5,'linear')
end
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singLEFT-alt' then
if void then
doTweenAngle('camGameAngle','camGame',1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',1.5,0.5,'linear')
end
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singRIGHT-alt' then
if void then
doTweenAngle('camGameAngle','camGame',-1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',-1.5,0.5,'linear')
end
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singUP-alt' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'idle-alt' then
            doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if jake and getProperty('Jake.animation.curAnim.name') == 'idle' then
            doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
        else
            if bf and getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
if void then
doTweenAngle('camGameAngle','camGame',1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',1.5,0.5,'linear')
end
            end
            if bf and getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
if void then
doTweenAngle('camGameAngle','camGame',-1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',-1.5,0.5,'linear')
end
            end
            if bf and getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if bf and getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if bf and getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if bf and getProperty('boyfriend.animation.curAnim.name') == 'idle' then
            doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if gf and getProperty('gf.animation.curAnim.name') == 'singLEFT' then
if void then
doTweenAngle('camGameAngle','camGame',1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',1.5,0.5,'linear')
end
            end
            if gf and getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
if void then
doTweenAngle('camGameAngle','camGame',-1.2,0.5,'linear')
else
doTweenAngle('camGameAngle','camGame',-1.5,0.5,'linear')
end
            end
            if gf and getProperty('gf.animation.curAnim.name') == 'singUP' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if gf and getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if gf and getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
            if gf and getProperty('gf.animation.curAnim.name') == 'idle' then
            doTweenAngle('camGameAngle','camGame',0,0.5,'linear')
            end
        end
    end
end

