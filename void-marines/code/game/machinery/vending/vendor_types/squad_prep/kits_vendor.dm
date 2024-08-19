//------------SQUAD KIT VENDOR---------------

GLOBAL_LIST_INIT(cm_vending_kits_vendor, list(
		list("Spec Kits", 0, null, null, null),
		list("Pyro Spec Kit", 30, /obj/item/storage/box/kit/pyro, null, VENDOR_ITEM_REGULAR),
		list("Heavy Gunner Spec Kit", 30, /obj/item/storage/box/kit/heavy_gunner, null, VENDOR_ITEM_REGULAR),
		list("Field Engineer Spec Kit", 30, /obj/item/storage/box/kit/field_engineer, null, VENDOR_ITEM_REGULAR),

		list("Ordinary Kits", 0, null, null, null),
		list("Mini Medic Kit", 15, /obj/item/storage/box/kit/mini_medic, null, VENDOR_ITEM_REGULAR),
		list("Mini Sniper Kit", 5, /obj/item/storage/box/kit/mini_sniper, null, VENDOR_ITEM_REGULAR),
		list("Mini Grenadier Kit", 5, /obj/item/storage/box/kit/mini_grenadier, null, VENDOR_ITEM_REGULAR),
		list("SU-6 Kit", 5, /obj/item/storage/box/kit/exp_trooper, null, VENDOR_ITEM_REGULAR),
	))

/obj/structure/machinery/cm_vending/gear/kits_vendor
	name = "\improper Squad Kits Rack"
	desc = "An automated gear rack that contains various sets for the specialization of one rifleman of the squad."
	icon_state = "mar_rack"
	show_points = TRUE
	vendor_theme = VENDOR_THEME_USCM
	vendor_role = list(JOB_SQUAD_LEADER)
	req_access = list(ACCESS_MARINE_LEADER)

/obj/structure/machinery/cm_vending/gear/kits_vendor/get_listed_products(mob/user)
	return GLOB.cm_vending_kits_vendor
