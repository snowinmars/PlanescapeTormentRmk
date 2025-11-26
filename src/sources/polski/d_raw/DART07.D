// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34198 /* ~Zestaw czterech obrazów przedstawiających pustą plażę w środku nocy. Powietrze wokół pachnie słoną wodą, a namalowane morze zdaje się falować i rozbijać o ciemne wybrzeże. Napis na plakietce brzmi: 'Wybrzeże Karasutry'.~ */
  IF ~~ THEN REPLY #42662 /* ~Powąchaj obraz.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #42663 /* ~Dotknij obrazu.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42664 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #42660 /* ~Kładziesz dłoń na obrazie, nie wiedząc, czego tak właściwie masz się spodziewać... ale pod palcami czujesz po prostu fakturę zamalowanego płótna.~ */
  IF ~~ THEN REPLY #42665 /* ~Powąchaj obraz.~ */ GOTO 2
  IF ~~ THEN REPLY #42666 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42661 /* ~Powierzchnia obrazu mocno pachnie morskim powietrzem.~ */
  IF ~~ THEN REPLY #42667 /* ~Dotknij obrazu.~ */ GOTO 1
  IF ~~ THEN REPLY #42668 /* ~Odejdź.~ */ EXIT
END
