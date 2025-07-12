local nonotes=false
function onUpdate(elapsed)
if nonotes then
for i = 0,3 do
		setPropertyFromGroup('playerStrums',i,'x',-1000)
	end
end
end

function onSongStart()
runTimer('stoneflot',0.1)
doTweenAlpha("blackA","black", 0, 20, true);
doTweenX('cX', 'c.scale', 1, 5, 'linear')
doTweenY('cY', 'c.scale', 1, 5, 'linear')
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='flot1' then
doTweenY('BG7Y', 'BG7', 450, 4, true);
doTweenY('BG15Y', 'BG15', 150, 4, true);
runTimer('flot2',4)
end
if tag=='flot2' then
doTweenY('BG7Y2', 'BG7', 350, 4, true);
doTweenY('BG15Y', 'BG15', 50, 4, true);
runTimer('flot1',4)
end

if tag=='stone1' then
doTweenX('BG22X', 'BG22', 3300, 2, true);
runTimer('stone2',2)
end

if tag=='stone2' then
setProperty('BG22.x', -1300)
runTimer('stone3',2)
end

if tag=='stone3' then
doTweenX('BG22X', 'BG22', 3300, 1.5, true);
runTimer('stone4',2)
end

if tag=='stone4' then
setProperty('BG22.x', -1300)
runTimer('stone1',2)
end

if tag=='house1' then
doTweenX('BG12X', 'BG12', 1500, 2, true);
runTimer('house2',2)
end
if tag=='house2' then
setProperty('BG12.x', -1500)
runTimer('house1',2)
end

if tag=='stoneflot' then
doTweenAngle('stone1','BG5',-360,30,'sineInOut')
runTimer('stoneflot2',30)
end

if tag=='stoneflot2' then
doTweenAngle('stone2','BG5',360,30,'sineInOut')
runTimer('stoneflot',30)
end
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then

if value1 == 'zoom1' then
setProperty('defaultCamZoom',0.9)
end

if value1 == 'zoom2' then
setProperty('defaultCamZoom',0.7)
end

if value1 == 'zoom3' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',0.7)
end

if value1 == 'zoom4' then
doTweenZoom('cam8Z','camGame', 0.8, 0.001,'linear')
setProperty('defaultCamZoom',0.8)
end

if value1 == 'zoom5' then
doTweenZoom('cam7Z','camGame', 0.7, 0.01,'linear')
setProperty('defaultCamZoom',0.7)
end

if value1 == 'tempZ' then
doTweenZoom('cam9Z','camGame', 0.9, 1.3,'linear')
end

if value1 == 'cinema1' then
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
end

if value1 == 'cinema2' then
doTweenX('cX', 'c.scale', 1.5, 1, 'linear')
doTweenY('cY', 'c.scale', 1.5, 1, 'linear')
end

if value1 == 'cut' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
startVideo('forgottenscene')
setProperty('inCutscene', false)
end

if value1 == 'void2' then
doTweenX('cX', 'c.scale', 1, 0.2, 'linear')
doTweenY('cY', 'c.scale', 1, 0.2, 'linear')
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("BG23N","BG23", 1000, 0.1, true);
setProperty('BG0.visible', false)
setProperty('BG1.visible', false)
setProperty('BG2.visible', false)
setProperty('BG3.visible', false)
setProperty('BG4.visible', false)
setProperty('BG5.visible', false)
setProperty('BG6.visible', false)
setProperty('BG7.visible', false)
setProperty('BG8.visible', false)
setProperty('BG9.visible', true)
setProperty('BG10.visible', true)
setProperty('BG12.visible', true)
setProperty('BG13.visible', true)
setProperty('BG14.visible', true)
setProperty('BG15.visible', true)
setProperty('BG16.visible', true)
setProperty('BG17.visible', true)
setProperty('BG18.visible', true)
setProperty('BG19.visible', true)
setProperty('BG20.visible', true)
setProperty('BG21.visible', true)
setProperty('BG22.visible', true)
runTimer('house1',0.1)
runTimer('stone1',0.1)
end

if value1 == 'voidZ' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',0.8)
doTweenX('cX', 'c.scale', 1, 0.5, 'linear')
doTweenY('cY', 'c.scale', 1, 0.5, 'linear')
end

if value1 == 'voidZ2' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',0.9)
doTweenX('cX', 'c.scale', 2, 0.5, 'linear')
doTweenY('cY', 'c.scale', 2, 0.5, 'linear')
end

if value1 == 'void3' then
triggerEvent('Ansfoxy', 'gliched', '')
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',0.7)
end

if value1 == 'void4' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('defaultCamZoom',0.8)
end

if value1 == 'void5' then
setProperty('defaultCamZoom',0.9)
end

if value1 == 'white' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'blacker' then
doTweenAlpha("BG23N","BG23", 0, 0.1, true);
doTweenAlpha("blackA","black", 1, 0.001, true);
end

if value1 == 'darwin' then
triggerEvent('Ansfoxy', 'gliched2', '')
setProperty('camGame.visible', false)
doTweenAlpha("blackA","black", 0, 5, true);
setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4)
nonotes=true
end

if value1 == 'darwin2' then
nonotes=false
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha("blackA","black", 1, 0.001, true);
for i = 0,3 do
		setPropertyFromGroup('opponentStrums',i,'x',-1000)
	end
end

if value1 == 'black1' then
setProperty('BG0.visible', false)
setProperty('BG1.visible', false)
setProperty('BG2.visible', false)
setProperty('BG3.visible', false)
setProperty('BG4.visible', false)
setProperty('BG5.visible', false)
setProperty('BG6.visible', false)
setProperty('BG7.visible', false)
setProperty('BG8.visible', false)
doTweenAlpha("black2A","black2", 1, 0.1, true);
doTweenColor('bfC', 'boyfriend', '000000', 0.01, 'linear')
doTweenColor('dadC', 'dad', '000000', 0.01, 'linear')
end

if value1 == 'black2' then
doTweenAlpha("white1","white", 5, 0.001, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
setProperty('BG0.visible', true)
setProperty('BG1.visible', true)
setProperty('BG2.visible', true)
setProperty('BG3.visible', true)
setProperty('BG4.visible', true)
setProperty('BG5.visible', true)
setProperty('BG6.visible', true)
setProperty('BG7.visible', true)
setProperty('BG8.visible', true)
doTweenAlpha("black2A","black2", 0, 0.1, true);
doTweenColor('bfC', 'boyfriend', 'FFFFFF', 0.01, 'linear')
doTweenColor('dadC', 'dad', 'FFFFFF', 0.01, 'linear')
end

end
end 
