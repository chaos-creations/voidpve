//AREAS

/area/orca
	name = "Orca"
	icon_state = "red"
	can_build_special = TRUE
	powernet_name = "ground"

/area/orca/exterior
	name = "Orca - Exterior"
	ceiling = CEILING_NONE
	icon_state = "ext"
	soundscape_interval = 30
	soundscape_playlist = SCAPE_PL_THUNDER

/area/orca/interior
	name = "Orca - Interior"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS
	icon_state = "int"
	requires_power = 1
	ambience_exterior = AMBIENCE_BIGRED
	soundscape_playlist = SCAPE_PL_THUNDER
	soundscape_interval = 50

/area/orca/interior/oob
	name = "Orca - Out Of Bounds"
	ceiling = CEILING_MAX
	icon_state = "oob"
	is_resin_allowed = FALSE
	flags_area = AREA_NOTUNNEL
	minimap_color = MINIMAP_AREA_OOB

//exterior map areas

/area/orca/exterior/dunes
	name = "Dunes"
	icon_state = "red"

/area/shuttle/drop1/orca
	name = "Orca - Village Landing Zone"
	icon_state = "shuttle"
	icon = 'icons/turf/area_kutjevo.dmi'

/area/shuttle/drop2/orca
	name = "Orca - Unknown Landing Zone"
	icon_state = "shuttle2"
	icon = 'icons/turf/area_kutjevo.dmi'

//interior areas + caves

/area/orca/interior/caves
	name = "Unknown Area"
	icon_state = "bluenew"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS
	sound_environment = SOUND_ENVIRONMENT_AUDITORIUM
	ceiling_muffle = FALSE
	ambience_exterior = AMBIENCE_CAVE
	soundscape_playlist = SCAPE_PL_CAVE
	soundscape_interval = 25
	base_muffle = MUFFLE_HIGH
	minimap_color = MINIMAP_AREA_CAVES

/area/orca/interior/village
	name = "Orca"
	ceiling = CEILING_METAL
	icon_state = "blue"

/area/orca/interior/village/botany
	name = "Village Botany Bay"
	icon_state = "botany0"
	minimap_color = MINIMAP_AREA_JUNGLE

/area/orca/interior/village/administration
	name = "Administration"
	icon_state = "bridge"
	minimap_color = MINIMAP_AREA_COMMAND

/area/orca/interior/village/marshal
	name = "Marshal Offices"
	icon_state = "brig"
	minimap_color = MINIMAP_AREA_SEC

/area/orca/interior/village/mining
	name = "Mining Dorms"
	icon_state = "bluenew"
	minimap_color = MINIMAP_ICON_BACKGROUND_CIVILIAN

/area/orca/interior/village/checkpoint
	name = "Checkpoint"
	icon_state = "brig"
	minimap_color = MINIMAP_AREA_SEC

/area/orca/interior/shaurmejka
	name = "shavarma"
	icon_state = "blue"

/area/orca/interior/temple
	name = "Temple"
	ceiling = CEILING_UNDERGROUND_BLOCK_CAS
	icon_state = "blue"

/area/orca/interior/dunes/engi
	name = "Village Engineering"
	icon_state = "Colony_int"
	minimap_color = MINIMAP_AREA_ENGI

/area/orca/interior/dunes/vehicle_workshop
	name = "Vehicle Workshop"
	icon_state = "Colony_int"
	minimap_color = MINIMAP_AREA_ENGI

/area/orca/interior/dunes/military_workshop
	name = "Military Workshop"
	icon_state = "Colony_int"
	minimap_color = MINIMAP_AREA_ENGI

/area/orca/interior/dig_site
	name = "Orca"
	icon_state = "blue"

/area/orca/interior/dig_site/administration
	name = "Administration"
	icon_state = "bridge"
	minimap_color = MINIMAP_AREA_COMMAND

/area/orca/interior/dig_site/telecomm
	name = "Tcomms Dome"
	icon_state = "Colony_int"
	minimap_color = MINIMAP_AREA_ENGI

/area/orca/interior/dig_site/residence
	name = "Residence"
	icon_state = "Colony_int"

/area/orca/interior/dig_site/dorms
	name = "Dorms"
	icon_state = "Colony_int"

/area/orca/interior/dig_site/unknown
	name = "Unknown"
	icon_state = "Colony_int"

/area/orca/interior/dig_site/hydro
	name = "Hydro"
	icon_state = "Colony_int"
	soundscape_playlist = AMBIENCE_LV624
	soundscape_interval = 25
	minimap_color = MINIMAP_AREA_CELL_LOW

/area/orca/interior/dig_site/secret_bunker
	name = "Bunker"
	icon_state = "Colony_int"
	minimap_color = MINIMAP_AREA_CAVES

/area/orca/interior/upp_base
	name = "Orca"
	icon_state = "blue"

/area/orca/interior/upp_base/checkpoint
	name = "Checkpoint"
	icon_state = "brig"
	minimap_color = MINIMAP_AREA_SEC

/area/orca/interior/upp_base/dorms
	name = "Dorms"
	icon_state = "Colony_int"

/area/orca/interior/upp_base/research
	name = "Lab"
	icon_state = "Colony_int"
	minimap_color = MINIMAP_AREA_RESEARCH
