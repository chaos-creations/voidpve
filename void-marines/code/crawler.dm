
// mr. crawler

/obj/item/pamphlet/trait/crawler
	name = "Crawler instructional pamphlet"
	desc = "A pamphlet used to quickly impart vital knowledge."
	icon_state = "pamphlet_spotter"
	trait_to_give = TRAIT_CRAWLER
	bypass_pamphlet_limit = TRUE

/obj/item/pamphlet/trait/crawler/can_use(mob/living/carbon/human/user)
	var/specialist_skill = user.skills.get_skill_level(SKILL_SPEC_WEAPONS)
	if(specialist_skill == SKILL_SPEC_SNIPER)
		to_chat(user, SPAN_WARNING("You don't need to use this! Give it to another marine to make them your spotter."))
		return FALSE
	if(specialist_skill != SKILL_SPEC_DEFAULT)
		to_chat(user, SPAN_WARNING("You're already a specialist! Give this to a lesser trained marine."))
		return FALSE

	if(user.job != JOB_SQUAD_MARINE)
		to_chat(user, SPAN_WARNING("Only squad riflemen can use this."))
		return

	var/obj/item/card/id/ID = user.wear_id
	if(!istype(ID)) //not wearing an ID
		to_chat(user, SPAN_WARNING("You should wear your ID before doing this."))
		return FALSE
	if(ID.registered_ref != WEAKREF(user))
		to_chat(user, SPAN_WARNING("You should wear your ID before doing this."))
		return FALSE

	return ..()

/obj/item/pamphlet/trait/crawler/on_use(mob/living/carbon/human/user)
	. = ..()
	user.rank_fallback = "crawler"
	user.hud_set_squad()

	var/obj/item/card/id/ID = user.wear_id
	ID.set_assignment((user.assigned_squad ? (user.assigned_squad.name + " ") : "") + "Crawler")
	GLOB.data_core.manifest_modify(user.real_name, WEAKREF(user), "Crawler")

// box of cox

/obj/item/storage/box/kit/crawler
	name = "\improper Crawler Kit"
	pro_case_overlay = "spotter"

/obj/item/storage/box/kit/crawler/fill_preset_inventory()
	new /obj/item/clothing/head/helmet/marine/ghillie(src)
	new /obj/item/clothing/suit/storage/marine/ghillie(src)
	new /obj/item/clothing/glasses/night/m42_night_goggles/spotter(src)
	new /obj/item/storage/backpack/marine/smock(src)
	new /obj/item/device/binoculars/range(src)
	new /obj/item/pamphlet/trait/crawler(src)
