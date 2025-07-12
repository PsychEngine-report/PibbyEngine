function coolermakeGraphic(tag, x, y, width, height, color, ontop)
    makeLuaSprite(tag, '')
    makeGraphic(tag, width, height, color)
    addLuaSprite(tag, ontop)
    
    setProperty(tag .. ".x", x)
    
    setProperty(tag .. ".y", y)
end
function onCreate()
    coolermakeGraphic('camangle', 1, 1, 1, 1, '000000', false)
    setProperty('camangle.x', 0)
end
lastwassus = ''
lesusdir = 0
function onUpdate(elapsed)
    for i = 0, 7 do
        if (string.match(getPropertyFromGroup('strumLineNotes', i, 'animation.curAnim.name'), 'confirm') ~= nil) and (string.match(getPropertyFromGroup('strumLineNotes', i, 'animation.curAnim.name'), 'confirm0003') == nil) then
            if lastwassus == nil then

                lastwassus = i
            end
            if lastwassus > 3 and i > 3 then
                i = i % 4
                if (lastwassus >= 4) then
                    if ((lastwassus % 4) < i) and (getProperty('camangle.angle') < 1) then
                        --boyfriend 
                        
                        setProperty('camangle.angle', getProperty('camangle.angle') + (0.1))
                    else
                        if ((lastwassus % 4) > i) and (getProperty('camangle.angle') > -1) then
                        
                            setProperty('camangle.angle', getProperty('camangle.angle') - (0.1))
                        end
                    end
                end
            end
            if lastwassequel == nil then

                lastwassequel = i
            end
            if lastwassequel <= 3 and i <= 3 then
                if (lastwassequel <= 3) then
                    if ((lastwassequel) < i) and (getProperty('camangle.angle') < 1) then
                        --dad
                        
                        setProperty('camangle.angle', getProperty('camangle.angle') + (0.1))
                    else
                    
                        if ((lastwassequel) > i) and (getProperty('camangle.angle') > -1) then
                        
                            setProperty('camangle.angle', getProperty('camangle.angle') - (0.1))
                        end
                    end
                end
            end
        end
        if (string.match(getPropertyFromGroup('strumLineNotes', i, 'animation.curAnim.name'), 'static') == nil) or (string.match(getPropertyFromGroup('strumLineNotes', i, 'animation.curAnim.name'), 'pressed') == nil) then
            theball = false
        end
    end
    if theball == false then
        doTweenAngle('sex', 'camangle', 0, 0.05, 'sineInOut')
        theball = true
    end


    if string.match(getPropertyFromGroup('strumLineNotes', lastwassus, 'animation.curAnim.name'), 'static') or (string.match(getPropertyFromGroup('strumLineNotes', i, 'animation.curAnim.name'), 'pressed') ~= nil) and ((lastwassus ~= nil) or (lastwassequel ~= nil)) then
        lastwassus = nil
        lastwassequel = nil
    end
    setProperty('camGame.angle', getProperty('camangle.angle'))
    setProperty('scoreTxt.angle', getProperty('camangle.angle'))
end


