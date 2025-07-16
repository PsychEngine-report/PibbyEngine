
function getHealthColor(arg)
    return "0xFF" ..
        rgbToHex(getProperty(arg .. ".healthColorArray[0]"), getProperty(arg .. ".healthColorArray[1]"),
            getProperty(arg .. ".healthColorArray[2]"));
end

function rgbToHex(r, g, b)
    return string.format("%02X%02X%02X", r, g, b)
end


function onCreatePost()
makeAnimatedLuaSprite('glitchshit', 'healthbar/healthbarShader',80,getProperty('iconP2.y') + 60)
setProperty('glitchshit.origin.x', 150)
setObjectCamera('glitchshit', 'hud')
setObjectOrder('glitchshit',getObjectOrder('iconP1')-1)
addLuaSprite('glitchshit',false)
makeAnimatedLuaSprite('glitchshit2', 'healthbar/healthbar2',80,getProperty('iconP2.y') + 60)
setProperty('glitchshit2.origin.x', 150)
setObjectCamera('glitchshit2', 'hud')
setObjectOrder('glitchshit2',getObjectOrder('iconP1')-1)
addLuaSprite('glitchshit2',false)
setProperty('scoreTxt.x', -250)
setProperty('healthBar.visible',false)
setProperty('glitchshit2.visible',false)
setProperty('healthBarBG.visible',false)
setProperty('healthBar.x', 150)
setProperty('healthBarBG.x', 150)
end

function onUpdatePost(e)
addAnimationByIndices('glitchshit', 'a','healthbar', (2 - getHealth()) / 2 * 100 ,24)
addAnimationByIndices('glitchshit', 'b','healthbar',(2 - getHealth()) / 2 * 100 + 1  ,24)
addAnimationByIndices('glitchshit', 'c','healthbar',(2 - getHealth()) / 2 * 100 + 2  ,24)
addAnimationByIndices('glitchshit', 'd','healthbar',(2 - getHealth()) / 2 * 100 + 3 ,24)
addAnimationByIndices('glitchshit', 'e','healthbar',(2 - getHealth()) / 2 * 100 + 4 ,24)
addAnimationByIndices('glitchshit', 'f','healthbar',(2 - getHealth()) / 2 * 100 + 5 ,24)
addAnimationByIndices('glitchshit2', 'a2','healthbar', (2 - getHealth()) / 2 * 100 ,24)
addAnimationByIndices('glitchshit2', 'b2','healthbar',(2 - getHealth()) / 2 * 100 + 1  ,24)
addAnimationByIndices('glitchshit2', 'c2','healthbar',(2 - getHealth()) / 2 * 100 + 2  ,24)
addAnimationByIndices('glitchshit2', 'd2','healthbar',(2 - getHealth()) / 2 * 100 + 3 ,24)
addAnimationByIndices('glitchshit2', 'e2','healthbar',(2 - getHealth()) / 2 * 100 + 4 ,24)
addAnimationByIndices('glitchshit2', 'f2','healthbar',(2 - getHealth()) / 2 * 100 + 5 ,24)
scaleObject('glitchshit',2,2)
scaleObject('glitchshit2',2,2)
scaleObject('healthBar',0.8,2)
scaleObject('healthBarBG',0.8,1.79)
setProperty('iconP1.x', 550)
setProperty('iconP2.x', 50)
end

function onStepHit()

if curStep % 2 == 0 then
playAnim('glitchshit','b',true)
playAnim('glitchshit2','b2',true)
elseif curStep % 1 == 0 then
playAnim('glitchshit','a',true)
playAnim('glitchshit2','a2',true)
elseif curStep % 3 == 0 then
playAnim('glitchshit','c',true)
playAnim('glitchshit2','c2',true)
elseif curStep % 4 == 0 then
playAnim('glitchshit','d',true)
playAnim('glitchshit2','d2',true)
elseif curStep % 5 == 0 then
playAnim('glitchshit','e',true)
playAnim('glitchshit','e2',true)
elseif curStep % 6 == 0 then
playAnim('glitchshit','f',true)
playAnim('glitchshit','f2',true)
end
end

function onUpdate(elapsed)
setTextFont('scoreTxt', 'gumball.ttf')
end

