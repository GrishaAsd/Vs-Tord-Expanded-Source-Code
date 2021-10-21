function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Tord Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'TORDNOTE_assets');
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Tord Note' then
		setProperty('health', -1000);
	end
end