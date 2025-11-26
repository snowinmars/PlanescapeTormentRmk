// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1904 /* ~You see a heavy-set looking man. He has a stone-faced expression.~ */
  IF ~~ THEN REPLY #1905 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #1906 /* ~Pass on by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1907 /* ~The man looks at you for a moment, grunts, then raises his hand, revealing a wicked dagger. He smiles evilly and begins twirling it in a menacing arc.~ */
  IF ~~ THEN REPLY #1908 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1909 /* ~"Uh, farewell..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
