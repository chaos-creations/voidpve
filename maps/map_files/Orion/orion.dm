//AREAS

/area/shuttle/orion
	name = "\improper Dropship Orion"
	icon_state = "shuttlered"
	base_muffle = MUFFLE_HIGH
	soundscape_interval = 30
	is_landing_zone = TRUE
	ceiling = CEILING_REINFORCED_METAL

/area/shuttle/orion/Enter(atom/movable/O, atom/oldloc)
	if(istype(O, /obj/structure/barricade))
		return FALSE
	return TRUE

//PORT

/obj/docking_port/mobile/marine_dropship/orion
	name = "Orion"
	id = DROPSHIP_ORION
	width = 9
	height = 8

	dwidth = 4
	dheight = 3

/datum/map_template/shuttle/orion
	name = "Orion"
	shuttle_id = DROPSHIP_ORION

/obj/structure/machinery/computer/shuttle/dropship/flight/remote_control/orion
	icon = 'icons/obj/structures/machinery/computer.dmi'
	icon_state = "shuttle"
	shuttleId = DROPSHIP_ORION
	is_remote = FALSE
	needs_power = FALSE
