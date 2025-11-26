// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAHF~

IF ~~ THEN BEGIN 0 // from:
  SAY #63309 /* ~"In a place where *yeh'll* never find 'im. If yeh think to be taking him, yeh'll be needing ta get through me, first."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63310 /* ~"If it gives me the strength ta gut yeh, I donnae care!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63311 /* ~"Enough of yer chatterin'! If it's a *fight* yeh want, then c-!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63312 /* ~"If - if yeh're gonna try an' get *past* me then go on n' do it! I..."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63313 /* ~"*Shut* yer bone-box, yeh hear me?! Shut y-"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 8
END
