local shootName = {
	{'shootLEFT'},
	{'shootDOWN'},
	{'shootUP'},
	{'shootRIGHT'},
	}
	
function goodNoteHit(id,dir,type,sus)
if type == 'Attack Note' then
		characterPlayAnim('boyfriend',shootName[dir+ 1][1] , true)
		setProperty('boyfriend.specialAnim', true);
	end
	end