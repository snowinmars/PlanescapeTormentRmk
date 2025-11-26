// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : M2CTEETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~M2CTEETH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7093 /* ~Tu examines les dents d'Ingress que tu tiens dans ta main. On dirait vraiment des insectes d'ivoire… Il y en a parfois une qui saute en l'air comme une puce. En tout cas, elles sont pointues.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66829 /* ~"Je veux que vous infligiez des dégâts perçants."~ */ DO ~TransformPartyItem("ICTeeth","IPTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66830 /* ~"Je veux que vous infligiez des dégâts contondants."~ */ DO ~TransformPartyItem("IPTeeth","ICTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66831 /* ~"Je veux que vous infligiez des dégâts perçants."~ */ DO ~TransformPartyItem("M1CTeeth","M1PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66832 /* ~"Je veux que vous infligiez des dégâts contondants."~ */ DO ~TransformPartyItem("M1PTeeth","M1CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66833 /* ~"Je veux que vous infligiez des dégâts perçants."~ */ DO ~TransformPartyItem("M2CTeeth","M2PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66834 /* ~"Je veux que vous infligiez des dégâts contondants."~ */ DO ~TransformPartyItem("M2PTeeth","M2CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M3CTeeth")
~ THEN REPLY #66835 /* ~"Je veux que vous infligiez des dégâts perçants."~ */ DO ~TransformPartyItem("M3CTeeth","M3PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M3PTeeth")
~ THEN REPLY #66836 /* ~"Je veux que vous infligiez des dégâts contondants."~ */ DO ~TransformPartyItem("M3PTeeth","M3CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("ICTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66837 /* ~"Je veux que vous deveniez une arme magique."~ */ GOTO 3
  IF ~  PartyHasItem("IPTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66838 /* ~"Je veux que vous deveniez une arme magique."~ */ GOTO 3
  IF ~  PartyHasItem("M1CTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66839 /* ~"Je veux que vous deveniez une arme magique plus puissante."~ */ GOTO 4
  IF ~  PartyHasItem("M1PTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66840 /* ~"Je veux que vous deveniez une arme magique plus puissante."~ */ GOTO 4
  IF ~  PartyHasItem("M2PTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66841 /* ~"Je veux que vous deveniez l'arme magique la plus puissante qui soit."~ */ GOTO 5
  IF ~  PartyHasItem("M2CTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66842 /* ~"Je veux que vous deveniez l'arme magique la plus puissante qui soit."~ */ GOTO 5
  IF ~~ THEN REPLY #66856 /* ~Ignore les dents.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2 0.4 0.6
  SAY #66845 /* ~Les dents s'allongent pour devenir de longs crocs.~ */
  IF ~~ THEN REPLY #66858 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 0.5 0.7
  SAY #66846 /* ~Les dents se raccourcissent et s'émoussent.~ */
  IF ~~ THEN REPLY #66859 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.8 0.9
  SAY #66847 /* ~Les dents s'entrechoquent dans la bouche de Morte puis finissent par se calmer. Au bout de quelques instants, elles commencent à émettre une légère lueur magique.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66848 /* ~Terminé.~ */ DO ~TransformPartyItem("ICTeeth","M1CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66849 /* ~Terminé.~ */ DO ~TransformPartyItem("IPTeeth","M1CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.10 0.11
  SAY #66850 /* ~Les dents s'entrechoquent, puis leur lueur magique devient plus prononcée.~ */
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66851 /* ~Terminé.~ */ DO ~TransformPartyItem("M1CTeeth","M2CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66852 /* ~Terminé.~ */ DO ~TransformPartyItem("M1PTeeth","M2CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.12 0.13
  SAY #66853 /* ~Les dents bourdonnent quelques instants et, quand le bruit cesse, elle dégagent une lueur magique.~ */
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66854 /* ~Terminé.~ */ DO ~TransformPartyItem("M2CTeeth","M3CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66855 /* ~Terminé.~ */ DO ~TransformPartyItem("M2PTeeth","M3CTeeth",1,0,0)
~ EXIT
END
