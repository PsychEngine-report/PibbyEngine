--[[]]

Chromashit = 0;
Chromashit2 = 0;
function onCreatePost() 
addLuaScript('scripts extras/Shaders/glitchVoid') 
initLuaShader("ChromaticAbberation")
initLuaShader("vcr")
initLuaShader("blur")
    makeLuaSprite("Shader")
setSpriteShader("Shader", "ChromaticAbberation")

    makeLuaSprite("temporaryShader1")
    setSpriteShader("temporaryShader1", "vcr")
    
    makeLuaSprite("temporaryShader2")
setSpriteShader("temporaryShader2", "blur")

    makeLuaSprite("temporaryShade")
    setSpriteShader("temporaryShade", "vcr")

runHaxeCode([[

			trace(ShaderFilter);

			game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("Shader").shader),new ShaderFilter(game.getLuaObject("temporaryShade").shader),new ShaderFilter(game.getLuaObject("temporaryShader2").shader)]);
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShade").shader)]);
			game.camOther.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
		]])
		addHaxeLibrary("ShaderFilter1", "openfl.filters")
		
setShaderFloat("Shader", "amount", 0)
setShaderFloat("temporaryShader2", "cx", 0.5)
setShaderFloat("temporaryShader2", "cy", 0.5)
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

if name == 'Ansfoxy' then
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
setChrome(Chromashit)
Chromashit2 = math.lerp(Chromashit2, -0.02 / 300, boundTo(elapsed * 20, 0, 1));
setChrome2(Chromashit2)
setShaderFloat("temporaryShader2", "blurWidth", blurval)
blurval = math.lerp(blurval, 0, boundTo(elapsed * 7, 0, 500));
end

function onUpdatePost()
setShaderFloat("temporaryShader2", "blurWidth", blurval)
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

function opponentNoteHit(id,noteData,noteType)
if not isSustainNote and math.random(1,2) == 1 then
triggerEvent('glitchy transition2', '0.01')
end

if not isSustainNote and math.random(1,5) == 1 then
blurval = 0.015
end
end

