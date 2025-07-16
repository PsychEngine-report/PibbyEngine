local enableSystem = true
local beat = 3;
local zoomVal = 0.09; -- adjust this to how much you want it to zoom

local otherSongs = null

function lerp(a, b, ratio)
	return a + ratio * (b - a);
end

function onCreatePost()
	initLuaShader('radialBlur')
	
	makeLuaSprite('shadertest', '', 0, 0);
	setSpriteShader('shadertest','radialBlur')
	setObjectCamera("shadertest", "camOther")
	
	setShaderFloat('shadertest','cx',.5) --center x
	setShaderFloat('shadertest','cy',.5) --center y
	setShaderFloat('shadertest','blurWidth', 0)-- blur amount
		addHaxeLibrary("ShaderFilter", "openfl.filters")
	runHaxeCoderunHaxeCode([[
            trace(game.getLuaObject('shadertest').shader + ' Has Been Loaded!');                      
            FlxG.game.setFilters([new ShaderFilter(game.getLuaObject('shadertest').shader)]);
        ]])

end

--function opponentNoteHit()
	--setShaderFloat('shadertest', 'blurWidth', getShaderFloat('shadertest', 'blurWidth') + zoomVal);
--end

--function goodNoteHit()
	--setShaderFloat('shadertest', 'blurWidth', getShaderFloat('shadertest', 'blurWidth') + zoomVal);
--end

--[[If you want to know the credits:
i got a ideia of the script by Washo789, 
the script is made by BF Myt.]]--

function onUpdate()
	if getProperty('camZooming') then
		setShaderFloat('shadertest','blurWidth', lerp(0, getShaderFloat('shadertest', 'blurWidth'), 0.75));
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	  	if noteType == 'Attack Note' then	
		 setShaderFloat('shadertest', 'blurWidth', getShaderFloat('shadertest', 'blurWidth') + zoomVal)
	    end 
end
--		game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shadertest").shader)]);
  