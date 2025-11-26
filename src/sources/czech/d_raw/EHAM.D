// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : EHAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~EHAM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Zbraň je vytvořena z nezvyklého kovu. Je vyrobená z jediného kusu kovu, namísto klasického ostří vloženého do jílce. Když nad tím přemýšlíš, zbraň se ti v ruce začíná kroutit a měnit. Jakoby se snažila osvobodit ze své momentální formy.~ */
  IF ~~ THEN REPLY #55079 /* ~Přej si, ať se zbraň změní.~ */ GOTO 1
  IF ~~ THEN REPLY #57687 /* ~Nechej meč být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57692 /* ~Kov zbraně v tvé ruce začal pulzovat a kroutit se. Vnímáš pocit očekávání. Jakou formu má zbraň mít?~ */
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57695 /* ~Přej si, ať se stane kladivem.~ */ DO ~TransformPartyItem("EDag","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57699 /* ~Přej si, ať se stane sekerou.~ */ DO ~TransformPartyItem("EDag","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57702 /* ~Přej si, ať se stane palicí.~ */ DO ~TransformPartyItem("EDag","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57705 /* ~Přej si, ať se stane rukavicemi.~ */ DO ~TransformPartyItem("EDag","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57711 /* ~Přej si, ať se stane dýkou.~ */ DO ~TransformPartyItem("EHam","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57715 /* ~Přej si, ať se stane sekerou.~ */ DO ~TransformPartyItem("EHam","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57720 /* ~Přej si, ať se stane palicí.~ */ DO ~TransformPartyItem("EHam","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57721 /* ~Přej si, ať se stane rukavicemi.~ */ DO ~TransformPartyItem("EHam","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57722 /* ~Přej si, ať se stane dýkou.~ */ DO ~TransformPartyItem("EAxe","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57724 /* ~Přej si, ať se stane kladivem.~ */ DO ~TransformPartyItem("EAxe","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57728 /* ~Přej si, ať se stane palicí.~ */ DO ~TransformPartyItem("EAxe","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57731 /* ~Přej si, ať se stane rukavicemi.~ */ DO ~TransformPartyItem("EAxe","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57735 /* ~Přej si, ať se stane dýkou.~ */ DO ~TransformPartyItem("EMace","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57742 /* ~Přej si, ať se stane kladivem.~ */ DO ~TransformPartyItem("EMace","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57746 /* ~Přej si, ať se stane sekerou.~ */ DO ~TransformPartyItem("EMace","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57749 /* ~Přej si, ať se stane rukavicemi.~ */ DO ~TransformPartyItem("EMace","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57750 /* ~Přej si, ať se stane dýkou.~ */ DO ~TransformPartyItem("EFist","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57752 /* ~Přej si, ať se stane kladivem.~ */ DO ~TransformPartyItem("EFist","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57756 /* ~Přej si, ať se stane sekerou.~ */ DO ~TransformPartyItem("EFist","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57758 /* ~Přej si, ať se změní na palici.~ */ DO ~TransformPartyItem("EFist","EMace",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #57762 /* ~Nechej to tak, jak to je.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.18 1.19
  SAY #57767 /* ~Zbraň se začíná kroutit a prochází ohromujícími změnami. Během několika chvilek máš zbraň svého výběru.~ */
  IF ~~ THEN REPLY #57770 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.20
  SAY #57772 /* ~Zbraň se přestala kroutit a zůstala ve své momentální formě.~ */
  IF ~~ THEN REPLY #57774 /* ~Hotovo.~ */ EXIT
END
