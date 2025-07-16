
-- || [PLEASE READ THIS IF YOU DIDN'T KNKW HOW TO USE THIS(IMPORTANT!)] || --
-- || [ALL THE OPTIONS ARE SO EASY TO MODIFY, JUST LOOK AT THE LAST LINE OF THE CODE AND YOU WILL SEE SOME GUIDES.] || --

local enabler = true --| <-- [This will enbale or disable the shader, obviously.]
-----------------------------------------------------------
if enabler then
	local trueTargets = 'both' -- | <-- [Camera, SpriteObj or Both]
	--local trueTarget = 'sprite' --| <-- [Sprite or Camera to Shader] -- will be on next update
-----------------------------------------------------------
	local baseShaderOpt = { -- | <-- [Base Options for Shader]
		shaderName = 
			'VCR', -- | <-- [Name of the Shader that exist on the directory.]
		shaderSpriteTarget = {
			'dad',
			'bf',
			'idk' -- | <-- [Sprite Targets(that will be applied)]
		},
		shaderCamTarget = 
			'camHUD', -- | <-- [Camera Targets]
-----------------------------------------------------------
		baseSpriteOpt = { -- | <-- [Don't mind at these, it's for 1st sprite customization(for BG), not used]
		}
	}
-----------------------------------------------------------
-----------------------------------------------------------
	--[[BASE CODE]]--
	
	function tvShader()
		initLuaShader(baseShaderOpt.shaderName)
		initLuaShader("file")
        makeLuaSprite('TvGame')
        setSpriteShader('TvGame', 'file');
		if trueTargets == 'cam' or trueTargets == 'both' then
			makeLuaSprite('camShader')
			makeGraphic('camShader', screenWidth, screenHeight)
			if baseShaderOpt.shaderCamTarget == 'both' then
				runHaxeCode([[
					var shaderName = "]] .. baseShaderOpt.shaderName .. [[";
					var shaderC = game.createRuntimeShader(shaderName);
					game.camGame.setFilters([new ShaderFilter(shaderC)]);
					game.camHUD.setFilters([new ShaderFilter(shaderC)]);
					game.getLuaObject("camShader").shader = shaderC; // setting it into temporary sprite so luas can set its shader uniforms/properties
				]])
			elseif baseShaderOpt.shaderCamTarget == 'camGame' then
				runHaxeCode([[
					var shaderName = "]] .. baseShaderOpt.shaderName .. [[";
					var shaderC = game.createRuntimeShader(shaderName);
					game.camGame.setFilters([new ShaderFilter(shaderC)]);
					game.getLuaObject("camShader").shader = shaderC;
				]])
			elseif baseShaderOpt.shaderCamTarget == 'camHUD' then
				runHaxeCode([[
					var shaderName = "]] .. baseShaderOpt.shaderName .. [[";
					var shaderC = game.createRuntimeShader(shaderName);
					game.camHUD.setFilters([new ShaderFilter(shaderC)]);
					game.getLuaObject("camShader").shader = shaderC;
				]])
			else
			end
			runHaxeCode([[
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("TvGame").shader)]);
		]])
		end
		if trueTargets == 'sprite' or trueTargets == 'both' then
			for i = 1, #baseShaderOpt.shaderSpriteTarget do
				setSpriteShader(baseShaderOpt.shaderSpriteTarget[i], baseShaderOpt.shaderName)
			end
			
		end
		if baseShaderOpt.shaderName == 'redAberration' then
			setShaderFloat('camShader', 'intensity', 5.0)
			setShaderFloat('camShader', 'initial', 5.0)
		end
	end
	
	function onStepHit()
	if curStep == 2144 then
	tvShader()
	tvEffect = true
	elseif curStep == 2688 then
	tvEffect = false
	chromToggle()
	end
	end
	
	function onUpdatePost(elapsed)
		if trueTargets == 'sprite' and tvEffect or trueTargets == 'both' and tvEffect then
			local spriteTargets = baseShaderOpt.shaderSpriteTarget
			for i = 1, #baseShaderOpt.shaderSpriteTarget do
				setShaderFloat(baseShaderOpt.shaderSpriteTarget[i], 'iTime', os.clock())
			end
		end
		if trueTargets == 'cam' and tvEffect or trueTargets == 'both' and tvEffect then
			local trueElapsed = os.clock() --elapsed + 0.00001
			setShaderFloat('camShader', 'iTime', trueElapsed)
			setShaderFloat("TvGame", "iTime", trueElapsed)
		end
	end
end

function chromToggle()
    runHaxeCode([[
            var chromToggle = game.createRuntimeShader('ChromaticAbberationHUD');
            var chromGraphic = new ShaderFilter(chromToggle);
            game.camHUD.setFilters([chromGraphic]);
            game.camGame.setFilters([chromGraphic]);
            game.getLuaObject('chromToggle').shader = chromToggle;

            return;
        ]]
    )
    activated = true
end


function messageDebug(title, log)
	
end

--[NOTE THAT THIS IS NOT ALL FINISHED.]
--[[local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('background', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('background', 'uWaveAmplitude', 0.1)
	setShaderFloat('background', 'uFrequency', 5)
	setShaderFloat('background', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('background', 'uTime', os.clock())
	end
end]]

