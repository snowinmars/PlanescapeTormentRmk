// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49004 /* ~Na środku pokoju stoi blady mężczyzna. Jest zgarbiony i nie wygląda za dobrze.~ */
  IF ~~ THEN REPLY #49005 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #49006 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49007 /* ~"Znowu ty... czy nie mówiłem ci, że chcę odpocząć?"~ */
  IF ~~ THEN REPLY #49008 /* ~"Hmm... Co ci się stało?"~ */ GOTO 4
  IF ~~ THEN REPLY #49009 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49010 /* ~"Okropnie się czuję."~ */
  IF ~~ THEN REPLY #49011 /* ~"Co ci się stało?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49012 /* ~"Nie jestem pewien, ale myślę, że trochę odpoczynku dobrze by mi zrobiło. Czy możesz zostawić mnie samego?"~ */
  IF ~~ THEN REPLY #49013 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49014 /* ~"Czy możesz wyjść i pozwolić mi odpocząć? Może poczuję się lepiej, jeśli trochę odpocznę."~ */
  IF ~~ THEN REPLY #49015 /* ~"Żegnaj."~ */ EXIT
END
