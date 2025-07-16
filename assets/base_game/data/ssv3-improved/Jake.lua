
idleoffsets = {'-114', '-48'}
leftoffsets = {'57', '3'}
downoffsets = {'-95', '-131'}
upoffsets = {'14', '316'}
rightoffsets = {'-75', '40'}

idle_xml_name = 'Idle'
left_xml_name = 'Left'
down_xml_name = 'Down'
up_xml_name = 'Up'
right_xml_name = 'Right'

x_position = 800
y_position = 1000

xScale = 2
yScale = 2

invisible = false
--tên .xml trong file images/characters/...(name .xml in file images/character/...)
name_of_character_xml = 'Jake'
--tên của nhân vật(do bạn tạo)/ name of character(is your custom)
name_of_character = 'Jake'
--note dạng .lua nằm trong custom_notetypes.... Để hoạt động hoạt ảnh của nv/note form .lua in file custom_notetypes...To play anim of character
name_of_notetype = 'Second Char Sing' 
--nằm đè lên mọi thứ (đúng hoặc sai)/ lying on top of everything (true or false)
foreground = false
--đảo ngược bề ngang (đúng hoặc sai)/reverse horizontally(flip x true or false)
flipX = false 
--tốc độ phát hình ảnh trên giây/fps animation
fps_Idle = 16
fps_Left = 19
fps_Down = 19
fps_Up = 19
fps_Right = 19
--fps_reload = ?
--fps_hey = ?
--fps_summon = ?
--fps_shoot = ?
function onCreate()
	makeAnimatedLuaSprite(name_of_character, 'characters/' .. name_of_character_xml, x_position, y_position);
	addAnimationByPrefix(name_of_character, 'idle', idle_xml_name, fps_Idle, true);
	addAnimationByPrefix(name_of_character, 'singLEFT', left_xml_name, fps_Left, false);
	addAnimationByPrefix(name_of_character, 'singDOWN', down_xml_name, fps_Down, false);
	addAnimationByPrefix(name_of_character, 'singUP', up_xml_name, fps_Up, false);
	addAnimationByPrefix(name_of_character, 'singRIGHT', right_xml_name, fps_Right, false);
	addAnimationByPrefix(name_of_character, 'reload', reload_xml_name, fps_reload, false);
	addAnimationByPrefix(name_of_character, 'hey', hey_xml_name, fps_hey, false);
	addAnimationByPrefix(name_of_character, 'summon', summon_xml_name, fps_summon, false);
	addAnimationByPrefix(name_of_character, 'shoot', shoot_xml_name, fps_shoot, false);
	if flipX == true then
		setPropertyLuaSprite(name_of_character, 'flipX', true);
	else
		setPropertyLuaSprite(name_of_character, 'flipX', false);
	end

	scaleObject(name_of_character, xScale, yScale);


	objectPlayAnimation(name_of_character, 'idle');
	addLuaSprite(name_of_character, foreground);

	if invisible == true then
		setPropertyLuaSprite(name_of_character, 'alpha', 0)
	end
end

animationsList = {}
holdTimers = {name_of_character = -1.0};
noteDatas = {name_of_character = 0};
local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype or noteType == 'Both Char Sing' or noteType ==  'Second Char Glitch' then
		objectPlayAnimation(name_of_character, singAnims[direction + 1], false);
		holdTimers= 0;
		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', leftoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character .. '.offset.y', downoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character .. '.offset.y', upoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', rightoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		end
	end
end

function onSongStart()
	holdTimers = -1;
end

function onUpdate(elapsed)
	holdCap = stepCrochet * 0.0025;
	if holdTimers >= 0 then
		holdTimers = holdTimers + elapsed;
		if holdTimers >= holdCap then
			holdTimers = -1;
		end
	end
end
-- I know this is messy, but it's the only way I know to make it work on both sides.
local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype then
		objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
		holdTimers= 0;
		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', leftoffsets[2]);
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character .. '.offset.y', downoffsets[2]);
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character .. '.offset.y', upoffsets[2]);
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', rightoffsets[2]);
		end
	end
end


function onBeatHit()
	-- triggered 4 times per section
end

function onCreatePost()
setProperty('Jake.x', (getProperty('dad.x')+100))
setProperty('Jake.y', (getProperty('dad.y')+0))
setObjectOrder('Jake',getObjectOrder('dadGroup')-1)
runTimer('IdleChar',0.3)
holdTimers = -1;
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 1 == 0 then
		if holdTimers < 0 then
		setProperty('Jake.x', (getProperty('dad.x')+125))
setProperty('Jake.y', (getProperty('dad.y')+0))
			objectPlayAnimation(name_of_character, 'idle');
			setProperty(name_of_character .. '.offset.x', idleoffsets[1]);
			setProperty(name_of_character .. '.offset.y', idleoffsets[2]);
		end
	end
end

function onTimerCompleted(tag)
if tag =='IdleChar' then
runTimer('IdleChar',0.3)
		if holdTimers < 0 then
			objectPlayAnimation(name_of_character, 'idle');
			setProperty(name_of_character .. '.offset.x', idleoffsets[1]);
			setProperty(name_of_character .. '.offset.y', idleoffsets[2]);
		end
	end
	end