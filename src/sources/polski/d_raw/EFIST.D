// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : EFIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~EFIST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Ta broń wydaje się być wykonana z jakiegoś niezwykłego metalu. Po dokładniejszych oględzinach okazuje się, że jest wykuta z jednego kawałka metalu, rękojeść nie została osadzona na ostrzu, jak to zwykle ma miejsce. Gdy tylko ją podnosisz, zaczyna się zmieniać w twojej dłoni. Wygląda, jakby chciała się wyzwolić ze swej postaci.~ */
  IF ~~ THEN REPLY #55079 /* ~Niech broń się zmieni.~ */ GOTO 1
  IF ~~ THEN REPLY #57687 /* ~Niech ostrze zostanie takie jakie jest.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57692 /* ~Metal, z którego wykonano ostrze, zaczyna się wić i pulsować w twojej dłoni. Prawie czujesz emanującą z ostrza niecierpliwość. Jaką ma przyjąć formę?~ */
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57695 /* ~Niech stanie się młotem.~ */ DO ~TransformPartyItem("EDag","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57699 /* ~Niech stanie się toporem.~ */ DO ~TransformPartyItem("EDag","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57702 /* ~Niech stanie się wekierą.~ */ DO ~TransformPartyItem("EDag","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57705 /* ~Niech stanie się kolczastymi rękawicami.~ */ DO ~TransformPartyItem("EDag","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57711 /* ~Niech stanie się dobrym sztyletem.~ */ DO ~TransformPartyItem("EHam","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57715 /* ~Niech stanie się toporem.~ */ DO ~TransformPartyItem("EHam","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57720 /* ~Niech stanie się wekierą.~ */ DO ~TransformPartyItem("EHam","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57721 /* ~Niech stanie się kolczastymi rękawicami.~ */ DO ~TransformPartyItem("EHam","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57722 /* ~Niech stanie się dobrym sztyletem.~ */ DO ~TransformPartyItem("EAxe","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57724 /* ~Niech stanie się młotem.~ */ DO ~TransformPartyItem("EAxe","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57728 /* ~Niech stanie się wekierą.~ */ DO ~TransformPartyItem("EAxe","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57731 /* ~Niech stanie się kolczastymi rękawicami.~ */ DO ~TransformPartyItem("EAxe","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57735 /* ~Niech stanie się dobrym sztyletem.~ */ DO ~TransformPartyItem("EMace","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57742 /* ~Niech stanie się młotem.~ */ DO ~TransformPartyItem("EMace","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57746 /* ~Niech stanie się toporem.~ */ DO ~TransformPartyItem("EMace","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57749 /* ~Niech stanie się kolczastymi rękawicami.~ */ DO ~TransformPartyItem("EMace","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57750 /* ~Niech stanie się dobrym sztyletem.~ */ DO ~TransformPartyItem("EFist","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57752 /* ~Niech stanie się młotem.~ */ DO ~TransformPartyItem("EFist","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57756 /* ~Niech stanie się toporem.~ */ DO ~TransformPartyItem("EFist","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57758 /* ~Niech stanie się wekierą.~ */ DO ~TransformPartyItem("EFist","EMace",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #57762 /* ~Niech ostrze zostanie takie jakie jest.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.18 1.19
  SAY #57767 /* ~Wyczuwasz przypływ ożywienia, gdy ostrze przechodzi jakieś zdumiewające zmiany. W ciągu paru chwil masz broń jaką wybrałeś.~ */
  IF ~~ THEN REPLY #57770 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.20
  SAY #57772 /* ~Ostrze nagle przestaje się wić i przybiera obecną formę.~ */
  IF ~~ THEN REPLY #57774 /* ~Zrobione.~ */ EXIT
END
