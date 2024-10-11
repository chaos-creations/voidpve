/obj/item/money
	name = "stack of bills"
	desc = "You see some bills, it seems you are rich now."
	gender = PLURAL
	icon = 'void-marines/icons/money.dmi'
	icon_state = "cash6"
	opacity = FALSE
	density = FALSE
	anchored = FALSE
	force = 1
	throwforce = 1
	throw_speed = SPEED_FAST
	throw_range = 2

/obj/item/painting
	name = "picture"
	desc = "hello"
	gender = PLURAL
	icon = 'void-marines/icons/pictures.dmi'
	anchored = FALSE

/obj/item/painting/dwarf
	name = "\improper Dwarven Miner"
	desc = "A painting of a dwarf. He's mining adamantine; a long lost, high-value metal that was said to be impossibly lightweight, strong, and sharp. The craftsmanship of this painting is of the utmost quality."
	icon_state = "dwarf"

/obj/item/painting/anatomy
	name = "\improper Anatomy Poster"
	desc = "A W-Y approved anatomy poster! Remember, eat a burger every 20-30 minutes. For your health."
	icon_state = "anatomy"

/obj/item/painting/blu
	name = "\improper Wai-Blu"
	desc = "Faithfully serving W-Y during her shift, gladly serving YOU after."
	icon_state = "blu"

/obj/item/painting/kate
	name = "\improper Cindy Kate"
	desc = "Through the carnage and bloodshed she's gunning for you, champ."
	icon_state = "kate"

// kreslo

/obj/structure/bed/chair/comfyhair
	name = "comfy chair"
	desc = "A sturdy metal chair with a brace that lowers over your body. Holds you in place during high altitude drops."
	var/image/chairbar = null
	icon = 'void-marines/icons/bunker_prop.dmi'
	icon_state = "comfychair"
	buckling_sound = 'sound/effects/metal_close.ogg'

/obj/structure/bed/chair/comfyhair/comfychair_armrest
	icon_state = "comfychair_armrest"

/obj/structure/bed/chair/comfyhair/Initialize()
	. = ..()
	chairbar = image("void-marines/icons/bunker_prop.dmi", "comfychair_armrest")
	chairbar.layer = ABOVE_MOB_LAYER

/obj/structure/bed/chair/comfyhair/afterbuckle()
	. = ..()
	if(buckled_mob)
		overlays += chairbar
	else
		overlays -= chairbar
