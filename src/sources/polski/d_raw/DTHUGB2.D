// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33529 /* ~Ten zapuszczony zbir pachnie kłopotami.~ */
  IF ~~ THEN REPLY #33532 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #33534 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33530 /* ~Mężczyzna lustruje cię wzrokiem i pluje ci pod nogi. "Czego? Szukasz guza, co?"~ */
  IF ~~ THEN REPLY #33535 /* ~"Tak, szukam... jesteś gotów?"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33537 /* ~"Nie... mam tylko parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #33538 /* ~"Nie. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #33531 /* ~"To niedobrze, skurlu... bo musisz walczyć!" Mężczyzna wyciąga nóż o długim ostrzu...~ */
  IF ~~ THEN REPLY #33540 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33541 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
