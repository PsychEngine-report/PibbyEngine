local followchars = true;
local cam = true
local z = false
local chennels=true
function onCreatePost()
setProperty('defaultCamZoom',1.1)
makeLuaText('lyr', ' ', 0,170,470)
setTextSize('lyr', 60)
doTweenColor('lyrZ', 'lyr', '00CCEE', 0.01, 'linear')
setObjectCamera('lyr', 'other')
setTextFont('lyr', 'Gumball.ttf')
addLuaText('lyr', true)
end

function onUpdate(elapsed)
if followchars == true then
if mustHitSection == false then
if z then
setProperty('defaultCamZoom',1.1)
end
if focus then
triggerEvent('Camera Follow Pos', 500, 540)
end
else
if z then
setProperty('defaultCamZoom',0.90)
end
if focus then
triggerEvent('Camera Follow Pos', 1200, 540)
end
end
end
end

function onSongStart()
doTweenZoom('camz','camGame', 0.90, 10,'linear')
setProperty('defaultCamZoom',0.90)
doTweenAlpha("black2","black", 0, 5, 'linear');
runTimer('zoomz',10)
z=false
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='zoomz' then
z=true
end
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'cinema' then
z=false
doTweenX('cX', 'c.scale', 1, 1, 'linear')
doTweenY('cY', 'c.scale', 1, 1, 'linear')
doTweenZoom('camz','camGame', 1.5, 3,'linear')
end

if value1 == 'cinema1' then
doTweenX('cX', 'c.scale', 1, 1, 'linear')
doTweenY('cY', 'c.scale', 1, 1, 'linear')
end

if value1 == 'cinema2' then
doTweenX('cX', 'c.scale', 2, 1, 'linear')
doTweenY('cY', 'c.scale', 2, 1, 'linear')
end

if value1 == 'white' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'blacker' then
doTweenAlpha("black1","black", 5, 0.001, 'linear');
doTweenAlpha("black2","black", 0, 2, 'linear');
end

if value1 == 'blackS' then
doTweenAlpha("blackS1","blackH", 1, 0.001, 'linear');
end

if value1 == 'darwinTxt' then
setTextString('lyr', 'DARWIN?')
setProperty('lyr.x', 530)
setProperty('lyr.y', 550)
end

if value1 == 'notxt' then
setTextString('lyr', ' ')
setProperty('lyr.x', 530)
setProperty('lyr.y', 550)
end

if value1 == 'gumballtxt' then
setTextString('lyr', 'THE DARKNESS...')
setProperty('lyr.x', 430)
setProperty('lyr.y', 550)
end

if value1 == 'gumballtxt2' then
setTextString('lyr', "IT'S CALLING ME...")
setProperty('lyr.x', 430)
setProperty('lyr.y', 550)
end

if value1 == 'channel1' then
setProperty('defaultCamZoom',1.2)
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("BG27A","BG27", 1, 0.1, true);
doTweenAlpha("BG29A","BG29", 0, 0.1, true);
z=false
focus=true

if chennels then
runTimer('BG301',0.1);
doTweenAlpha("BG30A","BG30", 1, 0.1, true);
triggerEvent('Ansfoxy', 'cinema2', '')
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenColor('bfC', 'boyfriend', 'FFFFFF', 0.01, 'linear')
doTweenColor('darwinC', 'gf', 'FFFFFF', 0.01, 'linear')
doTweenColor('gumballC', 'dad', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
doTweenY('DadY', 'dad', 420, 0.0001, true);
doTweenY('gfY', 'gf', 620, 0.0001, true);
doTweenAlpha("bfA","boyfriend", 0, 0.1, true);
end
end

if value1 == 'channel2' then
chennels=false
doTweenAlpha("BG28A","BG28", 1, 0.1, true);
doTweenAlpha("BG27A","BG27", 0, 0.1, true);
end

if value1 == 'channel3' then
doTweenAlpha("BG29A","BG29", 1, 0.1, true);
doTweenAlpha("BG28A","BG28", 0, 0.1, true);
end

if value1 == 'black1' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',1.1)
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
triggerEvent('Ansfoxy', 'cinema', '')
doTweenAlpha("black2A","black2", 1, 0.1, true);
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
end

if value1 == 'blackDrw' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
triggerEvent('Ansfoxy', 'cinema1', '')
doTweenAlpha("black2A","black2", 1, 0.1, true);
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('darwinC', 'gf', '000000', 0.01, 'linear')
doTweenAlpha("bfA","boyfriend", 0, 0.1, true);
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
end

if value1 == 'black2' then
z=true
doTweenAlpha("black1","black", 5, 0.001, 'linear');
doTweenAlpha("black2","black", 0, 1, 'linear');
doTweenAlpha("BG0A","BG0", 1, 0.1, true);
doTweenAlpha("BG1A","BG1", 1, 0.1, true);
doTweenAlpha("BG2A","BG2", 1, 0.1, true);
doTweenAlpha("BG3A","BG3", 1, 0.1, true);
doTweenAlpha("BG4A","BG4", 1, 0.1, true);
triggerEvent('Ansfoxy', 'cinema2', '')
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenColor('bfC', 'boyfriend', 'FFFFFF', 0.01, 'linear')
doTweenColor('dadC', 'dad', 'FFFFFF', 0.01, 'linear')
end

if value1 == 'black3' then
doTweenAlpha("blackS2","blackH", 0, 0.001, 'linear');
triggerEvent('Ansfoxy', 'notxt', '')
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',1.1)
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
triggerEvent('Ansfoxy', 'cinema1', '')
doTweenAlpha("black2A","black2", 1, 0.1, true);
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('gfC', 'gf', '000000', 0.01, 'linear')
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
setProperty('gf.visible', true)
doTweenAlpha("bfA","boyfriend", 0.2, 0.1, true);
end

if value1 == 'black4' then
doTweenAlpha("black1","black", 5, 0.001, 'linear');
doTweenAlpha("black2","black", 0, 1, 'linear');
doTweenAlpha("BG0A","BG0", 1, 0.1, true);
doTweenAlpha("BG1A","BG1", 1, 0.1, true);
doTweenAlpha("BG2A","BG2", 1, 0.1, true);
doTweenAlpha("BG3A","BG3", 1, 0.1, true);
doTweenAlpha("BG4A","BG4", 1, 0.1, true);
triggerEvent('Ansfoxy', 'cinema2', '')
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenColor('bfC', 'boyfriend', 'FFFFFF', 0.01, 'linear')
doTweenColor('gfC', 'gf', 'FFFFFF', 0.01, 'linear')
doTweenColor('dadC', 'dad', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("bfA","boyfriend", 0.2, 0.1, true);
end

if value1 == 'void' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
z=false
focus=false
setProperty('defaultCamZoom',0.70)
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
doTweenAlpha("BG27A","BG27", 0, 0.1, true);
doTweenAlpha("BG28A","BG28", 0, 0.1, true);
doTweenAlpha("BG29A","BG29", 0, 0.1, true);
doTweenX('DadX', 'dad', 500, 0.0001, true);
doTweenY('DadY', 'dad', 420, 0.0001, true);
doTweenY('gfY', 'gf', 550, 0.0001, true);
doTweenAlpha("bfA","boyfriend", 1, 0.1, true);
end
end
end