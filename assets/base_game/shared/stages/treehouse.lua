local campointx = 0
local campointy = 0
local bfturn = false

function onCreate()
runTimer('charge',0.2);

makeLuaSprite('BG0', 'stages/treehouse/intro/IMG_8337', 1100, 1600);
scaleObject('BG0', 2, 2);
doTweenX('BG0X', 'BG0.scale', 1.4, 0.001, 'linear')
doTweenY('BG0Y', 'BG0.scale', 1.4, 0.001, 'linear')

makeLuaSprite('BG1', 'stages/treehouse/intro/Ilustracion_sin_titulo-2', 1100, 1600);
setProperty("BG1.scale.x", 0.6);
setProperty("BG1.scale.y", 0.6);

makeLuaSprite('BG2', 'stages/treehouse/intro/Ilustracion_sin_titulo-3', 1100, 1600);
setProperty("BG2.scale.x", 0.6);
setProperty("BG2.scale.y", 0.6);

makeLuaSprite('BG3', 'stages/treehouse/reveal/BackGlitch', 900, 1800);
scaleObject('BG3', 2, 2);
doTweenX('BG3X', 'BG3.scale', 1.1, 0.001, 'linear')
doTweenY('BG3Y', 'BG3.scale', 1.1, 0.001, 'linear')

makeLuaSprite('BG4', 'stages/treehouse/reveal/Particles', 900, 1800);
setProperty("BG4.scale.x", 0.6);
setProperty("BG4.scale.y", 0.6);

makeLuaSprite('BG5', 'stages/treehouse/reveal/AboveGlitch', 900, 1800);
setProperty("BG5.scale.x", 0.6);
setProperty("BG5.scale.y", 0.6);

makeLuaSprite('BG6', 'stages/treehouse/reveal/HillStuff', 900, 1800);
setProperty("BG6.scale.x", 0.6);
setProperty("BG6.scale.y", 0.6);

makeLuaSprite('BG7', 'stages/treehouse/reveal/Corruption', 900, 1800);
setProperty("BG7.scale.x", 0.6);
setProperty("BG7.scale.y", 0.6);

makeLuaSprite('BG8', 'stages/treehouse/reveal/Dangling', 900, 1800);
setProperty("BG8.scale.x", 0.6);
setProperty("BG8.scale.y", 0.6);

makeLuaSprite("white","white", 680, 400);
setObjectCamera("white", 'other')
setProperty("white.scale.x", 1380);
setProperty("white.scale.y", 820);

makeLuaSprite("black","blacktnt", 680, 400);
setProperty("black.scale.x", 1380);
setProperty("black.scale.y", 820);
setObjectCamera("black", 'other')

makeLuaSprite("BG9","stages/treehouse/reveal/CameraShtuff", -700, -350);
setObjectCamera("BG9", 'other')
scaleObject('BG9', 2, 2);
doTweenX('BG9X', 'BG9.scale', 1.1, 0.001, 'linear')
doTweenY('BG9Y', 'BG9.scale', 1.1, 0.001, 'linear')

makeLuaSprite("BG14","vignette", 20, -25);
setObjectCamera("BG14", 'other')
setProperty("BG14.scale.x", 1.2);
setProperty("BG14.scale.y", 1.2);

makeLuaSprite('BG10', 'stages/treehouse/back', 800, 800);
scaleObject('BG10', 4, 4);
doTweenX('BG10X', 'BG10.scale', 4, 0.001, 'linear')
doTweenY('BG10Y', 'BG10.scale', 4, 0.001, 'linear')

makeAnimatedLuaSprite('BG11', 'stages/treehouse/Lighting', 800, 800);
luaSpriteAddAnimationByPrefix('BG11', 'idle', 'LIGHTNING', 24, true);
scaleObject('BG11', 4, 4);
doTweenX('BG11X', 'BG11.scale', 4, 0.001, 'linear')
doTweenY('BG11Y', 'BG11.scale', 4, 0.001, 'linear')
luaSpritePlayAnimation('BG11', 'idle', true);
    
makeLuaSprite('BG13', 'stages/treehouse/tree', 800, 800);
scaleObject('BG13', 4, 4);
doTweenX('BG13X', 'BG13.scale', 4, 0.001, 'linear')
doTweenY('BG13Y', 'BG13.scale', 4, 0.001, 'linear')

addLuaSprite('BG0', false);
addLuaSprite('BG1', false);
addLuaSprite('BG2', false);
addLuaSprite('BG3', false);
addLuaSprite('BG4', false);
addLuaSprite('BG5', false);
addLuaSprite('BG6', false);
addLuaSprite('BG7', false);
addLuaSprite('BG8', false);
addLuaSprite('BG9', true);
addLuaSprite("black", true);
addLuaSprite("white", true);
addLuaSprite('BG10', false);
addLuaSprite('BG11', false);
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
setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
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
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
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
doTweenAlpha("huds","camHUD", 1, 0.001, true);
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
end

if value1 == 'finn' then
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
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
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
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
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
runTimer('nofoc',0.2)
setProperty('defaultCamZoom',0.90)
setProperty('cameraSpeed', 10000)
triggerEvent('Change Character', 'dad', 'finncawm_start_new')
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha('YBF', 'boyfriend', 0, 0.001, 'linear')
doTweenAlpha('BG10N', 'BG10', 0, 0.001, 'linear')
doTweenAlpha('BG11N', 'BG11', 0, 0.001, 'linear')
doTweenAlpha('BG13N', 'BG13', 0, 0.001, 'linear')
doTweenAlpha('BG0N', 'BG0', 1, 0.001, 'linear')
doTweenAlpha('BG1N', 'BG1', 1, 0.001, 'linear')
doTweenAlpha('BG2N', 'BG2', 1, 0.001, 'linear')
end
if value1 == 'finn5' then
triggerEvent('Change Character', 'dad', 'finn-sword-sha')
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
doTweenAlpha('YBF', 'boyfriend', 1, 0.001, 'linear')
doTweenAlpha('BG10N', 'BG10', 1, 0.001, 'linear')
doTweenAlpha('BG11N', 'BG11', 1, 0.001, 'linear')
doTweenAlpha('BG13N', 'BG13', 1, 0.001, 'linear')
doTweenAlpha('BG0N', 'BG0', 0, 0.001, 'linear')
doTweenAlpha('BG1N', 'BG1', 0, 0.001, 'linear')
doTweenAlpha('BG2N', 'BG2', 0, 0.001, 'linear')
end
if value1 == 'finn6' then
cam=false
focado=true
nonotes=true
setProperty('defaultCamZoom',1.1)
triggerEvent('Change Character', 'dad', 'finncawn')
triggerEvent('Change Character', 'boyfriend', 'bfcawn')
doTweenAlpha("white1","white", 5, 000000.1, 'linear');
doTweenAlpha("white2","white", 0, 1, 'linear');
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

function onMoveCamera(focus)
if cam then
if focus == 'boyfriend' then
campointx = getProperty('camFollow.x')
campointy = getProperty('camFollow.y')
bfturn = true
setProperty('defaultCamZoom',1.1)
elseif focus == 'dad' then
campointx = getProperty('camFollow.x')
campointy = getProperty('camFollow.y')
bfturn = false
setProperty('defaultCamZoom',0.90)
end
end
end

function onUpdatePost(elapsed)
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
doTweenAlpha("BG9N","BG9", 0, 0.5, true);
doTweenAlpha("white","white", 0, 0.1, true);
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