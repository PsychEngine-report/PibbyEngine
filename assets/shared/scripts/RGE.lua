function opponentNoteHit(id, direction, noteType, isSustainNote)
glitcheffct = getRandomInt(1,3)
if noteType == 'Glitch Note' and glitchn then
initLuaShader("negative")
setSpriteShader("dad", "negative")
setShaderFloat("dad", "binaryIntensity", -0.5)

if glitcheffct == 1 then
setShaderFloat("dad", "negativity", 2)
elseif glitcheffct == 2 then
setShaderFloat("dad", "negativity", -10)
end
runTimer('removeshader', 0.1)
end

glitcheffctforSpinel = getRandomInt(1,3)
if noteType == 'Second Char Glitch' and glitchn then
initLuaShader("negative")
setSpriteShader("Spinel", "negative")
setShaderFloat("Spinel", "binaryIntensity", -0.5)

if glitcheffctforSpinel == 1 then
setShaderFloat("Spinel", "negativity", 2)
elseif glitcheffctforSpinel == 2 then
setShaderFloat("Spinel", "negativity", -10)
end
runTimer('removeshaderSpinel', 0.1)
end
end


glitchn = true

function onTimerCompleted(tag)
if tag == 'removeshader' then
setShaderFloat("dad", "binaryIntensity", 100)
setShaderFloat("dad", "negativity", 0)
end

if tag == 'removeshaderSpinel' then
setShaderFloat("Spinel", "binaryIntensity", 100)
setShaderFloat("Spinel", "negativity", 0)
end
end

function onUpdate()
if glitchactive <= 5 then
setShaderFloat("dad", "iTime", os.clock())
setShaderFloat("Spinel", "iTime", os.clock())
end
end