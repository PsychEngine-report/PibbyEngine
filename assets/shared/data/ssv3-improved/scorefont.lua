function onCreate()
	makeLuaSprite('mails', 'ss/mails', 275, 100)
	setObjectCamera('mails', 'camHUD')
	scaleObject('mails', 1.4, 1.4)
	addLuaSprite('mails', true)
	setProperty('mails.alpha', 0)
end

function onUpdate()
if curStep <=9 then
        noteTweenAlpha('PlayerNote0', 4, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 0, 0.0001, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 0, 0.0001, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 0, 0.0001, 'linear')
        doTweenAlpha('IconPibby', 'IconPibby', 0, 0.0001, 'linear')
        doTweenAlpha('pibbylose', 'pibbylose', 0, 0.0001, 'linear')
        doTweenAlpha('iconJakee', 'iconJake', 0, 0.0001, 'linear')
        doTweenAlpha('jakelose', 'jakelose', 0, 0.0001, 'linear')
        doTweenAlpha('songLength', 'songLength', 0, 0.0001, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.0001, 'linear')
        doTweenAlpha('healthBarScript', 'healthBarScript', 0, 0.0001, 'linear')
end
if curStep == 3 then
	doTweenAlpha('mails', 'mails', 1, 2, 'linear')
end
if curStep == 99 then
	doTweenAlpha('mails', 'mails', 0, 2, 'linear')
end

if curStep == 128 then
     noteTweenAlpha('PlayerNote0', 4, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote1', 5, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote2', 6, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote3', 7, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote4', 0, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote5', 1, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote6', 2, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote7', 3, 1, 0.4, 'linear')
     doTweenAlpha('iconP1', 'iconP1', 1, 0.1, 'linear')
     doTweenAlpha('iconP2', 'iconP2', 1, 0.1, 'linear')
     doTweenAlpha('IconPibby', 'IconPibby', 1, 0.1, 'linear')
     doTweenAlpha('pibbylose', 'pibbylose', 1, 0.1, 'linear')
     doTweenAlpha('iconJakee', 'iconJake', 1, 0.1, 'linear')
     doTweenAlpha('jakelose', 'jakelose', 1, 0.1, 'linear')
     doTweenAlpha('songLength', 'songLength', 1, 0.1, 'linear')
     doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.1, 'linear')
     doTweenAlpha('healthBarScript', 'healthBarScript', 1, 0.1, 'linear')
end

 if curStep == 1536 then
        noteTweenAlpha('PlayerNote0', 4, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 0, 0.0001, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 0, 0.0001, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 0, 0.0001, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 0, 0.0001, 'linear')
        doTweenAlpha('IconPibby', 'IconPibby', 0, 0.0001, 'linear')
        doTweenAlpha('pibbylose', 'pibbylose', 0, 0.0001, 'linear')
        doTweenAlpha('iconJakee', 'iconJake', 0, 0.0001, 'linear')
        doTweenAlpha('jakelose', 'jakelose', 0, 0.0001, 'linear')
        doTweenAlpha('songLength', 'songLength', 0, 0.0001, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.0001, 'linear')
        doTweenAlpha('healthBarScript', 'healthBarScript', 0, 0.0001, 'linear')

 end

 if curStep == 1848 then
     noteTweenAlpha('PlayerNote0', 4, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote1', 5, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote2', 6, 1, 0.4, 'linear')
     noteTweenAlpha('PlayerNote3', 7, 1, 0.4, 'linear')
 end

 if curStep == 1856 then
     noteTweenAlpha('PlayerNote4', 0, 1, 0.0001, 'linear')
     noteTweenAlpha('PlayerNote5', 1, 1, 0.0001, 'linear')
     noteTweenAlpha('PlayerNote6', 2, 1, 0.0001, 'linear')
     noteTweenAlpha('PlayerNote7', 3, 1, 0.0001, 'linear')
     doTweenAlpha('iconP1', 'iconP1', 1, 0.0001, 'linear')
     doTweenAlpha('iconP2', 'iconP2', 1, 0.0001, 'linear')
     doTweenAlpha('IconPibby', 'IconPibby', 1, 0.0001, 'linear')
     doTweenAlpha('pibbylose', 'pibbylose', 1, 0.0001, 'linear')
     doTweenAlpha('iconJakee', 'iconJake', 1, 0.0001, 'linear')
     doTweenAlpha('jakelose', 'jakelose', 1, 0.0001, 'linear')
     doTweenAlpha('songLength', 'songLength', 1, 0.0001, 'linear')
     doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.0001, 'linear')
     doTweenAlpha('healthBarScript', 'healthBarScript', 1, 0.0001, 'linear')
 end

if curStep == 4651 then
        noteTweenAlpha('PlayerNote0', 4, 0, 1, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 0, 1, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 0, 1, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 0, 1, 'linear')
        noteTweenAlpha('PlayerNote4', 0, 0, 1, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 0, 1, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 0, 1, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 0, 1, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 0, 1, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 0, 1, 'linear')
        doTweenAlpha('IconPibby', 'IconPibby', 0, 1, 'linear')
        doTweenAlpha('pibbylose', 'pibbylose', 0, 1, 'linear')
        doTweenAlpha('iconJakee', 'iconJake', 0, 1, 'linear')
        doTweenAlpha('jakelose', 'jakelose', 0, 1, 'linear')
        doTweenAlpha('songLength', 'songLength', 0, 1, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 0, 1, 'linear')
        doTweenAlpha('healthBarScript', 'healthBarScript', 0, 1, 'linear')

end

if curStep == 4924 then
        noteTweenAlpha('PlayerNote0', 4, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote1', 5, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote2', 6, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote3', 7, 1, 1, 'linear')
        doTweenAlpha('iconP1', 'iconP1', 1, 1, 'linear')
        doTweenAlpha('iconP2', 'iconP2', 1, 1, 'linear')
        doTweenAlpha('IconPibby', 'IconPibby', 1, 1, 'linear')
        doTweenAlpha('pibbylose', 'pibbylose', 1, 1, 'linear')
        doTweenAlpha('iconJakee', 'iconJake', 1, 1, 'linear')
        doTweenAlpha('jakelose', 'jakelose', 1, 1, 'linear')
        doTweenAlpha('songLength', 'songLength', 1, 1, 'linear')
        doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'linear')
        doTweenAlpha('healthBarScript', 'healthBarScript', 1, 1, 'linear')
end

if curStep == 5312 then
        noteTweenAlpha('PlayerNote4', 0, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote5', 1, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote6', 2, 1, 1, 'linear')
        noteTweenAlpha('PlayerNote7', 3, 1, 1, 'linear')
end        

setTextFont('scoreTxt', 'Thunderman.ttf')
end