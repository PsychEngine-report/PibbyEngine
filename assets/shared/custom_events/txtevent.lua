function onCreatePost()
makeLuaText('nsiwjw', '', -800,250,500)
setTextSize('nsiwjw', 45)

setObjectCamera('nsiwjw', 'other')
addLuaText('nsiwjw', true)

end

function onEvent(name, value1, value2)
if name == 'txtevent' then
setTextString('nsiwjw', value1)
setTextColor('nsiwjw', value2)
end
end


function onUpdatePost()
if not (getTextString('nsiwjw') == '') then

setProperty('nsiwjw.offset.x', getRandomInt(-5, 5))
setProperty('nsiwjw.offset.y', getRandomInt(-5, 5))
end
end