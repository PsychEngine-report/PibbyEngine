function onCreatePost()
initLuaShader("colorInversion")
setSpriteShader("dad", "colorInversion")
setShaderInt("dad", "invert", 0)
setSpriteShader("Jake", "colorInversion")
setShaderInt("Jake", "invert", 0)
end

function opponentNoteHit(id, derection, noteType, isSustainNote)

if noteType == 'Glitch Note' then
setSpriteShader("dad", "colorInversion")
setShaderInt("dad", "invert", 1)

if derection == 0 then
--setProperty('dad.color',getColorFromHex('fa02fa'))
runTimer('resetColor',0.08)

elseif derection == 1 then
--setProperty('dad.color',getColorFromHex('0000ff'))
runTimer('resetColor',0.08)

elseif derection == 2 then
--setProperty('dad.color',getColorFromHex('00ff00'))
runTimer('resetColor',0.08)

elseif derection == 3 then
--setProperty('dad.color',getColorFromHex('ff0000'))
runTimer('resetColor',0.08)
end
end

if noteType == 'Second Char Glitch' then
setSpriteShader("Jake", "colorInversion")
setShaderInt("Jake", "invert", 1)

if derection == 0 then
--setProperty('jake.color',getColorFromHex('fa02fa'))
runTimer('resetColorJake',0.08)

elseif derection == 1 then
--setProperty('jake.color',getColorFromHex('0000ff'))
runTimer('resetColorJake',0.08)

elseif derection == 2 then
--setProperty('jake.color',getColorFromHex('00ff00'))
runTimer('resetColorJake',0.08)

elseif derection == 3 then
--setProperty('jake.color',getColorFromHex('ff0000'))
runTimer('resetColorJake',0.08)
end
end

end

function onTimerCompleted(tag)
if tag == 'resetColor' then
setProperty('dad.color',getColorFromHex('ffffff'))
setSpriteShader("dad", "colorInversion")
setShaderInt("dad", "invert", 0)
end

if tag == 'resetColorJake' then
setSpriteShader("Jake", "colorInversion")
setShaderInt("Jake", "invert", 0)
setProperty('Jake.color',getColorFromHex('ffffff'))
end
end