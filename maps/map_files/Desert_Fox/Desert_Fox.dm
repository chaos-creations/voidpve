// areas

/area/desert_fox
	name = "Khami Barrens"
	icon = 'icons/turf/area_kutjevo.dmi'
	icon_state = "black"
	can_build_special = TRUE //T-Comms structure
	temperature = 308.7 //kelvin, 35c, 95f
	powernet_name = "ground"

/area/shuttle/drop1/desert_fox
	name = "Khami Barrens - Landing Zone One"
	icon_state = "shuttle"
	icon = 'icons/turf/area_kutjevo.dmi'

/area/shuttle/drop2/desert_fox
	name = "Khami Barrens - Dropship FOB Landing Zone"
	icon_state = "shuttle2"
	icon = 'icons/turf/area_kutjevo.dmi'

/area/desert_fox/exterior
	name = "Khami Barrens - Exterior"
	ceiling = CEILING_NONE
	icon_state = "ext"

/area/desert_fox/interior
	name = "Khami Barrens - Interior"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS
	icon_state = "int"
	requires_power = 1

/area/desert_fox/interior/oob
	name = "Khami Barrens -  Out Of Bounds"
	ceiling = CEILING_MAX
	icon_state = "oob"
	is_resin_allowed = FALSE
	flags_area = AREA_NOTUNNEL

// FOB LZ2

/area/desert_fox/exterior/lz_pad
	name = "Khami Barrens - Passenger Landing Zone"
	icon_state = "lz_pad"

/area/desert_fox/interior/checkpointFOB
	name = "FOB Checkpoint"
	ceiling = CEILING_METAL
	icon_state = "int"
	minimap_color = MINIMAP_AREA_SEC

/area/desert_fox/interior/hallFOB
	name = "Hall"
	icon_state = "Colony_int"
	ceiling = CEILING_METAL

/area/desert_fox/interior/medicalFOB
	name = "Medbay"
	icon_state = "Colony_int"
	ceiling = CEILING_METAL
	minimap_color = MINIMAP_AREA_MEDBAY

/area/desert_fox/interior/residenceFOB
	name = "Residence"
	icon_state = "Colony_int"
	ceiling = CEILING_METAL

/area/desert_fox/interior/kitchenFOB
	name = "Kitchen"
	ceiling = CEILING_METAL
	icon_state = "black"

/area/desert_fox/interior/cargoFOB
	name = "Requisition"
	ceiling = CEILING_METAL
	icon_state = "black"

/area/desert_fox/interior/engineeringFOB
	name = "FOB Engineering"
	icon_state = "Colony_int"
	ceiling = CEILING_METAL
	minimap_color = MINIMAP_AREA_ENGI

/area/desert_fox/interior/tank_storageFOB
	name = "Vehicle Storage"
	icon_state = "Colony_int"
	ceiling = CEILING_METAL
	minimap_color = MINIMAP_AREA_ENGI

// dunes

/area/desert_fox/exterior/dunes
	name = "Khami Barrens - Dunes"
	icon_state = "desert_fox"

/area/desert_fox/interior/telecomms
	name = "Communications Relay"
	icon_state = "ass_line"
	base_muffle = MUFFLE_LOW

/area/desert_fox/interior/rancher_residence
	name = "Khami Barrens - Rancher's Residence"
	ceiling = CEILING_METAL
	icon_state = "int"

/area/desert_fox/interior/marksman_residence
	name = "Khami Barrens - Marksman's Residence"
	ceiling = CEILING_METAL
	icon_state = "int"

/area/desert_fox/interior/checkpoint
	name = "Khami Barrens - Checkpoint"
	ceiling = CEILING_METAL
	icon_state = "int"
	minimap_color = MINIMAP_AREA_SEC

/area/desert_fox/interior/hunting_lodge
	name = "Khami Barrens - Hunting Lodge"
	ceiling = CEILING_METAL
	icon_state = "construction_int"

// village

/area/desert_fox/interior/village
	name = "Khami Barrens"
	ceiling = CEILING_METAL
	icon_state = "black"

/area/desert_fox/interior/village/company_offices
	name = "Khami Barrens - Village Company Offices West"
	ceiling = CEILING_UNDERGROUND_METAL_ALLOW_CAS
	icon_state = "foremans"

/area/desert_fox/interior/village/company_offices/reception
	name = "Khami Barrens - Village Company Offices Reception"

/area/desert_fox/interior/village/company_offices/east
	name = "Khami Barrens - Village Company Offices East"

/area/desert_fox/interior/village/shop
	name = "Khami Barrens - Village Shop"
	ceiling = CEILING_METAL
	icon_state = "Colony_int"

/area/desert_fox/interior/village/mall
	name = "Khami Barrens - Village Mall"
	icon_state = "Colony_int"

/area/desert_fox/interior/village/restaurant
	name = "Khami Barrens - Village Restaurant"
	icon_state = "Colony_int"

/area/desert_fox/interior/village/stage
	name = "Khami Barrens - Village Stage"
	icon_state = "Colony_int"

/area/desert_fox/interior/village/botany
	name = "Khami Barrens - Village Botany Bay"
	icon_state = "botany0"
	minimap_color = MINIMAP_AREA_RESEARCH

/area/desert_fox/interior/village/med
	name = "Khami Barrens - North Village Clinic"
	icon_state = "med0"
	minimap_color = MINIMAP_AREA_MEDBAY

/area/desert_fox/interior/village/med/south
	name = "Khami Barrens - South Village Clinic"
	icon_state = "med2"

/area/desert_fox/interior/village/med/reception_storage
	name = "Khami Barrens - Village Clinic Reception and Storage"
	icon_state = "med3"

/area/desert_fox/interior/village/residence
	name = "Khami Barrens - North Village Residence"
	icon_state = "Colony_int"
	ceiling = CEILING_METAL
	is_resin_allowed = TRUE

/area/desert_fox/interior/village/residence/west
	name = "Khami Barrens - West Village Residence"
	icon_state = "Colony_int"

/area/desert_fox/interior/village/residence/east
	name = "Khami Barrens - East Village Residence"
	icon_state = "Colony_int"

/area/desert_fox/interior/village/residence/company
	name = "Khami Barrens - West Village Company Residence"
	icon_state = "Colony_int"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS
	is_resin_allowed = TRUE

/area/desert_fox/interior/village/residence/company/east
	name = "Khami Barrens - East Village Company Residence"
	icon_state = "Colony_int"

/area/desert_fox/interior/village/engineering
	name = "Khami Barrens - North Village Engineering"
	icon_state = "Colony_int"
	ceiling = CEILING_METAL
	is_resin_allowed = TRUE
	minimap_color = MINIMAP_AREA_ENGI

/area/desert_fox/interior/village/engineering/south
	name = "Khami Barrens - South Village Engineering"
	icon_state = "Colony_int"

/area/desert_fox/interior/village/engineering/power
	name = "Khami Barrens - Village Engineering Powerstation"
	icon_state = "power"

// caves

/area/desert_fox/interior/caves
	name = "Khami Barrens - Research Caves"
	ceiling = CEILING_UNDERGROUND_ALLOW_CAS
	icon_state = "colony_caves_0"
	minimap_color = MINIMAP_AREA_CAVES

/area/desert_fox/interior/caves/checkpoint
	name = "Khami Barrens - Caves Checkpoint"
	ceiling = CEILING_UNDERGROUND_METAL_ALLOW_CAS
	icon_state = "colony_caves_2"
	minimap_color = MINIMAP_AREA_SEC_CAVE

// clf base

/area/desert_fox/interior/clf
	name = "Cargo Landing Zone"
	ceiling = CEILING_METAL
	icon_state = "black"

/area/shuttle/drop1/desert_fox
	name = "Landing Zone One"
	icon_state = "shuttle"
	ceiling = CEILING_METAL
	icon = 'icons/turf/area_kutjevo.dmi'
