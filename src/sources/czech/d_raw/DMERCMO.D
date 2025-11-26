// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCMO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCMO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9364 /* ~Tento stařec s rudou tváří pokřikuje na lidi kolem sebe. Když ses k němu přiblížil, nadějně se mu rozzářily oči. "Měl byste chviličku... nebo třeba pár peněz... a podíval se na nabídku těch nejbáječnějších věcí, co jsou v Sigilu k mání?"~ */
  IF ~~ THEN REPLY #9365 /* ~"Podívám se, co máš, teprve až si promluvím s Robem Hollowayem o kupeckých krámcích."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9366 /* ~"Hmmmph. Poraď se s ním, ale pak se vrať."~ */
  IF ~~ THEN REPLY #9367 /* ~"To taky udělám."~ */ EXIT
END
