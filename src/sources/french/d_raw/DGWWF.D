// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWF~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61250 /* ~Tu vois une employée occupée. Elle ne fait pas attention à toi.~ */
  IF ~~ THEN REPLY #61251 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #61252 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61253 /* ~"Désolée, matois. Je suis très occupée. Ne me dérange pas." Elle se détourne de toi.~ */
  IF ~~ THEN REPLY #61254 /* ~Pars.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61255 /* ~Tu vois une employée occupée. "Je n'ai pas le temps de discuter avec toi, matois. Va voir le directeur si tu as besoin de quelque chose." Elle se détourne.~ */
  IF ~~ THEN REPLY #61256 /* ~Pars.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61257 /* ~Tu vois une employée occupée. Elle fronce les sourcils en te voyant approcher. "Va caguer, bige. Je n'ai pas le temps de bavarder." Elle t'ignore.~ */
  IF ~~ THEN REPLY #61258 /* ~Pars.~ */ EXIT
END
