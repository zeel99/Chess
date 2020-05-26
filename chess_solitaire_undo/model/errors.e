note
	description: "Summary description for {ERRORS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ERRORS

create
  error

feature
     error
     do
     end


feature
errorStartGame : BOOLEAN
	  do

		if ( modelerror.m.modelstate <7 and modelerror.m.modelstate>=2  )  then
		   modelerror.m.sets ("Error: Game already started")
		   result := true

		  elseif (modelerror.m.i=1)
		     then
				modelerror.m.sets ("Game Over: You Win!")
				modelerror.m.setmodelstate (6)
				result := true
		  else
		  	modelerror.M.setmodelstate (2)
		     modelerror.m.blockexists
		     if (modelerror.m.newmodelstate /= 1000)then
		         modelerror.m.sets ("Game Over: You Lose!")
		         modelerror.m.setmodelstate (6)
		         result := true

		     end
		  end
	  end

errorresetgame :BOOLEAN
	  do
	   if (modelerror.m.modelstate <2 ) then
		modelerror.m.sets ( "Error: Game not yet started")
		result :=true
	   end

 end

errorsetupchess( y:INTEGER; z:INTEGER) : BOOLEAN
	 do
--	 		if(modelerror.m.modelstate = 6) then
--				modelerror.m.sets ("Error: Game already over")
--				result := true

--			else
	if(modelerror.m.modelstate >= 2 and modelerror.m.modelstate < 7)  then
				 modelerror.m.sets ("Error: Game already started")
		         result := true

			elseif(not ((y>=1 and y<5) and (z>=1 and z<5))) then
				 modelerror.m.sets ("Error: ("+ y.out+", "+ z.out +") not a valid slot")
                 result := true
			else
				modelerror.m.setmodelstate (1)
				if (modelerror.m.chess.item (y, z) /~ "." ) then
				 modelerror.m.sets( "Error: Slot @ ("+ y.out+", "+ z.out +") already occupied")
				 result := true
				 end
	        end

	 end


errormoves(m:INTEGER; n:INTEGER) : BOOLEAN
			 do
			 	if(not (modelerror.m.modelstate>=2)) then
			modelerror.m.sets ("Error: Game not yet started")
			result := true

			elseif(modelerror.m.modelstate = 6) then
			modelerror.m.sets( "Error: Game already over")
			result := true
			elseif(not (modelerror.m.possible_slot (m,n))) then
				modelerror.m.sets ("Error: ("+m.out +", "+n.out+") not a valid slot")
				result := true
			elseif(modelerror.m.chess.item (m, n) ~ ".") then
				modelerror.m.sets( "Error: Slot @ ("+ m.out+ ", "+ m.out +") not occupied")
				result := true
				else
					result:= false
					modelerror.m.sets( "Game In Progress...")
               end
			 end

block_exists_between (r1,c1,r2,c2:INTEGER):BOOLEAN
do

	if(modelerror.m.chess.item (r1,c1) ~ "N")then

				if(r2=r1+1 and c2=c1+2) then
				Result:= (modelerror.m.chess.item(r1+1,c1) /~ ".") or (modelerror.m.chess.item(r1+1,c1+1) /~ ".")
				end

				if(r2=r1+2 and c2=c1-1) then
				Result:= (modelerror.m.chess.item(r1+1,c1) /~ ".") or (modelerror.m.chess.item(r1+2,c1) /~ ".")
				end
				if(r2=r1-2 and c2=c1+1) then
				Result:= (modelerror.m.chess.item(r1-1,c1) /~ ".") or (modelerror.m.chess.item(r1-2,c1) /~ ".")
				end
				if(r2=r1+2 and c2=c1+1) then
				Result:= (modelerror.m.chess.item(r1+1,c1) /~ ".") or (modelerror.m.chess.item(r1+2,c1) /~ ".")
				end
				if(r2=r1-1 and c2=c1+2) then
				Result:= (modelerror.m.chess.item(r1-1,c1) /~ ".") or (modelerror.m.chess.item(r1-1,c1+1) /~ ".")
				end

				if(r2=r1+1 and c2=c1-2) then
				Result:= (modelerror.m.chess.item(r1+1,c1) /~ ".") or (modelerror.m.chess.item(r1+1,c1-1) /~ ".")
				end

				if(r2=r1-2 and c2=c1-1) then
				Result:= (modelerror.m.chess.item(r1-1,c1) /~ ".") or (modelerror.m.chess.item(r1-2,c1) /~ ".")
				end
				if(r2=r1-1 and c2=c1-2) then
				Result:= (modelerror.m.chess.item(r1-1,c1) /~ ".") or (modelerror.m.chess.item(r1-1,c1-1) /~ ".")
				end
		end
	if(modelerror.m.chess.item (r1,c1) ~ "R")then

			if(c1=c2)then
				if(r2=r1+2)then
				Result:= modelerror.m.chess.item(r1+1,c1) /~ "."
				end

				if(r2=r1-3) then
				Result:= (modelerror.m.chess.item(r1-2,c1) /~ ".") or (modelerror.m.chess.item (r1-1,c1)/~ ".")
				end
				if(r2=r1+3) then
				Result:= ((modelerror.m.chess.item(r1+2,c1) /~ ".") or (modelerror.m.chess.item (r1+1,c1)/~ "."))
				end
				if(r2=r1-2)then
				Result:= modelerror.m.chess.item(r1-1,c1) /~ "."
				end
		end
			if(r1=r2)then
				if(c2=c1+2)then
				Result:= modelerror.m.chess.item(r1,c1+1) /~ "."
				end

				if(c2=c1-2)then
				Result:= modelerror.m.chess.item(r1,c1-1) /~ "."
				end
				if(c2=c1+3) then
				Result:= ((modelerror.m.chess.item(r1,c1+2) /~ ".") or (modelerror.m.chess.item (r1,c1+1)/~ "."))
				end

				if(c2=c1-3) then
				Result:= (modelerror.m.chess.item(r1,c1-2) /~ ".") or (modelerror.m.chess.item (r1,c1-1)/~ ".")
				end

			end

		end

if(modelerror.m.chess.item (r1,c1) ~ "Q")then
				if(r1=r2)then
					if(c2=c1-2)then
					Result:= modelerror.m.chess.item(r1,c1-1) /~ "."
					end
					if(c2=c1+2)then
					Result:= modelerror.m.chess.item(r1,c1+1) /~ "."
					end
					if(c2=c1-3) then
					Result:= (modelerror.m.chess.item(r1,c1-2) /~ ".") or (modelerror.m.chess.item (r1,c1-1)/~ ".")
					end


					if(c2=c1+3) then
					Result:= ((modelerror.m.chess.item(r1,c1+2) /~ ".") or (modelerror.m.chess.item (r1,c1+1)/~ "."))
					end


		        end

			if(c1=c2)then
				if(r2=r1+2)then
				Result:= modelerror.m.chess.item(r1+1,c1) /~ "."
				end
				if(r2=r1+3) then
				Result:= ((modelerror.m.chess.item(r1+2,c1) /~ ".") or (modelerror.m.chess.item (r1+1,c1)/~ "."))
				end
	           if(r2=r1-3) then
				Result:= (modelerror.m.chess.item(r1-2,c1) /~ ".") or (modelerror.m.chess.item (r1-1,c1)/~ ".")
				end
				if(r2=r1-2)then
				Result:= modelerror.m.chess.item(r1-1,c1) /~ "."
				end


			end



			if(r2=r1+2 and c2=c1+2) then
			Result:= modelerror.m.chess.item(r1+1,c1+1) /~ "."
			end
			if(r2=r1+3 and c2=c1-3) then
					Result:= (modelerror.m.chess.item(r1+2,c1-2) /~ ".") or (modelerror.m.chess.item(r1+1,c1-1) /~ ".")
					end
			if(r2=r1-2 and c2=c1-2) then
			Result:= modelerror.m.chess.item(r1-1,c1-1) /~ "."
			end
			if(r2=r1+3 and c2=c1+3) then
			Result:= (modelerror.m.chess.item(r1+2,c1+2) /~ ".") or (modelerror.m.chess.item(r1+1,c1+1) /~ ".")
			end
			if(r2=r1+2 and c2=c1-2) then
					Result:= modelerror.m.chess.item(r1+1,c1-1) /~ "."
					end

			if(r2=r1-3 and c2=c1-3) then
			Result:= (modelerror.m.chess.item(r1-1,c1-1) /~ ".") or (modelerror.m.chess.item(r1-2,c1-2) /~ ".")
			end


			if(r2=r1-2 and c2=c1+2) then
			Result:= (modelerror.m.chess.item(r1-1,c1+1) /~ ".") or (modelerror.m.chess.item(r1-2,c1+2) /~ ".")
			end
			if(r2=r1-2 and c2=c1+2) then
			Result:= modelerror.m.chess.item(r1-1,c1+1) /~ "."
			end
		end
		if(modelerror.m.chess.item (r1,c1) ~ "B")then


			if(r2=r1-3 and c2=c1-3) then
			Result:= (modelerror.m.chess.item(r1-1,c1-1) /~ ".") or (modelerror.m.chess.item(r1-2,c1-2) /~ ".")
			end
			if(r2=r1+2 and c2=c1-2) then
			Result:= modelerror.m.chess.item(r1+1,c1-1) /~ "."
			end
			if(r2=r1+3 and c2=c1+3) then
			Result:= (modelerror.m.chess.item(r1+2,c1+2) /~ ".") or (modelerror.m.chess.item(r1+1,c1+1) /~ ".")
			end

			if(r2=r1+2 and c2=c1+2) then
			Result:= modelerror.m.chess.item(r1+1,c1+1) /~ "."
			end
			if(r2=r1-2 and c2=c1-2) then
			Result:= modelerror.m.chess.item(r1-1,c1-1) /~ "."
			end


			if(r2=r1-2 and c2=c1+2) then
			Result:= (modelerror.m.chess.item(r1-1,c1+1) /~ ".") or (modelerror.m.chess.item(r1-2,c1+2) /~ ".")
			end
			if(r2=r1+3 and c2=c1-3) then
				Result:= (modelerror.m.chess.item(r1+2,c1-2) /~ ".") or (modelerror.m.chess.item(r1+1,c1-1) /~ ".")
				end
				if(r2=r1-2 and c2=c1+2) then
				Result:= modelerror.m.chess.item(r1-1,c1+1) /~ "."
				end



end


end
errormoves_and_capture(r1: INTEGER_32 ; c1: INTEGER_32 ; r2: INTEGER_32 ; c2: INTEGER_32) : BOOLEAN
	do
        if(modelerror.m.s ~ "Game being Setup...") then
         	modelerror.m.sets ("Error: Game not yet started")
		elseif(modelerror.m.modelstate = 6) then
			modelerror.m.sets ("Error: Game already over")
		elseif(not(modelerror.m.possible_slot(r1,c1))) then
		modelerror.m.sets ("Error: ("+ r1.out+ ", "+ c1.out +") not a valid slot")
		elseif(not(modelerror.m.possible_slot(r2,c2))) then
			modelerror.m.sets ("Error: ("+ r2.out+ ", "+ c2.out +") not a valid slot")

		elseif(modelerror.m.chess.item (r1, c1) ~ ".") then
		modelerror.m.sets ("Error: Slot @ ("+ r1.out+ ", "+ c1.out +") not occupied")
		elseif(modelerror.m.chess.item (r2, c2) ~ ".") then
		modelerror.m.sets ("Error: Slot @ ("+ r2.out+ ", "+ c2.out +") not occupied")

--       	elseif ((modelerror.m.plus_array.item (r2, c2) /~ "+")) then
--	  modelerror.m.sets ( "Error: Invalid move of " + modelerror.m.chess.item (r1,c1) + " from " +"(" + r1.out + ", "+  c1.out + ")" + " to (" + r2.out + ", "+ c2.out+ ")")
        else
        	modelerror.m.moves(r1,c1)
        		modelerror.m.chess.copy (modelerror.m.tempchess)
        	if (( modelerror.m.plus_array.item (r2, c2) /~ "+")) then

	     	modelerror.m.sets("Error: Invalid move of " + modelerror.m.chess.item (r1,c1) + " from " +"(" + r1.out + ", "+  c1.out + ")" + " to (" + r2.out + ", "+ c2.out+ ")")
	elseif(block_exists_between(r1,c1,r2,c2)) then
			modelerror.m.sets("Error: Block exists between ("+ r1.out + ", "+  c1.out + ") and ("+ r2.out + ", "+ c2.out+ ")")
	     	else
        	result:= True
		end
end
end


feature
	modelerror: ETF_MODEL_ACCESS
end
