

/obj/structure/reagent_dispensers
	name = "dispenser"
	desc = "..."
	icon = 'icons/obj/objects.dmi'
	icon_state = "watertank"
	density = 1
	anchored = 0
	flags_atom = CAN_BE_SYRINGED

	var/amount_per_transfer_from_this = 10
	var/possible_transfer_amounts = list(5,10,20,30,40,50,60,100)
	var/chemical = ""
	var/dispensing = TRUE

/obj/structure/reagent_dispensers/attackby(obj/item/W as obj, mob/user as mob)
	return

/obj/structure/reagent_dispensers/Initialize(mapload, reagent_amount = 1000)
	. = ..()
	create_reagents(reagent_amount)
	if(!possible_transfer_amounts)
		verbs -= /obj/structure/reagent_dispensers/verb/set_APTFT
	if(chemical)
		reagents.add_reagent(chemical, reagent_amount)

/obj/structure/reagent_dispensers/initialize_pass_flags(var/datum/pass_flags_container/PF)
	..()
	if (PF)
		PF.flags_can_pass_all = PASS_OVER|PASS_AROUND|PASS_UNDER

/obj/structure/reagent_dispensers/examine(mob/user)
	..()
	if(get_dist(user, src) > 2 && user != loc) return
	to_chat(user, SPAN_NOTICE(" It contains:"))
	if(reagents && reagents.reagent_list.len)
		for(var/datum/reagent/R in reagents.reagent_list)
			to_chat(user, SPAN_NOTICE(" [R.volume] units of [R.name]"))
	else
		to_chat(user, SPAN_NOTICE(" Nothing."))

/obj/structure/reagent_dispensers/verb/set_APTFT() //set amount_per_transfer_from_this
	set name = "Set transfer amount"
	set category = "Object"
	set src in view(1)

	if(!ishuman(usr))
		return

	if(!reagents || reagents.locked)
		return

	var/N = tgui_input_list(usr, "Amount per transfer from this:","[src]", possible_transfer_amounts)
	if(N)
		amount_per_transfer_from_this = N

/obj/structure/reagent_dispensers/verb/set_transfer_direction() //set amount_per_transfer_from_this
	set name = "Set transfer direction"
	set category = "Object"
	set src in view(1)

	if(!ishuman(usr))
		return

	if(!reagents || reagents.locked)
		return

	dispensing = !dispensing
	if(dispensing)
		to_chat(usr, SPAN_NOTICE("[src] is now dispensing"))
	else
		to_chat(usr, SPAN_NOTICE("[src] is now filling"))

/obj/structure/reagent_dispensers/ex_act(severity)
	switch(severity)
		if(0 to EXPLOSION_THRESHOLD_LOW)
			if(prob(5))
				new /obj/effect/particle_effect/water(src.loc)
				qdel(src)
				return
		if(EXPLOSION_THRESHOLD_LOW to EXPLOSION_THRESHOLD_MEDIUM)
			if(prob(50))
				new /obj/effect/particle_effect/water(src.loc)
				qdel(src)
				return
		if(EXPLOSION_THRESHOLD_MEDIUM to INFINITY)
			qdel(src)
			return
		else
	return

/obj/structure/reagent_dispensers/attack_hand()
	if(!reagents || reagents.locked)
		return

	var/N = tgui_input_list(usr, "Amount per transfer from this:","[src]", possible_transfer_amounts)
	if(N)
		amount_per_transfer_from_this = N

//Dispensers
/obj/structure/reagent_dispensers/watertank
	name = "watertank"
	desc = "A watertank"
	icon = 'icons/obj/objects.dmi'
	icon_state = "watertank"
	chemical = "water"

/obj/structure/reagent_dispensers/ammoniatank
	name = "ammoniatank"
	desc = "An ammoniatank"
	icon = 'icons/obj/objects.dmi'
	icon_state = "ammoniatank"
	chemical = "ammonia"

/obj/structure/reagent_dispensers/oxygentank
	name = "oxygentank"
	desc = "An oxygentank"
	icon = 'icons/obj/objects.dmi'
	icon_state = "oxygentank"
	chemical = "oxygen"

/obj/structure/reagent_dispensers/acidtank
	name = "sulfuric acid tank"
	desc = "A sulfuric acid tank"
	icon = 'icons/obj/objects.dmi'
	icon_state = "sacidtank"
	chemical = "sacid"

/obj/structure/reagent_dispensers/pacidtank
	name = "polytrinic acid tank"
	desc = "A polytrinic acidtank"
	icon = 'icons/obj/objects.dmi'
	icon_state = "pacidtank"
	chemical = "pacid"

/obj/structure/reagent_dispensers/fueltank
	name = "fueltank"
	desc = "A fueltank"
	icon = 'icons/obj/objects.dmi'
	icon_state = "weldtank"
	amount_per_transfer_from_this = 10
	chemical = "fuel"
	var/modded = 0
	var/obj/item/device/assembly_holder/rig = null
	var/exploding = 0
	var/reinforced = FALSE
	var/source_mob

/obj/structure/reagent_dispensers/fueltank/examine(mob/user)
	..()
	if(user != loc) return
	if(modded)
		to_chat(user, SPAN_DANGER("Fuel faucet is wrenched open, leaking the fuel!"))
	if(rig)
		to_chat(user, SPAN_NOTICE("There is some kind of device rigged to the tank."))
	if(reinforced)
		to_chat(user, SPAN_NOTICE("It seems to be reinforced with metal shielding."))

/obj/structure/reagent_dispensers/fueltank/attack_hand()
	if(rig)
		usr.visible_message("[usr] begins to detach [rig] from \the [src].", "You begin to detach [rig] from \the [src]")
		if(do_after(usr, 20, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_BUILD))
			usr.visible_message(SPAN_NOTICE("[usr] detaches [rig] from \the [src]."), SPAN_NOTICE(" You detach [rig] from \the [src]"))
			rig.forceMove(get_turf(usr))
			rig = null
			update_icon()
	else
		. = ..()

/obj/structure/reagent_dispensers/fueltank/attackby(obj/item/W as obj, mob/user as mob)
	src.add_fingerprint(user)

	if(user.action_busy)
		to_chat(user, SPAN_WARNING("You're already peforming an action!"))
		return

	/*if (istype(W,/obj/item/tool/wrench))
		user.visible_message("[user] wrenches [src]'s faucet [modded ? "closed" : "open"].", \
			"You wrench [src]'s faucet [modded ? "closed" : "open"]")
		modded = modded ? 0 : 1
		if (modded)
			message_admins("[key_name_admin(user)] opened fueltank at [loc.loc.name] ([loc.x],[loc.y],[loc.z]), leaking fuel. (<A HREF='?_src_=admin_holder;adminplayerobservecoodjump=1;X=[loc.x];Y=[loc.y];Z=[loc.z]'>JMP</a>)")
			log_game("[key_name(user)] opened fueltank at [loc.loc.name] ([loc.x],[loc.y],[loc.z]), leaking fuel.")
			leak_fuel(amount_per_transfer_from_this)*/
	if(istype(W,/obj/item/device/assembly_holder))

		if(rig)
			to_chat(user, SPAN_DANGER("There is another device in the way."))
			return ..()

		user.visible_message("[user] begins rigging [W] to \the [src].", "You begin rigging [W] to \the [src]")

		if(!do_after(user, 20, INTERRUPT_ALL, BUSY_ICON_HOSTILE, src, INTERRUPT_ALL))
			return

		if(rig)
			to_chat(user, SPAN_DANGER("There is another device in the way."))
			return ..()

		user.visible_message(SPAN_NOTICE("[user] rigs [W] to \the [src]."), SPAN_NOTICE(" You rig [W] to \the [src]"))

		var/obj/item/device/assembly_holder/H = W
		if (istype(H.a_left,/obj/item/device/assembly/igniter) || istype(H.a_right,/obj/item/device/assembly/igniter))
			msg_admin_niche("[key_name_admin(user)] rigged [name] at [loc.loc.name] ([loc.x],[loc.y],[loc.z]) for explosion. (<A HREF='?_src_=admin_holder;adminplayerobservecoodjump=1;X=[loc.x];Y=[loc.y];Z=[loc.z]'>JMP</a>)")
			log_game("[key_name(user)] rigged [name] at [loc.loc.name] ([loc.x],[loc.y],[loc.z]) for explosion.")

		rig = W
		user.drop_inv_item_to_loc(W, src)

		update_icon()

	else if(istype(W,/obj/item/stack/sheet/plasteel))
		var/obj/item/stack/sheet/plasteel/M = W
		if(M.get_amount() < STACK_10)
			to_chat(user, SPAN_WARNING("You don't have enough of [M] to reinforce [src]."))
			return

		user.visible_message(SPAN_NOTICE("[user] begins reinforcing the exterior of [src] with [M]."),\
		SPAN_NOTICE("You begin reinforcing [src] with [M]."))

		if(!do_after(user, SECONDS_3, INTERRUPT_ALL, BUSY_ICON_BUILD, src, INTERRUPT_ALL) || reinforced)
			return

		if(!M.use(STACK_10))
			to_chat(user, SPAN_WARNING("You don't have enough of [M] to reinforce [src]."))
			return

		user.visible_message(SPAN_NOTICE("[user] reinforces the exterior of [src] with [M]."),\
		SPAN_NOTICE("You reinforce [src] with [M]."))

		reinforced = TRUE
		update_icon()

	else if(istype(W, /obj/item/tool/crowbar))

		user.visible_message(SPAN_DANGER("[user] begins to remove the shielding from [src]."),\
		SPAN_NOTICE("You begin to remove the shielding from [src]."))

		if(!do_after(user, SECONDS_3, INTERRUPT_ALL, BUSY_ICON_BUILD, src, INTERRUPT_ALL) || !reinforced)
			return

		user.visible_message(SPAN_DANGER("[user] removes the shielding from [src]."),\
		SPAN_NOTICE("You remove the shielding from [src]."))
		new /obj/item/stack/sheet/metal(loc, STACK_5)

		reinforced = FALSE
		update_icon()

	return ..()


/obj/structure/reagent_dispensers/fueltank/bullet_act(var/obj/item/projectile/Proj)
	if(exploding) return 0
	if(ismob(Proj.firer))
		source_mob = Proj.firer

	if(Proj.damage > 10 && prob(60) && !reinforced)
		exploding = TRUE
		explode()

		if(Proj.firer)
			message_staff("[key_name_admin(Proj.firer)] fired a projectile at [name] in [loc.loc.name] ([loc.x],[loc.y],[loc.z]) (<A HREF='?_src_=admin_holder;adminplayerobservecoodjump=1;X=[loc.x];Y=[loc.y];Z=[loc.z]'>JMP</a>).")
			log_game("[key_name(Proj.firer)] fired a projectile at [name] in [loc.loc.name] ([loc.x],[loc.y],[loc.z]).")

	return TRUE

/obj/structure/reagent_dispensers/fueltank/ex_act(severity)
	if(exploding) return

	if(severity >= EXPLOSION_THRESHOLD_HIGH)
		exploding = TRUE
		explode(TRUE)
	else if(!reinforced)
		exploding = TRUE
		explode()

	if(src)
		return ..()

/obj/structure/reagent_dispensers/fueltank/proc/explode(var/force)
	if(reagents.handle_volatiles() || force)
		qdel(src)
		return

	exploding = FALSE
	update_icon()


/obj/structure/reagent_dispensers/fueltank/update_icon(var/cut_overlays = TRUE)
	if(cut_overlays)
		overlays.Cut()
	. = ..()

	if(rig)
		overlays += image(icon, "t_signaller")
		if(exploding)
			overlays += image(icon, "t_boom")
		else
			overlays += image(icon, "t_active")
	else
		overlays += image(icon, "t_inactive")

	if(reinforced)
		overlays += image(icon, icon_state = "t_reinforced")

/obj/structure/reagent_dispensers/fueltank/fire_act(temperature, volume)
	if(temperature > T0C+500 && !reinforced)
		explode()
	return ..()

/obj/structure/reagent_dispensers/fueltank/Move()
	. = ..()
	if(. && modded && reagents && !reagents.locked)
		leak_fuel(amount_per_transfer_from_this/10.0)

/obj/structure/reagent_dispensers/fueltank/proc/leak_fuel(amount)
	if(reagents.total_volume == 0)
		return

	amount = min(amount, reagents.total_volume)
	reagents.remove_reagent(chemical,amount)
	new /obj/effect/decal/cleanable/liquid_fuel(src.loc, amount)

/obj/structure/reagent_dispensers/fueltank/flamer_fire_act()
	if(!reinforced)
		explode()

/obj/structure/reagent_dispensers/fueltank/gas
	name = "gastank"
	desc = "A gastank"

/obj/structure/reagent_dispensers/fueltank/gas/leak_fuel(amount)
	if(reagents.total_volume == 0)
		return

	amount = min(amount, reagents.total_volume)
	reagents.remove_reagent(chemical,amount)

/obj/structure/reagent_dispensers/fueltank/gas/methane
	name = "methanetank"
	desc = "A methanetank"
	icon_state = "methanetank"
	chemical = "methane"

/obj/structure/reagent_dispensers/fueltank/gas/hydrogen
	name = "hydrogentank"
	desc = "A hydrogentank"
	icon_state = "hydrogentank"
	chemical = "hydrogen"

/obj/structure/reagent_dispensers/fueltank/custom
	name = "reagent tank"
	desc = "A reagent tank, typically used to store large quantities of chemicals."

	chemical = null
	icon_state = "tank_normal"

/obj/structure/reagent_dispensers/fueltank/custom/Initialize(mapload, volume)
	. = ..()
	update_icon()

/obj/structure/reagent_dispensers/fueltank/custom/on_reagent_change()
	. = ..()
	update_icon()

/obj/structure/reagent_dispensers/fueltank/custom/update_icon()
	. = ..()

	var/set_icon_state = "tn_color"

	if(icon_state == "tank_explosive")
		set_icon_state = "te_color"

	var/image/I = image(icon, icon_state=set_icon_state)

	if(reagents)
		I.color = mix_color_from_reagents(reagents.reagent_list)

	overlays += I


/obj/structure/reagent_dispensers/peppertank
	name = "pepper spray refiller"
	desc = "Refill pepper spray canisters."
	icon = 'icons/obj/objects.dmi'
	icon_state = "peppertank"
	anchored = 1
	density = 0
	amount_per_transfer_from_this = 45
	chemical = "condensedcapsaicin"

/obj/structure/reagent_dispensers/water_cooler
	name = "water cooler"
	desc = "A machine that dispenses water to drink. It has levers for hot and cold, but it only dispenses room-temperature water."
	amount_per_transfer_from_this = 5
	icon = 'icons/obj/structures/machinery/vending.dmi'
	icon_state = "water_cooler"
	possible_transfer_amounts = null
	anchored = 1
	chemical = "water"

/obj/structure/reagent_dispensers/water_cooler/stacks
	icon_state = "water_cooler_2"

/obj/structure/reagent_dispensers/beerkeg
	name = "beer keg"
	desc = "A beer keg"
	icon = 'icons/obj/objects.dmi'
	icon_state = "beertankTEMP"
	amount_per_transfer_from_this = 10
	chemical = "beer"

/obj/structure/reagent_dispensers/virusfood
	name = "virus food dispenser"
	desc = "A dispenser of virus food."
	icon = 'icons/obj/objects.dmi'
	icon_state = "virusfoodtank"
	amount_per_transfer_from_this = 10
	anchored = 1
	density = 0
	chemical = "virusfood"

