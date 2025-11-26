// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ965~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~Ten trup łazi ociężale po drodze w kształcie trójkąta. Kiedy już dojdzie do któregoś z kątów, zatrzymuje się, odwraca i kuśtyka do następnego rogu. Z boku czaszki ma wytatuowany numer "965". Kiedy doń podchodzisz, zatrzymuje się i patrzy na ciebie.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34921 /* ~~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34924 /* ~~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34925 /* ~~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34926 /* ~~ */ GOTO 2
  IF ~~ THEN REPLY #34929 /* ~~ */ EXIT
  IF ~~ THEN REPLY #34930 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34922 /* ~Ten trup łazi ociężale po drodze w kształcie trójkąta. Kiedy już dojdzie do któregoś z kątów, zatrzymuje się, odwraca i kuśtyka do następnego rogu. Z boku czaszki ma wytatuowany numer "965". Kiedy doń podchodzisz, zatrzymuje się i patrzy na ciebie.~ */
  IF ~~ THEN REPLY #34923 /* ~"Taak... czemu tak chodzisz po trójkącie?"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34927 /* ~Trup patrzy na ciebie beznamiętnie.~ */
  IF ~~ THEN REPLY #34928 /* ~Zostaw truposza w spokoju.~ */ EXIT
END
