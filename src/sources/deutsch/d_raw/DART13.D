// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART13.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART13~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34205 /* ~Dies sieht wie eine unterirdische Landschaft aus... das Innere einer massiven Höhle, die mit farbenfrohen, leicht leuchtenden Riesenpilzen gefüllt ist. Auf einer Plakette steht: 'Tal unterhalb des Clangeddin'.~ */
  IF ~~ THEN REPLY #42680 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_13","AR0608",1)
~ EXIT
END
