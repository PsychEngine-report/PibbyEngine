function onCreate()
makeLuaSprite('DRW', 'icons/healthicon/icon-darwin', -720, -720)
scaleObject('DRW', 1, 1);
setProperty('DRW.flipX', true)
setObjectCamera('DRW', 'hud')

makeLuaSprite('DRWL', 'icons/healthicon/icon-darwin2', -720, -720)
scaleObject('DRWL', 1, 1);
setProperty('DRWL.flipX', true)
setObjectCamera('DRWL', 'hud')
	
addLuaSprite('DRW', true)
addLuaSprite('DRWL', true)

setProperty('DRW.visible', false);
setProperty('DRWL.visible', false);
end

function onCreatePost()
setTextFont('botplayTxt', 'Gumball.ttf')
setTextFont('scoreTxt', 'Gumball.ttf')
setTextFont('timeTxt', 'Gumball.ttf')

setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
    
    setObjectOrder('healthBar', 18)
	setObjectOrder('healthBarBG', 19)
	setObjectOrder('DRW', 48)
    setObjectOrder('DRWL', 49)
	setObjectOrder('iconP1', 50)
    setObjectOrder('iconP2', 51)
    setObjectOrder('scoreTxt', 56)

end

function onUpdate(elapsed)
setProperty('DRW.x', getProperty('healthBar.x') + 250)
setProperty('DRW.y', getProperty('healthBar.y') - 80)
setProperty('DRWL.x', getProperty('healthBar.x') + 250)
setProperty('DRWL.y', getProperty('healthBar.y') - 80)

if getProperty('health') >= 0.05 then
if darwin then
setProperty('DRW.visible', true);
setProperty('DRWL.visible', false);
end
else
if darwin then
setProperty('DRW.visible', false);
setProperty('DRWL.visible', true);
end
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

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'GF Sing' then
setProperty('iconP1.visible', false);
darwin=true
end

if noteType == '' then
setProperty('iconP1.visible', true);
darwin=false
setProperty('DRW.visible', false);
setProperty('DRWL.visible', false);
setProperty('DRW.visible', false);
setProperty('DRWL.visible', false);
end

end
