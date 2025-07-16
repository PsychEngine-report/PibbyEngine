local glitcher=false
function onCreatePost()
initLuaShader("Glitchyb")
--Opponent team
--setSpriteShader("dad", "Glitchyb")
--setProperty('dad.useFramePixels', true)
end

function onUpdate()
if glitcher then
setSpriteShader("dad", "Glitchyb")
setProperty('dad.useFramePixels', true)
setShaderFloat("dad", "AMT", 0.25)
setShaderFloat("dad", "SPEED", 0.2)
end
setShaderFloat("dad", "iTime", os.clock())
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'finnbug' then
glitcher=true
end
if value1 == 'finnbug2' then
glitcher=false
setShaderFloat("dad", "AMT", 0)
setShaderFloat("dad", "SPEED", 0)
end
end
end