// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PORLENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~PORLENS~

IF ~  !Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 0 // from:
  SAY #54247 /* ~Soczewka portalu, w twoich rękach, zdaje się być zimna i pozbawiona życia. Wygląda na to, że nie będzie działała poza kostką modrona.~ */
  IF ~~ THEN REPLY #54248 /* ~Odłóż soczewkę.~ */ EXIT
END

IF ~  Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 1 // from:
  SAY #54251 /* ~Soczewka portalu pulsuje energią. Czeka aż wybierzesz miejsce przeznaczenia...~ */
  IF ~  Global("AR0101_Visited","GLOBAL",1)
~ THEN REPLY #54253 /* ~Ul, w pobliżu Placu Szmaciarzy.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0101",[1050.2350],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #54254 /* ~Ul, w pobliżu Kostnicy.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #54256 /* ~Ul, w pobliżu targu.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #54257 /* ~Ul, w pobliżu gospody Pod Gorejącym Człekiem.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #54258 /* ~Niższa Dzielnica.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #54259 /* ~Dzielnica Urzędników.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #54260 /* ~Katakumby Łkających Kamieni.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #54261 /* ~Mniejsza z tym. Odłóż soczewkę.~ */ EXIT
END
