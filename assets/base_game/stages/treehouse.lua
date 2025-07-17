local followchars = true;

function onCreate()
addLuaScript('scripts extras/HealthBar Finn') 
runTimer('charge',0.2);

makeLuaSprite('BG0', 'stages/treehouse/intro/IMG_8337', 1700, 2100);
setProperty("BG0.scale.x", 1.4);
setProperty("BG0.scale.y", 1.4);

makeLuaSprite('BG1', 'stages/treehouse/intro/Ilustracion_sin_titulo-2', 1100, 1600);
setProperty("BG1.scale.x", 0.6);
setProperty("BG1.scale.y", 0.6);

makeLuaSprite('BG2', 'stages/treehouse/intro/Ilustracion_sin_titulo-3', 1700, 2100);
setProperty("BG2.scale.x", 1.2);
setProperty("BG2.scale.y", 1.2);

makeLuaSprite('BG3', 'stages/treehouse/reveal/BackGlitch', 300, 800);
setProperty("BG3.scale.x", 0.5);
setProperty("BG3.scale.y", 0.5);
setScrollFactor('BG3',0.6, 0.6)

makeLuaSprite('BG4', 'stages/treehouse/reveal/Particles', 900, 1800);
setProperty("BG4.scale.x", 0.6);
setProperty("BG4.scale.y", 0.6);

makeLuaSprite('BG5', 'stages/treehouse/reveal/AboveGlitch', 900, 1800);
setProperty("BG5.scale.x", 0.6);
setProperty("BG5.scale.y", 0.6);

makeLuaSprite('BG6', 'stages/treehouse/reveal/HillStuff', 1650, 2200);
setProperty("BG6.scale.x", 1.8);
setProperty("BG6.scale.y", 1.8);

makeLuaSprite('BG7', 'stages/treehouse/reveal/Corruption', 1650, 2150);
setProperty("BG7.scale.x", 1.2);
setProperty("BG7.scale.y", 1.2);

makeLuaSprite('BG8', 'stages/treehouse/reveal/Dangling', 900, 1800);
setProperty("BG8.scale.x", 0.6);
setProperty("BG8.scale.y", 0.6);

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')

makeLuaSprite("BG9","stages/treehouse/reveal/CameraShtuff", -100, 50);
setObjectCamera("BG9", 'other')
setProperty("BG9.scale.x", 1.2);
setProperty("BG9.scale.y", 1.2);
doTweenX('BG9X', 'BG9.scale', 1.8, 0.002, 'linear')
doTweenY('BG9Y', 'BG9.scale', 1.8, 0.002, 'linear')

makeLuaSprite("BG14","vignette", 20, -25);
setObjectCamera("BG14", 'other')
setProperty("BG14.scale.x", 1.2);
setProperty("BG14.scale.y", 1.2);

makeLuaSprite('BG10', 'stages/treehouse/back', 800, 200);
setProperty("BG10.scale.x", 1.8);
setProperty("BG10.scale.y", 1.8);

makeLuaSprite('BG13', 'stages/treehouse/tree', 1400, 600);
setProperty("BG13.scale.x", 3.6);
setProperty("BG13.scale.y", 3.6);

addLuaSprite('BG0', false);
addLuaSprite('BG1', false);
addLuaSprite('BG2', true);
addLuaSprite('BG3', false);
addLuaSprite('BG4', false);
addLuaSprite('BG5', false);
addLuaSprite('BG6', false);
addLuaSprite('BG7', true);
addLuaSprite('BG8', false);
addLuaSprite('BG9', true);
addLuaSprite("black", true);
addLuaSprite('BG10', false);
addLuaSprite('BG13', false);
addLuaSprite('BG14', true);
end

function onSongStart()
triggerEvent('Ansfoxyintro', '0', 'player')
triggerEvent('Ansfoxyintro', '1', 'player')
triggerEvent('Ansfoxyintro', '2', 'player')
triggerEvent('Ansfoxyintro', '3', 'player')

setProperty('defaultCamZoom',0.8)
doTweenAlpha("black","black", 0, 5, true);
end

function onCreatePost()
for i = 0,3 do
			setPropertyFromGroup('opponentStrums', i, 'visible',false)
		end
		
doTweenAlpha("huds","camHUD", 0, 0.01, true);
addCharacterToList('finnanimstuff', 'dad');
addCharacterToList('finn-sword-sha', 'dad');
addCharacterToList('finncawn', 'dad');
addCharacterToList('bfcawn', 'boyfriend');
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
doTweenAlpha('noBf2', 'boyfriend', 0, 0.5, 'linear')
end

function onEvent(name,value1,value2)
if name == 'Ansfoxyintro' then 
        local note = tonumber(value1)
        local alpha = 0
        if note == nil then
            note = 0
        end
        if note < 4 and middlescroll then
            alpha = 0.35
        end
        note = note % 4
        local character = string.lower(value2)
        if character == 'player' then
            note = note + 4
        end
        noteTweenAlpha('NoteAlpha'..note,note,alpha,1.22,'cubeOut')
end

if name == 'Ansfoxyintro2' then 
        local note = tonumber(value1)
        local alpha = 1
        if note == nil then
            note = 0
        end
        if note < 4 and middlescroll then
            alpha = 0.35
        end
        note = note % 4
        local character = string.lower(value2)
        if character == 'player' then
            note = note + 4
        end
        noteTweenAlpha('NoteAlpha'..note,note,alpha,0.8,'cubeOut')
end
 
if name == 'Ansfoxy' then 
if value1 == 'hud1' then
for i = 0,3 do
			setPropertyFromGroup('opponentStrums', i, 'visible',true)
		end
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha("huds","camHUD", 1, 0.01, true);
end

if value1 == 'hud2' then
triggerEvent('Ansfoxyintro2', '0', 'player')
triggerEvent('Ansfoxyintro2', '1', 'player')
triggerEvent('Ansfoxyintro2', '2', 'player')
triggerEvent('Ansfoxyintro2', '3', 'player')
end

if value1 == 'glitfinn' then
doTweenZoom('cam7Z','camGame', 1.5, 0.5,'linear')
doTweenAlpha("huds","camHUD", 0, 0.2, true);
end

if value1 == 'glitfinn2' then
triggerEvent("Ansfoxy", 'finnbug', '')
doTweenAlpha("huds","camHUD", 1, 0.001, true);
cameraFlash('camGame', 'FFFFFF', 1);
end

if value1 == 'finn' then
triggerEvent("Ansfoxy", 'finnbug2', '')
triggerEvent('Change Character', 'dad', 'finnanimstuff')
setProperty('dad.specialAnim', true);
characterPlayAnim('dad', 'lesgo', true);
doTweenAlpha('BG0N', 'BG0', 0, 0.5, 'linear')
doTweenAlpha('BG1N', 'BG1', 0, 0.5, 'linear')
doTweenAlpha('BG2N', 'BG2', 0, 0.5, 'linear')
end

if value1 == 'finn2' then
setProperty('defaultCamZoom',0.9)
setProperty('cameraSpeed', 10000)
runTimer('nofoc',0.1)
doTweenAlpha("BG14N","BG14", 1, 0.1, true);
doTweenAlpha("BG9Y","BG9", 1, 0.1, true);
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('BG0N', 'BG0', 0, 0.001, 'linear')
doTweenAlpha('BG1N', 'BG1', 0, 0.001, 'linear')
doTweenAlpha('BG2N', 'BG2', 0, 0.001, 'linear')
doTweenAlpha('BG3N', 'BG3', 1, 0.001, 'linear')
doTweenAlpha('BG4N', 'BG4', 1, 0.001, 'linear')
doTweenAlpha('BG5N', 'BG5', 1, 0.001, 'linear')
doTweenAlpha('BG6N', 'BG6', 1, 0.001, 'linear')
doTweenAlpha('BG7N', 'BG7', 1, 0.001, 'linear')
doTweenAlpha('BG8N', 'BG8', 1, 0.001, 'linear')
end

if value1 == 'finn3' then
cam=true
doTweenAlpha("BG14N","BG14", 1, 0.1, true);
doTweenAlpha("BG9N","BG9", 0, 0.1, true);
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('BG3N', 'BG3', 0, 0.001, 'linear')
doTweenAlpha('BG4N', 'BG4', 0, 0.001, 'linear')
doTweenAlpha('BG5N', 'BG5', 0, 0.001, 'linear')
doTweenAlpha('BG6N', 'BG6', 0, 0.001, 'linear')
doTweenAlpha('BG7N', 'BG7', 0, 0.001, 'linear')
doTweenAlpha('BG8N', 'BG8', 0, 0.001, 'linear')
triggerEvent('Change Character', 'dad', 'finn-sword-sha')
doTweenAlpha('YBF', 'boyfriend', 1, 0.001, 'linear')
doTweenAlpha('BG10N', 'BG10', 1, 0.001, 'linear')
doTweenAlpha('BG11N', 'BG11', 1, 0.001, 'linear')
doTweenAlpha('BG13N', 'BG13', 1, 0.001, 'linear')
doTweenColor('bf', 'boyfriend', 'A19DC0', 0.001, 'linear')
end
if value1 == 'finn4' then
focado2=true
cam=false
runTimer('nofoc',0.2)
setProperty('defaultCamZoom',0.90)
setProperty('cameraSpeed', 10000)
triggerEvent('Change Character', 'dad', 'finncawm_start_new')
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('YBF', 'boyfriend', 0, 0.001, 'linear')
doTweenAlpha('BG10N', 'BG10', 0, 0.001, 'linear')
doTweenAlpha('BG11N', 'BG11', 0, 0.001, 'linear')
doTweenAlpha('BG13N', 'BG13', 0, 0.001, 'linear')
doTweenAlpha('BG0N', 'BG0', 1, 0.001, 'linear')
doTweenAlpha('BG1N', 'BG1', 1, 0.001, 'linear')
doTweenAlpha('BG2N', 'BG2', 1, 0.001, 'linear')
end
if value1 == 'finn5' then
cam=true
triggerEvent('Change Character', 'dad', 'finn-sword-sha')
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('YBF', 'boyfriend', 1, 0.001, 'linear')
doTweenAlpha('BG10N', 'BG10', 1, 0.001, 'linear')
doTweenAlpha('BG11N', 'BG11', 1, 0.001, 'linear')
doTweenAlpha('BG13N', 'BG13', 1, 0.001, 'linear')
doTweenAlpha("BG14N","BG14", 0, 0.1, true);
doTweenAlpha("BG9Y","BG9", 0, 0.1, true);
doTweenAlpha('BG0N', 'BG0', 0, 0.001, 'linear')
doTweenAlpha('BG1N', 'BG1', 0, 0.001, 'linear')
doTweenAlpha('BG2N', 'BG2', 0, 0.001, 'linear')
doTweenAlpha('BG3N', 'BG3', 0, 0.001, 'linear')
doTweenAlpha('BG4N', 'BG4', 0, 0.001, 'linear')
doTweenAlpha('BG5N', 'BG5', 0, 0.001, 'linear')
doTweenAlpha('BG6N', 'BG6', 0, 0.001, 'linear')
doTweenAlpha('BG7N', 'BG7', 0, 0.001, 'linear')
doTweenAlpha('BG8N', 'BG8', 0, 0.001, 'linear')
end
if value1 == 'finn6' then
cam=false
focado=true
nonotes=true
setProperty('defaultCamZoom',1.1)
triggerEvent('Change Character', 'dad', 'finncawn')
triggerEvent('Change Character', 'boyfriend', 'bfcawn')
cameraFlash('camGame', 'FFFFFF', 1);
doTweenAlpha('BG10N', 'BG10', 0, 0.001, 'linear')
doTweenAlpha('BG11N', 'BG11', 0, 0.001, 'linear')
doTweenAlpha('BG13N', 'BG13', 0, 0.001, 'linear')
doTweenAlpha('BG0N', 'BG0', 0, 0.001, 'linear')
doTweenAlpha('BG1N', 'BG1', 0, 0.001, 'linear')
doTweenAlpha('BG2N', 'BG2', 0, 0.001, 'linear')
doTweenColor('bf', 'boyfriend', 'FFFFFF', 0.001, 'linear')
setProperty('boyfriend.flipY',true)
end


if value1 == 'fim' then
setProperty('camGame.visible', false)
setProperty('camHUD.visible', false)
setProperty('camOther.visible', false)
end

end
end

function onUpdatePost(elapsed)
if followchars == true and cam then
if mustHitSection == false then
setProperty('defaultCamZoom',0.60)
else
setProperty('defaultCamZoom',1)
end
end

if nonotes then
setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
setPropertyFromGroup('playerStrums', 4, 'x', defaultOpponentStrumX4)

for i = 0,3 do
		setPropertyFromGroup('opponentStrums',i,'x',-1000)
	end
end
if focado then
triggerEvent('Camera Follow Pos', 2500, 2500)
end 
if focado2 then
triggerEvent('Camera Follow Pos', 2350, 2400)
end 
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag=='nofoc' then
focado2=false
setProperty('cameraSpeed', 1)
end
if tag=='charge' then
doTweenAlpha("BG14N","BG14", 0, 0.5, true);
--doTweenAlpha("BG9N","BG9", 0, 0.5, true);
doTweenAlpha('BG3N', 'BG3', 0, 0.5, 'linear')
doTweenAlpha('BG4N', 'BG4', 0, 0.5, 'linear')
doTweenAlpha('BG5N', 'BG5', 0, 0.5, 'linear')
doTweenAlpha('BG6N', 'BG6', 0, 0.5, 'linear')
doTweenAlpha('BG7N', 'BG7', 0, 0.5, 'linear')
doTweenAlpha('BG8N', 'BG8', 0, 0.5, 'linear')
doTweenAlpha('BG10N', 'BG10', 0, 1, 'linear')
doTweenAlpha('BG11N', 'BG11', 0, 1, 'linear')
doTweenAlpha('BG13N', 'BG13', 0, 1, 'linear')
end
end