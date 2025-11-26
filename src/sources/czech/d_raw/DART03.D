// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34190 /* ~Na tomto podstavci stojí zářivá rubínová socha, zpodobňující okřídleného humanoida. Postava je jak démonická, tak andělská... ale nedokážeš říci, co spíše, protože podivně odráží světlo v galérii. Nikde není uvedeno, co přesně socha představuje.~ */
  IF ~~ THEN REPLY #42704 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_03","AR0608",1)
~ EXIT
END
