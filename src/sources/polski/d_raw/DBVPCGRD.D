// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVPCGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVPCGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #56950 /* ~Kiedy podchodzisz, strażnik spogląda na ciebie spod przymrużonych oczu, ale nie mówi ani słowa.~ */
  IF ~  !GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56953 /* ~"Co znajduje się za tą bramą?"~ */ GOTO 1
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56955 /* ~"Co znajduje się za tą bramą?"~ */ GOTO 2
  IF ~~ THEN REPLY #56959 /* ~Nie zwracaj na niego uwagi i przejdź obok.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56961 /* ~"Farod ze swoim dworem, śmiałku. Zachowuj się porządnie, jak tam wejdziesz, poza tym lepiej uważaj na swoje słowa, pan jest w takim samym złym humorze jak zwykle.~ */
  IF ~~ THEN REPLY #56963 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #56964 /* ~"Niewiele. Nie jestem nawet do końca pewny, dlaczego tu stoję." Strażnik wzrusza ramionami.~ */
  IF ~~ THEN REPLY #56967 /* ~"Żegnaj."~ */ EXIT
END
