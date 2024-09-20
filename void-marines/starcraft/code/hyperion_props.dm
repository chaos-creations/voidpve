//props

/obj/structure/prop/turret
	name = "Turret"
	icon = 'void-marines/starcraft/icons/hyperion_props.dmi'
	icon_state = "gun_turret"
	desc = "It's a turret and it looks like it can shoot!"

	density = TRUE
	anchored = TRUE

/obj/structure/prop/tv
	name = "tv"
	icon = 'void-marines/starcraft/icons/hyperion_props.dmi'
	icon_state = "tv"
	desc = "The TV looks quite old."

	density = TRUE
	anchored = TRUE

// MOTH

/mob/living/simple_animal/moth
	name = "moth"
	desc = "This is the adorable by-product of multiple attempts at genetically mixing mothpeople with cockroaches."
	icon = 'void-marines/starcraft/icons/moth/moth.dmi'
	icon_state = "mothroach"
	icon_living = "mothroach"
	icon_dead = "mothroach_dead"
	emote_hear = list("flutters")
	emote_see = list("flutters")
	speak_chance = 1
	wander = 1
	turns_per_move = 5
	meat_type = /obj/item/reagent_container/food/snacks/meat
	response_help  = "pets"
	response_disarm = "shoos"
	response_harm   = "kicks"
	friendly = "nibbles"
	black_market_value = 50
	dead_black_market_value = 0

/mob/living/simple_animal/moth/fluff
	name = "Mr.Fluff"
	desc = "Very fluffy and even seems friendly!"
	icon_state = "mothroach"
	icon_living = "mothroach"
	icon_dead = "mothroach_dead"
