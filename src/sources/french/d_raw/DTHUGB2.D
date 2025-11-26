// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33529 /* ~Ce sicaire d'aspect miteux sent les embrouilles à plein nez.~ */
  IF ~~ THEN REPLY #33532 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #33534 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33530 /* ~L'homme te regarde d'un air défiant et crache à tes pieds. "Quoi ? Tu cherches la bagarre ?"~ */
  IF ~~ THEN REPLY #33535 /* ~"Oui… Tu es prêt ?"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33537 /* ~"Non… J'ai juste quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33538 /* ~"Non. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #33531 /* ~"Dommage pour toi, enfumé… parce que v'la d'la bagarre !" L'homme sort un couteau à longue lame…~ */
  IF ~~ THEN REPLY #33540 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33541 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
