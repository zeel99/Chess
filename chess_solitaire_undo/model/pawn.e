note
	description: "Summary description for {PAWN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PAWN
create
makepawn


feature
	makepawn
	 do
		end
feature
	movepawn(m:INTEGER; n:INTEGER)
	do
		if (model3.m.possible_slot(m-1,n-1)) then
			   model3.m.chess.put ("+",m-1, n-1)
			    if (model3.m.tempchess.item (m-1,n-1) /~ ".") then
	                  	model3.m.set_newmodelstate(1000)
	                  	end


			    end

		    if (model3.m.possible_slot(m-1,n+1)) then
			    model3.m.chess.put ("+",m-1, n+1)

	             if (model3.m.tempchess.item (m-1,n+1) /~ ".") then
                  	model3.m.set_newmodelstate (1000)
                        end

			    end


	 end





feature
	model3: ETF_MODEL_ACCESS
end

