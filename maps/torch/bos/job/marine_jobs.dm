	/datum/job/squad_lead
	title = "Marine Leader"
	department = "Marines"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	supervisors = "the highest ranking Marine and SolGov Command"
	selection_color = "#557e38"
	minimal_player_age = 12
	economic_power = 7
	skill_points = 26
	minimum_character_age = list(SPECIES_HUMAN = 25)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA         = SKILL_ADEPT,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	allowed_branches = list(/datum/mil_branch/larmarine)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e6,
		/datum/mil_rank/larmarine/e7
	)

	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
			            access_marcom, access_martech, access_marmed, access_aquila, access_eva, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/squad_lead/get_description_blurb()
	return "-"

/datum/job/combat_tech
	title = "Marine Technician"
	supervisors = "the Marine Leader"
	department = "Marines"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 8
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 20)
	min_skill = list(	SKILL_CONSTRUCTION = SKILL_ADEPT,
						SKILL_ELECTRICAL   = SKILL_ADEPT,
						SKILL_MEDICAL      = SKILL_BASIC,
						SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT       = SKILL_MAX,
						SKILL_WEAPONS      = SKILL_MAX,
						SKILL_EVA		   = SKILL_MAX,
						SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_ELECTRICAL   = SKILL_MAX)

	allowed_branches = list(/datum/mil_branch/larmarine)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4,
		/datum/mil_rank/larmarine/e5
		)
	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
			            access_aquila, access_eva, access_martech)

/datum/job/combat_tech/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Marine Leader")
				return TRUE
	return FALSE

/datum/job/combat_tech/get_description_blurb()
	return "-"

/datum/job/combat_medic
	title = "Marine Combat Medic"
	supervisors = "the Marine Leader"
	department = "Marines"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 8
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 20)
	min_skill = list(SKILL_EVA    = SKILL_BASIC,
					SKILL_MEDICAL = SKILL_BASIC,
					SKILL_COMBAT  = SKILL_ADEPT,
					SKILL_WEAPONS = SKILL_ADEPT,
					SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(SKILL_MEDICAL     = SKILL_MAX,
					SKILL_COMBAT       = SKILL_MAX,
					SKILL_WEAPONS      = SKILL_MAX,
					SKILL_CHEMISTRY    = SKILL_MAX)

	allowed_branches = list(
		/datum/mil_branch/larmarine
	)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4,
		/datum/mil_rank/larmarine/e5
		)
	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
			            access_aquila, access_eva, access_marmed)

/datum/job/combat_medic/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Marine Leader")
				return TRUE
	return FALSE

/datum/job/combat_medic/get_description_blurb()
	return "-"
/datum/job/grunt
	title = "Marine Rifleman"
	department = "Marines"
	department_flag = INF
	total_positions = 3
	spawn_positions = 3
	minimal_player_age = 6
	supervisors = "the Marine Technician and Leader"
	selection_color = "#557e38"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
	min_skill = list(	SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	allowed_branches = list(/datum/mil_branch/larmarine)
	allowed_ranks = list(
		/datum/mil_rank/larmarine/e1,
		/datum/mil_rank/larmarine/e2,
		/datum/mil_rank/larmarine/e3,
		/datum/mil_rank/larmarine/e4
	)
	access = list(access_maint_tunnels, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_marines,
			            access_aquila, access_eva)
	alt_titles = list(
		"Marine Grenadier",
		"Marine Assaultman")

/datum/job/grunt/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Marine Leader")
				return TRUE
	return FALSE
