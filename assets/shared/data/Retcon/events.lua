function onSongStart()
doTweenAlpha("blackA","black", 0, 20, true);
doTweenY('Move1BY', 'Move1B', 0, 5, 'sineInOut');
doTweenY('Move2BY', 'Move2B', 620, 5, 'sineInOut');
doTweenZoom('cam7Z','camGame', 0.7, 20,'linear')
setProperty('defaultCamZoom',0.7)
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'inicio' then
doTweenY('Move1BY', 'Move1B', -110, 0.6, 'sineInOut');
doTweenY('Move2BY', 'Move2B', 720, 0.6, 'sineInOut');
end

if value1 == 'white' then
cameraFlash('camGame', 'FFFFFF', 1);
end

if value1 == 'darwin' then
doTweenAlpha("blackAC","blackA", 1, 0.8, true);
doTweenZoom('cam7Z','camGame', 1, 0.7,'linear')
setProperty('defaultCamZoom',1)
end

if value1 == 'darwin2' then
cameraFlash('camGame', 'FFFFFF', 1);
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
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("huds","camHUD", 1, 0.01, true);
doTweenZoom('cam7Z','camGame', 0.7, 0.5,'linear')
setProperty('defaultCamZoom',0.7)
end

if value1 == 'black1' then
doTweenAlpha("VerdeC","Verde", 0, 0.1, true);
cameraFlash('camGame', 'FFFFFF', 1);
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

function onBeatHit()
if curBeat == 64 then
doTweenColor('dadColorTween1', 'dad', 'C0C0C0', 0.1, 'cubeIn')
end
end