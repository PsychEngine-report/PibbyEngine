--scripts by NTH208
speedUpGlitch0 = false
speedUpGlitch1 = false
speedUpGlitch2 = false
speedUpGlitch3 = false
 function onUpdate()
if curStep >= 1934 then 
  initLuaShader("Glitchy")

  setSpriteShader('playerStrums.members[0]', 'Glitchy')
        setSpriteShader('playerStrums.members[1]', 'Glitchy')
        setSpriteShader('playerStrums.members[2]', 'Glitchy')
        setSpriteShader('playerStrums.members[3]', 'Glitchy')
    --    for i=0,3 do
  --      setProperty('opponentStrums.members['..i..'].useFramePixels', true)
  --      end
  
  for i=0,3 do
    setShaderFloat("playerStrums.members["..i.."]", "AMT", 0.2)
    end
     
        
        setShaderFloat("playerStrums.members[0]", "iTime", os.clock())
    setShaderFloat("playerStrums.members[1]", "iTime", os.clock())
    setShaderFloat("playerStrums.members[2]", "iTime", os.clock())
    setShaderFloat("playerStrums.members[3]", "iTime", os.clock())
    --Speed Glitch
    if speedUpGlitch0 then
    setShaderFloat("playerStrums.members[0]", "SPEED", 0.4)
    else
    setShaderFloat("playerStrums.members[0]", "SPEED", 0.1)
    end
    
    if speedUpGlitch1 then
    setShaderFloat("playerStrums.members[1]", "SPEED", 0.4)
    else
    setShaderFloat("playerStrums.members[1]", "SPEED", 0.1)
    end
    
    if speedUpGlitch2 then
    setShaderFloat("playerStrums.members[2]", "SPEED", 0.4)
    else
    setShaderFloat("playerStrums.members[2]", "SPEED", 0.1)
    end
    
    if speedUpGlitch3 then
    setShaderFloat("playerStrums.members[3]", "SPEED", 0.4)
    else
    setShaderFloat("playerStrums.members[3]", "SPEED", 0.1)
    end
    
end
end   