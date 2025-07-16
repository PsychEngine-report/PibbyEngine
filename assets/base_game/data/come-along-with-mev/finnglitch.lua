function onCreate()
    makeLuaSprite('flash', '', 0, 0);
    makeGraphic('flash',1280,720,'000000');
    addLuaSprite('flash', true);
    setLuaSpriteScrollFactor('flash',0,0)
    setProperty('flash.scale.x',2)
    setProperty('flash.scale.y',2)

end

function onUpdate()
   if curStep >= 4 then 
    doTweenAlpha('flash','flash',0.95,10,'linear')
   end

   if curStep >= 128 then 
    doTweenAlpha('flash','flash',1,1,'linear')
   end


   if curStep >= 256 then 
    doTweenAlpha('flash','flash',0,2,'linear')
   end

   if curStep >= 640 then
    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0.25)
    setShaderFloat('dad', 'SPEED', 0.2)
   end

   if curStep >= 864 then 
    doTweenAlpha('flash','flash',1,1,'linear')
   end

    if curStep >= 896 then
    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0)
    setShaderFloat('dad', 'SPEED', 0)
    doTweenAlpha('flash','flash',0,0.2,'linear')
   end

end