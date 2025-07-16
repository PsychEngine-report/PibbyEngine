
function onCreatePost()
initLuaShader("Glitchy")
--Opponent team
setSpriteShader("iconP2", "Glitchy")
setProperty('iconP2.useFramePixels', true)
--Bf team
setSpriteShader("iconP1", "Glitchy")
setProperty('iconP1.useFramePixels', false)
setSpriteShader("icon-loss", "Glitchy")
setProperty('icon-loss.useFramePixels', false)
end

function onUpdate()
setShaderFloat("iconP2", "iTime", os.clock())
setShaderFloat("iconP1", "iTime", os.clock())

if getProperty('health') >= 1.6 then
setShaderFloat("iconP2", "AMT", 0.25)
setShaderFloat("iconP2", "SPEED", 0.2)
elseif getProperty('health') < 1.6 then
setShaderFloat("iconP2", "AMT", 0.1)
setShaderFloat("iconP2", "SPEED", 0.1)
end


if getProperty('health') <= 0.4 then
setShaderFloat("iconP1", "AMT", 0.2)
setShaderFloat("iconP1", "SPEED", 0.15)
elseif getProperty('health') > 0.4 then
setShaderFloat("iconP1", "AMT", 0.0)
setShaderFloat("iconP1", "SPEED", 0.1)
end
end

function opponentNoteHit()
if getProperty('health') > 0.2 then
setProperty('health',getProperty('health')- 0.02)
end
end
