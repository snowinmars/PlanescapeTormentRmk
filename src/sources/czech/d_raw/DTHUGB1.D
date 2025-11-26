// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1904 /* ~Vidíš mohutně stavěného muže s kamenným výrazem ve tváři.~ */
  IF ~~ THEN REPLY #1905 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #1906 /* ~Projdi kolem.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1907 /* ~Muž se na tebe podíval, zavrčel a pak zvedl ruku. Má v ní nebezpečně vyhlížející dýku. Zle se usmál a začal dýkou vykreslovat ve vzduchu výhružné křivky.~ */
  IF ~~ THEN REPLY #1908 /* ~Zaútoč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1909 /* ~"Uh, sbohem..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
