// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWM~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61241 /* ~Tu vois un employé occupé. Il ne fait pas attention à toi.~ */
  IF ~~ THEN REPLY #61242 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #61243 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61244 /* ~"Désolé, je suis très occupé. Je t'en prie, ne me dérange pas." Il se détourne de toi.~ */
  IF ~~ THEN REPLY #61245 /* ~Pars.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61246 /* ~Tu vois un employé occupé. "Je n'ai pas le temps de parler. Adresse-toi au directeur si tu as besoin d'aide." Il se détourne.~ */
  IF ~~ THEN REPLY #61247 /* ~Pars.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61248 /* ~Tu vois un employé occupé. Il hausse les épaule en te voyant approcher. "Va caguer, bige. Je n'ai pas le temps de bavarder." Il t'ignore.~ */
  IF ~~ THEN REPLY #61249 /* ~Pars.~ */ EXIT
END
