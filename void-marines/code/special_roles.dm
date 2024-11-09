/datum/job/civilian/reserve
	title = JOB_RESERVE
	total_positions = 0
	spawn_positions = 0
	supervisors = "God and whatever he will say"
	selection_class = "job_special"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	gear_preset = /datum/equipment_preset/uscm_ship/liaison
	entry_message_body = "As a <a href='"+WIKI_PLACEHOLDER+"'>Reserve Unit</a>, your job is listening what's God saying."

/obj/effect/landmark/start/reserve
	name = JOB_RESERVE
	icon_state = "tl_spawn"
	job = /datum/job/civilian/reserve

/datum/job/command/pilot/ai
	total_positions = 0
	spawn_positions = 0

/datum/job/command/pilot/ai/set_spawn_positions(count)
	return spawn_positions

/datum/job/command/pilot/ai/get_total_positions(latejoin = 0)
	return latejoin ? total_positions : spawn_positions

/datum/job/civilian/delivery
	title = JOB_DELIVERY
	total_positions = 4
	spawn_positions = 4
	supervisors = "God and whatever he will say"
	selection_class = "job_special"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	gear_preset = /datum/equipment_preset/pizza_ert/delivery
	entry_message_body = "As a <a href='"+WIKI_PLACEHOLDER+"'>Reserve Unit</a>, your job is listening what's God saying."

/obj/effect/landmark/start/delivery
	name = JOB_DELIVERY
	icon_state = "marine_spawn"
	job = /datum/job/civilian/delivery

/datum/job/civilian/delivery_corpsman
	title = JOB_DELIVERY_CORPSMAN
	total_positions = 1
	spawn_positions = 1
	supervisors = "God and whatever he will say"
	selection_class = "job_special"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	gear_preset = /datum/equipment_preset/pizza_ert/delivery_corpsman
	entry_message_body = "As a <a href='"+WIKI_PLACEHOLDER+"'>Reserve Unit</a>, your job is listening what's God saying."

/obj/effect/landmark/start/delivery_corpsman
	name = JOB_DELIVERY_CORPSMAN
	icon_state = "medic_spawn"
	job = /datum/job/civilian/delivery_corpsman

/datum/job/civilian/delivery_souto
	title = JOB_DELIVERY_SOUTO
	total_positions = 1
	spawn_positions = 1
	supervisors = "God and whatever he will say"
	selection_class = "job_special"
	flags_startup_parameters = ROLE_ADD_TO_DEFAULT
	gear_preset = /datum/equipment_preset/pizza_ert/delivery_souto
	entry_message_body = "As a <a href='"+WIKI_PLACEHOLDER+"'>Reserve Unit</a>, your job is listening what's God saying."

/obj/effect/landmark/start/delivery_souto
	name = JOB_DELIVERY_SOUTO
	icon_state = "leader_spawn"
	job = /datum/job/civilian/delivery_souto
