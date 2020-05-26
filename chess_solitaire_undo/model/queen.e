note
	description: "Summary description for {QUEEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	QUEEN

create
makequeen


feature
	makequeen
	 do
		end
feature
	movequeen(m:INTEGER; n:INTEGER)
	do

					  if (model.m.possible_slot(m-1,n-1)) then
                           model.m.chess.put ("+",m-1,n-1)
                            if (model.m.tempchess.item (m-1,n-1) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m-1,n+1)) then
                           model.m.chess.put ("+",m-1,n+1)
                           if (model.m.tempchess.item (m-1,n+1) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m+1,n-1)) then
                           model.m.chess.put ("+",m+1,n-1)
                           if (model.m.tempchess.item (m+1,n-1) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m+1,n+1)) then
                           model.m.chess.put ("+",m+1,n+1)
                           if (model.m.tempchess.item (m+1,n+1) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m+2,n+2)) then
                           model.m.chess.put ("+",m+2,n+2)
                           if (model.m.tempchess.item (m+2,n+2) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
                        end
                        if (model.m.possible_slot(m+2,n-2)) then
                           model.m.chess.put ("+",m+2,n-2)
                           if (model.m.tempchess.item (m+2,n-2) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
                        end
                        if (model.m.possible_slot(m-2,n-2)) then
                           model.m.chess.put ("+",m-2,n-2)
                           if (model.m.tempchess.item (m-2,n-2) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model.m.possible_slot(m-2,n+2)) then
                           model.m.chess.put ("+",m-2,n+2)
                           if (model.m.tempchess.item (m-2,n+2) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m+3,n+3)) then
                           model.m.chess.put ("+",m+3,n+3)
                           if (model.m.tempchess.item (m+3,n+3) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model.m.possible_slot(m-3,n-3)) then
                           model.m.chess.put ("+",m-3,n-3)
                           if (model.m.tempchess.item (m-3,n-3) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
                        end
                         if (model.m.possible_slot(m+3,n-3)) then
                           model.m.chess.put ("+",m+3,n-3)
                           if (model.m.tempchess.item (m+3,n-3) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model.m.possible_slot(m-3,n+3)) then
                           model.m.chess.put ("+",m-3,n+3)
                           if (model.m.tempchess.item (m-3,n+3) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    	if (model.m.possible_slot(m-3,n)) then
                           model.m.chess.put ("+",m-3,n)
                            if (model.m.tempchess.item (m-3,n) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                       	end

					    end
	                   if (model.m.possible_slot(m-1,n)) then
                           model.m.chess.put ("+",m-1,n)
                            if (model.m.tempchess.item (m-1,n) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                       	end

					    end
					    if (model.m.possible_slot(m,n-1)) then
                           model.m.chess.put ("+",m,n-1)
                           if (model.m.tempchess.item (m,n-1) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                       	end
					    end
					    if (model.m.possible_slot(m,n+1)) then
                           model.m.chess.put ("+",m,n+1)
                           if (model.m.tempchess.item (m,n+1) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m+1,n)) then
                           model.m.chess.put ("+",m+1,n)
                           if (model.m.tempchess.item (m+1,n) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m+2,n)) then
                           model.m.chess.put ("+",m+2,n)
                           if (model.m.tempchess.item (m+2,n) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model.m.possible_slot(m,n+2)) then
                           model.m.chess.put ("+",m,n+2)
                           if (model.m.tempchess.item (m,n+2) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model.m.possible_slot(m,n-2)) then
                           model.m.chess.put ("+",m,n-2)
                           if (model.m.tempchess.item (m,n-2) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model.m.possible_slot(m-2,n)) then
                           model.m.chess.put ("+",m-2,n)
                           if (model.m.tempchess.item (m-2,n) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model.m.possible_slot(m,n+3)) then
                           model.m.chess.put ("+",m,n+3)
                           if (model.m.tempchess.item (m,n+3) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
                        end
                         if (model.m.possible_slot(m,n-3)) then
                           model.m.chess.put ("+",m,n-3)
                           if (model.m.tempchess.item (m,n-3) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
                        end
                         if (model.m.possible_slot(m+3,n)) then
                           model.m.chess.put ("+",m+3,n)
                           if (model.m.tempchess.item (m+3,n) /~ ".") then
	                         	model.m.set_newmodelstate(1000)
	                         	end
					    end



	 end





feature
	model: ETF_MODEL_ACCESS
end

