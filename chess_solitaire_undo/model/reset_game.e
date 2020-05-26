note
	description: "Summary description for {RESET_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RESET_GAME

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

	end

undo
do

end
redo
do

end
end
