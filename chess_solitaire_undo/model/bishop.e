note
	description: "Summary description for {BISHOP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BISHOP
	create
makebishop


feature
	makebishop
	 do
		end
feature
	movebishop(m:INTEGER; n:INTEGER)
	do
		                 if (model2.m.possible_slot(m-1,n-1)) then
                           model2.m.chess.put ("+",m-1,n-1)
                            if (model2.m.tempchess.item (m-1,n-1) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model2.m.possible_slot(m-1,n+1)) then
                           model2.m.chess.put ("+",m-1,n+1)
                           if (model2.m.tempchess.item (m-1,n+1) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model2.m.possible_slot(m+1,n-1)) then
                           model2.m.chess.put ("+",m+1,n-1)
                           if (model2.m.tempchess.item (m+1,n-1) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model2.m.possible_slot(m+1,n+1)) then
                           model2.m.chess.put ("+",m+1,n+1)
                           if (model2.m.tempchess.item (m+1,n+1) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model2.m.possible_slot(m+2,n+2)) then
                           model2.m.chess.put ("+",m+2,n+2)
                           if (model2.m.tempchess.item (m+2,n+2) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         	model2.m.set_block (1000)
	                         	end
                        end
                        if (model2.m.possible_slot(m+2,n-2)) then
                           model2.m.chess.put ("+",m+2,n-2)
                           if (model2.m.tempchess.item (m+2,n-2) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         		model2.m.set_block (1000)
	                         	end
                        end
                        if (model2.m.possible_slot(m-2,n-2)) then
                           model2.m.chess.put ("+",m-2,n-2)
                           if (model2.m.tempchess.item (m-2,n-2) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         		model2.m.set_block (1000)
	                         	end
					    end
					     if (model2.m.possible_slot(m-2,n+2)) then
                           model2.m.chess.put ("+",m-2,n+2)
                           if (model2.m.tempchess.item (m-2,n+2) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         		model2.m.set_block (1000)
	                         	end
					    end
					    if (model2.m.possible_slot(m+3,n+3)) then
                           model2.m.chess.put ("+",m+3,n+3)
                           if (model2.m.tempchess.item (m+3,n+3) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         		model2.m.set_block (1000)
	                         	end
					    end
					     if (model2.m.possible_slot(m-3,n-3)) then
                           model2.m.chess.put ("+",m-3,n-3)
                           if (model2.m.tempchess.item (m-3,n-3) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         		model2.m.set_block (1000)
	                         	end
                        end
                         if (model2.m.possible_slot(m+3,n-3)) then
                           model2.m.chess.put ("+",m+3,n-3)
                           if (model2.m.tempchess.item (m+3,n-3) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         		model2.m.set_block (1000)
	                         	end
					    end
					     if (model2.m.possible_slot(m-3,n+3)) then
                           model2.m.chess.put ("+",m-3,n+3)
                           if (model2.m.tempchess.item (m-3,n+3) /~ ".") then
	                         	model2.m.set_newmodelstate(1000)
	                         		model2.m.set_block (1000)
	                         	end
					    end

					end





feature
	model2: ETF_MODEL_ACCESS
end

