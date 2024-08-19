
//******************************************PFC Kits****************************************************************/

/obj/item/storage/box/kit/field_engineer
	name = "\improper Field Engineer Kit"
	pro_case_overlay = "engi"

/obj/item/storage/box/kit/field_engineer/fill_preset_inventory()
	new /obj/item/clothing/head/helmet/marine/tech(src)
	new /obj/item/storage/backpack/marine/engineerpack(src)
	new /obj/item/tool/weldingtool/largetank(src)
	new /obj/item/storage/pouch/tools/full(src)
	new /obj/item/storage/pouch/construction/low_grade_full(src)
	new /obj/item/pamphlet/skill/field_engineer(src)

/obj/item/storage/box/kit/pyro
	name = "\improper M240 Pyrotechnician Support Kit"
	pro_case_overlay = "flamer"

/obj/item/storage/box/kit/pyro/fill_preset_inventory()
	new /obj/item/storage/backpack/marine/engineerpack/flamethrower/kit(src)
	new /obj/item/weapon/gun/flamer/underextinguisher(src)
	new /obj/item/ammo_magazine/flamer_tank(src)
	new /obj/item/ammo_magazine/flamer_tank(src)
	new /obj/item/ammo_magazine/flamer_tank/gellied(src)
	new /obj/item/tool/extinguisher/mini(src)
	new /obj/item/pamphlet/skill/kits_pyro(src)

/obj/item/storage/box/kit/heavy_gunner
	name = "\improper Heavy Gunner Kit"
	pro_case_overlay = "shield"

/obj/item/storage/box/kit/heavy_gunner/fill_preset_inventory()
	new /obj/item/weapon/gun/rifle/lmg(src)
	new /obj/item/ammo_magazine/rifle/lmg(src)
	new /obj/item/ammo_magazine/rifle/lmg(src)
	new /obj/item/ammo_magazine/rifle/lmg(src)
	new /obj/item/attachable/bipod(src)
	new /obj/item/attachable/magnetic_harness(src)
	new /obj/item/storage/backpack/marine/ammo_rack(src)
	new /obj/item/pamphlet/skill/heavy_gunner(src)
