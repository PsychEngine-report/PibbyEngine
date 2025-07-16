function onCreatePost()

    makeLuaSprite("CNlogo", 'cnlogo', 960,600)
    setObjectCamera("CNlogo", "other")
    addLuaSprite("CNlogo", true)
scaleObject('CNlogo', 0.2,0.2)
if songName == 'FreePlay' then
setProperty('CNlogo.alpha',0)
else setProperty('CNlogo.alpha',0.65)
end
if downscroll then
setProperty('CNlogo.y',70)
end
end
