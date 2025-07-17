local followchars = true;
local focus=false

function onCreate()
addCharacterToList('pibby_angy', 'gf');
end

function onCreatePost()
makeLuaText('lyr', ' ', 0,170,470)
setTextSize('lyr', 60)
doTweenColor('lyrZ', 'lyr', '778899', 0.01, 'linear')
setObjectCamera('lyr', 'other')
setTextFont('lyr', 'Finn.ttf')
addLuaText('lyr', true)
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'intro' then
setProperty('defaultCamZoom',0.90)
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('fadeInn', 'camHUD', 1, 0.1, 'linear')
doTweenY('Move1BY', 'Move1B', -110, 0.001, 'sineInOut');
doTweenY('Move2BY', 'Move2B', 720, 0.001, 'sineInOut');
doTweenY('Move1Y', 'Move1', -110, 0.6, 'sineInOut');
doTweenY('Move2Y', 'Move2', 720, 0.6, 'sineInOut');
introfocada=false
end

if value1 == 'pibby' then
triggerEvent('Change Character', 'gf', 'pibby_angy')
triggerEvent('Ansfoxy', 'comeon', '')
triggerEvent('Play Animation', 'cmon', 'gf')
--focus=true
runTimer('pibby',2);
end

if value1 == 'white' then
cameraFlash('camGame', 'FFFFFF', 1);
end

if value1 == 'white2' then
doTweenAlpha("blackA","black", 0, 0.001, true);
cameraFlash('camGame', 'FFFFFF', 1);
end

if value1 == 'blacker' then
doTweenAlpha("blackA","black", 1, 0.001, true);
end

if value1 == 'blacker2' then
doTweenAlpha("black","black", 0, 6, true);
doTweenAlpha("BFA","boyfriend", 0.5, 0.0001, true);
doTweenAlpha("DADA","dad", 0.5, 0.0001, true);
end

if value1 == 'finaph' then
doTweenAlpha("DADC","dad", 1, 0.0001, true);
end

if value1 == 'bfaph' then
doTweenAlpha("BFA","boyfriend", 1, 0.5, true);
end

if value1 == 'prefight' then
prefight=true
end

if value1 == 'black1' then
prefight=false
cam=false
focada=true
NoRating=true
doTweenY('Move1Y', 'Move1', 0, 0.8, 'sineInOut');
doTweenY('Move2Y', 'Move2', 620, 0.8, 'sineInOut');
cameraFlash('camGame', 'FFFFFF', 1);
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("GFA","gf", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true);
focado=true
nonotas=true
end

if value1 == 'BFnormal' then
doTweenAlpha("BFA","boyfriend", 1, 0.0001, true);
end

if value1 == 'black2' then
NoRating=false
focado=false
nonotas=false
focada=false
prefight=true
cameraFlash('camGame', 'FFFFFF', 1);
setProperty('BG3.visible', true)
setProperty('BG2.visible', true)
setProperty('BG1.visible', true)
setProperty('BG0.visible', true)
doTweenAlpha("GFB","gf", 1, 0.0001, true);
doTweenAlpha("JakeB","Jake", 1, 0.0001, true);
setProperty('defaultCamZoom',0.85)
--note
setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4)
end

if value1 == 'comeon' then
setTextString('lyr', 'COME ON')
setProperty('lyr.x', 480)
setProperty('lyr.y', 550)
end

if value1 == 'wah' then
setTextString('lyr', 'WAAAAAAAAAAAH!')
setProperty('lyr.x', 300)
setProperty('lyr.y', 550)
end

if value1 == 'notext' then
setTextString('lyr', ' ')
setProperty('lyr.x', 300)
setProperty('lyr.y', 550)
end

if value1 == 'black3' then
triggerEvent('Change Character', 'gf', 'pibby')
cam=false
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("blackA","black", 0, 0.001, true);
setProperty('gf.colorTransform.greenOffset', 255)
setProperty('gf.colorTransform.redOffset', 255)
setProperty('gf.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
setProperty('BG3.visible', false)
setProperty('BG2.visible', false)
setProperty('BG1.visible', false)
setProperty('BG0.visible', false)
doTweenAlpha("FinnA","dad", 0, 0.0001, true);
doTweenAlpha("JakeA","Jake", 0, 0.0001, true);
end

if value1 == 'black4' then
cameraFlash('camHUD', 'FFFFFF', 1);
setProperty('camGame.visible', false)
end

end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='pibby' then
focus=false
cam=true
prefight=false
end
if tag=='focan' then
foca2=false
end
end

function onUpdate(elapsed)
if NoRating then
setProperty('showRating', false)
setProperty('showComboNum', false)
else
setProperty('showRating', true)
setProperty('showComboNum', true)
end

if nonotas then
setPropertyFromGroup('opponentStrums', 0, 'x', 100000)
setPropertyFromGroup('opponentStrums', 1, 'x', 100000)
setPropertyFromGroup('opponentStrums', 2, 'x', 100000)
setPropertyFromGroup('opponentStrums', 3, 'x', 100000)
setPropertyFromGroup('opponentStrums', 4, 'x', 100000)
end
if focus then
triggerEvent('Camera Follow Pos', 2200, 1200)
end 
if focado then
setProperty('defaultCamZoom',0.70)
end 
if introfocada then
triggerEvent('Camera Follow Pos', 1950, 1100)
setProperty('defaultCamZoom',0.80)
if foca2 then
doTweenZoom('camz','camGame', 0.80, 0.001,'linear')
end 
end
if focada then
triggerEvent('Camera Follow Pos', 1900, 1200)
setProperty('defaultCamZoom',0.60)
end 
if prefight then
triggerEvent('Camera Follow Pos', 1950, 1100)
end 

if followchars == true and cam then
if mustHitSection == false then
setProperty('defaultCamZoom',0.90)
else
setProperty('defaultCamZoom',1.1)
end
end
end

function onSongStart()
doTweenAlpha("blackA","black", 1, 0.001, true);
doTweenAlpha("black","black", 0, 6, true);
setProperty('defaultCamZoom',0.70)
doTweenAlpha('fadeInn', 'camHUD', 0, 0.5, 'linear')
doTweenY('Move1BY', 'Move1B', 0, 0.001, 'sineInOut');
doTweenY('Move2BY', 'Move2B', 620, 0.001, 'sineInOut');
introfocada=true
runTimer('focan',0.6)
foca2=true
cam=true
end

function onBeatHit() --zoons
if curBeat == 60 or curBeat == 612 then
cam=false
setProperty('defaultCamZoom',1.15)
doTweenZoom('camz1','camGame', 1.15, 0.001,'linear')
end
if curBeat == 61 or curBeat == 613 then
setProperty('defaultCamZoom',1.2)
doTweenZoom('camz2','camGame', 1.2, 0.001,'linear')
end
if curBeat == 62 or curBeat == 614 then
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz3','camGame', 1.3, 0.001,'linear')
end
if curBeat == 64 or curBeat == 140 or curBeat == 157 or curBeat == 272 or curBeat == 288 or curBeat == 334 or curBeat == 421 or curBeat == 501 or curBeat == 616 then
cam=true
end
if curBeat == 136 then
cam=false
setProperty('defaultCamZoom',1)
doTweenZoom('camz1','camGame', 1, 0.8,'linear')
end
if curBeat == 138 then
setProperty('defaultCamZoom',1.2)
doTweenZoom('camz2','camGame', 1.2, 0.8,'linear')
end
if curBeat == 139 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz3','camGame', 0.90, 0.5,'linear')
end
if curBeat == 152 then
cam=false
setProperty('defaultCamZoom',1.15)
doTweenZoom('camz1','camGame', 1.15, 0.8,'linear')
end
if curBeat == 154 then
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz2','camGame', 1.3, 0.8,'linear')
end
if curBeat == 156 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz3','camGame', 1.1, 0.5,'linear')
end
if curBeat == 260 then
cam=false
setProperty('defaultCamZoom',1)
doTweenZoom('camz1','camGame', 1, 0.2,'linear')
end
if curBeat == 264 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz2','camGame', 0.90, 0.2,'linear')
end
if curBeat == 268 then
setProperty('defaultCamZoom',1.2)
doTweenZoom('camz3','camGame', 1.2, 0.8,'linear')
end
if curBeat == 284 then
cam=false
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz1','camGame', 1.3, 0.8,'linear')
end
if curBeat == 318 then
cam=false
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz1','camGame', 1.3, 0.8,'linear')
end
if curBeat == 320 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz2','camGame', 0.90, 0.2,'linear')
end
if curBeat == 326 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz2','camGame', 1.1, 0.5,'linear')
end
if curBeat == 328 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz2','camGame', 0.90, 0.2,'linear')
end
if curBeat == 330 then
setProperty('defaultCamZoom',1)
doTweenZoom('camz2','camGame', 1, 0.5,'linear')
end
if curBeat == 332 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz2','camGame', 0.90, 0.8,'linear')
end
if curBeat == 414 then
cam=false
setProperty('defaultCamZoom',1.3)
doTweenZoom('camz1','camGame', 1.3, 0.5,'linear')
end
if curBeat == 420 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz1','camGame', 0.90, 0.0001,'linear')
end
if curBeat == 489 then
cam=false
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz1','camGame', 1.1, 0.5,'sineInOut')
end
if curBeat == 492 then
setProperty('defaultCamZoom',1)
doTweenZoom('camz1','camGame', 1, 0.5,'sineInOut')
end
if curBeat == 493 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz1','camGame', 1.1, 0.5,'sineInOut')
end
if curBeat == 496 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz1','camGame', 0.90, 1.5,'sineInOut')
end
if curBeat == 498 then
setProperty('defaultCamZoom',0.95)
doTweenZoom('camz1','camGame', 0.95, 0.5,'sineInOut')
end
if curBeat == 500 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camz1','camGame', 1.1, 0.2,'sineInOut')
end
if curBeat == 501 then
setProperty('defaultCamZoom',0.90)
doTweenZoom('camz1','camGame', 0.90, 0.5,'sineInOut')
end
if curBeat == 513 then
cam=false
setProperty('defaultCamZoom',0.75)
doTweenZoom('camz1','camGame', 0.75, 1,'sineInOut')
end
if curBeat == 516 then
setProperty('defaultCamZoom',0.85)
doTweenZoom('camz1','camGame', 0.85, 0.5,'sineInOut')
end
end