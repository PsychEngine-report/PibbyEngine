local dodgeName = {
	{'dodgeLEFT'},
	{'dodgeDOWN'},
	{'dodgeUP'},
	{'dodgeRIGHT'},
	}
function goodNoteHit(id,dir,type,sus)
if type == 'Dodge Note' then
		characterPlayAnim('boyfriend',dodgeName[dir+ 1][1] , true)
		setProperty('boyfriend.specialAnim', true);
	end
	end