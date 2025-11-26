// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33529 /* ~Der zwielichtig aussehende Schläger legt es einfach darauf an, Ärger zu machen.~ */
  IF ~~ THEN REPLY #33532 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #33534 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33530 /* ~Der Mann sieht dich an und spuckt dir vor die Füße. "He du! Willste Streit?"~ */
  IF ~~ THEN REPLY #33535 /* ~"Klar... ich mach dich fertig!"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33537 /* ~"Nein... ich hätte da nur ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #33538 /* ~"Nein. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #33531 /* ~"So ein Pech, Schlucker... du kriegst nämlich Streit!" Der Mann zieht ein langes Messer...~ */
  IF ~~ THEN REPLY #33540 /* ~Kämpf.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33541 /* ~Flieh.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
