note
	description: "Summary description for {HISTORY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HISTORY

create
	make

feature {ETF_MODEL}

	make
		do
			create {ARRAYED_LIST [COMMAND]} history.make (0)
			create {ARRAYED_LIST [STRING]} num.make (0)
			create {ARRAYED_LIST [INTEGER]} row.make (0)
			create {ARRAYED_LIST [INTEGER]} col.make (0)

		end

feature

	history: LIST [COMMAND] -- list of implementations -- stack

	num: LIST [STRING]

	row: LIST [INTEGER]

	col: LIST [INTEGER]

feature-- queries
	put (cmd: COMMAND)
		do
			from
				history.forth
			until
				history.after
			loop
				history.remove
			end
			history.force (cmd)
			history.finish
		end
	put_n (n: STRING)
		do
			from
				num.forth
			until
				num.after
			loop
				num.remove
			end
			num.force (n)
			num.finish
		end

	put_r (r: INTEGER)
		do
			from
				row.forth
			until
				row.after
			loop
				row.remove

			end
			row.force (r)

			row.finish
		end

	put_c (c: INTEGER)
		do
			from
				col.forth
			until
				col.after
			loop
				col.remove
			end
			col.force (c)

			col.finish
		end

--	is_empty: BOOLEAN
--		do
--			Result := history.is_empty

--			Result := row.is_empty
--			Result := col.is_empty
--		end

--	is_first: BOOLEAN
--		do
--			Result := history.isfirst

--			Result := row.isfirst
--			Result := col.isfirst
--		end

--	is_last: BOOLEAN
--		do
--			Result := history.islast

--			Result := row.islast
--			Result := col.islast
--		end

	end_item: BOOLEAN
		do
			Result := ((not history.is_empty) and (not history.islast))

		end
--	item_r: INTEGER
--		do
--			Result := row.item
--			--row.back
--		end
--	item_n: STRING
--		do
--			Result := num.item
--			--num.forth
--		end

--	on_item_n: BOOLEAN
--		do
--			Result := ((not num.is_empty) and (not num.before))
--		end

--	end_item_n: BOOLEAN
--		do
--			Result := ((not num.is_empty) and (not num.islast))
--		end
--	on_item_r: BOOLEAN
--		do
--			Result := ((not row.is_empty) and (not row.before))
--		end

--	end_item_r: BOOLEAN
--		do
--			Result := ((not row.is_empty) and (not row.islast))
--		end

--	item_c: INTEGER
--		do
--			Result := col.item
--			col.back

--		end

--	on_item_c: BOOLEAN
--		do
--			Result := ((not col.is_empty) and (not col.before))
--		end

--	end_item_c: BOOLEAN
--		do
--			Result := ((not col.is_empty) and (not col.islast))
--		end

    item: COMMAND

		require
			(not history.before) and (not history.after)
		do
			Result := history.item
			--history.back
		end

	on_item: BOOLEAN
		do
			Result := not history.before and not history.is_empty
		end


--	after: BOOLEAN
--			-- Is there no valid cursor position to the right of cursor?
--		do
--			Result := history.index = history.count + 1
--		end

--	before: BOOLEAN
--			-- Is there no valid cursor position to the left of cursor?
--		do
--			Result := history.index = 0
--		end

--		feature -- comands
----	extend_history(a_op: COMMAND)
----			-- remove all operations to the right of the current
--			-- cursor in history, then extend with `a_op'
--		do
--			remove_right
--			history.extend(a_op)
--			history.finish
--		ensure
--			history[history.count] = a_op
--		end

--	remove_right
--			--remove all elements
--			-- to the right of the current cursor in history
--		do
--			if not history.islast and not history.after then
--				from
--					history.forth
--				until
--					history.after
--				loop
--					history.remove
--				end
--			end
--		end



	forth
		require
			not (history.index = history.count + 1)
		do
			history.forth
		end

	back
		require
			not (history.index = 0)
		do
			history.back
		end




--	put_chess(p:ARRAY2[STRING])

--        do
--        	chesslist.force (p)
--        	chesslist.forth


--        end

--    get_chessundo:ARRAY2[STRING]

--        do
--              chesslist.back
--        	result:= chesslist.item



--        end

--    get_chessredo: ARRAY2[STRING]

--        do
--            chesslist.forth
--            result := chesslist.item


--        end

item_for_undo
do


	col.back
	row.back
	num.back

	end


item_for_redo
do
	col.forth
	row.forth
	num.forth

end
end



