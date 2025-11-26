// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : M3CTEETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~M3CTEETH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7093 /* ~You examine Ingress' teeth. You can't shake their resemblance to ivory bugs... You get the feeling that they are looking at you expectantly, awaiting some command.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66829 /* ~"I want you to do piercing damage."~ */ DO ~TransformPartyItem("ICTeeth","IPTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66830 /* ~"I want you to do crushing damage."~ */ DO ~TransformPartyItem("IPTeeth","ICTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66831 /* ~"I want you to do piercing damage."~ */ DO ~TransformPartyItem("M1CTeeth","M1PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66832 /* ~"I want you to do crushing damage."~ */ DO ~TransformPartyItem("M1PTeeth","M1CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66833 /* ~"I want you to do piercing damage."~ */ DO ~TransformPartyItem("M2CTeeth","M2PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66834 /* ~"I want you to do crushing damage."~ */ DO ~TransformPartyItem("M2PTeeth","M2CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M3CTeeth")
~ THEN REPLY #66835 /* ~"I want you to do piercing damage."~ */ DO ~TransformPartyItem("M3CTeeth","M3PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M3PTeeth")
~ THEN REPLY #66836 /* ~"I want you to do crushing damage."~ */ DO ~TransformPartyItem("M3PTeeth","M3CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("ICTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66837 /* ~"I want you to become a magical weapon."~ */ GOTO 3
  IF ~  PartyHasItem("IPTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66838 /* ~"I want you to become a magical weapon."~ */ GOTO 3
  IF ~  PartyHasItem("M1CTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66839 /* ~"I want you to become a more powerful magic weapon."~ */ GOTO 4
  IF ~  PartyHasItem("M1PTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66840 /* ~"I want you to become a more powerful magic weapon."~ */ GOTO 4
  IF ~  PartyHasItem("M2PTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66841 /* ~"I want you to become the best magical weapon you can."~ */ GOTO 5
  IF ~  PartyHasItem("M2CTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66842 /* ~"I want you to become the best magical weapon you can."~ */ GOTO 5
  IF ~~ THEN REPLY #66856 /* ~Ignore the teeth.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2 0.4 0.6
  SAY #66845 /* ~The teeth elongate into sharp fangs.~ */
  IF ~~ THEN REPLY #66858 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 0.5 0.7
  SAY #66846 /* ~The teeth shorten and become blunt.~ */
  IF ~~ THEN REPLY #66859 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.8 0.9
  SAY #66847 /* ~The teeth rattle about wildly then suddenly settle down. After a brief moment they begin to emit a soft magical glow.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66848 /* ~Done.~ */ DO ~TransformPartyItem("ICTeeth","M1CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66849 /* ~Done.~ */ DO ~TransformPartyItem("IPTeeth","M1CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.10 0.11
  SAY #66850 /* ~The teeth rattle for a brief moment and then their magical glow deepens.~ */
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66851 /* ~Done.~ */ DO ~TransformPartyItem("M1CTeeth","M2CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66852 /* ~Done.~ */ DO ~TransformPartyItem("M1PTeeth","M2CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.12 0.13
  SAY #66853 /* ~The teeth begin to hum but the sound quickly subsides. They begin to glow with power.~ */
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66854 /* ~Done.~ */ DO ~TransformPartyItem("M2CTeeth","M3CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66855 /* ~Done.~ */ DO ~TransformPartyItem("M2PTeeth","M3CTeeth",1,0,0)
~ EXIT
END
