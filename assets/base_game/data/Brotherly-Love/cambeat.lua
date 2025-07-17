local angleshit = 1;
local anglevar = 1;
local beat=false
function onBeatHit()
    if curBeat > 31 and beat then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
            --doTweenZoom('camz','camHUD', 1.02, 0.2,'linear')
        else
            angleshit = -anglevar;
            --doTweenZoom('camz','camHUD', 1.05, 0.2,'linear')
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    end
end

function onEvent(name,value1,value2)
if name == 'Ansfoxy' then 
if value1 == 'beat' then
beat=true
end

if value1 == 'beat2' then
setProperty('camHUD.angle', 0, 0.2, 'linear')
beat=false
end

if value1 == 'fim' then
setProperty('camHUD.angle', 0, 0.2, 'linear')
beat=false
end

end
end
