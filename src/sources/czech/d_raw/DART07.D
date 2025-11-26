// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34198 /* ~Série čtyř obrazů zachycuje prázdnou pláž na sklonku noci. Vzduch kolem  obrazů je lehce cítit po slané vodě. Namalované moře jakoby proudilo kolem ztemnělého pobřeží. Popisek zní 'Karasuthranské pobřeží.'~ */
  IF ~~ THEN REPLY #42662 /* ~Čichni si k malbě.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #42663 /* ~Dotkni se malby.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42664 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #42660 /* ~Položil jsi ruku na malbu, i když jsi přesně nevěděl co očekávat... ale pod svými prsty cítíš pouze strukturu malby na plátně.~ */
  IF ~~ THEN REPLY #42665 /* ~Čichni si k malbě.~ */ GOTO 2
  IF ~~ THEN REPLY #42666 /* ~Odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42661 /* ~Povrch malby je silně cítit po mořském vzduchu.~ */
  IF ~~ THEN REPLY #42667 /* ~Dotkni se malby.~ */ GOTO 1
  IF ~~ THEN REPLY #42668 /* ~Odejít.~ */ EXIT
END
