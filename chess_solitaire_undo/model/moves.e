note
	description: "Summary description for {MOVES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MOVES

	inherit
COMMAND

create
make



feature

	make (m: ETF_MODEL)
		do
			model := m
		end

feature {NONE}

	model: ETF_MODEL

feature--
execute
	do
     model.h.put (current)
	end

undo
--local
--	k:MOVES_AND_CAPTURE
do
--k.undo
end

redo
--local
--	k:MOVES_AND_CAPTURE
do
--k.redo
end
end
