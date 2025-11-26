// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ825.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ825~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24564 /* ~Głowa tego truposza kołysze się w przód i w tył na ramionach... sądząc po kącie pochylenia karku, człowiek ten najprawdopodobniej został powieszony. Z boku głowy ktoś wymalował mu numer "825".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24565 /* ~"Poszukuję klucza... czy przypadkiem to nie ty go masz?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24568 /* ~"Poszukuję klucza... czy przypadkiem to nie ty go masz?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24569 /* ~"Więc jak... widziałeś, aby działo się tu coś interesującego?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24570 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 2
  IF ~~ THEN REPLY #24573 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ EXIT
  IF ~~ THEN REPLY #24574 /* ~Przyjrzyj się truposzowi, sprawdź, czy ma klucz.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24566 /* ~Trup spogląda na ziemię i nie odpowiada.~ */
  IF ~~ THEN REPLY #24567 /* ~"W takim razie trudno. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24571 /* ~Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #24572 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
