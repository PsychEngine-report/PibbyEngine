ofs= 5
scoreAngle = 1.5
scoreTimeAngle = 0.2
fix = true 
fix1 = false

function onCreatePost()
xx2= -200
yy2= getProperty('healthBar.y')+40
end

function goodNoteHit(id,data,type,sus)
if type =='GF Sing' and not sus then
scoreGF = true 
onHUDUpdate()
elseif not sus then
onHUDUpdate()
scoreGF = false
end
runTimer('Nor',0.25)
if not sus then
xy = data
end
    end
    
 function onUpdate()   
            if xy== 0 then
                setProperty('scoreTxt.x',xx2-ofs)
                setProperty('scoreTxt.y',yy2)
                setProperty('scoreTxt.angle',scoreAngle)
                doTweenAngle('scoreAngle','scoreTxt',0,scoreTimeAngle,'linear')
            end
            if xy==3 then
                setProperty('scoreTxt.x',xx2+ofs)
                setProperty('scoreTxt.y',yy2)
                setProperty('scoreTxt.angle',-scoreAngle)
                doTweenAngle('scoreAngle','scoreTxt',0,scoreTimeAngle,'linear')
            end
            if xy==2 then
                doTweenX('scoreX','scoreTxt',xx2,scoreTimeAngle/2,'linear')
                doTweenY('scoreY','scoreTxt',yy2,scoreTimeAngle/2,'linear')
                doTweenAngle('scoreAngle','scoreTxt',0,scoreTimeAngle,'linear')
            end
            if xy==1 then
                doTweenX('scoreX','scoreTxt',xx2,scoreTimeAngle/2,'linear')
                doTweenY('scoreY','scoreTxt',yy2,scoreTimeAngle/2,'linear')
                doTweenAngle('scoreAngle','scoreTxt',0,scoreTimeAngle,'linear')
            end


            
end

    function onTimerCompleted(tag)
   if tag =='Nor' then
  xy = 1
                end
               end
                
 --   function onTweenCompleted(tag)
 --   if tag =='scoreAngle' then
--    doTweenAngle('scoreAngle2','scoreTxt',0,scoreTimeAngle,'linear')
 --   setProperty('scoreTxt.x',xx2)
   --             setProperty('scoreTxt.y',yy2)
    --           end
    --         end
                
                function onStepHit()
                doTweenAngle('scoreAngle','scoreTxt',0,scoreTimeAngle,'linear')
                end
                
                function onHUDUpdate() 

              if scoreGF then
 setProperty('scoreTxt.color', getIconColor('gf')) 

elseif not scoreGF then
 setProperty('scoreTxt.color', getIconColor('boyfriend')) 
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
setProperty('scoreTxt.color', getIconColor('dad')) 
end

function getIconColor(chr)
	local chr = chr or "dad"
	return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
	end
	
	function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end