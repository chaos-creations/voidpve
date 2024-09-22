
/area/lv902
	icon_state = "unknown"
	can_build_special = TRUE
	powernet_name = "ground"
	ambience_exterior = AMBIENCE_JUNGLE
	minimap_color = MINIMAP_AREA_COLONY

/area/lv902/ground
	name = "Ground"
	icon_state = "green"

/area/lv902/ground/jungle
	minimap_color = MINIMAP_AREA_JUNGLE

/area/lv902/ground/near_river
	ambience_exterior = AMBIENCE_NV
	minimap_color = MINIMAP_AREA_JUNGLE

/area/lv902/indoors
	icon_state = "unknown"
	ceiling = CEILING_METAL

/area/lv902/landing_zone
	ceiling = CEILING_NONE
	is_resin_allowed = FALSE
	is_landing_zone = TRUE

/area/lv902/indoors/security
	name = "\improper Security"
	icon_state = "security"
	minimap_color = MINIMAP_AREA_SEC

/area/lv902/indoors/engineering
	name = "\improper Engineering"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_ENGI

/area/lv902/indoors/engineering/podval
	name = "\improper Engineering"
	icon_state = "engine_smes"
	minimap_color = MINIMAP_AREA_ENGI
	base_muffle = MUFFLE_LOW

/area/lv902/indoors/telecomm
	name = "\improper Communications Relay"
	icon_state = "ass_line"
	base_muffle = MUFFLE_LOW

/area/lv902/indoors/garage
	name = "Garage"
	icon_state = "storage"

/area/lv902/indoors/admin
	name = "Colony Operations Centre"
	icon_state = "mechbay"
	minimap_color = MINIMAP_AREA_COMMAND

/area/lv902/indoors/cave
	name = "caves"
	icon_state = "dark128"
	ceiling = CEILING_UNDERGROUND_METAL_BLOCK_CAS
	soundscape_playlist = SCAPE_PL_CAVE
	minimap_color = MINIMAP_AREA_CAVES
