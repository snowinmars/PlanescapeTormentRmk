// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBTGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67912 /* ~Strażnik powstrzymuje się na chwilę, ale tylko po to, żeby ci odwarknąć. "Nie widziałeś tutaj niczego. Chyba że szukasz poważnych kłopotów." Odwraca się z powrotem do swojej ofiary.~ */
  IF ~~ THEN REPLY #67913 /* ~"Żegnaj."~ */ EXIT
END
