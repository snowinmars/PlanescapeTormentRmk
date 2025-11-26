// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ2~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49588 /* ~Wygląda na to, jakby Dabus właśnie przeprowadzał naprawę tego budynku. Na stare deski przybito kilka nowszych i mocniejszych. Przy użyciu odpowiedniego narzędzia można spróbować odwrócić proces naprawy.~ */
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #49590 /* ~Użyj łomu, aby obluzować deski.~ */ DO ~SetGlobal("Alley_Puzzle_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49589 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49593 /* ~Jedna po drugiej odbijasz świeże deski ze ścian budowli. Kiedy odchodzi ostatnia deska, a waga budynku przenosi się na pozbawiony podpór szkielet, z wnętrza budowli dochodzi głośny pomruk.~ */
  IF ~~ THEN REPLY #49603 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #58919 /* ~Wydaje się, że ta zrujnowana budowla zaraz runie. Ktoś ostatnio przybił kilka nowych desek, aby wzmocnić starzejący się budynek.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #58920 /* ~Przyjrzyj się budowli dokładniej.~ */ GOTO 0
  IF ~~ THEN REPLY #58921 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #58922 /* ~Wydaje się, że ta zrujnowana budowla zaraz runie. Deski przybite przez dabusa zostały usunięte, przywracając budynek do poprzedniego stanu.~ */
  IF ~~ THEN REPLY #58923 /* ~Odejdź.~ */ EXIT
END
