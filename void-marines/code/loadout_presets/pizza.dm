/datum/equipment_preset/pizza_ert
	name = "Pizza Delivery"
	flags = EQUIPMENT_PRESET_EXTRA
	assignment = JOB_DELIVERY
	paygrades = list(PAY_SHORT_CIV = JOB_PLAYTIME_TIER_0)
	rank = CIVILIAN_SURVIVOR
	faction = FACTION_PIZZA
	languages = list(LANGUAGE_ENGLISH, LANGUAGE_RUSSIAN, LANGUAGE_JAPANESE, LANGUAGE_CHINESE)
	access = list(ACCESS_CIVILIAN_PUBLIC)
	skills = /datum/skills/civilian
	idtype = /obj/item/card/id/pizza
	var/headset_type = /obj/item/device/radio/headset/distress

/datum/equipment_preset/pizza_ert/delivery
	name = "Delivery Boy"
	role_comm_title = "Boy"
	rank = JOB_DELIVERY
	assignment = JOB_DELIVERY
	skills = /datum/skills/rifleman_pve
	flags = EQUIPMENT_PRESET_START_OF_ROUND

/datum/equipment_preset/pizza_ert/delivery/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/hybrisa/pizza_galaxy(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/hybrisa/pizza_galaxy(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress(new_human), WEAR_L_EAR)

/datum/equipment_preset/pizza_ert/delivery_corpsman
	name = "Delivery Corpsman"
	role_comm_title = "Corpsman"
	assignment = JOB_DELIVERY_CORPSMAN
	rank = JOB_DELIVERY_CORPSMAN
	flags = EQUIPMENT_PRESET_START_OF_ROUND
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_MARINE_MEDPREP, ACCESS_MARINE_MEDBAY)
	skills = /datum/skills/combat_medic_pve

/datum/equipment_preset/pizza_ert/delivery_corpsman/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/hybrisa/pizza_galaxy(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/hybrisa/pizza_galaxy(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress(new_human), WEAR_L_EAR)

/datum/equipment_preset/pizza_ert/delivery_souto
	name = "Delivery Souto"
	role_comm_title = "Souto"3
	assignment = JOB_DELIVERY_SOUTO
	rank = JOB_DELIVERY_SOUTO
	flags = EQUIPMENT_PRESET_START_OF_ROUND
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_MARINE_MEDPREP, ACCESS_MARINE_MEDBAY)
	skills = /datum/skills/sl_pve

/datum/equipment_preset/pizza_ert/delivery_souto/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/hybrisa/pizza_galaxy(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/hybrisa/pizza_galaxy(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress(new_human), WEAR_L_EAR)
