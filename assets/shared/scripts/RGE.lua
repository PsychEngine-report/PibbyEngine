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

glitcheffctforJake = getRandomInt(1,3)
if noteType == 'Glitch GF' and glitchn then
initLuaShader("negative")
setSpriteShader("Jake", "negative")
setShaderFloat("Jake", "binaryIntensity", -0.5)

if glitcheffctforJake == 1 then
setShaderFloat("Jake", "negativity", 2)
elseif glitcheffctforJake == 2 then
setShaderFloat("Jake", "negativity", -10)
end
runTimer('removeshaderJake', 0.1)
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
glitcheffct = getRandomInt(1,3)
if noteType == 'Glitch Notebf' and glitchn then
initLuaShader("negative")
setSpriteShader("bf", "negative")
setShaderFloat("bf", "binaryIntensity", -0.5)

if glitcheffct == 1 then
setShaderFloat("bf", "negativity", 2)
elseif glitcheffct == 2 then
setShaderFloat("bf", "negativity", -10)
end
runTimer('removeshader', 0.1)
end
end

glitchn = true

function onTimerCompleted(tag)
if tag == 'removeshader' then
setShaderFloat("dad", "binaryIntensity", 100)
setShaderFloat("dad", "negativity", 0)
setShaderFloat("bf", "binaryIntensity", 100)
setShaderFloat("bf", "negativity", 0)
end

if tag == 'removeshaderJake' then
setShaderFloat("Jake", "binaryIntensity", 100)
setShaderFloat("Jake", "negativity", 0)
end
end

function onUpdate()
if glitchactive <= 5 then
setShaderFloat("dad", "iTime", os.clock())
setShaderFloat("bf", "iTime", os.clock())
setShaderFloat("Jake", "iTime", os.clock())
end
end