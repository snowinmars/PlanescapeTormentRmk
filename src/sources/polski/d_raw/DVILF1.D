// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3402 /* ~Jestem jedną z dziewczyn pracujących w Zakopanej Wiosce. Przemierzam jej zgliszcza, szukając ciał oraz wartych uwagi drobiazgów, które mogłabym zanieść Farodowi.~ */
  IF ~~ THEN REPLY #3403 /* ~Dobro. Zło. Jestem tym, który posiada broń.~ */ EXIT
END
