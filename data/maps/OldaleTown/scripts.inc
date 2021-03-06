OldaleTown_MapScripts:: @ 81E8EA2
	map_script ON_TRANSITION, OldaleTown_OnTransition
	map_script ON_FRAME, OT_CheckMagmaEvent
	.byte 0
	
OT_CheckMagmaEvent::
	map_script_2 VAR_RYU_MAGMA, 225, OT_DoMagmaSetup
	.2byte 0

OldaleTown_OnTransition: @ 81E8EA8
	call Common_EventScript_SetupRivalGfxId
	setflag FLAG_VISITED_OLDALE_TOWN
	call RyuCheckForWellTravelledAch
	call_if_unset FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_BlockWestEntrance
	call_if_unset FLAG_RECEIVED_GREAT_BALL_OLDALE, OldaleTown_EventScript_MoveMartEmployee
	call_if_set FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_SetOldaleState
	end

@ This script seems pointless because nothing uses VAR_OLDALE_TOWN_STATE
OldaleTown_EventScript_SetOldaleState:: @ 81E8ECC
	setvar VAR_OLDALE_TOWN_STATE, 1
	return

OldaleTown_EventScript_BlockWestEntrance:: @ 81E8ED2
	setobjectxyperm 3, 1, 11
	setobjectmovementtype 3, MOVEMENT_TYPE_FACE_LEFT
	return

OldaleTown_EventScript_MoveMartEmployee:: @ 81E8EDE
	setobjectxyperm 2, 13, 14
	setobjectmovementtype 2, MOVEMENT_TYPE_FACE_DOWN
	return

OldaleTown_EventScript_CitySign:: @ 81E8EEA
	msgbox OldaleTown_Text_CitySign, MSGBOX_SIGN
	end

OldaleTown_EventScript_Girl:: @ 81E8EF3
	msgbox OldaleTown_Text_SavingMyProgress, MSGBOX_NPC
	end

OldaleTown_EventScript_MartEmployee:: @ 81E8EFC
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_GREAT_BALL_OLDALE, OldaleTown_EventScript_ExplainPotion
	goto_if_set FLAG_TEMP_1, OldaleTown_EventScript_ExplainPotion
	setflag FLAG_TEMP_1
	playbgm MUS_TSURETEK, 0
	msgbox OldaleTown_Text_IWorkAtPokemonMart, MSGBOX_DEFAULT
	closemessage
	switch VAR_FACING
	case DIR_SOUTH, OldaleTown_EventScript_GoToMartSouth
	case DIR_NORTH, OldaleTown_EventScript_GoToMartNorth
	case DIR_EAST, OldaleTown_EventScript_GoToMartEast
	end

OldaleTown_EventScript_GoToMartSouth:: @ 81E8F47
	applymovement 2, OldaleTown_Movement_EmployeeSouth
	applymovement OBJ_EVENT_ID_PLAYER, OldaleTown_Movement_PlayerSouth
	applymovement OBJ_EVENT_ID_FOLLOWER, OldaleTown_Movement_PlayerSouth
	waitmovement 0
	goto OldaleTown_EventScript_ExplainPokemonMart
	end

OldaleTown_EventScript_GoToMartNorth:: @ 81E8F5E
	applymovement 2, OldaleTown_Movement_EmployeeNorth
	applymovement OBJ_EVENT_ID_PLAYER, OldaleTown_Movement_PlayerNorth
	applymovement OBJ_EVENT_ID_FOLLOWER, OldaleTown_Movement_PlayerNorth
	waitmovement 0
	goto OldaleTown_EventScript_ExplainPokemonMart
	end

OldaleTown_EventScript_GoToMartEast:: @ 81E8F75
	applymovement OBJ_EVENT_ID_PLAYER, OldaleTown_Movement_PlayerEast
	applymovement OBJ_EVENT_ID_FOLLOWER, OldaleTown_Movement_PlayerEast
	applymovement 2, OldaleTown_Movement_EmployeeEast
	waitmovement 0
	goto OldaleTown_EventScript_ExplainPokemonMart
	end

OldaleTown_EventScript_ExplainPokemonMart:: @ 81E8F8C
	msgbox OldaleTown_Text_ThisIsAPokemonMart, MSGBOX_DEFAULT
	giveitem ITEM_GREAT_BALL
	compare VAR_RESULT, 0
	goto_if_eq OldaleTown_EventScript_BagIsFull
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_GREAT_BALL_OLDALE
	fadedefaultbgm
	release
	end

OldaleTown_EventScript_ExplainPotion:: @ 81E8FB9
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
	release
	end

OldaleTown_EventScript_BagIsFull:: @ 81E8FC3
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
	fadedefaultbgm
	release
	end

OldaleTown_Movement_EmployeeEast: @ 81E8FCE
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_in_place_fastest_down
	step_end

OldaleTown_Movement_EmployeeSouth: @ 81E8FD7
	walk_left
	walk_up
	walk_up
	walk_right
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_in_place_fastest_down
	step_end

OldaleTown_Movement_EmployeeNorth: @ 81E8FE2
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_in_place_fastest_down
	step_end

OldaleTown_Movement_Unknown1: @ 81E8FEB
	walk_up
	walk_up
	walk_right
	walk_right
	walk_right
	walk_right
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	delay_8
	walk_in_place_fastest_down
	step_end

OldaleTown_Movement_PlayerEast: @ 81E8FF9
	walk_right
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	step_end

OldaleTown_Movement_PlayerSouth: @ 81E9001
	delay_16
	delay_16
	delay_16
	delay_16
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	step_end

OldaleTown_Movement_PlayerNorth: @ 81E900B
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	step_end

OldaleTown_Movement_Unknown2: @ 81E9013
	walk_left
	walk_up
	walk_up
	walk_right
	walk_right
	walk_right
	walk_right
	walk_up
	walk_up
	walk_up
	walk_up
	step_end

OldaleTown_EventScript_FootprintsMan:: @ 81E901F
	lock
	faceplayer
	goto_if_set FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_NotBlockingPath
	msgbox OldaleTown_Text_DiscoveredFootprints, MSGBOX_DEFAULT
	closemessage
	applymovement 3, Common_Movement_FaceOriginalDirection
	waitmovement 0
	release
	end

OldaleTown_EventScript_BlockedPath:: @ 81E903F
	lockall
	applymovement OBJ_EVENT_ID_PLAYER, OldaleTown_Movement_PlayerStepBack
	applymovement 3, OldaleTown_Movement_BackUp
	waitmovement 0
	msgbox OldaleTown_Text_WaitDontComeInHere, MSGBOX_DEFAULT
	closemessage
	applymovement 3, OldaleTown_Movement_ReturnToOriginalPosition
	waitmovement 0
	releaseall
	end

OldaleTown_EventScript_NotBlockingPath:: @ 81E9066
	msgbox OldaleTown_Text_FinishedSketchingFootprints, MSGBOX_DEFAULT
	release
	end

OldaleTown_EventScript_Rival:: @ 81E9070
	lockall
	applymovement 4, Common_Movement_FacePlayer
	waitmovement 0
	setvar VAR_0x8009, 0
	goto OldaleTown_EventScript_ShowRivalMessage
	end

OldaleTown_EventScript_RivalTrigger1:: @ 81E9086
	lockall
	applymovement 4, OldaleTown_Movement_RivalApproachPlayer1
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestRight
	waitmovement 0
	setvar VAR_0x8009, 1
	goto OldaleTown_EventScript_ShowRivalMessage
	end

OldaleTown_EventScript_RivalTrigger2:: @ 81E90A6
	lockall
	applymovement 4, OldaleTown_Movement_RivalApproachPlayer2
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestRight
	waitmovement 0
	setvar VAR_0x8009, 1
	goto OldaleTown_EventScript_ShowRivalMessage
	end

OldaleTown_EventScript_RivalTrigger3:: @ 81E90C6
	lockall
	applymovement 4, OldaleTown_Movement_RivalApproachPlayer3
	waitmovement 0
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFastestRight
	waitmovement 0
	setvar VAR_0x8009, 1
	goto OldaleTown_EventScript_ShowRivalMessage
	end

OldaleTown_EventScript_ShowRivalMessage:: @ 81E90E6
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq OldaleTown_EventScript_ShowMayMessage
	compare VAR_RESULT, FEMALE
	goto_if_eq OldaleTown_EventScript_ShowBrendanMessage
	end

OldaleTown_EventScript_ShowMayMessage:: @ 81E90FE
	msgbox OldaleTown_Text_MayLetsGoBack, MSGBOX_DEFAULT
	goto OldaleTown_EventScript_RivalFinish
	end

OldaleTown_EventScript_ShowBrendanMessage:: @ 81E910C
	msgbox OldaleTown_Text_BrendanLetsGoBack, MSGBOX_DEFAULT
	goto OldaleTown_EventScript_RivalFinish
	end

OldaleTown_EventScript_RivalFinish:: @ 81E911A
	closemessage
	compare VAR_0x8009, 0
	call_if_eq OldaleTown_EventScript_DoExitMovement1
	compare VAR_0x8009, 1
	call_if_eq OldaleTown_EventScript_DoExitMovement2
	applymovement 4, OldaleTown_Movement_RivalExit
	waitmovement 0
	removeobject 4
	setvar VAR_OLDALE_RIVAL_STATE, 2
	setflag FLAG_HIDE_OLDALE_TOWN_RIVAL
	releaseall
	end

OldaleTown_EventScript_DoExitMovement1:: @ 81E9148
	compare VAR_FACING, DIR_SOUTH
	goto_if_ne OldaleTown_EventScript_DoExitMovement2
	applymovement 4, OldaleTown_Movement_RivalExit
	waitmovement 0
	return

OldaleTown_EventScript_DoExitMovement2:: @ 81E915E
	applymovement OBJ_EVENT_ID_PLAYER, OldaleTown_Movement_WatchRivalExit
	applymovement 4, OldaleTown_Movement_RivalExit
	waitmovement 0
	return

OldaleTown_Movement_RivalApproachPlayer1: @ 81E9170
	walk_left
	walk_left
	step_end

OldaleTown_Movement_RivalApproachPlayer2: @ 81E9173
	walk_left
	step_end

OldaleTown_Movement_RivalApproachPlayer3: @ 81E9175
	face_left
	step_end

OldaleTown_Movement_RivalExit: @ 81E9177
	walk_down
	walk_down
	walk_down
	walk_down
	walk_down
	walk_down
	step_end

OldaleTown_Movement_WatchRivalExit: @ 81E917E
	delay_8
	delay_4
	walk_in_place_fastest_down
	step_end

OldaleTown_Movement_PlayerStepBack: @ 81E9182
	delay_8
	walk_right
	step_end

OldaleTown_Movement_BackUp: @ 81E9185
	walk_fast_up
	walk_in_place_fastest_left
	lock_facing_direction
	walk_right
	unlock_facing_direction
	step_end

OldaleTown_Movement_ReturnToOriginalPosition: @ 81E918B
	walk_down
	walk_left
	step_end

OldaleTown_Text_SavingMyProgress: @ 81E918E
	.string "I want to take a rest, so I'm saving my\n"
	.string "progress.$"

OldaleTown_Text_IWorkAtPokemonMart: @ 81E91C0
	.string "Hi!\n"
	.string "I work at a Pokémon Mart.\p"
	.string "Can I get you to come with me?$"

OldaleTown_Text_ThisIsAPokemonMart: @ 81E91FD
	.string "This is a Pokémon Mart.\n"
	.string "Just look for our blue roof.\p"
	.string "We sell a variety of goods including\n"
	.string "Poké Balls for catching Pokémon.\p"
	.string "Here, I'd like you to have this one\n"
	.string "as a promotional item.$"

OldaleTown_Text_PotionExplanation: @ 81E92AF
	.string "A Great Ball can be used to catch\n"
	.string "a Pokemon and expand your party.$"

OldaleTown_Text_WaitDontComeInHere: @ 81E9313
	.string "Aaaaah! Wait!\n"
	.string "Please don't come in here.\p"
	.string "I just discovered the footprints of\n"
	.string "a rare Pokémon!\p"
	.string "Wait until I finish sketching\n"
	.string "them, okay?$"

OldaleTown_Text_DiscoveredFootprints: @ 81E939A
	.string "I just discovered the footprints of\n"
	.string "a rare Pokémon!\p"
	.string "Wait until I finish sketching\n"
	.string "them, okay?$"

OldaleTown_Text_FinishedSketchingFootprints: @ 81E93F8
	.string "I finished sketching the footprints of\n"
	.string "a rare Pokémon.\p"
	.string "But it turns out they were only my\n"
	.string "own footprints…$"

OldaleTown_Text_MayLetsGoBack: @ 81E9462
	.string "Dawn: {PLAYER}!\n"
	.string "Over here!\l"
	.string "Let's hurry home!$"

OldaleTown_Text_BrendanLetsGoBack: @ 81E948A
	.string "Brendan: I'm heading back to my dad's\n"
	.string "lab now.\l"
	.string "{PLAYER}, you should hustle back, too.$"

OldaleTown_Text_CitySign: @ 81E94DA
	.string "Oldale Town\n"
	.string "“Where things start off scarce.”$"
	
	
@==================================================================================================Magma Event

OT_DoMagmaSetup::
	setvar VAR_RYU_MAGMA, 230@Magma heist is under way
	addobject 5
	playbgm 358, 0
	setflag FLAG_RYU_WAYSTONE_DISABLED
	release
	end
	
OT_CheckPlayerMagmaEvent::
	compare VAR_RYU_MAGMA, 230
	goto_if_eq OT_CantLeaveYet
	goto ryu_end
	
OT_CheckIfPlayerCanEnter::
	goto_if_unset FLAG_RYU_BANNED_FROM_OLDALE, OT_FinishNurseQuest3
	lock
	msgbox OT_YouCantGoInHere
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_StepDown
	waitmovement OBJ_EVENT_ID_PLAYER
	release
	end
	
OT_CantLeaveYet::
	lock
	goto_if_unset FLAG_RYU_BANNED_FROM_OLDALE, ryu_end
	specialvar VAR_RESULT, GetPlayerFacingDirection
	switch VAR_RESULT
	case DIR_NORTH, OT_CantLeaveNorth
	case DIR_WEST, OT_CantLeaveWest
	case DIR_SOUTH, OT_CantLeaveSouth
	case DIR_EAST, OT_CantEnterEast
	goto OT_CantLeaveNorth
	
OT_CantLeaveNorth::
	msgbox OT_NotDone
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_StepDown
	waitmovement OBJ_EVENT_ID_PLAYER
	goto ryu_end
	
OT_CantLeaveSouth::
	msgbox OT_NotDone
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_StepUp
	waitmovement OBJ_EVENT_ID_PLAYER
	goto ryu_end
	
OT_CantLeaveWest::
	msgbox OT_NotDone
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_StepRight
	waitmovement OBJ_EVENT_ID_PLAYER
	goto ryu_end
	
OT_CantEnterEast:
	msgbox OT_CantEnterHere
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_StepLeft
	waitmovement OBJ_EVENT_ID_PLAYER
	goto ryu_end

	
OT_StartMagmaHeist::
	lock
	faceplayer
	setvar VAR_RYU_MAGMA, 234@player started heist scene
	playse SE_PIN
	applymovement 5, Common_Movement_ExclamationMark
	waitmovement 5
	msgbox OT_ThatFaceI
	closemessage
	trainerbattle_single TRAINER_DEVON_ENFORCER_1, OT_BattleIntro, OT_BattleDefeat, OT_ContinueHeist
	end
	
OT_ContinueHeist::
	setflag FLAG_HIDE_CHAMPIONS_ROOM_STEVEN
	setvar VAR_RYU_MAGMA 240@player defeated shop guard
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
	waitmovement OBJ_EVENT_ID_PLAYER
	applymovement 5, Common_Movement_StepRight
	waitmovement 5
	addobject 6
	addobject 7
	addobject 8
	addobject 9
	applymovement 6, OT_MoveIntoStore
	delay 40
	applymovement 7, OT_MoveIntoStore
	delay 40
	applymovement 8, OT_MoveIntoStore
	delay 40
	applymovement 9, OT_MoveIntoStore
	waitmovement 9
	removeobject 6
	removeobject 7
	removeobject 8
	removeobject 9
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_StepUp
	waitmovement OBJ_EVENT_ID_PLAYER
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
	msgbox OT_YouThinkThis
	closemessage
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER Common_Movement_QuestionMark
	waitmovement OBJ_EVENT_ID_PLAYER
	playse SE_HINSI
	waitse
	playse SE_HINSI
	waitse
	playse SE_HINSI
	waitse
	playse SE_HINSI
	waitse
	playse SE_HINSI
	waitse
	playse SE_HINSI
	waitse
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
	waitmovement OBJ_EVENT_ID_PLAYER
	msgbox OT_ThatsWhatIMean
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_StepLeft
	waitmovement OBJ_EVENT_ID_PLAYER
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
	waitmovement OBJ_EVENT_ID_PLAYER
	addobject 6
	addobject 7
	addobject 8
	addobject 9
	setobjectxy 6, 14, 6
	setobjectxy 7, 14, 6
	setobjectxy 8, 14, 6
	setobjectxy 9, 14, 6
	applymovement 6, OT_MagmaExitStore
	delay 20
	applymovement 7, OT_MagmaExitStore
	delay 20
	applymovement 8, OT_MagmaExitStore
	delay 20
	applymovement 9, OT_LastMagmaExit
	waitmovement 9
	removeobject 6
	removeobject 7
	removeobject 8
	msgbox OT_PlayerStoreOwner
	closemessage
	applymovement 9, OT_LastMagmaLeave
	waitmovement 9
	removeobject 9
	applymovement OBJ_EVENT_ID_PLAYER, OT_PlayerLeaveOldale
	waitmovement OBJ_EVENT_ID_PLAYER
	setvar VAR_RYU_MAGMA, 245@Player left oldale after heist
	setflag FLAG_RYU_BANNED_FROM_OLDALE
	release
	end
	
OT_CantEnterHere:
	.string "You just commited a crime here.\nYou probably don't want to\lgo back there.$"
	
OT_YouCantGoInHere:
	.string "You're currently participating\nin a crime. You can't go\linto this building.$"
	
OT_ThatFaceI:
	.string "That face...I saw you on TV! You're\n"
    .string "that Trainer who joined Team Magma\p"
    .string "and contaminated Lilycove's seas!\n"
    .string "Someone like you will not be accepted\p"
    .string "here!$"

OT_BattleIntro:
	.string "Prepare yourself, scum!$"
	
OT_BattleDefeat:
	.string "I've failed…$"

OT_YouThinkThis:
	.string "You think this is it, do you?\p"
    .string "{COLOR LIGHT_BLUE}{SHADOW BLUE}Shut it. You're not getting past me.\p"
    .string "{COLOR DARK_GREY}{SHADOW LIGHT_GREY}That's not what I mean.$"
	
OT_ThatsWhatIMean:
	.string "That's what I mean.$"

OT_PlayerStoreOwner:
	.string "{PLAYER}! Store owner flipped the\n"
    .string "alarm! We've gotta get out of here!$"
	
OT_MoveIntoStore:@7down, 6 right, 1 up
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_right
	walk_fast_right
	walk_fast_right
	walk_fast_right
	walk_fast_right
	walk_fast_right
	walk_up
	step_end
	
OT_MagmaExitStore:
	walk_fastest_down
	walk_fastest_down
	walk_fastest_down
	walk_fastest_down
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	step_end
	
OT_LastMagmaExit:
	walk_down
	walk_down
	walk_left
	face_up
	step_end
	
OT_LastMagmaLeave:
	walk_fastest_down
	walk_fastest_down
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	step_end
	
OT_PlayerLeaveOldale:
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_down
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	walk_fastest_left
	step_end
	
