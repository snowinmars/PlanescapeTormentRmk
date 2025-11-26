// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHGD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 3.0
  SAY #38492 /* ~"Sssss... Meat creature, no place for you thisss isss."~ */
  IF ~~ THEN REPLY #38493 /* ~"What are you doing here?"~ */ GOTO 1
  IF ~~ THEN REPLY #38494 /* ~"What is this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #38495 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #38496 /* ~"Then I'll go. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #38497 /* ~"We look to exsssspand our home. Eliminate enemiessss... find food to keep from chewing on walking meat, yessss? The Silent King tellsss usss... no walking meat."~ */
  IF ~~ THEN REPLY #38498 /* ~"Who is the Silent King?"~ */ GOTO 4
  IF ~~ THEN REPLY #38499 /* ~"What is this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #38500 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #38501 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 5.1
  SAY #38502 /* ~"Thiss? Thisss iss the Drowned Nationsss. Thisss iss our new hunting lair. Thisss... thissss is our larder."~ */
  IF ~~ THEN REPLY #38503 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.0 5.2
  SAY #38504 /* ~"Scoutsss we are, scoutsss for the Dead Nationsss."~ */
  IF ~~ THEN REPLY #38505 /* ~"What are you scouting?"~ */ GOTO 0
  IF ~~ THEN REPLY #38506 /* ~"I see. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #38507 /* ~"Ssss!" The ghoul hisses its frustration. "The Silent King isss our ruler. Acaste is our leader! Ssssoon will we find the balance between the two!"~ */
  IF ~~ THEN REPLY #38508 /* ~"Who are you, anyway?"~ */ GOTO 3
  IF ~~ THEN REPLY #38509 /* ~"I see. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #38510 /* ~"Ssss... the meat returnsss..."~ */
  IF ~~ THEN REPLY #38511 /* ~"What are you doing here?"~ */ GOTO 1
  IF ~~ THEN REPLY #38512 /* ~"What is this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #38513 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #38514 /* ~"Then I'll go. Farewell."~ */ EXIT
END
