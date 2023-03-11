function start(song) -- do nothing

end

function setDefault(id)
	_G['defaultStrum'..id..'X'] = getActorX(id)
end

function update(elapsed) -- do nothing

end

function beatHit(beat) -- do nothing

end

function stepHit(step) 
	if step == 56 then
        twoplayer = true;
		for i=0,3 do
			tweenFadeOut(i,0, 0.5)
		end
        for i=4,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 305,getActorAngle(i), 0.6, 'setDefault')
		end
    end
    if step == 450 then 
        for i=0,3 do
            tweenFadeIn(i,1, 0.5)
        end
        for i=4,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] + 305,getActorAngle(i), 0.6, 'setDefault')
		end
    end
end