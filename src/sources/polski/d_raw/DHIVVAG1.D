// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48800 /* ~Widzisz mężczyznę, wydaje się uważnie oglądać wnętrze budowli.~ */
  IF ~~ THEN REPLY #48801 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #48802 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48803 /* ~"Znowu ty... nie mówiłem ci, że to moje miejsce? Spadaj, zanim będę musiał się z tobą policzyć!"~ */
  IF ~~ THEN REPLY #48804 /* ~"Chętnie zobaczę jak się do tego zabierzesz."~ */ GOTO 3
  IF ~~ THEN REPLY #48805 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48806 /* ~"Znalazłem to miejsce pierwszy. Jeśli wiesz, co dobre dla ciebie, lepiej nie rób nic głupiego."~ */
  IF ~~ THEN REPLY #48807 /* ~"A co masz zamiar z tym zrobić?"~ */ GOTO 3
  IF ~~ THEN REPLY #48808 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48809 /* ~"Sam się o to prosiłeś!"~ */
  IF ~~ THEN REPLY #48810 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
