local Chromacrap = 0;

function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end

function setChrome(chromeOffset)
    setShaderFloat("temporaryShader", "rOffset", chromeOffset);
    setShaderFloat("temporaryShader", "gOffset", 0.0);
    setShaderFloat("temporaryShader", "bOffset", chromeOffset * -1);
end

function onSongStart()
	
noteX0 = getPropertyFromGroup('strumLineNotes','0','x')
noteX1 = getPropertyFromGroup('strumLineNotes','1','x')
noteX2 = getPropertyFromGroup('strumLineNotes','2','x')
noteX3 = getPropertyFromGroup('strumLineNotes','3','x')


noteY0 = getPropertyFromGroup('strumLineNotes','0','y')
noteY1 = getPropertyFromGroup('strumLineNotes','1','y')
noteY2 = getPropertyFromGroup('strumLineNotes','2','y')
noteY3 = getPropertyFromGroup('strumLineNotes','3','y')
end

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Glitch Note' then --Check if the note on the chart is a Bullet Note
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note' then
	Chromacrap = Chromacrap + 0.004; -- edit this

if math.random(1,2) == 1 then
end
     noteTweenX('glitchNoteX0','0' ,math.random(noteX0- 10,noteX0+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY0', '0' ,math.random(noteY0- 10,noteY0+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX1','1' ,math.random(noteX1- 10,noteX1+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY1', '1' ,math.random(noteY1- 10,noteY1+ 10),0.01,'quadInOut')
        
     noteTweenX('glitchNoteX2','2' ,math.random(noteX2- 10,noteX2+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY2', '2' ,math.random(noteY2- 10,noteY2+ 10),0.01,'quadInOut')
     
     noteTweenX('glitchNoteX3','3' ,math.random(noteX3- 10,noteX3+ 10),0.01,'quadInOut')     
     noteTweenY('glitchNoteY3', '3' ,math.random(noteY3- 10,noteY3+ 10),0.01,'quadInOut')
end
end


function onTweenCompleted()
	if noteType == 'Glitch Note' then
		triggerEvent('glitchy', '0', '0.1')

	end
end

function onCreatePost()
    --luaDebugMode = true;
	--if (shadersEnabled) then
		--initLuaShader("vcr");
		
		--makeLuaSprite("temporaryShader");
		--makeGraphic("temporaryShader", screenWidth, screenHeight);
		
		--setSpriteShader("temporaryShader", "vcr");
		
		--addHaxeLibrary("ShaderFilter", "openfl.filters");
		--runHaxeCode([[
			--trace(ShaderFilter);
			--game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
		--]]);
	--end
end

function onUpdate(elapsed)
	if (shadersEnabled) then
		Chromacrap = math.lerp(Chromacrap, 0, boundTo(elapsed *10,0, 30));
		setChrome(Chromacrap);
	end
end