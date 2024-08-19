/obj/item/pamphlet/skill/field_engineer
	name = "Field Engineer instructional pamphlet"
	desc = "A pamphlet used to quickly impart vital knowledge. This is used to assign a field engineer to a squad."
	icon = 'void-marines/icons/pamphlets.dmi'
	icon_state = "pamphlet_field_engineer"
	trait = /datum/character_trait/skills/field_engineer
	bypass_pamphlet_limit = TRUE

/obj/item/pamphlet/skill/field_engineer/on_use(mob/living/carbon/human/user)
	. = ..()
	user.rank_fallback = "engi"
	user.hud_set_squad()

	var/obj/item/card/id/ID = user.wear_id
	ID.set_assignment((user.assigned_squad ? (user.assigned_squad.name + " ") : "") + "Field Engineer")
	GLOB.data_core.manifest_modify(user.real_name, WEAKREF(user), "Field Engineer")

/obj/item/pamphlet/skill/kits_pyro
	name = "Pyro instructional pamphlet"
	desc = "A pamphlet used to quickly impart vital knowledge. This is used to assign a pyro to a squad."
	icon = 'void-marines/icons/pamphlets.dmi'
	icon_state = "pamphlet_pyro"
	trait = /datum/character_trait/skills/pyro
	bypass_pamphlet_limit = TRUE

/obj/item/pamphlet/skill/kits_pyro/on_use(mob/living/carbon/human/user)
	. = ..()
	user.rank_fallback = "pyro"
	user.hud_set_squad()

	var/obj/item/card/id/ID = user.wear_id
	ID.set_assignment((user.assigned_squad ? (user.assigned_squad.name + " ") : "") + "Pyro")
	GLOB.data_core.manifest_modify(user.real_name, WEAKREF(user), "Pyro")

/obj/item/pamphlet/skill/heavy_gunner
	name = "Heavy Gunner instructional pamphlet"
	desc = "A pamphlet used to quickly impart vital knowledge. This is used to assign a heavy gunner to a squad."
	icon = 'void-marines/icons/pamphlets.dmi'
	icon_state = "pamphlet_heavy_gunner"
	trait = /datum/character_trait/skills/heavy_gunner
	bypass_pamphlet_limit = TRUE

/obj/item/pamphlet/skill/heavy_gunner/on_use(mob/living/carbon/human/user)
	. = ..()
	user.rank_fallback = "gunner"
	user.hud_set_squad()

	var/obj/item/card/id/ID = user.wear_id
	ID.set_assignment((user.assigned_squad ? (user.assigned_squad.name + " ") : "") + "Heavy Gunner")
	GLOB.data_core.manifest_modify(user.real_name, WEAKREF(user), "Heavy Gunner")
