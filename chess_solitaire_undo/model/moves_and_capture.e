note
	description: "Summary description for {MOVES_AND_CAPTURE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MOVES_AND_CAPTURE

	inherit
COMMAND

create
make



feature

	make (m: ETF_MODEL; a,b,c,d : INTEGER)
		do
			model := m
			r1:=a
			r2:=c
			c1:=b
			c2:=d
		end

feature {NONE}

	model: ETF_MODEL
	r1,c1,r2,c2: INTEGER

feature--

execute
	do

--         model.newmodelstate:=0
--		    model.chess.put (model.chess.item (r1,c1),r2,c2)
--			model.chess.put (".", r1,c1)
--			model.set_newmodelstate (4)
--			model.seti (model.i -1)
		--	model.modelstate := 4
	      --  model.i:=model.i-1
	       model.h.put (current)
	end

undo
do

	model.chess.put (model.chess.item(r2,c2) , model.h.row.item,model.h.col.item)
	model.chess.put (model.h.num.item, r2,c2)
	model.h.item_for_undo
	model.seti (model.i+1)
	model.sets ("Game In Progress...")
	model.setmodelstate (4)
	-- model.h.put (current)
--model.h.item_for_redo




end
redo
		do


model.chess.put (model.chess.item(r1,c1),r2,c2)

model.chess.put (".",r1,c1)
model.h.item_for_redo

model.seti (model.i-1)
model.sets ("Game In Progress...")
model.setmodelstate (4)
if(model.i = 1 )
then
	model.setmodelstate (6)
	model.sets ("Game Over: You Win!")
	end
		end
end
