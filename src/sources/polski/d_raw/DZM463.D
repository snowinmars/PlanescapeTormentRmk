// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM463.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM463~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6484 /* ~Powłóczący nogami truposz spoziera na ciebie. Na jego czole wyryty jest numer "463", a jego usta zostały zaszyte. Od ciała dolatuje słaby odór formaliny.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6485 /* ~"Więc jak... widziałeś, żeby działo się tu coś interesującego?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6488 /* ~"Więc jak... widziałeś, żeby działo się tu coś interesującego?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6489 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6490 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #6491 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #6492 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6486 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #6493 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6487 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #6494 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
