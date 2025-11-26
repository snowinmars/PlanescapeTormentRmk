// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM569.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM569~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24575 /* ~Ten powłóczący nogami trup wygląda tak, jakby nie żył od kilku lat. Skóra wzdłuż czoła odgięła się, odsłaniając kredowo-białą czaszkę. Ktoś wyrył mu numer "569" na odsłoniętej kości.~ */
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
NearbyDialog("DMorte1")
~ THEN REPLY #24576 /* ~"Szukam klucza... nie masz go przypadkiem?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
!NearbyDialog("DMorte1")
~ THEN REPLY #24579 /* ~"Szukam klucza... nie masz go przypadkiem?"~ */ GOTO 1
  IF ~  GlobalGT("Mortuary_Walkthrough","GLOBAL",0)
~ THEN REPLY #24580 /* ~"Więc jak... widziałeś, aby działo się tu coś interesującego?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24581 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24584 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
~ THEN REPLY #24585 /* ~Przyjrzyj się truposzowi, sprawdź, czy ma klucz.~ */ GOTO 3
  IF ~~ THEN REPLY #42290 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #42291 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.3 3.1
  SAY #24577 /* ~Trup wciąż ci się przygląda.~ */
  IF ~~ THEN REPLY #24578 /* ~"W takim razie nic to. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #42292 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #24582 /* ~Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #24583 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #42293 /* ~Nie wydaje się, aby ten trup miał mieć klucz... a i nie wygląda on na kogoś, kto umiałby się nim posłużyć, nawet gdyby go posiadał. Ma połamane palce, jakby ktoś przetrącił mu je młotkiem. Zauważasz też, że jego lewy bark jest mocno zabandażowany... te bandaże są jeszcze zdatne do użytku, tylko wpierw należałoby się pozbyć truposza.~ */
  IF ~  NearbyDialog("DMorte1")
~ THEN REPLY #42294 /* ~"Chyba go nie masz... nie wiesz przypadkiem, który to z twoich kościstych przyjaciół ma klucz do wyjścia stąd?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  !NearbyDialog("DMorte1")
~ THEN REPLY #42295 /* ~"Chyba go nie masz... nie wiesz przypadkiem, który to z twoich kościstych przyjaciół ma klucz do wyjścia stąd?"~ */ GOTO 1
  IF ~~ THEN REPLY #42296 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #42297 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
