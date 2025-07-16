zozo2 = true
zozo = true
glitch=true
function onCreatePost()
normalY = getProperty('iconP1.y')
normalY2 = getProperty('iconP2.y') + 5

doTweenY('icondown2', 'iconP2', normalY2, 0.15, 'linear')
initLuaShader("Glitchyb")
setSpriteShader("iconP2", "Glitchyb")
--setProperty('iconP2.useFramePixels', true)

end

function onUpdate()
setShaderFloat("iconP2", "iTime", os.clock())

if getProperty('health') < 1.63 then

if glitch then
setShaderFloat("iconP2", "AMT", 0.1)
setShaderFloat("iconP2", "SPEED", 0.1)

elseif glitch then

end

elseif getProperty('health') >= 1.63 then

if glitch then
setShaderFloat("iconP2", "AMT", 0.3)
setShaderFloat("iconP2", "SPEED", 0.3)

elseif glitch then

end
end

end


function onUpdateFixedPost(elapsed)
if getProperty('health') >= 1.63 and zozo2 == true then
zozo2 = false
doTweenY('iconup2', 'iconP2', normalY2 - 10, 0.15, 'linear')


elseif getProperty('health') < 1.63 and zozo2 == false then
zozo2 = true
doTweenY('iconnor2', 'iconP2', normalY2, 0.15, 'linear')

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

elseif t == 'icondown2' and zozo2 == false then

doTweenY('iconup2', 'iconP2', normalY2 - 10, 0.15, 'linear')
end

if t == 'iconup' then
doTweenY('icondown', 'iconP1', normalY, 0.15, 'linear')

elseif t == 'icondown' and zozo == false then

doTweenY('iconup', 'iconP1', normalY - 10, 0.15, 'linear')
end
end