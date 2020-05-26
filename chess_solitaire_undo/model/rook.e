note
	description: "Summary description for {ROOK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ROOK

create
makerook


feature
	makerook
	 do
		end
feature
	moverook(m:INTEGER; n:INTEGER)
	do
	              	if (model4.m.possible_slot(m-3,n)) then
                           model4.m.chess.put ("+",m-3,n)
                            if (model4.m.tempchess.item (m-3,n) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                       	end

					    end
	                   if (model4.m.possible_slot(m-1,n)) then
                           model4.m.chess.put ("+",m-1,n)
                            if (model4.m.tempchess.item (m-1,n) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                       	end

					    end
					    if (model4.m.possible_slot(m,n-1)) then
                           model4.m.chess.put ("+",m,n-1)
                           if (model4.m.tempchess.item (m,n-1) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                       	end
					    end
					    if (model4.m.possible_slot(m,n+1)) then
                           model4.m.chess.put ("+",m,n+1)
                           if (model4.m.tempchess.item (m,n+1) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model4.m.possible_slot(m+1,n)) then
                           model4.m.chess.put ("+",m+1,n)
                           if (model4.m.tempchess.item (m+1,n) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model4.m.possible_slot(m+2,n)) then
                           model4.m.chess.put ("+",m+2,n)
                           if (model4.m.tempchess.item (m+2,n) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model4.m.possible_slot(m,n+2)) then
                           model4.m.chess.put ("+",m,n+2)
                           if (model4.m.tempchess.item (m,n+2) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model4.m.possible_slot(m,n-2)) then
                           model4.m.chess.put ("+",m,n-2)
                           if (model4.m.tempchess.item (m,n-2) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model4.m.possible_slot(m-2,n)) then
                           model4.m.chess.put ("+",m-2,n)
                           if (model4.m.tempchess.item (m-2,n) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
					    end
					     if (model4.m.possible_slot(m,n+3)) then
                           model4.m.chess.put ("+",m,n+3)
                           if (model4.m.tempchess.item (m,n+3) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
                        end
                         if (model4.m.possible_slot(m,n-3)) then
                           model4.m.chess.put ("+",m,n-3)
                           if (model4.m.tempchess.item (m,n-3) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
                        end
                         if (model4.m.possible_slot(m+3,n)) then
                           model4.m.chess.put ("+",m+3,n)
                           if (model4.m.tempchess.item (m+3,n) /~ ".") then
	                         	model4.m.set_newmodelstate(1000)
	                         	end
					    end

	 end





feature
	model4: ETF_MODEL_ACCESS
end

