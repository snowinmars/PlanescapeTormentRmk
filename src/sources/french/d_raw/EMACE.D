// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : EMACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~EMACE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Cette arme semble faite d'un métal spécial. L'examen révèle qu'elle est fabriquée d'un seul et solide bloc de métal au lieu d'une lame insérée dans un manche. Au milieu de tes réflexions, la lame commence à bouger et à se transformer dans ta main, comme pour échapper à sa forme actuelle.~ */
  IF ~~ THEN REPLY #55079 /* ~Par ta volonté, transforme la lame.~ */ GOTO 1
  IF ~~ THEN REPLY #57687 /* ~Laisse la lame tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57692 /* ~Le métal de la lame commence à se tordre et à battre en rythme dans ta main. Tu peux presque sentir son impatience. Quelle forme souhaites-tu lui voir prendre ?~ */
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57695 /* ~Souhaite qu'elle devienne un marteau.~ */ DO ~TransformPartyItem("EDag","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57699 /* ~Souhaite qu'elle devienne une hache.~ */ DO ~TransformPartyItem("EDag","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57702 /* ~Souhaite qu'elle devienne une masse.~ */ DO ~TransformPartyItem("EDag","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57705 /* ~Souhaite qu'elle devienne un gantelet à pointes.~ */ DO ~TransformPartyItem("EDag","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57711 /* ~Souhaite qu'elle devienne une dague.~ */ DO ~TransformPartyItem("EHam","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57715 /* ~Souhaite qu'elle devienne une hache.~ */ DO ~TransformPartyItem("EHam","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57720 /* ~Souhaite qu'elle devienne une masse.~ */ DO ~TransformPartyItem("EHam","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57721 /* ~Souhaite qu'elle devienne un gantelet à pointes.~ */ DO ~TransformPartyItem("EHam","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57722 /* ~Souhaite qu'elle devienne une dague.~ */ DO ~TransformPartyItem("EAxe","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57724 /* ~Souhaite qu'elle devienne un marteau.~ */ DO ~TransformPartyItem("EAxe","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57728 /* ~Souhaite qu'elle devienne une masse.~ */ DO ~TransformPartyItem("EAxe","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57731 /* ~Souhaite qu'elle devienne un gantelet à pointes.~ */ DO ~TransformPartyItem("EAxe","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57735 /* ~Souhaite qu'elle devienne une dague.~ */ DO ~TransformPartyItem("EMace","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57742 /* ~Souhaite qu'elle devienne un marteau.~ */ DO ~TransformPartyItem("EMace","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57746 /* ~Souhaite qu'elle devienne une hache.~ */ DO ~TransformPartyItem("EMace","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57749 /* ~Souhaite qu'elle devienne un gantelet à pointes.~ */ DO ~TransformPartyItem("EMace","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57750 /* ~Souhaite qu'elle devienne une dague.~ */ DO ~TransformPartyItem("EFist","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57752 /* ~Souhaite qu'elle devienne un marteau.~ */ DO ~TransformPartyItem("EFist","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57756 /* ~Souhaite qu'elle devienne une hache.~ */ DO ~TransformPartyItem("EFist","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57758 /* ~Souhaite qu'elle devienne une masse.~ */ DO ~TransformPartyItem("EFist","EMace",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #57762 /* ~Laisse la lame telle qu'elle est.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.18 1.19
  SAY #57767 /* ~Dans une grande agitation, la lame subit des modifications époustouflantes. En quelques instants, tu te retrouves tenant l'arme de ton choix.~ */
  IF ~~ THEN REPLY #57770 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.20
  SAY #57772 /* ~La lame arrête brusquement de se tordre et se fixe dans sa forme actuelle.~ */
  IF ~~ THEN REPLY #57774 /* ~Terminé.~ */ EXIT
END
