// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHEKKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHEKKA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48041 /* ~You see a drunken guard. He's dressed in the armor of Curst's finest, but it looks like all he's interested in protecting is his bub. He looks you over without much interest, his eyes dead.~ */
  IF ~~ THEN REPLY #48042 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #48043 /* ~"What are you doing here?"~ */ GOTO 3
  IF ~~ THEN REPLY #48044 /* ~"Forget it. Farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48045 /* ~Chek'ka Plute looks you over carefully, with all the concentration a drunk man can muster. He sneers, and goes back to his tankard.~ */
  IF ~~ THEN REPLY #48046 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #48047 /* ~"What are you doing here?"~ */ GOTO 3
  IF ~~ THEN REPLY #48048 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0
  SAY #48049 /* ~"Chek'ka Plute. One a' Curst's elite." He belches.~ */
  IF ~~ THEN REPLY #48050 /* ~"What are you doing here?"~ */ GOTO 3
  IF ~~ THEN REPLY #48051 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #48084 /* ~He points at Tainted Barse. "Watchin' him. They say he's got a tunnel here, and I wanna see him use it t' see if it's true. Waitin'. Watchin'. Go 'way now. I got watchin' t' do."~ */
  IF ~~ THEN REPLY #48085 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #48086 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #48087 /* ~The drunken guard staggers at you, roaring. It's obvious he'll see you dead first.~ */
  IF ~~ THEN REPLY #48088 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
