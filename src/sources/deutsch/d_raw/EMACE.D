// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : EMACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~EMACE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Diese Waffe scheint aus einem besonderen Metall geschmiedet zu sein. Bei genauerem Hinsehen entdeckst du, daß sie nicht aus einer Klinge und einem Griff besteht, sondern aus einem Stück gefertigt zu sein scheint. Während du sie betrachtest, beginnt die Waffe in deiner Hand, ihre Form zu verändern. Es sieht aus, als wolle sie aus ihrer momentanen Form ausbrechen.~ */
  IF ~~ THEN REPLY #55079 /* ~Bring die Klinge durch Willenskraft dazu, sich zu verändern.~ */ GOTO 1
  IF ~~ THEN REPLY #57687 /* ~Laß die Klinge in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57692 /* ~Das Metall der Klinge beginnt sich in deinen Händen zu krümmen und zu pulsieren. Fast spürst du, daß ein Gefühl der Vorfreude von der Klinge ausgeht. Was für eine Form soll sie annehmen?~ */
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57695 /* ~Bring sie mit deiner Willenskraft dazu, ein Hammer zu werden.~ */ DO ~TransformPartyItem("EDag","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57699 /* ~Bring sie mit deiner Willenskraft dazu, eine Axt zu werden.~ */ DO ~TransformPartyItem("EDag","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57702 /* ~Bring sie mit deiner Willenskraft dazu, ein Streitkolben zu werden.~ */ DO ~TransformPartyItem("EDag","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EDag")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57705 /* ~Bring sie mit deiner Willenskraft dazu, Stachelhandschuhe zu werden.~ */ DO ~TransformPartyItem("EDag","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57711 /* ~Bring sie mit deiner Willenskraft dazu, ein spitzer Dolch zu werden.~ */ DO ~TransformPartyItem("EHam","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57715 /* ~Bring sie mit deiner Willenskraft dazu, eine Axt zu werden.~ */ DO ~TransformPartyItem("EHam","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57720 /* ~Bring sie mit deiner Willenskraft dazu, ein Streitkolben zu werden.~ */ DO ~TransformPartyItem("EHam","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EHam")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57721 /* ~Bring sie mit deiner Willenskraft dazu, Stachelhandschuhe zu werden.~ */ DO ~TransformPartyItem("EHam","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57722 /* ~Bring sie mit deiner Willenskraft dazu, ein spitzer Dolch zu werden.~ */ DO ~TransformPartyItem("EAxe","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57724 /* ~Bring sie mit deiner Willenskraft dazu, ein Hammer zu werden.~ */ DO ~TransformPartyItem("EAxe","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57728 /* ~Bring sie mit deiner Willenskraft dazu, ein Streitkolben zu werden.~ */ DO ~TransformPartyItem("EAxe","EMace",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EAxe")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57731 /* ~Bring sie mit deiner Willenskraft dazu, Stachelhandschuhe zu werden.~ */ DO ~TransformPartyItem("EAxe","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57735 /* ~Bring sie mit deiner Willenskraft dazu, ein spitzer Dolch zu werden.~ */ DO ~TransformPartyItem("EMace","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57742 /* ~Bring sie mit deiner Willenskraft dazu, ein Hammer zu werden.~ */ DO ~TransformPartyItem("EMace","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57746 /* ~Bring sie mit deiner Willenskraft dazu, eine Axt zu werden.~ */ DO ~TransformPartyItem("EMace","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EMace")
ProficiencyGT(Protagonist,FIST,0)
~ THEN REPLY #57749 /* ~Bring sie mit deiner Willenskraft dazu, Stachelhandschuhe zu werden.~ */ DO ~TransformPartyItem("EMace","EFist",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,DAGGER,0)
~ THEN REPLY #57750 /* ~Bring sie mit deiner Willenskraft dazu, ein spitzer Dolch zu werden.~ */ DO ~TransformPartyItem("EFist","EDag",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,HAMMER,0)
~ THEN REPLY #57752 /* ~Bring sie mit deiner Willenskraft dazu, ein Hammer zu werden.~ */ DO ~TransformPartyItem("EFist","EHam",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,AXE,0)
~ THEN REPLY #57756 /* ~Bring sie mit deiner Willenskraft dazu, eine Axt zu werden.~ */ DO ~TransformPartyItem("EFist","EAxe",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("EFist")
ProficiencyGT(Protagonist,CLUB,0)
~ THEN REPLY #57758 /* ~Bring sie mit deiner Willenskraft dazu, ein Streitkolben zu werden.~ */ DO ~TransformPartyItem("EFist","EMace",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #57762 /* ~Laß die Klinge wie sie ist.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 1.10 1.11 1.12 1.13 1.14 1.15 1.16 1.17 1.18 1.19
  SAY #57767 /* ~In eifriger Betriebsamkeit unterzieht sich die Klinge einigen erstaunlichen Veränderungen. Innerhalb von Sekunden hältst du die Waffe deiner Wahl in der Hand.~ */
  IF ~~ THEN REPLY #57770 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.20
  SAY #57772 /* ~Die Klinge hört plötzlich aus, sich zu winden und nimmt ihre aktuelle Form an.~ */
  IF ~~ THEN REPLY #57774 /* ~Geschafft.~ */ EXIT
END
