// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCMK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCMK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Widzisz rozczochranego, niechlujnie ubranego człowieka. Zalatuje od niego alkoholem. "No? Czego?" Pochyla się i ogląda cię od stóp do głów. "Chyba przydałby ci się UZDRAWIACZ!" Głośno śmieje się ze swego słabego dowcipu, a smród alkoholu i źle przetrawionego jedzenia przyprawia cię o mdłości i sprawia, że masz ochotę zwymiotować.~ */
  IF ~~ THEN REPLY #3372 /* ~"Kim jesteś?"~ */ EXIT
END
