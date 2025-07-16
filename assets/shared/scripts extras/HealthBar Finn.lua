function onCreate()
makeAnimatedLuaSprite('uglyHB','healthbar/iconbar',0,0);
scaleObject('uglyHB', 2, 2);
luaSpriteAddAnimationByPrefix('uglyHB', 'pouco', 'Icons Bar 3', 24, true);
luaSpriteAddAnimationByPrefix('uglyHB', 'medio', 'Icons Bar 2', 24, true);
luaSpriteAddAnimationByPrefix('uglyHB', 'cheio', 'Icons Bar 1', 24, true);
luaSpritePlayAnimation('uglyHB', 'medio', true);
setObjectCamera('uglyHB', 'hud')
setScrollFactor('uglyHB', 1.8, 1.8)

makeLuaSprite('PBY', 'icons/healthicon/icon-pibby', -720, -720)
scaleObject('PBY', 1, 1);
setProperty('PBY.flipX', true)
setObjectCamera('PBY', 'hud')

makeLuaSprite('PBYL', 'icons/healthicon/icon-pibby2', -720, -720)
scaleObject('PBYL', 1, 1);
setProperty('PBYL.flipX', true)
setObjectCamera('PBYL', 'hud')

makeLuaSprite('PBY2', 'icons/healthicon/icon-pibby', -720, -720)
scaleObject('PBY2', 1, 1);
setProperty('PBY2.flipX', true)
setObjectCamera('PBY2', 'hud')

makeLuaSprite('PBYL2', 'icons/healthicon/icon-pibby2', -720, -720)
scaleObject('PBYL2', 1, 1);
setProperty('PBYL2.flipX', true)
setObjectCamera('PBYL2', 'hud')

makeLuaSprite('OPPO2', 'icons/healthicon/icon-jake', -720, -720)
scaleObject('OPPO2', 1, 1);
setObjectCamera('OPPO2', 'hud')

makeLuaSprite('OPP2', 'icons/healthicon/icon-jake2', -720, -720)
scaleObject('OPP2', 1, 1);
setObjectCamera('OPP2', 'hud')
	
addLuaSprite('uglyHB', true)
addLuaSprite('PBY', true)
addLuaSprite('PBYL', true)
addLuaSprite('PBY2', true)
addLuaSprite('PBYL2', true)
addLuaSprite('OPPO2', true)
addLuaSprite('OPP2', true)

setProperty('PBY.visible', false);
setProperty('PBYL.visible', false);
setProperty('PBY2.visible', false);
setProperty('PBYL2.visible', false);
setProperty('OPPO2.visible', false);
setProperty('OPP2.visible', false);

if songName == 'Suffering Siblings' then
addLuaScript('scripts extras/Glitchy icon2') 
jake2=true
pibby2=true
end

end

function onCreatePost()
setTextFont('botplayTxt', 'Finn.ttf')
setTextFont('scoreTxt', 'Finn.ttf')
setTextFont('timeTxt', 'Finn.ttf')

setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
    
    setProperty('uglyHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))
    setProperty('uglyHB.x', getProperty('healthBar.x') - 155)
    setProperty('uglyHB.angle', getProperty('healthBar.angle'))
    setProperty('uglyHB.y', getProperty('healthBar.y')  - 90)
    
    setObjectOrder('uglyHB', 49)
    setObjectOrder('iconP1', 50)
    setObjectOrder('iconP2', 51)
    setObjectOrder('PBY', 52)
    setObjectOrder('PBYL', 53)
    setObjectOrder('OPPO2', 56)
    setObjectOrder('OPP2', 57)
    setObjectOrder('PBY2', 58)
    setObjectOrder('PBYL2', 59)
	setObjectOrder('healthBar', 18)
	setObjectOrder('healthBarBG', 19)
	setObjectOrder('scoreTxt', 60)
	
	if songName == 'Blessed by Swords' then
	setProperty('iconP1.visible', false);
	pibby=true
	end

end

function onUpdate(elapsed)
setProperty('OPPO2.x', getProperty('healthBar.x') -170)
setProperty('OPPO2.y', getProperty('healthBar.y') - 90)
setProperty('OPP2.x', getProperty('healthBar.x') - 170)
setProperty('OPP2.y', getProperty('healthBar.y') - 90)
setProperty('PBY2.x', getProperty('healthBar.x') + 600)
setProperty('PBY2.y', getProperty('healthBar.y') - 80)
setProperty('PBYL2.x', getProperty('healthBar.x') + 600)
setProperty('PBYL2.y', getProperty('healthBar.y') - 80)
setProperty('PBY.x', getProperty('healthBar.x') + 250)
setProperty('PBY.y', getProperty('healthBar.y') - 80)
setProperty('PBYL.x', getProperty('healthBar.x') + 250)
setProperty('PBYL.y', getProperty('healthBar.y') - 80)

if getProperty('health') >= 1.63 then
if jake2 then
setProperty('OPPO2.visible', false);
setProperty('OPP2.visible', true);
end
else
if jake2 then
setProperty('OPPO2.visible', true);
setProperty('OPP2.visible', false);
end
end

if getProperty('health') >= 1.6 then
cheio=true
else
cheio=false
end

if getProperty('health') >= 1 then
medio=true
else
medio=false
end

if getProperty('health') >= 0.20 then
pouco=true
else
pouco=false
end

if getProperty('health') >= 0.05 then
if pibby then
setProperty('PBY.visible', true);
setProperty('PBYL.visible', false);
end

if pibby2 then
setProperty('PBY2.visible', true);
setProperty('PBYL2.visible', false);
end
else

if pibby then
setProperty('PBY.visible', false);
setProperty('PBYL.visible', true);
end
if pibby2 then
setProperty('PBY2.visible', false);
setProperty('PBYL2.visible', true);
end
end
end

function onBeatHit()
if cheio then 
luaSpritePlayAnimation('uglyHB', 'cheio', true);
elseif medio then
luaSpritePlayAnimation('uglyHB', 'medio', true);
elseif pouco then
luaSpritePlayAnimation('uglyHB', 'pouco', true);
end
end

function onUpdatePost()
    setProperty('iconP1.x', 610)
    setProperty('iconP2.x', 510)
    setProperty('iconP2.y', 550)
    if downscroll then 
    setProperty('iconP2.y', -5)
    end
end
