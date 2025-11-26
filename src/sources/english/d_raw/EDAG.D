// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : EDAG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~EDAG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~This weapon appears to be made of an unusual metal. Examining it reveals that it is constructed of one solid piece of metal rather than a blade inserted into a hilt. As you ponder this the blade begins to shift and change in your hand. It looks as if it is trying to break free of its current form.~ */
  IF ~~ THEN REPLY #55079 /* ~Will the blade to change.~ */ GOTO 1
  IF ~~ THEN REPLY #57687 /* ~Leave the blade alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57692 /* ~The metal of the blade begins to writhe and pulse in your hand. You can almost sense a feeling of anticipation emanating from the blade. What form do you will it to take?~ */
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57695 /* ~Will it to become a hammer.~ */ DO ~TransformPartyItem("EDag","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57699 /* ~Will it to become an axe.~ */ DO ~TransformPartyItem("EDag","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57702 /* ~Will it to become a mace.~ */ DO ~TransformPartyItem("EDag","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57705 /* ~Will it to become spiked gauntlets.~ */ DO ~TransformPartyItem("EDag","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57711 /* ~Will it to become a fine dagger.~ */ DO ~TransformPartyItem("EHam","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57715 /* ~Will it to become an axe.~ */ DO ~TransformPartyItem("EHam","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57720 /* ~Will it to become a mace.~ */ DO ~TransformPartyItem("EHam","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57721 /* ~Will it to become spiked gauntlets.~ */ DO ~TransformPartyItem("EHam","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57722 /* ~Will it to become a fine dagger.~ */ DO ~TransformPartyItem("EAxe","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57724 /* ~Will it to become a hammer.~ */ DO ~TransformPartyItem("EAxe","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57728 /* ~Will it to become a mace.~ */ DO ~TransformPartyItem("EAxe","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57731 /* ~Will it to become spiked gauntlets.~ */ DO ~TransformPartyItem("EAxe","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57735 /* ~Will it to become a fine dagger.~ */ DO ~TransformPartyItem("EMace","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57742 /* ~Will it to become a hammer.~ */ DO ~TransformPartyItem("EMace","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57746 /* ~Will it to become an axe.~ */ DO ~TransformPartyItem("EMace","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57749 /* ~Will it to become spiked gauntlets.~ */ DO ~TransformPartyItem("EMace","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57750 /* ~Will it to become a fine dagger.~ */ DO ~TransformPartyItem("EFist","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57752 /* ~Will it to become a hammer.~ */ DO ~TransformPartyItem("EFist","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57756 /* ~Will it to become an axe.~ */ DO ~TransformPartyItem("EFist","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57758 /* ~Will it to become a mace.~ */ DO ~TransformPartyItem("EFist","EMace",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #57762 /* ~Leave the blade as is.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.18 1.19
  SAY #57767 /* ~There is a flurry of activity as the blade undergoes some astounding changes. Within moments you have the weapon of your choice.~ */
  IF ~~ THEN REPLY #57770 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.20
  SAY #57772 /* ~The blade suddenly stops writhing and settles into its current form.~ */
  IF ~~ THEN REPLY #57774 /* ~Done.~ */ EXIT
END
