// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_TOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_TOMB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48901 /* ~Na tym wielkim grobie wyryto krótki napis.~ */
  IF ~~ THEN REPLY #48902 /* ~Przeczytaj napis.~ */ DO ~SetGlobal("DN_Read_Tomb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #58918 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58916 /* ~'Tutaj leży ukochana matka Bah'jina, A-'. Dalsza część napisu jest nieczytelna.~ */
  IF ~~ THEN REPLY #58917 /* ~Odejdź.~ */ EXIT
END
