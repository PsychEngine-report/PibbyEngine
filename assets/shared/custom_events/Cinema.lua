function onEvent(name, value1, value2)
if name == 'Cinema' then
    
if value1 == 'cinema1' then
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
end

if value1 == 'cinema2' then
doTweenY('Move1Y', 'Move1', -110, 0.6, 'sineInOut');
doTweenY('Move2Y', 'Move2', 720, 0.6, 'sineInOut');
end

if value1 == 'cinema3' then
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end
    
    end
end