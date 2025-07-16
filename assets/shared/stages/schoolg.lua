function onCreate()

    makeLuaSprite('1', 'school/Ilustracion_sin_titulo-1', 0, 0)
    addLuaSprite('1')
    scaleObject('1', 3.0, 3.0)

    makeLuaSprite('2', 'school/Ilustracion_sin_titulo-2', -300, 0)
    addLuaSprite('2', true)
    scaleObject('2', 6.0, 6.0)
    setScrollFactor('2', 1.1, 1.1)

    makeLuaSprite('rscreen', 'school/rscreen', 0, 0)
    addLuaSprite('rscreen')
    scaleObject('rscreen', 2.8, 2.8)
    setObjectCamera('rscreen', 'other')

    makeLuaSprite('bscreen', 'school/bscreen', 0, 0)
    addLuaSprite('bscreen')
    scaleObject('bscreen', 2.8, 2.8)
    setObjectCamera('bscreen', 'other')

    --makeLuaSprite('light', 'school/gltch/light', -100, 0)
    --addLuaSprite('light', true)
    --scaleObject('light', 1, 1)

    makeLuaSprite('stitulo', 'school/gltch/188_sin_titulo11_20230523094718', -100, 0)
    addLuaSprite('stitulo', true)
    scaleObject('stitulo', 4, 4)
    setBlendMode('stitulo2', 'add')

    makeLuaSprite('stitulo2', 'school/gltch/188_sin_titulo11_20230523094718', -100, 0)
    addLuaSprite('stitulo2', true)
    scaleObject('stitulo2', 4, 4)
    setBlendMode('stitulo2', 'add')

   
----------------------------------------------------------------------------------------------
   
    --makeAnimatedLuaSprite('droplet', 'school/gltch/droplet', 900, 400)
    --addAnimationByPrefix('droplet', 'gooey', 'gooey', 20, true)
    --addLuaSprite('droplet')
    --scaleObject('droplet', 1.5, 1.5)

    --makeAnimatedLuaSprite('droplet2', 'school/gltch/droplet2', 800, 400)
    --addAnimationByPrefix('droplet2', 'gooey', 'gooey', 20, true)
    --addLuaSprite('droplet2')
    --scaleObject('droplet2', 1.5, 1.5)

    makeAnimatedLuaSprite('secondtopgoop', 'school/gltch/secondtopgoop', 1650, 25)----
    addAnimationByPrefix('secondtopgoop', 'gooey', 'gooey', 20, true)
    addLuaSprite('secondtopgoop', true)
    scaleObject('secondtopgoop', 1.5, 1.5)

    makeAnimatedLuaSprite('sinkgoop', 'school/gltch/sinkgoop', 750, 600)
    addAnimationByPrefix('sinkgoop', 'gooey', 'gooey', 20, true)
    addLuaSprite('sinkgoop')
    scaleObject('sinkgoop', 2, 2)

    makeAnimatedLuaSprite('topgoop', 'school/gltch/topgoop', -150, 50)----
    addAnimationByPrefix('topgoop', 'gooey', 'gooey', 20, true)
    addLuaSprite('topgoop', true)
    scaleObject('topgoop', 3.0, 3.0)

    makeAnimatedLuaSprite('pennygl', 'school/gltch/penny', 900, 250)
    addAnimationByPrefix('pennygl', 'idle', 'idle', 15, true)
    addLuaSprite('pennygl')
    scaleObject('pennygl', 2.5, 2.5)

----------------------------------------------------------------------------------------------
   
    
    makeAnimatedLuaSprite('carrie', 'school/carrie', 600, 300)
    scaleObject('carrie', 2.0, 2.0);
    addAnimationByPrefix('carrie', 'idle', 'idle', 27, true)
    addLuaSprite('carrie')
    setProperty('carrie.alpha', 0.85)

    makeAnimatedLuaSprite('alan', 'school/alan', 1300, 450)
    addAnimationByPrefix('alan', 'idle', 'idle', 16, false)
    scaleObject('alan', 1.0, 1.0)
    addLuaSprite('alan')

    makeAnimatedLuaSprite('penny', 'school/penny', 1200, 450)
    scaleObject('penny', 2.0, 2.0);
    addAnimationByPrefix('penny', 'idle', 'idle', 24, true)
    addLuaSprite('penny')

    makeAnimatedLuaSprite('tobias', 'school/fla tobias', 800, 525)
    scaleObject('tobias', 2.0, 2.0);
    addAnimationByPrefix('tobias', 'idle', 'idle', 24, true)
    addLuaSprite('tobias')

    makeAnimatedLuaSprite('masami', 'school/masami', 1800, 425)
    scaleObject('masami', 2.0, 2.0);
    addAnimationByPrefix('masami', 'idle', 'idle', 24, true)
    addLuaSprite('masami')

    makeAnimatedLuaSprite('bj', 'school/banana joe', 2100, 675)
    addAnimationByPrefix('bj', 'idle', 'idle', 25, false)
    addLuaSprite('bj', true)
    setScrollFactor('bj', 1.25, 1.25)
    scaleObject('bj', 3.6, 3.6)


    makeAnimatedLuaSprite('carrier', 'school/red/carrie', 600, 295)
    scaleObject('carrier', 4.0, 4.0)
    addAnimationByPrefix('carrier', 'idle', 'idle', 27, true)
    addLuaSprite('carrier')

    makeAnimatedLuaSprite('alanr', 'school/red/alan', 1315, 390)
    addAnimationByPrefix('alanr', 'idle', 'idle', 16, true)
    scaleObject('alanr', 2.0, 2.0)
    addLuaSprite('alanr')

    makeAnimatedLuaSprite('pennyr', 'school/red/penny', 1200, 450)
    scaleObject('pennyr', 4.0, 4.0)
    addAnimationByPrefix('pennyr', 'idle', 'idle', 24, true)
    addLuaSprite('pennyr')

    makeAnimatedLuaSprite('tobiasr', 'school/red/fla tobias', 795, 525)
    scaleObject('tobiasr', 4.0, 4.0)
    addAnimationByPrefix('tobiasr', 'idle', 'idle', 24, true)
    addLuaSprite('tobiasr')

    makeAnimatedLuaSprite('masamir', 'school/red/masami', 1790, 400)
    scaleObject('masamir', 4.0, 4.0)
    addAnimationByPrefix('masamir', 'idle', 'idle', 24, true)
    addLuaSprite('masamir')

    makeAnimatedLuaSprite('bjr', 'school/red/banana joe', 2100, 675)
    addAnimationByPrefix('bjr', 'idle', 'idle', 25, false)
    addLuaSprite('bjr', true)
    setScrollFactor('bjr', 1.25, 1.25)
    scaleObject('bjr', 3.6, 3.6)

doTweenAlpha('rscreenAlpha','rscreen',math.random(0, 0), 0.7,'cubeInOut')
doTweenAlpha('bscreenAlpha','rscreen',math.random(0, 0), 1.1,'cubeInOut')
doTweenAlpha('carrierAlpha','carrier',math.random(0, 0), 0.7,'cubeInOut')
doTweenAlpha('pennyrAlpha','pennyr',math.random(0, 0), 0.7,'cubeInOut')
doTweenAlpha('tobiasrAlpha','tobiasr',math.random(0, 0), 0.7,'cubeInOut')
doTweenAlpha('masamirAlpha','masamir',math.random(0, 0), 0.7,'cubeInOut')
doTweenAlpha('alanrAlpha','alanr',math.random(0, 0), 0.7,'cubeInOut')
doTweenAlpha('bjrAlpha','bjr',math.random(0, 0), 0.7,'cubeInOut')

end

function onTweenCompleted(tag)         

        if tag == 'rscreenAlpha' then
        doTweenAlpha('rscreenAlpha2','rscreen',1,0.7, 'cubeOut')
        end
        
        if tag == 'rscreenAlpha2' then
        doTweenAlpha('rscreenAlpha','rscreen',0.4,0.7,'cubeInOut')
        end

        if tag == 'bscreenAlpha' then
        doTweenAlpha('bscreenAlpha2','bscreen',1,1.1, 'cubeOut')
        end
        
        if tag == 'bscreenAlpha2' then
        doTweenAlpha('bscreenAlpha','bscreen',0.4,1.1,'cubeInOut')
        end

    if curStep < 928 then    

        if tag == 'carrierAlpha' then
        doTweenAlpha('carrierAlpha2','carrier',0.4,0.7, 'cubeOut')
        end
        
        if tag == 'carrierAlpha2' then
        doTweenAlpha('carrierAlpha','carrier',0,0.7,'cubeInOut')
        end

        if tag == 'pennyrAlpha' then
        doTweenAlpha('pennyrAlpha2','pennyr',0.4,0.7, 'cubeOut')
        end
        
        if tag == 'pennyrAlpha2' then
        doTweenAlpha('pennyrAlpha','pennyr',0,0.7,'cubeInOut')
        end

        if tag == 'tobiasrAlpha' then
        doTweenAlpha('tobiasrAlpha2','tobiasr',0.4,0.7, 'cubeOut')
        end
        
        if tag == 'tobiasrAlpha2' then
        doTweenAlpha('tobiasrAlpha','tobiasr',0,0.7,'cubeInOut')
        end

        if tag == 'masamirAlpha' then
        doTweenAlpha('masamirAlpha2','masamir',0.4,0.7, 'cubeOut')
        end
        
        if tag == 'masamirAlpha2' then
        doTweenAlpha('masamirAlpha','masamir',0,0.7,'cubeInOut')
        end

        if tag == 'alanrAlpha' then
        doTweenAlpha('alanrAlpha2','alanr',0.4,0.7, 'cubeOut')
        end
        
        if tag == 'alanrAlpha2' then
        doTweenAlpha('alanrAlpha','alanr',0,0.7,'cubeInOut')
        end

        if tag == 'bjrAlpha' then
        doTweenAlpha('bjrAlpha2','bjr',0.4,0.7, 'cubeOut')
        end
        
        if tag == 'bjrAlpha2' then
        doTweenAlpha('bjrAlpha','bjr',0,0.7,'cubeInOut')
        end
    end    

end

function onBeatHit()
    if curBeat %3 == 0 then
    objectPlayAnimation('bj', 'idle', true)
    objectPlayAnimation('bjr', 'idle', true)

    objectPlayAnimation('alan', 'idle', true)
    objectPlayAnimation('alanr', 'idle', true)
    end
end

function onUpdate()

 if curStep <= 0 then

    setProperty('stitulo.visible', false)
    setProperty('stitulo2.visible', false)

    setProperty('secondtopgoop.visible', false)
    setProperty('sinkgoop.visible', false)
    setProperty('topgoop.visible', false)
    setProperty('pennygl.visible', false)

    setProperty('carrier.visible', false)
    setProperty('pennyr.visible', false)
    setProperty('tobiasr.visible', false)
    setProperty('masamir.visible', false)
    setProperty('alanr.visible', false)
    setProperty('bjr.visible', false)

    setProperty('rscreen.visible', false)
    setProperty('bscreen.visible', false)

 end

 if curStep == 672 then

    setProperty('carrier.visible', true)
    setProperty('pennyr.visible', true)
    setProperty('tobiasr.visible', true)
    setProperty('masamir.visible', true)
    setProperty('alanr.visible', true)
    setProperty('bjr.visible', true)

 setProperty('rscreen.visible', true)

 end

 if curStep >= 928 then

    setProperty('carrie.visible', false)
    setProperty('penny.visible', false)
    setProperty('tobias.visible', false)
    setProperty('masami.visible', false)
    setProperty('alan.visible', false)
    setProperty('bj.visible', false)
    
    setProperty('carrier.alpha', 1)
    setProperty('pennyr.alpha', 1)
    setProperty('tobiasr.alpha', 1)
    setProperty('masamir.alpha', 1)
    setProperty('alanr.alpha', 1)
    setProperty('bjr.alpha', 1)
 end

 if curStep == 1056 then
    
    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0.2)
    setShaderFloat('dad', 'SPEED', 0.1)
 end

 if curStep == 1312 then

    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0)
    setShaderFloat('dad', 'SPEED', 0)

 end

 if curStep >= 1344 then
    setProperty('stitulo.visible', true)
   -- setProperty('stitulo2.visible', true)

    setProperty('secondtopgoop.visible', true)
    setProperty('sinkgoop.visible', true)
    setProperty('topgoop.visible', true)
    setProperty('pennygl.visible', true)
    
    setProperty('carrier.visible', false)
    setProperty('pennyr.visible', false)
    setProperty('tobiasr.visible', false)
    setProperty('masamir.visible', false)
    setProperty('alanr.visible', false)
    setProperty('bjr.visible', false)
    setProperty('rscreen.visible', false)
    setProperty('bscreen.visible', true)
 end

 if curStep >= 2129 then

   -- setProperty('stitulo2.visible', true)

    setProperty('secondtopgoop.visible', false)
    setProperty('sinkgoop.visible', false)
    setProperty('topgoop.visible', false)
    setProperty('pennygl.visible', false)
    
    setProperty('carrier.visible', true)
    setProperty('pennyr.visible', true)
    setProperty('tobiasr.visible', true)
    setProperty('masamir.visible', true)
    setProperty('alanr.visible', true)
    setProperty('bjr.visible', true)

    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0.4)
    setShaderFloat('dad', 'SPEED', 0.3)

    setSpriteShader('carrier', 'Glitchy')
    setShaderFloat('carrier', 'AMT', 0.3)
    setShaderFloat('carrier', 'SPEED', 0.2)

    setSpriteShader('pennyr', 'Glitchy')
    setShaderFloat('pennyr', 'AMT', 0.3)
    setShaderFloat('pennyr', 'SPEED', 0.1)

    setSpriteShader('tobiasr', 'Glitchy')
    setShaderFloat('tobiasr', 'AMT', 0.3)
    setShaderFloat('tobiasr', 'SPEED', 0.1)
 
    setSpriteShader('masamir', 'Glitchy')
    setShaderFloat('masamir', 'AMT', 0.3)
    setShaderFloat('masamir', 'SPEED', 0.1)

    setSpriteShader('alanr', 'Glitchy')
    setShaderFloat('alanr', 'AMT', 0.3)
    setShaderFloat('alanr', 'SPEED', 0.1)

    setSpriteShader('bjr', 'Glitchy')
    setShaderFloat('bjr', 'AMT', 0.3)
    setShaderFloat('bjr', 'SPEED', 0.1)

 end
end