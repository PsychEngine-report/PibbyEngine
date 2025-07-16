--by Ansfoxy
--note glitch thing

colorH = {'80FF00'--[[green]]       ,                 'FF8000'--[[Orange]]                     , 'FF0600'--[[red]]                        , '007FFF'--[[blue]]                       , '9200FF'--[[purple]]                     , 'FD00FF'--[[pink]]                       , 'FFE600'--[[yellow]]                     , '00F3FF'--[[cyan]]                       , 'FF0061'--[[red?]]                       , '00FF5E'--[[green?]]}

function onCreate()
initLuaShader("INV")
setSpriteShader("dad", "INV")
setSpriteShader("Jake", "INV")
setShaderInt("dad", "invert", 0)
setShaderInt("Jake", "invert", 0)

makeLuaSprite("blackOther",'', -1000000, 0);
makeGraphic("blackOther",5,5,'FFFFFF')
setObjectCamera("blackOther", 'camOther')
addLuaSprite('blackOther')
end

function onUpdate()
colodo = math.random(1,#colorH)
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Second Char Glitch' then
doTweenColor('jojclr', 'blackOther', colorH[colodo], 0.05, 'linear')
setSpriteShader("Jake", "INV")
setShaderInt("Jake", "invert", 1)
end
if noteType == 'Glitch Note' then
doTweenColor('jojclr', 'blackOther', colorH[colodo], 0.05, 'linear')
setSpriteShader("dad", "INV")
setShaderInt("dad", "invert", 1)
end

if noteType == '' then
setShaderInt("dad", "invert", 0)
end

end

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Attack Note' then
setSpriteShader("dad", "INV")
setShaderInt("dad", "invert", 1)
doTweenColor('jojclr', 'blackOther', colorH[colodo], 0.05, 'linear')
end
    
if noteType == 'Dodge Note' then
setShaderInt("dad", "invert", 0)
doTweenColor('jojclr', 'blackOther', colorH[colodo], 0.0001, 'linear')
end
end

function onTweenCompleted(tag)
if tag == 'jojclr' then
doTweenColor('jojr', 'blackOther', 'FFFFFF', 0.01, 'linear')
end

if tag == 'jojr' then
setShaderInt("dad", "invert", 0)
setShaderInt("Jake", "invert", 0)
end
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'black2' then
setShaderInt("dad", "invert", 0)
end
end
end