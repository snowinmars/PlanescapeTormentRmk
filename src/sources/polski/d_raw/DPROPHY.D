// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPROPHY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPROPHY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9354 /* ~Ponuro wyglądająca kobieta obdarza cię przelotnym spojrzeniem, a potem powraca do swojego przemówienia. Jej donośny głos niesie się po całym targu, przebija się nawet przez nawoływania kupców.~ */
  IF ~~ THEN REPLY #9355 /* ~Zostaw ją w spokoju.~ */ EXIT
END
