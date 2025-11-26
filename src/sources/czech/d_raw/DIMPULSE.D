// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIMPULSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DIMPULSE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52690 /* ~Velký krystal vyzařuje pulzující přízračné světlo, zatímco se vznáší nad kráterem uprostřed místnosti. Rytmus pulsů ti připomíná tepot srdce, ale pomalý, nemocný. Světlo z krystalu se dotýká okrajů místnosti jako prsty, každý paprsek ozařuje zničené tváře soch kolem. ~ */
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
!Dead("IgnusF")
~ THEN REPLY #52691 /* ~Dotkni se krystalu...~ */ GOTO 2
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
!Dead("VhailF")
~ THEN REPLY #64586 /* ~Dotkni se krystalu...~ */ GOTO 3
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Dead("IgnusF")
~ THEN REPLY #64587 /* ~Dotkni se krystalu...~ */ GOTO 1
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Dead("VhailF")
~ THEN REPLY #64588 /* ~Dotkni se krystalu...~ */ GOTO 1
  IF ~~ THEN REPLY #64589 /* ~Nech krystal být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.3
  SAY #59895 /* ~Když jsi se krystalu dotkl, pocítil jsi závrať; pak tvým tělem projelo zamrazení a ty jsi zjistil, že máš ztuhlé svaly a ruce přimrzlé k jeho povrchu. Chvíli je ticho, a pak ostré jehličky bolesti vystřelují skrze tvé tělo - zdá se ti jako by se tvé nejniternější JÁ proměnilo v led a *zkolabovalo*...~ */
  IF ~~ THEN REPLY #59896 /* ~Propadnout se do temnoty...~ */ DO ~TeleportParty("AR1203",[932.703],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64590 /* ~Jak se dotýkáš krystalu, objeví se záblesk tepla, oranžovo-bílé světlo a tvá ruka ustrne - krystal pálí, jako teplo z Ignusových plamenů. Zevnitř krystalu tančí bledé bílo-modré světlo a mihotá se jako oheň.~ */
  IF ~~ THEN REPLY #64591 /* ~Vypadá to, Ignusi, že tě nejdřív budu muset zapsat do knihy mrtvých..."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64592 /* ~Jak se dotýkáš krystalu, objeví se náhlý chlad, jasné bílé světlo a tvá ruka ustrne - krystal je jako led, jako chlad Vhailorovy zbroje. Zevnitř krystalu mihotá bledé bílo-modré světlo, jako oko veliké šelmy.~ */
  IF ~~ THEN REPLY #64593 /* ~"Vypadá to, Vhailore, že tě nejdřív budu muset zapsat do knihy mrtvých..."~ */ EXIT
END
