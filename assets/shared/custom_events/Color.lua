function onEvent(name, value1, value2)
if name == 'Color' then
    
if value1 == 'White' then
setProperty('dad.colorTransform.greenOffset', 225)
setProperty('dad.colorTransform.redOffset', 225)
setProperty('dad.colorTransform.blueOffset', 225)
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 225)
setProperty('boyfriend.colorTransform.redOffset', 225)
setProperty('boyfriend.colorTransform.blueOffset', 225)
end

if value1 == 'Black' then
setProperty('dad.colorTransform.greenOffset', -225)
setProperty('dad.colorTransform.redOffset', -225)
setProperty('dad.colorTransform.blueOffset', -225)
setProperty('gf.colorTransform.greenOffset', -255)
setProperty('gf.colorTransform.redOffset', -255)
setProperty('gf.colorTransform.blueOffset', -255)
setProperty('boyfriend.colorTransform.greenOffset', -225)
setProperty('boyfriend.colorTransform.redOffset', -225)
setProperty('boyfriend.colorTransform.blueOffset', -225)
end

if value1 == 'Norm' then
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0)
setProperty('gf.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
end
    
    end
end