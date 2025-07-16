zozo2 = true
zozo = true
glitch=true
function onCreatePost()
normalY = getProperty('iconP1.y')
normalY2 = getProperty('iconP2.y') + 5
normalY3 = getProperty('OPP2.y') + 5
normalY4 = getProperty('OPPO2.y') + 5

initLuaShader("Glitchyb")
setSpriteShader("iconP1", "Glitchyb")
setSpriteShader("iconP2", "Glitchyb")
setSpriteShader("OPPO2", "Glitchyb")
setSpriteShader("OPP2", "Glitchyb")
end

function onUpdate()
setShaderFloat("iconP1", "iTime", os.clock())
setShaderFloat("iconP2", "iTime", os.clock())
setShaderFloat("OPPO2", "iTime", os.clock())
setShaderFloat("OPP2", "iTime", os.clock())

if getProperty('health') >= 1.63 then
setShaderFloat("iconP2", "AMT", 0.3)
setShaderFloat("iconP2", "SPEED", 0.35)
setShaderFloat("OPP2", "AMT", 0.3)
setShaderFloat("OPP2", "SPEED", 0.3)
else
setShaderFloat("iconP2", "AMT", 0.1)
setShaderFloat("iconP2", "SPEED", 0.1)
setShaderFloat("OPPO2", "AMT", 0.1)
setShaderFloat("OPPO2", "SPEED", 0.1)
end

if getProperty('health') >= 0.4 then
setShaderFloat("iconP1", "AMT", 0)
setShaderFloat("iconP1", "SPEED", 0)
else
setShaderFloat("iconP1", "AMT", 0.3)
setShaderFloat("iconP1", "SPEED", 0.3)
end
end


function onUpdateFixedPost(elapsed)
if getProperty('health') >= 1.63 and zozo2 == true then
zozo2 = false
doTweenY('iconup2', 'iconP2', normalY2 - 10, 0.15, 'linear')
doTweenY('iconu', 'OPP2', normalY3 - 10, 0.15, 'linear')
doTweenY('iconu2', 'OPPO2', normalY4 - 10, 0.15, 'linear')
elseif getProperty('health') < 1.63 and zozo2 == false then
zozo2 = true
doTweenY('iconnor2', 'iconP2', normalY2, 0.15, 'linear')
doTweenY('icono', 'OPP2', normalY3, 0.15, 'linear')
doTweenY('icono2', 'OPPO2', normalY4, 0.15, 'linear')
end

if getProperty('health') <= 0.4 and zozo == true then
zozo = false
doTweenY('iconup', 'iconP1', normalY - 10, 0.15, 'linear')
elseif getProperty('health') > 0.4 and zozo == false then
zozo = true
doTweenY('iconnor', 'iconP1', normalY, 0.15, 'linear')
end

end


function onTweenCompleted(t)
if t == 'iconup2' then
doTweenY('icondown2', 'iconP2', normalY2, 0.15, 'linear')
doTweenY('Iconjake', 'OPP2', normalY3, 0.15, 'linear')
doTweenY('Iconjake2', 'OPPO2', normalY4, 0.15, 'linear')
elseif t == 'icondown2' and zozo2 == false then
doTweenY('iconup2', 'iconP2', normalY2 - 10, 0.15, 'linear')
doTweenY('iconjaker', 'OPP2', normalY3 - 10, 0.15, 'linear')
doTweenY('iconjaker2', 'OPPO2', normalY4 - 10, 0.15, 'linear')
end

if t == 'iconup' then
doTweenY('icondown', 'iconP1', normalY, 0.15, 'linear')
elseif t == 'icondown' and zozo == false then
doTweenY('iconup', 'iconP1', normalY - 10, 0.15, 'linear')
end
end