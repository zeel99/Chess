note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_START_GAME
inherit
	ETF_START_GAME_INTERFACE
create
	make
feature -- command
	start_game
    	do
			-- perform some update on the model state
			model.modelstate.set_item (2)

			model.start_game
			
			etf_cmd_container.on_change.notify ([Current])
    	end

end
