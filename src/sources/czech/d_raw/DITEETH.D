// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DITEETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DITEETH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7093 /* ~Prohlédl sis Ingressiny zuby. Nemůžeš si pomoci, ale připomínají ti hmyz, slonovinově bílé brouky... Přepadl tě pocit, že tě sledují, že čekají na tvůj povel.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66829 /* ~"Chci abyste způsobovaly bodné zranění."~ */ DO ~TransformPartyItem("ICTeeth","IPTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66830 /* ~"Chci abyste způsobovaly drtící zranění."~ */ DO ~TransformPartyItem("IPTeeth","ICTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66831 /* ~"Chci abyste způsobovaly bodné zranění."~ */ DO ~TransformPartyItem("M1CTeeth","M1PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66832 /* ~"Chci abyste způsobovaly drtící zranění."~ */ DO ~TransformPartyItem("M1PTeeth","M1CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66833 /* ~"Chci abyste způsobovaly bodné zranění."~ */ DO ~TransformPartyItem("M2CTeeth","M2PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66834 /* ~"Chci abyste způsobovaly drtící zranění."~ */ DO ~TransformPartyItem("M2PTeeth","M2CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M3CTeeth")
~ THEN REPLY #66835 /* ~"Chci abyste způsobovaly bodné zranění."~ */ DO ~TransformPartyItem("M3CTeeth","M3PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M3PTeeth")
~ THEN REPLY #66836 /* ~"Chci abyste způsobovaly drtící zranění."~ */ DO ~TransformPartyItem("M3PTeeth","M3CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("ICTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66837 /* ~"Chci abyste se stali magickou zbraní."~ */ GOTO 3
  IF ~  PartyHasItem("IPTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66838 /* ~"Chci abyste se stali magickou zbraní."~ */ GOTO 3
  IF ~  PartyHasItem("M1CTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66839 /* ~"Chci abyste se stali silnější magickou zbraní."~ */ GOTO 4
  IF ~  PartyHasItem("M1PTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66840 /* ~"Chci abyste se stali silnější magickou zbraní."~ */ GOTO 4
  IF ~  PartyHasItem("M2PTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66841 /* ~"Chci abyste se stali tou nejmocnější magickou zbraní, jakou dokážeš být."~ */ GOTO 5
  IF ~  PartyHasItem("M2CTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66842 /* ~"Chci abyste se stali tou nejmocnější magickou zbraní, jakou dokážeš být."~ */ GOTO 5
  IF ~~ THEN REPLY #66856 /* ~Ignoruj zuby~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2 0.4 0.6
  SAY #66845 /* ~Zuby se prodloužily na ostré tesáky..~ */
  IF ~~ THEN REPLY #66858 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 0.5 0.7
  SAY #66846 /* ~Zuby se zkrátily a ztupily se.~ */
  IF ~~ THEN REPLY #66859 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.8 0.9
  SAY #66847 /* ~Zuby chvíli zběsile chřestí. Když se uklidnily, začaly vyzařovat jemné magické světlo.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66848 /* ~Hotovo.~ */ DO ~TransformPartyItem("ICTeeth","M1CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66849 /* ~Hotovo.~ */ DO ~TransformPartyItem("IPTeeth","M1CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.10 0.11
  SAY #66850 /* ~Zuby chvíli zběsile chřestí. Jejich magická zář zesílila.~ */
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66851 /* ~Hotovo.~ */ DO ~TransformPartyItem("M1CTeeth","M2CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66852 /* ~Hotovo.~ */ DO ~TransformPartyItem("M1PTeeth","M2CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.12 0.13
  SAY #66853 /* ~Zuby začínají bzučet, ale rychle s tím přestaly. Teď září silou.~ */
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66854 /* ~Hotovo.~ */ DO ~TransformPartyItem("M2CTeeth","M3CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66855 /* ~Hotovo.~ */ DO ~TransformPartyItem("M2PTeeth","M3CTeeth",1,0,0)
~ EXIT
END
