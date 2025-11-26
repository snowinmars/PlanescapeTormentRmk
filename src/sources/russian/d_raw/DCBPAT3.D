// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3190 /* ~Как и двое предыдущих, я частый посетитель этого места. Хотя по идее я должна быть женского пола и посетительницей. Ха-ха!~ */
  IF ~~ THEN REPLY #3191 /* ~Да ты настоящий бунтарь.~ */ EXIT
END
