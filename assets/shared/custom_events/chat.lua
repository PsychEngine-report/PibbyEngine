function onCreatePost()
makeLuaText('Chat Text','',1800,-250,500)
		setTextAlignment('Chat Text','center')
		addLuaText('Chat Text')
		setTextSize('Chat Text',60)
		setObjectCamera('Chat Text','other')
		if getProperty('dad.curCharacter') == 'gumball' then
		setTextFont('Chat Text','Gumball.ttf')
		elseif getProperty('dad.curCharacter') == 'finn-R' then
		setTextFont('Chat Text','Thunderman.ttf')
		end
		end

function onEvent(name,value1,value2)
if name == 'chat' then
setProperty('Chat Text.alpha',1)
setTextString('Chat Text',value2)
setTextColor('Chat Text',value1)
runTimer('remove',1.2)
end
end

function onTimerCompleted(tag)
if tag =='remove' then
setProperty('Chat Text.alpha',0)
end
end