local followchars = true;
local cam = true
local chennels=true
local canalZ=true
function onCreatePost()
setProperty('defaultCamZoom',1.1)
makeLuaText('lyr', ' ', 0,170,470)
setTextSize('lyr', 60)
doTweenColor('lyrZ', 'lyr', '00CCEE', 0.01, 'linear')
setObjectCamera('lyr', 'other')
setTextFont('lyr', 'Gumball.ttf')
addLuaText('lyr', true)

makeLuaText('Numbers', '', 400, 20, 50)
addLuaText('Numbers')
setTextSize('Numbers', 60)
setTextColor('Numbers','00ff00')
setObjectCamera('Numbers','camHUD')
setTextFont('Numbers', 'vcr.ttf')
end

function onUpdate(elapsed)
if focus then
triggerEvent('Camera Follow Pos', 925, 540)
end

if chanel == 0 then
setTextString('Numbers','AV')     
elseif chanel == 1  then
setTextString('Numbers','CH 06')     
if canalZ then         
setProperty('defaultCamZoom',0.8)
end
elseif chanel == 2 then
setTextString('Numbers','CH 02')
if canalZ then
setProperty('defaultCamZoom',1)
end
elseif chanel == 3 then
setTextString('Numbers','CH 03')    
if canalZ then     
setProperty('defaultCamZoom',0.8)
end
end

if followchars == true and cam then
if mustHitSection == false then
setProperty('defaultCamZoom',1.1)
else
setProperty('defaultCamZoom',0.90)
end
end
end

function onSongStart()
doTweenZoom('camz','camGame', 1.5, 0.0001,'linear')
doTweenZoom('camz2','camGame', 1, 10,'linear')
setProperty('defaultCamZoom',1)
doTweenAlpha("black2","black", 0, 5, 'linear');
runTimer('zoomz',10)
cam=false
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='zoomz' then
cam=true
end
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then
if value1 == 'cinema' then
cam=false
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
end

if value1 == 'cinema1' then
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
end

if value1 == 'cinema2' then
doTweenY('Move1Y', 'Move1', -110, 0.6, 'sineInOut');
doTweenY('Move2Y', 'Move2', 720, 0.6, 'sineInOut');
end

if value1 == 'white' then
cameraFlash('camGame', 'FFFFFF', 1);
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
doTweenAlpha("BG27A","BG27", 1, 0.1, true);
doTweenAlpha("BG28A","BG28", 0, 0.1, true);
doTweenAlpha("BG29A","BG29", 0, 0.1, true);
cam=false
focus=true
chanel = 1
doTweenZoom('camz1','camGame', 0.8, 0.0001,'sineInOut')
if chennels then
CanaisTV=true
cameraFlash('camGame', 'FFFFFF', 1);
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
doTweenAlpha("Pbby1A","Pibby1", 0, 0.1, true);
doTweenAlpha("Pbby2A","Pibby2", 0, 0.1, true);
doTweenAlpha("Pbby3A","Pibby3", 0, 0.1, true);
doTweenAlpha("Pbby4A","Pibby4", 0, 0.1, true);
doTweenAlpha("PennA","Penny", 0, 0.1, true);
doTweenY('DadY', 'dad', 420, 0.0001, true);
doTweenY('gfY', 'gf', 570, 0.0001, true);
doTweenAlpha("bfA","boyfriend", 0, 0.1, true);
end
end

if value1 == 'channel2' then
chennels=false
chanel = 2
doTweenZoom('camz1','camGame', 1, 0.0001,'sineInOut')
doTweenAlpha("BG27A","BG27", 0, 0.1, true);
doTweenAlpha("BG28A","BG28", 1, 0.1, true);
doTweenAlpha("BG27A","BG29", 0, 0.1, true);
end

if value1 == 'channel3' then
chanel = 3
doTweenZoom('camz1','camGame', 0.8, 0.0001,'sineInOut')
doTweenAlpha("BG29A","BG29", 1, 0.1, true);
doTweenAlpha("BG28A","BG28", 0, 0.1, true);
doTweenAlpha("BG27A","BG27", 0, 0.1, true);
end

if value1 == 'black1' then
cameraFlash('camGame', 'FFFFFF', 1);
setProperty('defaultCamZoom',1.1)
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
doTweenAlpha("Pbby1A","Pibby1", 0, 0.1, true);
doTweenAlpha("Pbby2A","Pibby2", 0, 0.1, true);
doTweenAlpha("Pbby3A","Pibby3", 0, 0.1, true);
doTweenAlpha("Pbby4A","Pibby4", 0, 0.1, true);
doTweenAlpha("PennA","Penny", 0, 0.1, true);
triggerEvent('Ansfoxy', 'cinema', '')
doTweenAlpha("black2A","black2", 1, 0.1, true);
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
end

if value1 == 'blackDrw' then
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
doTweenAlpha("Pbby1A","Pibby1", 0, 0.1, true);
doTweenAlpha("Pbby2A","Pibby2", 0, 0.1, true);
doTweenAlpha("Pbby3A","Pibby3", 0, 0.1, true);
doTweenAlpha("Pbby4A","Pibby4", 0, 0.1, true);
doTweenAlpha("PennA","Penny", 0, 0.1, true);
triggerEvent('Ansfoxy', 'cinema1', '')
doTweenAlpha("black2A","black2", 1, 0.1, true);
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('darwinC', 'gf', '000000', 0.01, 'linear')
doTweenAlpha("bfA","boyfriend", 0, 0.1, true);
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
end

if value1 == 'black2' then
cam=true
doTweenAlpha("black1","black", 5, 0.001, 'linear');
doTweenAlpha("black2","black", 0, 1, 'linear');
doTweenAlpha("BG0A","BG0", 1, 0.1, true);
doTweenAlpha("BG1A","BG1", 1, 0.1, true);
doTweenAlpha("BG2A","BG2", 1, 0.1, true);
doTweenAlpha("BG3A","BG3", 1, 0.1, true);
doTweenAlpha("BG4A","BG4", 1, 0.1, true);
doTweenAlpha("Pbby1A","Pibby1", 1, 0.1, true);
doTweenAlpha("Pbby2A","Pibby2", 1, 0.1, true);
doTweenAlpha("Pbby3A","Pibby3", 1, 0.1, true);
doTweenAlpha("Pbby4A","Pibby4", 1, 0.1, true);
doTweenAlpha("PennA","Penny", 1, 0.1, true);
triggerEvent('Ansfoxy', 'cinema2', '')
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenColor('bfC', 'boyfriend', 'FFFFFF', 0.01, 'linear')
doTweenColor('dadC', 'dad', 'FFFFFF', 0.01, 'linear')
end

if value1 == 'black3' then
doTweenAlpha("blackS2","blackH", 0, 0.001, 'linear');
triggerEvent('Ansfoxy', 'notxt', '')
cameraFlash('camGame', 'FFFFFF', 1);
setProperty('defaultCamZoom',1.1)
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
doTweenAlpha("Pbby1A","Pibby1", 0, 0.1, true);
doTweenAlpha("Pbby2A","Pibby2", 0, 0.1, true);
doTweenAlpha("Pbby3A","Pibby3", 0, 0.1, true);
doTweenAlpha("Pbby4A","Pibby4", 0, 0.1, true);
doTweenAlpha("PennA","Penny", 0, 0.1, true);
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
doTweenAlpha("Pbby1A","Pibby1", 1, 0.1, true);
doTweenAlpha("Pbby2A","Pibby2", 1, 0.1, true);
doTweenAlpha("Pbby3A","Pibby3", 1, 0.1, true);
doTweenAlpha("Pbby4A","Pibby4", 1, 0.1, true);
doTweenAlpha("PennA","Penny", 1, 0.1, true);
triggerEvent('Ansfoxy', 'cinema2', '')
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenColor('bfC', 'boyfriend', 'FFFFFF', 0.01, 'linear')
doTweenColor('gfC', 'gf', 'FFFFFF', 0.01, 'linear')
doTweenColor('dadC', 'dad', 'FFFFFF', 0.01, 'linear')
doTweenAlpha("bfA","boyfriend", 0.2, 0.1, true);
end

if value1 == 'Fockus' then
focus=false
cam=true
end

if value1 == 'void' then
chanel = 0
cameraFlash('camGame', 'FFFFFF', 1);
cam=true
focus=false
setProperty('defaultCamZoom',0.70)
doTweenAlpha("BG0A","BG0", 0, 0.1, true);
doTweenAlpha("BG1A","BG1", 0, 0.1, true);
doTweenAlpha("BG2A","BG2", 0, 0.1, true);
doTweenAlpha("BG3A","BG3", 0, 0.1, true);
doTweenAlpha("BG4A","BG4", 0, 0.1, true);
doTweenAlpha("Pbby1A","Pibby1", 0, 0.1, true);
doTweenAlpha("Pbby2A","Pibby2", 0, 0.1, true);
doTweenAlpha("Pbby3A","Pibby3", 0, 0.1, true);
doTweenAlpha("Pbby4A","Pibby4", 0, 0.1, true);
doTweenAlpha("PennA","Penny", 0, 0.1, true);
doTweenAlpha("BG27A","BG27", 0, 0.1, true);
doTweenAlpha("BG28A","BG28", 0, 0.1, true);
doTweenAlpha("BG29A","BG29", 0, 0.1, true);
doTweenX('DadX', 'dad', 500, 0.0001, true);
doTweenY('DadY', 'dad', 420, 0.0001, true);
doTweenY('gfY', 'gf', 500, 0.0001, true);
doTweenAlpha("bfA","boyfriend", 1, 0.1, true);
end
end
end

function onBeatHit()
if curBeat == 64 or curBeat == 125 or curBeat == 390 then
cam=true
end
if curBeat == 61 then
cam=false
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz1','camGame', 1.1, 1.5,'sineInOut')
end
if curBeat == 123 then
cam=false
setProperty('defaultCamZoom',1)
doTweenZoom('camz1','camGame', 1.05, 0.8,'sineInOut')
end
if curBeat == 124 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz1','camGame', 1.1, 1,'sineInOut')
end
if curBeat == 356 then
cam=false
setProperty('defaultCamZoom',1.5)
doTweenZoom('camz1','camGame', 1.5, 10,'sineInOut')
end
if curBeat == 669 then
cam=false
canalZ=false
setProperty('defaultCamZoom',1.2)
doTweenZoom('camz1','camGame', 1.2, 1,'sineInOut')
end
end