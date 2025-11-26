// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ569.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ569~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24575 /* ~Ten powłóczący nogami trup wygląda tak, jakby nie żył od kilku lat. Skóra wzdłuż czoła odgięła się, odsłaniając kredowo-białą czaszkę. Ktoś wyrył mu numer "569" na odsłoniętej kości.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24576 /* ~"Szukam klucza... nie masz go przypadkiem?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24579 /* ~"Szukam klucza... nie masz go przypadkiem?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24580 /* ~"Więc jak... widziałeś, aby działo się tu coś interesującego?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24581 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 2
  IF ~~ THEN REPLY #24584 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ EXIT
  IF ~~ THEN REPLY #24585 /* ~Przyjrzyj się truposzowi, sprawdź, czy ma klucz.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24577 /* ~Trup wciąż ci się przygląda.~ */
  IF ~~ THEN REPLY #24578 /* ~"W takim razie nic to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24582 /* ~Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #24583 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
