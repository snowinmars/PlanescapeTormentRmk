// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DITEETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DITEETH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7093 /* ~Przyglądasz się zębom Ingressy leżącym na twojej dłoni. Nie możesz pozbyć się myśli, że przypominają robaki z kości słoniowej... Masz uczucie, że patrzą na ciebie wyczekująco, nie mogąc doczekać się rozkazów.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66829 /* ~"Chcę, żebyście zadawały obrażenia kłute."~ */ DO ~TransformPartyItem("ICTeeth","IPTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66830 /* ~"Chcę, żebyście zadawały obrażenia obuchowe."~ */ DO ~TransformPartyItem("IPTeeth","ICTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66831 /* ~"Chcę, żebyście zadawały obrażenia kłute."~ */ DO ~TransformPartyItem("M1CTeeth","M1PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66832 /* ~"Chcę, żebyście zadawały obrażenia obuchowe."~ */ DO ~TransformPartyItem("M1PTeeth","M1CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66833 /* ~"Chcę, żebyście zadawały obrażenia kłute."~ */ DO ~TransformPartyItem("M2CTeeth","M2PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66834 /* ~"Chcę, żebyście zadawały obrażenia obuchowe."~ */ DO ~TransformPartyItem("M2PTeeth","M2CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M3CTeeth")
~ THEN REPLY #66835 /* ~"Chcę, żebyście zadawały obrażenia kłute."~ */ DO ~TransformPartyItem("M3CTeeth","M3PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M3PTeeth")
~ THEN REPLY #66836 /* ~"Chcę, żebyście zadawały obrażenia obuchowe."~ */ DO ~TransformPartyItem("M3PTeeth","M3CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("ICTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66837 /* ~"Chcę, żebyście stały się magiczną bronią."~ */ GOTO 3
  IF ~  PartyHasItem("IPTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66838 /* ~"Chcę, żebyście stały się magiczną bronią."~ */ GOTO 3
  IF ~  PartyHasItem("M1CTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66839 /* ~"Chcę, żebyście stały się potężniejszą bronią magiczną."~ */ GOTO 4
  IF ~  PartyHasItem("M1PTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66840 /* ~"Chcę, żebyście stały się potężniejszą bronią magiczną."~ */ GOTO 4
  IF ~  PartyHasItem("M2PTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66841 /* ~"Chcę, żebyście stały się jak najpotężniejszą bronią magiczną."~ */ GOTO 5
  IF ~  PartyHasItem("M2CTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66842 /* ~"Chcę, żebyście stały się jak najpotężniejszą bronią magiczną."~ */ GOTO 5
  IF ~~ THEN REPLY #66856 /* ~Nie zwracaj na nie uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2 0.4 0.6
  SAY #66845 /* ~Zęby zmieniają się w ostre kły.~ */
  IF ~~ THEN REPLY #66858 /* ~Zrobione.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 0.5 0.7
  SAY #66846 /* ~Zęby skracają się i tępią.~ */
  IF ~~ THEN REPLY #66859 /* ~Zrobione.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.8 0.9
  SAY #66847 /* ~Przez chwilę grzechotają i nagle uspakajają się. Po krótkiej chwili zaczynają świecić delikatnym, magicznym światłem.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66848 /* ~Zrobione.~ */ DO ~TransformPartyItem("ICTeeth","M1CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66849 /* ~Zrobione.~ */ DO ~TransformPartyItem("IPTeeth","M1CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.10 0.11
  SAY #66850 /* ~Przez chwilę grzechoczą, a następnie zaczynają świecić jeszcze mocniej.~ */
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66851 /* ~Zrobione.~ */ DO ~TransformPartyItem("M1CTeeth","M2CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66852 /* ~Zrobione.~ */ DO ~TransformPartyItem("M1PTeeth","M2CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.12 0.13
  SAY #66853 /* ~Zęby zaczynają buczeć, ale dźwięk szybko ustępuje. Jarzą się, przepełnione mocą.~ */
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66854 /* ~Zrobione.~ */ DO ~TransformPartyItem("M2CTeeth","M3CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66855 /* ~Zrobione.~ */ DO ~TransformPartyItem("M2PTeeth","M3CTeeth",1,0,0)
~ EXIT
END
