	note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MODEL

inherit
	ERRORS
	    undefine
	    	out
    end
	KING
	    undefine
	    	out
    end
    BISHOP
	    undefine
	    	out
    end
    QUEEN
	    undefine
	    	out
	    end
    ROOK
	    undefine
	    	out
	    end
    KNIGHT
	    undefine
	    	out
	    end
	PAWN
	    undefine
	    	out
	    end

	ANY
		redefine
			out
		end

create {ETF_MODEL_ACCESS}
	make

feature {NONE} -- Initialization
	make
			-- Initialization for `Current'.
		do
			create plus_array.make_filled(".",4,4)
	        create s.make_empty
			create chess.make_filled (".",4,4)
			create tempchess.make_filled(".",4,4)
			create coordinate.make_empty
            block:= 0
			i := 0
			s:="Game being Setup..."
            newmodelstate:= 0
			modelstate:=0
			create {HISTORY} h.make
			END

feature {ETF_MODEL_ACCESS, START_GAME, MOVES, SETUP_CHESS, MOVES_AND_CAPTURE,RESET_GAME,ERRORS,PAWN,KING,BISHOP,KNIGHT,QUEEN,ROOK,BISHOP}

	chess: ARRAY2[STRING]




feature -- model attributes
	s : STRING
	i : INTEGER

	tempchess : ARRAY2[STRING]
	plus_array: ARRAY2[STRING]
	modelstate: INTEGER
	block: INTEGER assign set_block
	newmodelstate: INTEGER assign set_newmodelstate
    coordinate: ARRAY[INTEGER]
	h: HISTORY


   --new helper operations
	redo

		local
			c:COMMAND
	do
	if ((h.end_item) ~ FALSE ) then
			s:="Error: Nothing to redo"
			else
                h.forth
				c := h.item
				c.redo

			end
	end

	undo
		local
			c: COMMAND
		do

			if (h.on_item~ FALSE )then
				s:="Error: Nothing to undo"
			else
				c := h.item
				c.undo
				h.back

			end
		end




  set_block(O:INTEGER)
  do
  	block:= o
  end

  set_newmodelstate(Ij:INTEGER) do
  	newmodelstate:= Ij
  end

 setmodelstate(m:INTEGER)
  do
  modelstate := m
  end

  setS(si: STRING)
   do
   s:= si
   end

   setI(jI:INTEGER)
   do
   i:= jI
   end


  possible_slot(m: INTEGER; n:INTEGER) : BOOLEAN
	do
		Result:= m>=1 and m<5 and n>=1 and n<5
	end

  resetarray( a:INTEGER; b:INTEGER)
   do
  	        across 1 |..| 4 is m
              loop
              	across 1 |..| 4  is n
              	  loop

              	  	if ((a/=m or n /= b) and (chess.item (m,n) ~ ("K") or chess.item (m,n) ~ ("Q")  or chess.item (m,n) ~ ("N")  or chess.item (m,n) ~ ("B")  or chess.item (m,n) ~ ("P")  or chess.item (m,n) ~ ("R"))) then
              	  		chess.put (".",m,n)


              	  end
                end
            end

end





feature -- model operations




	move_and_capture(r1: INTEGER_32 ; c1: INTEGER_32 ; r2: INTEGER_32 ; c2: INTEGER_32)
	local
		sc:MOVES_AND_CAPTURE

		do
			create sc.make (current,r1,c1,r2,c2)





--			if (errormoves_and_capture(r1,c1,r2,c2)) then


--			if (modelstate = 3) then
--				chess.copy (tempchess)
--				else
--					moves(r1,c1)
--					chess.copy (tempchess)
--			end
--			chess.put (chess.item (r1,c1),r2,c2)
--			chess.put (".",r1,c1)
--			modelstate := 4
--			i := i-1

--			if (i = 1) then
--				s:= "Game Over: You Win!"
--				modelstate:=6
--			end

--			newmodelstate := 0
--			blockexists

--			if (newmodelstate /= 1000) then
--				s:= "Game Over: You Lose!"
--				modelstate:=6
--			end

--end


       if (errormoves_and_capture(r1,c1,r2,c2)) then
 h.put_n (chess.item (r2,c2))

--	  	    blockexists

--	  	   if(block = 1000)  then

--            s:= "Error: Block exists between ("+r1.out+", "+c1.out+") and ("+r2.out+", "+c2.out+")"

--            else
	  	   --chess.copy (tempchess)

	  	    newmodelstate:=0
		    chess.put (chess.item (r1,c1),r2,c2)
			chess.put (".", r1,c1)
			modelstate := 4
	        i:=i-1

--		    else

--		     blockexists

--            if (block = 1000) then
--			s:= "Error: Block exists between ("+r1.out+", "+c1.out+") and ("+r2.out+", "+c2.out+")"
--			chess.copy(tempchess)

--	    	else


	        blockexists
	        h.put_r (r1)
					  h.put_c (c1)

	                  sc.execute

        	if(newmodelstate /= 1000) then
			s:= "Game Over: You Lose!"
			modelstate:=6
			end

		    if (i=1) then
			s:= "Game Over: You Win!"
			modelstate:=6
			end



		 end

end

	moves(m: INTEGER ;n: INTEGER)
		do


    if (not errormoves(m,n)) then



                    modelstate:=3
					tempchess.copy (chess)
               --movepawn
			    	if(chess.item (m,n) ~ "P") then
					   movepawn(m,n)


               -- for rook

				   elseif(chess.item (m,n) ~ "R") then
					   moverook(m,n)


			  -- for Bishop

			       elseif(chess.item (m,n) ~ "B") then
                       movebishop(m,n)

		      -- for King

				    elseif(chess.item (m,n) ~ "K") then
                    moveking(m,n)


              -- for knight
				    elseif(chess.item (m,n) ~ "N") then
                    moveknight(m,n)


              -- for Queen

                    elseif(chess.item (m,n) ~ "Q") then
		            movequeen(m,n)

                    end



	                     resetarray(m,n)
	                     plus_array.copy(chess)

    end
	end





	 setup_chess (x:STRING ; y:INTEGER; z: INTEGER)
	 local
	 	sc:SETUP_CHESS

		do
				create sc.make (CURRENT)
				sc.execute
		           if (not errorsetupchess(y,z)) then

					  chess.put (x, y, z)
					  modelstate:=1
					  h.put_n (x)
					  h.put_r (y)
					  h.put_c (z)
					  	i := i + 1
					s:="Game being Setup..."
--					coordinate.force(y,coordinate.upper+1)
--					coordinate.force(z,coordinate.upper+2)


					 -- h.put_chess (chess.deep_twin)





                   end

	    end




	reset
			-- Reset model state.
		do

			if (not errorresetgame)
		    then
			modelstate:=5
			make
            end

		end



	start_game
	local
 	sc:START_GAME
	do
        create sc.make (CURRENT)
		if (not errorStartGame )
		then

 	     modelstate := 2
     	 s := "Game In Progress..."
    		end
    		sc.execute


	end




feature -- error helpers


blockexists
 do
 across 1 |..| 4 is k
	          loop
	             across 1 |..| 4 is p
	              loop
	              	if (chess.item (k, p) /~ ".") then
	              		 moves(k,p)
	              		chess.copy (tempchess)
	                    end
	              	end

	           end


end


--gameover
--  local
--     	in: INTEGER
--  do

--                         from in := 1
--				         until in > coordinate.upper
--				         loop
--				         	moves(coordinate.at (in),coordinate.at (in+2))
--				            chess.copy (tempchess)
--				         	in:=in+3
--				         end




--  end



feature -- queries
	out : STRING
		do


			create Result.make_from_string ("  # of chess pieces on board: " + i.out + "%N  " + s +"%N  "  )
			across chess.lower |..| chess.upper is j
			    loop
			    	Result.append (chess.at (j))
			    	if( j \\ 4 = 0 and j /~ 16) then
			    	Result.append ("%N  ")
			   	end
		    end
		    if (modelstate = 3) then
				chess.copy (tempchess)
		    end

		end

end
