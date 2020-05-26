note
	description: "Summary description for {COMMON_SETUP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	COMMON_SETUP
	inherit
		ANY
		redefine
			default_create
		end

feature -- Constructor
	default_create
		do
			common_setup
		end


feature -- Attributes

	p1, p2, p3, p4: PERSON
	m1, m2, m3, m4: CAR

	common_setup
		do
			create p1.make ("p1")
			create p2.make ("p2")
			create p3.make ("p3")
			create p4.make ("p4")
			create m1.make ("m1")
			create m2.make ("m2")
			create m3.make ("m3")
			create m4.make ("m4")
		end
		
feature -- Agent functions

	is_PERSON (pair: PAIR[PERSON, CAR]; p: PERSON): BOOLEAN
		do
			Result := pair.first ~ p
		end
end
