// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ1~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49597 /* ~Wygląda na to, że Dabus próbował zniszczyć tę starożytną strukturę. Kilka desek jest obluzowanych, a gwoździe zostały wyciągnięte prawie do samego końca.~ */
  IF ~  PartyHasItem("Hammer")
~ THEN REPLY #49598 /* ~Użyj młotka, aby przybić odstające deski.~ */ DO ~SetGlobal("Alley_Puzzle_2","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49599 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49600 /* ~Wbijasz deski z powrotem na swoje miejsce. Kiedy cofasz się, aby ocenić rezultaty swojej pracy, ze zdziwieniem spostrzegasz, że budynek nie wygląda już na tak stary, jak ci się wcześniej wydawało.~ */
  IF ~~ THEN REPLY #49602 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #59103 /* ~Rozsypujący się dom wygląda, jakby stał w tym miejscu setki lat. Drewniane ściany są zniszczone przez upływ czasu. Wygląda na to, że kilka desek zostało ostatnio obluzowanych.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #59105 /* ~Przyjrzyj się budowli dokładniej.~ */ GOTO 0
  IF ~~ THEN REPLY #59106 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #59107 /* ~Teraz, gdy obluzowane deski są z powrotem na swoim miejscu, stary budynek odzyskał swój niepowtarzalny klimat.~ */
  IF ~~ THEN REPLY #59108 /* ~Odejdź.~ */ EXIT
END
