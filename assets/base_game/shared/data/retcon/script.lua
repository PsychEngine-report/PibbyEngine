function onSongStart()
doTweenAlpha("blackA","black", 0, 20, true);
doTweenX('cX', 'c.scale', 1, 5, 'linear')
doTweenY('cY', 'c.scale', 1, 5, 'linear')
doTweenZoom('cam7Z','camGame', 0.7, 20,'linear')
setProperty('defaultCamZoom',0.7)
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'inicio' then
doTweenX('cX', 'c.scale', 2, 1, 'linear')
doTweenY('cY', 'c.scale', 2, 1, 'linear')
end

if value1 == 'white' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'darwin' then
doTweenAlpha("blackAC","blackA", 1, 0.8, true);
doTweenZoom('cam7Z','camGame', 1, 0.7,'linear')
setProperty('defaultCamZoom',1)
end

if value1 == 'darwin2' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("blackAC","blackA", 0, 0.0001, true);
doTweenZoom('cam7Z','camGame', 0.7, 0.5,'linear')
setProperty('defaultCamZoom',0.7)
end

if value1 == 'gumball' then
doTweenZoom('cam7Z','camGame', 0.9, 0.5,'linear')
setProperty('defaultCamZoom',0.9)
end

if value1 == 'glitch1' then
doTweenZoom('cam7Z','camGame', 1, 0.001,'linear')
setProperty('defaultCamZoom',1)
doTweenAlpha("huds","camHUD", 0, 0.01, true);
end

if value1 == 'gumball2' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("huds","camHUD", 1, 0.01, true);
doTweenZoom('cam7Z','camGame', 0.7, 0.5,'linear')
setProperty('defaultCamZoom',0.7)
end

if value1 == 'black1' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('BG0.visible', false)
setProperty('BG1.visible', false)
setProperty('BG2.visible', false)
setProperty('BG3.visible', false)
setProperty('BG4.visible', false)
setProperty('BG5.visible', false)
setProperty('BG6.visible', false)
doTweenAlpha("black2A","black2", 1, 0.1, true);
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('gfC', 'gf', '000000', 0.01, 'linear')
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
end
end
end
