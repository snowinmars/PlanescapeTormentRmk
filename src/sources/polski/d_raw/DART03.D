// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34190 /* ~Na tym piedestale stoi wspaniała rubinowa statuetka, przedstawiająca skrzydlatą postać o ludzkich kształtach. Figura ta ma w sobie coś z demona lub anioła... trudno jednak powiedzieć z którego ponieważ w dziwny sposób odbija ona światło z galerii. Brak jest jakiejkolwiek informacji o tym, co dokładnie przedstawia ten posąg.~ */
  IF ~~ THEN REPLY #42704 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_03","AR0608",1)
~ EXIT
END
