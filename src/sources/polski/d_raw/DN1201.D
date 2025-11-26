// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DN1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DN1201~

IF ~  True()
~ THEN BEGIN 0 // from: 1.6 3.0
  SAY #44993 /* ~Na tej śmierdzącej notatce narysowano dziwnie wyglądający diagram. Wygląda na to, że to instrukcja, według której masz zagiąć rogi notatki w ten sposób, żeby ich końce dotykały środka. Na każdym rogu znajdują się dziwne znaki - jeden znak w prawym górnym rogu, dwa znaki w prawym dolnym, trzy znaki w lewym dolnym, a w lewym górnym rogu nie ma żadnych znaków.~ */
  IF ~~ THEN REPLY #44994 /* ~Zagnij prawy górny róg do środka.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44995 /* ~Zagnij prawy dolny róg do środka.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44996 /* ~Zagnij lewy dolny róg do środka.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44997 /* ~Zagnij lewy górny róg do środka.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44998 /* ~Zostaw notatkę w spokoju.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
  SAY #44999 /* ~Zaginasz róg, tak aby jego koniec dotykał środka.~ */
  IF ~  Global("UR_1201","GLOBAL",0)
~ THEN REPLY #45000 /* ~Zagnij prawy górny róg do środka.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45001 /* ~Zagnij prawy dolny róg do środka.~ */ DO ~SetGlobal("1201_Note","GLOBAL",2)
SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45002 /* ~Zagnij prawy dolny róg do środka.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("LL_1201","GLOBAL",0)
~ THEN REPLY #45003 /* ~Zagnij lewy dolny róg do środka.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45004 /* ~Zagnij lewy górny róg do środka.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45005 /* ~Zagnij lewy górny róg do środka.~ */ GOTO 2
  IF ~~ THEN REPLY #45006 /* ~Rozłóż notkę i zacznij od nowa.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 0
  IF ~~ THEN REPLY #45008 /* ~Rozłóż notkę i zostaw ją w spokoju.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY #45015 /* ~Kiedy zaginasz lewy górny róg do środka, spostrzegasz, że prawy górny róg odgina się i powraca do swojego poprzedniego położenia.~ */
  IF ~~ THEN REPLY #45016 /* ~Jeszcze raz zagnij prawy górny róg do środka.~ */ GOTO 4
  IF ~~ THEN REPLY #45017 /* ~Zagnij lewy dolny róg do wewnątrz.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 3
  IF ~~ THEN REPLY #45018 /* ~Rozłóż notkę i zostaw ją w spokoju.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45019 /* ~Zaginasz lewy dolny róg do środka, a po chwili dwa pozostałe rogi rozprostowują się. Nic się nie dzieje.~ */
  IF ~~ THEN REPLY #45020 /* ~Jeszcze raz dokładnie przyjrzyj się notatce.~ */ GOTO 0
  IF ~~ THEN REPLY #45021 /* ~Odłóż notatkę.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #45022 /* ~Kiedy zaginasz do środka prawy górny róg, lewy dolny robi to samo, aż w końcu wszystkie rogi dotykają środka notatki. Patrzysz na to przez chwilę, a w tym czasie rogi unoszą się, a cała notatka zamienia się w czworokątną, papierową piramidę.~ */
  IF ~~ THEN REPLY #45023 /* ~Otwórz boczne ściany piramidy.~ */ DO ~AddexperienceParty(250)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45024 /* ~Odginasz boczne ściany piramidy, a papier zamienia się w proch. Wewnątrz znajduje się mały, trójkątny kolczyk, w którym odbija się światło.~ */
  IF ~~ THEN REPLY #45025 /* ~Weź trójkątny kolczyk...~ */ DO ~GiveItemCreate("TEarring",Protagonist,3,0,0)
DestroyPartyItem("N1201",TRUE)
~ EXIT
END
