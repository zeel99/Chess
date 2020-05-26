note
	description: "Summary description for {START_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	START_GAME

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
do
model.setmodelstate (1)
model.sets ("Game being Setup...")
end
redo
do
model.setmodelstate (2)
model.sets ("Game In Progress...")

end
end
