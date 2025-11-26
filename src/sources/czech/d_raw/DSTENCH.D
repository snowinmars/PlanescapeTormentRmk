// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTENCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTENCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Tento muž na tebe hledí podivnýma hmyzíma očima. Jsou *obrovské*... tak obrovské, že se zdá, jako by mu měly každým okamžikem vypadnout z důlků a odkutálet se po kočičích hlavách. Když tě spatřil, kývl hlavou. Ta mu nadskakovala jak ptákovi... a když ses k němu přiblížil, zjistil jsi, že vzduch kolem něho je prostoupen pachem moči a výkalů.~ */
  IF ~~ THEN REPLY #9339 /* ~"Zdravím."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Muž popotáhl a utřel si nos do rukávu, potom otevřel pusu a odhalil tak své zčernalé hnijící dásně. "Příběhy-za-minci, páníčku?" Ovanul tě svým dechem; smrdí to, jako kdyby měl v ústech přímou linku do kanálu.. "Příběhy-za-minci?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Kdo jsi?"~ */ EXIT
END
