// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34192 /* ~Ożywiony łańcuch z żelaza w kolorze krwi. Zwija się i rozwija. Zdaje się wić i zginać jak kręgosłup węża. Mała plakietka mówi: 'Ożywiony łańcuch kytonów. Pochodzi z Brzęczącego Hiter.'~ */
  IF ~~ THEN REPLY #42657 /* ~Dotknij łańcucha.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42658 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42656 /* ~Łańcuch jest nieco ciepły w dotyku, jakby był żywy. Zauważasz, że na całej jego długości przymocowane ma różne kolce, małe haczyki, igły oraz inne niewielkie ostre części.~ */
  IF ~~ THEN REPLY #42659 /* ~Odejdź.~ */ EXIT
END
