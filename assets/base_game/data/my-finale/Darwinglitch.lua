function onUpdate()
    if curStep == 0 then

    initLuaShader('Glitchy')
    setSpriteShader('void', 'Glitchy')
    setShaderFloat('void', 'AMT', 0.25)
    setShaderFloat('void', 'SPEED', 0.2)
    setSpriteShader('void1', 'Glitchy')
    setShaderFloat('void1', 'AMT', 0.25)
    setShaderFloat('void1', 'SPEED', 0.2)

    end

    if curStep >= 1920 then

    initLuaShader('Glitchy')
    setSpriteShader('void', 'Glitchy')
    setShaderFloat('void', 'AMT', 0.5)
    setShaderFloat('void', 'SPEED', 0.4)
    setSpriteShader('void1', 'Glitchy')
    setShaderFloat('void1', 'AMT', 0.5)
    setShaderFloat('void1', 'SPEED', 0.4)

    end

    setSpriteShader('dh', 'Glitchy')
    setShaderFloat('dh', 'AMT', 0.2)
    setShaderFloat('dh', 'SPEED', 0.1)
end