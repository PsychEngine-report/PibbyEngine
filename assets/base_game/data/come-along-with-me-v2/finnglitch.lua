function onCreate()
    makeLuaSprite('flash', '', 0, 0);
    makeGraphic('flash',1280,720,'000000');
    addLuaSprite('flash', true);
    setLuaSpriteScrollFactor('flash',0,0)
    setProperty('flash.scale.x',2)
    setProperty('flash.scale.y',2)

end

function onUpdate()
   if curStep >= 9 then 
    doTweenAlpha('flash','flash',0,5,'linear')
   end

   if curStep >= 266 then
    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0.25)
    setShaderFloat('dad', 'SPEED', 0.2)
   end

   if curStep >= 490 then 
    doTweenAlpha('flash','flash',1,0.3,'linear')
   end

   if curStep >= 522 then
    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0)
    setShaderFloat('dad', 'SPEED', 0)
    doTweenAlpha('flash','flash',0,0.2,'linear')
   end

   if curStep >= 1162 then
    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0.25)
    setShaderFloat('dad', 'SPEED', 0.2)
   end

   if curStep >= 1420 then
    initLuaShader('Glitchy')
    setSpriteShader('dad', 'Glitchy')
    setShaderFloat('dad', 'AMT', 0)
    setShaderFloat('dad', 'SPEED', 0)
    doTweenAlpha('flash','flash',1,0.001,'linear') 
   end

   if curStep >= 1423 then
   doTweenAlpha('flash','flash',0,0.3,'linear')
    end
end