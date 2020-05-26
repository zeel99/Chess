note
	description: "Summary description for {KNIGHT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	KNIGHT

create
makeknight


feature
	makeknight
	 do
		end
feature
	moveknight(m:INTEGER; n:INTEGER)
	do
	                   if (model5.m.possible_slot(m-1,n+2)) then
                           model5.m.chess.put ("+",m-1,n+2)
                            if (model5.m.tempchess.item (m-1,n+2) /~ ".") then
	                         	model5.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model5.m.possible_slot(m+1,n+2)) then
                           model5.m.chess.put ("+",m+1,n+2)
                           if (model5.m.tempchess.item (m+1,n+2) /~ ".") then
	                         	model5.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model5.m.possible_slot(m+2,n+1)) then
                           model5.m.chess.put ("+",m+2,n+1)
                           if (model5.m.tempchess.item (m+2,n+1) /~ ".") then
	                         	model5.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model5.m.possible_slot(m+2,n-1)) then
                           model5.m.chess.put ("+",m+2,n-1)
                           if (model5.m.tempchess.item (m+2,n-1) /~ ".") then
	                         	model5.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model5.m.possible_slot(m-2,n-1)) then
                           model5.m.chess.put ("+",m-2,n-1)
                           if (model5.m.tempchess.item (m-2,n-1) /~ ".") then
	                         	model5.m.set_newmodelstate(1000)
	                         	end
                        end
                        if (model5.m.possible_slot(m-2,n+1)) then
                           model5.m.chess.put ("+",m-2,n+1)
                           if (model5.m.tempchess.item (m-2,n+1) /~ ".") then
	                         	model5.m.set_newmodelstate(1000)
	                         	end
                        end
                        if (model5.m.possible_slot(m-1,n-2)) then
                           model5.m.chess.put ("+",m-1,n-2)
                           if (model5.m.tempchess.item (m-1,n-2) /~ ".") then
	                         	model5.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model5.m.possible_slot(m+1,n-2)) then
                           model5.m.chess.put ("+",m+1,n-2)
					    end

	 end





feature
	model5: ETF_MODEL_ACCESS
end

