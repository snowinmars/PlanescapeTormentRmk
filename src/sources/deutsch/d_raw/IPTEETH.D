// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : IPTEETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~IPTEETH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7093 /* ~Du betrachtest Ingress' Zähne ausgiebig. Du kannst dich nicht des Eindrucks erwehren, daß sie Elfenbeinkäfern ähneln... Du hast das Gefühl, daß sie dich erwartungsvoll ansehen, als ob sie auf einen Befehl warteten.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66829 /* ~"Ich will, daß ihr stechenden Schaden anrichtet."~ */ DO ~TransformPartyItem("ICTeeth","IPTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66830 /* ~"Ich will, daß ihr Schaden durch Wucht anrichtet."~ */ DO ~TransformPartyItem("IPTeeth","ICTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66831 /* ~"Ich will, daß ihr stechenden Schaden anrichtet."~ */ DO ~TransformPartyItem("M1CTeeth","M1PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66832 /* ~"Ich will, daß ihr Schaden durch Wucht anrichtet."~ */ DO ~TransformPartyItem("M1PTeeth","M1CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66833 /* ~"Ich will, daß ihr stechenden Schaden anrichtet."~ */ DO ~TransformPartyItem("M2CTeeth","M2PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66834 /* ~"Ich will, daß ihr Schaden durch Wucht anrichtet."~ */ DO ~TransformPartyItem("M2PTeeth","M2CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M3CTeeth")
~ THEN REPLY #66835 /* ~"Ich will, daß ihr stechenden Schaden anrichtet."~ */ DO ~TransformPartyItem("M3CTeeth","M3PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M3PTeeth")
~ THEN REPLY #66836 /* ~"Ich will, daß ihr Schaden durch Wucht anrichtet."~ */ DO ~TransformPartyItem("M3PTeeth","M3CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("ICTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66837 /* ~"Ich will, daß ihr zu einer magischen Waffe werdet."~ */ GOTO 3
  IF ~  PartyHasItem("IPTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66838 /* ~"Ich will, daß ihr zu einer magischen Waffe werdet."~ */ GOTO 3
  IF ~  PartyHasItem("M1CTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66839 /* ~"Ich will, daß ihr zu einer mächtigeren magischen Waffe werdet."~ */ GOTO 4
  IF ~  PartyHasItem("M1PTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66840 /* ~"Ich will, daß ihr zu einer mächtigeren magischen Waffe werdet."~ */ GOTO 4
  IF ~  PartyHasItem("M2PTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66841 /* ~"Ich will, daß ihr zu der bestmöglichen magischen Waffe werdet."~ */ GOTO 5
  IF ~  PartyHasItem("M2CTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66842 /* ~"Ich will, daß ihr zu der bestmöglichen magischen Waffe werdet."~ */ GOTO 5
  IF ~~ THEN REPLY #66856 /* ~Beachte die Zähne nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2 0.4 0.6
  SAY #66845 /* ~Die Zähne werden zu langen, scharfen Fängen.~ */
  IF ~~ THEN REPLY #66858 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 0.5 0.7
  SAY #66846 /* ~Die Zähne werden kurz und stumpf.~ */
  IF ~~ THEN REPLY #66859 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.8 0.9
  SAY #66847 /* ~Die Zähne klappern wie wild in Mortes Mund und beruhigen sich dann plötzlich. Kurze Zeit später geht von ihnen ein weiches magisches Leuchten aus.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66848 /* ~Geschafft.~ */ DO ~TransformPartyItem("ICTeeth","M1CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66849 /* ~Geschafft.~ */ DO ~TransformPartyItem("IPTeeth","M1CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.10 0.11
  SAY #66850 /* ~Die Zähne klappern einen kurzen Moment, und dann vertieft sich ihr magisches Leuchten.~ */
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66851 /* ~Geschafft.~ */ DO ~TransformPartyItem("M1CTeeth","M2CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66852 /* ~Geschafft.~ */ DO ~TransformPartyItem("M1PTeeth","M2CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.12 0.13
  SAY #66853 /* ~Die Zähne beginnen zu summen, doch das Geräusch klingt schnell ab. Sie fangen vor Macht zu leuchten an..~ */
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66854 /* ~Geschafft.~ */ DO ~TransformPartyItem("M2CTeeth","M3CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66855 /* ~Geschafft.~ */ DO ~TransformPartyItem("M2PTeeth","M3CTeeth",1,0,0)
~ EXIT
END
