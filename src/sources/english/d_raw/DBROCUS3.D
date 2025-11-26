// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3202 /* ~This dashing nobleman eyes your advance with an air of contempt. "I am here to speak with the ladies, sir, and *not* to one such as yourself. I certainly hope you hadn't planned on pestering me with questions and the like."~ */
  IF ~~ THEN REPLY #3203 /* ~"In fact, I did have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #40142 /* ~"I'll advise you to show some respect."~ */ GOTO 3
  IF ~~ THEN REPLY #40143 /* ~"I had, but I won't waste my time. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #40144 /* ~"No, I hadn't. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40145 /* ~"Again you annoy me with your presence. Had I wanted to speak to *your* particular sort of person, why, there's a whole ward of them east of here. Now leave me be."~ */
  IF ~~ THEN REPLY #40146 /* ~"I'll advise you to show some respect."~ */ GOTO 3
  IF ~~ THEN REPLY #40147 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #40148 /* ~The nobleman narrows his eyes at you. "I do not care... not a whit! Now, away with you. Go on - leave me be."~ */
  IF ~~ THEN REPLY #40149 /* ~"I'll advise you to show some respect."~ */ GOTO 3
  IF ~~ THEN REPLY #40150 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0
  SAY #40151 /* ~He closes his eyes and exhales slowly, as if to calm himself. "If such an act is required to rid myself of you, then so be it: if you would be so *kind,* sir, I would most humbly ask that you leave my side and seek conversation *elsewhere.*"~ */
  IF ~~ THEN REPLY #40152 /* ~"Fine... farewell."~ */ EXIT
  IF ~~ THEN REPLY #40153 /* ~Leave.~ */ EXIT
END
