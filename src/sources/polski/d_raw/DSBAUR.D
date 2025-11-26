// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSBAUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSBAUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45379 /* ~Widzisz przed sobą jakiegoś wysokiego stwora. Niższa część jego ciała przypomina kozła. Jednakże zaraz ponad przednimi mocarnymi nogami jego kształt przybiera bardziej ludzki wygląd, z męskim torsem, ramionami i głową - a wszystko to pokrywa wypolerowana zbroja. Oczy stworzenia są zamknięte i wydaje się, że śpi.~ */
  IF ~~ THEN REPLY #45382 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #45383 /* ~Pozwól stworowi spać dalej.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #45380 /* ~Stwór parska, ale nie otwiera oczu. Widocznie nie potrafi czujnie spać.~ */
  IF ~~ THEN REPLY #45384 /* ~Pozwól stworowi spać dalej.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #45381 /* ~Pół-człowiek, pół-kozioł wciąż jest pogrążony w głębokim śnie.~ */
  IF ~~ THEN REPLY #45385 /* ~Pozwól stworowi spać dalej.~ */ EXIT
END
