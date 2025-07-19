function onCreate()

makeLuaSprite('sky', 'bg/sky', -1300, -1600)
scaleObject('sky', 3.2, 3.2)
setScrollFactor('sky', 0.2, 0.2)
addLuaSprite('sky')

makeLuaSprite('theBG', 'bg/theBG', -1100, -1000)
scaleObject('theBG', 2.8, 2.8)
setScrollFactor('theBG', 0.2, 0.2)
addLuaSprite('theBG')

makeAnimatedLuaSprite('smoke', 'bg/smoke', -1100, -650)
addAnimationByPrefix('smoke', 'Symbol 3 instance ', 'Symbol 3 instance ', 24, true)
scaleObject('smoke', 4 ,4)
setScrollFactor('smoke', 0.4, 0.4)
addLuaSprite('smoke')

makeLuaSprite('middleground', 'bg/middleground', -1700, -100)
scaleObject('middleground', 4, 4)
setScrollFactor('middleground', 0.7, 0.7)
addLuaSprite('middleground')

makeLuaSprite('injector', 'bg/injector', -1000, -1000)
scaleObject('injector', 4, 4)
addLuaSprite('injector')

end

function onUpdate()
 if curStep <= 0 then
   setProperty('gf.visible', false)
 end

 if curStep >= 0 then
  setProperty('spinel.visible', false)
 end

  if curStep == 0 then
  doTweenAlpha('Spinel', 'Spinel', 0, 0.001, 'linear')
  end 

  if curStep == 1408 then
   doTweenAlpha('daddy', 'dad', 1, 0.5, 'linear')
  end

 if curStep == 1152 then
  doTweenAlpha('Spinel', 'Spinel', 1, 0.5, 'linear')
  doTweenAlpha('daddy', 'dad', 0.2, 0.5, 'linear')
 end

 if curStep == 1614 then
	setProperty('gf.visible', true)
 end
end

 --function onUpdate()
  --if curStep == 0 then
  --doTweenAlpha('Spinel', 'Spinel', 0, 0.001, 'linear')
  --end

 --if curStep == 1152 then
  --doTweenAlpha('Spinel', 'Spinel', 1, 0.5, 'linear')
  --doTweenAlpha('daddy', 'dad', 0.2, 0.5, 'linear')
 --end

-- if curStep == 1408 then
   --doTweenAlpha('daddy', 'dad', 1, 0.5, 'linear')
-- end
--end
