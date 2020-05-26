note
	description: "Summary description for {SETUP_CHESS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"



class
	SETUP_CHESS

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

   model.chess.put (".",model.h.row.item,model.h.col.item)
    model.h.item_for_undo

   model.seti (model.i-1)
     model.sets ("Game being Setup...")


end
redo
do
	model.h.item_for_redo
	model.chess.put (model.h.num.item,model.h.row.item,model.h.col.item)

--   model.chess.copy (model.h.get_chessredo)
   model.seti (model.i+1)
   model.sets ("Game being Setup...")

end
end
