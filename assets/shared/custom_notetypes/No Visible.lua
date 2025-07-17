function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'No Visible' then
		setPropertyFromGroup('unspawnNotes', i, 'texture', 'noNOTE_assets'); 
			        setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			end
		end
	end