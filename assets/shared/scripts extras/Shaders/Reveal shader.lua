--[[]]
numm=0.015
Chromashit = 0;
Chromashit2 = 0;
function onCreatePost() 
initLuaShader("ChromaticAbberation")
initLuaShader("vcr")
initLuaShader("blur")
initLuaShader("glitchy")

makeLuaSprite("temporaryShader2")
setSpriteShader("temporaryShader2", "blur")

    makeLuaSprite("Shader")
setSpriteShader("Shader", "ChromaticAbberation")

    makeLuaSprite("temporaryShader1")
    setSpriteShader("temporaryShader1", "vcr")
    
    makeLuaSprite("temporaryShade")
    setSpriteShader("temporaryShade", "vcr")
    
    makeLuaSprite("GlitchyShader")
setSpriteShader("GlitchyShader", "glitchy")
setProperty('GlitchyShader.useFramePixels', true)

runHaxeCode([[

			trace(ShaderFilter);

			game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("Shader").shader),new ShaderFilter(game.getLuaObject("temporaryShade").shader)]);
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("GlitchyShader").shader),new ShaderFilter(game.getLuaObject("temporaryShader2").shader),new ShaderFilter(game.getLuaObject("temporaryShade").shader)]);
			game.camOther.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
		]])
		addHaxeLibrary("ShaderFilter1", "openfl.filters")
		
setShaderFloat("Shader", "amount", 0.1)
setShaderFloat("temporaryShader2", "cx", 0.5)
setShaderFloat("temporaryShader2", "cy", 0.5)
blurval = 0
end

function onEvent(name, value1, value2)
if name == 'glitchy transition' then
Chromashit = Chromashit + value1

end

if name == 'glitchy transition2' then
Chromashit2 = Chromashit2 + value1

end

local table = mysplit(value1,",");
local tabledos = mysplit(value2,",");
if name == 'GlitchyShader' then
stop = false

AMT = table[1]
SPEED = table[2]
runTimer('nduw', tabledos[1])
end

if name == 'Ansfoxy' then
if value1 == 'finn2' then
numm=0
end

if value1 == 'finn4' then
numm=0.015
end

if value1 == 'finn5' then
numm=0
end

if value1 == 'gliched' then
glitched=true
end

if value1 == 'gliched2' then
glitched=false
end

end
end

function boundTo(value, min, max)
return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i)
return from+(to-from)*i
end

function setChrome(chromeOffset)
    setShaderFloat("temporaryShader1", "bOffset", chromeOffset * getRandomFloat(-2, 2));
    setShaderFloat("temporaryShader1", "rOffset", chromeOffset * getRandomFloat(-2, 2));
    setShaderFloat("temporaryShader1", "gOffset", chromeOffset * getRandomFloat(-2, 2));
end

function setChrome2(chromeOffset)
    setShaderFloat("temporaryShade", "rOffset", chromeOffset);
    setShaderFloat("temporaryShade", "gOffset", 0.0);
    setShaderFloat("temporaryShade", "bOffset", chromeOffset * -1);
end

function onUpdate(elapsed)
if youcanshake and glitched then
Shake = getRandomInt(0,30)
ShakeAMT = getRandomFloat(0.0001,1)
ShakeSPEED = getRandomFloat(0.0001,1)
if Shake <= 3 then
triggerEvent('GlitchyShader', ShakeAMT..','..ShakeSPEED, '0.03')
end
end
setChrome(Chromashit)
Chromashit2 = math.lerp(Chromashit2, -0.02 / 300, boundTo(elapsed * 20, 0, 1));
setChrome2(Chromashit2)
setShaderFloat("temporaryShader2", "blurWidth", blurval)
blurval = math.lerp(blurval, numm, boundTo(elapsed * 7, numm, 500));
end

stop = true
AMT = 0
SPEED = 0
youcanshake = true
function onUpdatePost()
setShaderFloat("temporaryShader2", "blurWidth", blurval)
if not stop then
setShaderFloat("GlitchyShader", "iTime", os.clock())
setShaderFloat("GlitchyShader", "AMT", AMT)
setShaderFloat("GlitchyShader", "SPEED", SPEED)
end
end
M = 0.2
function mysplit (inputstr, sep)--i didn't make this. -latter
if sep == nil then
sep = "%s";
end
local t = {};
for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
table.insert(t, str);
end
return t;
end

function onTimerCompleted(tag)
if tag == 'nduw' then
AMT = 0
SPEED = 0
setShaderFloat("GlitchyShader", "AMT", 0)
stop = true
end

end

function opponentNoteHit(id,noteData,noteType)
if not isSustainNote and math.random(1,2) == 1 then
triggerEvent('glitchy transition2', '0.01')
end
end