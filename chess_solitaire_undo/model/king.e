note
	description: "Summary description for {KING}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	KING
	create
makeking


feature
	makeking
	 do
		end
feature
	moveking(m:INTEGER; n:INTEGER)
	do
	                	if (model1.m.possible_slot(m-1,n-1)) then
                           model1.m.chess.put ("+",m-1,n-1)
                            if (model1.m.tempchess.item (m-1,n-1) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model1.m.possible_slot(m-1,n)) then
                           model1.m.chess.put ("+",m-1,n)
                           if (model1.m.tempchess.item (m-1,n) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model1.m.possible_slot(m-1,n+1)) then
                           model1.m.chess.put ("+",m-1,n+1)
                           if (model1.m.tempchess.item (m-1,n+1) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model1.m.possible_slot(m,n+1)) then
                           model1.m.chess.put ("+",m,n+1)
                           if (model1.m.tempchess.item (m,n+1) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model1.m.possible_slot(m+1,n+1)) then
                           model1.m.chess.put ("+",m+1,n+1)
                           if (model1.m.tempchess.item (m+1,n+1) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
                        end
                        if (model1.m.possible_slot(m+1,n)) then
                           model1.m.chess.put ("+",m+1,n)
                           if (model1.m.tempchess.item (m+1,n) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
                        end
                        if (model1.m.possible_slot(m+1,n-1)) then
                           model1.m.chess.put ("+",m+1,n-1)
                           if (model1.m.tempchess.item (m+1,n-1) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
					    end
					    if (model1.m.possible_slot(m,n-1)) then
                           model1.m.chess.put ("+",m,n-1)
                           if (model1.m.tempchess.item (m,n-1) /~ ".") then
	                         	model1.m.set_newmodelstate(1000)
	                         	end
					    end


	 end





feature
	model1: ETF_MODEL_ACCESS
end



