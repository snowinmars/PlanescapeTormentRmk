// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37792 /* ~You see a slightly overweight, older man wearing shoddy clothes. He has a worried look and keeps glancing about. You notice he is breathing heavily and sweating a lot.~ */
  IF ~~ THEN REPLY #37804 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37805 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37793 /* ~He jumps at your greeting and gives you a worried look. "Yes cutter?" He cringes a bit, as if he is afraid you will strike him. "What can I do for you?"~ */
  IF ~~ THEN REPLY #37806 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37807 /* ~"Never mind. Farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37794 /* ~"Questions?" He begins to shake his head. "You... aren't here to inspect the merchandise?" Sweat trickles down his brow.~ */
  IF ~~ THEN REPLY #37809 /* ~"What merchandise?"~ */ GOTO 3
  IF ~~ THEN REPLY #37810 /* ~"I just want some questions answered..."~ */ GOTO 9
  IF ~~ THEN REPLY #37812 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37795 /* ~He gives you a frightened look. "Myself... aren't you here to buy a servant?" His breathing becomes a little more labored.~ */
  IF ~~ THEN REPLY #37813 /* ~"Yes, I am."~ */ GOTO 4
  IF ~~ THEN REPLY #37815 /* ~"No, I'm not."~ */ GOTO 6
  IF ~~ THEN REPLY #37816 /* ~"You're for sale?"~ */ GOTO 8
  IF ~~ THEN REPLY #37817 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #37796 /* ~He gets a worried look and eyes you warily. You see his eyes travel along your scars and he begins to sweat more profusely. "I... I am certain that I am not the servant for one such as yourself, cutter." He meets your gaze.~ */
  IF ~~ THEN REPLY #37818 /* ~"Oh, and why is that?"~ */ GOTO 5
  IF ~~ THEN REPLY #37819 /* ~"Yes, I think you're right."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37797 /* ~He swallows hard and his hands begin to shake. "I have lived a sedentary life, cutter. You, however, appear to be a man of... action. I doubt I would be able to suit your needs..." He looks very worried and is breathing harder.~ */
  IF ~~ THEN REPLY #37820 /* ~"Yes, I think you're right."~ */ GOTO 6
  IF ~~ THEN REPLY #37821 /* ~"No, I think you'll do just fine."~ */ DO ~Kill(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1 5.0 8.1
  SAY #37798 /* ~He looks relieved and smiles at you. "Good day to you then, cutter." He turns away from you.~ */
  IF ~~ THEN REPLY #37822 /* ~"I have some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #37823 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37800 /* ~He stares at you for a moment and then his hands begin to shake violently. He opens his mouth to say something but the words will not come out. His eyes grow wide with surprise as he clutches his chest and silently slumps to the ground.~ */
  IF ~~ THEN REPLY #37824 /* ~Leave before anyone notices.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #37801 /* ~He nods his head. "Yes, cutter. Those of us you see here are guilty of minor crimes. Our punishment is indentured servitude for a period of years dependent upon the crime committed. Are you here to purchase?"~ */
  IF ~~ THEN REPLY #37825 /* ~"Yes, I am."~ */ GOTO 4
  IF ~~ THEN REPLY #37826 /* ~"No, I'm not."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 6.0 10.0
  SAY #37802 /* ~He shakes his head and gives you a sad look. "I have no answers for you, cutter. I would ask that you leave me be." He turns away from you.~ */
  IF ~~ THEN REPLY #37827 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37803 /* ~You see the same slightly overweight older man. He has a worried look and keeps glancing about. You notice he is breathing heavily and sweating a lot. He gives you a weak smile. "Back I see, cutter. What can I help you with?"~ */
  IF ~~ THEN REPLY #37828 /* ~"I have some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #37829 /* ~"Never mind. Farewell."~ */ EXIT
END
