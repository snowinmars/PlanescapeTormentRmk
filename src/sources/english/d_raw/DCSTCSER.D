// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9998 /* ~You see a weary-looking, middle-aged man. When he notices your attention he gives you a slight bow.~ */
  IF ~~ THEN REPLY #9999 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #10000 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10001 /* ~He does not meet your gaze but instead focuses on the ground at your feet. "Good day to you, cutter. How may I help you?"~ */
  IF ~~ THEN REPLY #10002 /* ~"You could look at me when I talk to you."~ */ GOTO 2
  IF ~~ THEN REPLY #10003 /* ~"I have some questions for you."~ */ GOTO 3
  IF ~~ THEN REPLY #10004 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10005 /* ~He glances up at you momentarily and then returns his gaze to your feet. "It is not my place as a servant to meet your gaze, cutter."~ */
  IF ~~ THEN REPLY #10006 /* ~"Good. You know your place and should maintain it."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Servant_1","GLOBALLaw",1)
~ GOTO 3
  IF ~~ THEN REPLY #10007 /* ~"Well, you're not my servant so I would have you look at me as an equal."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Servant_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #10008 /* ~"Whatever. I have some questions for you."~ */ GOTO 3
  IF ~~ THEN REPLY #10009 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2 4.0 6.0 7.1 8.0 10.0
  SAY #10010 /* ~He nods his head but keeps his eyes averted. "Yes, cutter."~ */
  IF ~~ THEN REPLY #10011 /* ~"I'm looking for a deva. I've been told he's in Curst. Have you seen him?"~ */ GOTO 4
  IF ~~ THEN REPLY #10012 /* ~"Tell me about Curst."~ */ GOTO 5
  IF ~~ THEN REPLY #10013 /* ~"What's the latest news?"~ */ GOTO 7
  IF ~~ THEN REPLY #10014 /* ~"Who's in charge around here?"~ */ GOTO 9
  IF ~~ THEN REPLY #10015 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10016 /* ~"I know of no deva, cutter. I can't imagine one being even near Curst, let alone in the city itself." He pauses to think for a moment. "I would ask at the administration office in the town square. They would know of such a visitor."~ */
  IF ~~ THEN REPLY #10017 /* ~"My thanks. Some more questions, though."~ */ GOTO 3
  IF ~~ THEN REPLY #10018 /* ~"You've been very helpful. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #10019 /* ~"There is little to tell, cutter. Curst is a gate town at the edge of the Outlands. It holds the gate to Carceri, which can be found in the town square..." He wrinkles his brow in concentration. "I don't think the gate is open any longer, however. Something to do with preventing the spread of the plague..."~ */
  IF ~~ THEN REPLY #10020 /* ~"Plague?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10021 /* ~The tone of your voice makes him explain himself hurriedly. "Yes, cutter, but you need not concern yourself. The afflicted areas of the city have been sealed off and everything is under control."~ */
  IF ~~ THEN REPLY #10022 /* ~"Uh... Fine. Let me ask you something else, then."~ */ GOTO 3
  IF ~~ THEN REPLY #10023 /* ~"You've been very helpful. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #10024 /* ~"News... Well, I hear there is to be an execution some time soon... other than that, I can't think of anything, cutter."~ */
  IF ~~ THEN REPLY #10025 /* ~"Who's being executed and for what reason?"~ */ GOTO 8
  IF ~~ THEN REPLY #10026 /* ~"All right. I need to ask you something else."~ */ GOTO 3
  IF ~~ THEN REPLY #10027 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10028 /* ~He shrugs his shoulders. "I don't know, cutter. It isn't you or I... so does it really matter?"~ */
  IF ~~ THEN REPLY #10029 /* ~"... I guess not. Let me ask you something else."~ */ GOTO 3
  IF ~~ THEN REPLY #10030 /* ~"I see. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY #10031 /* ~"That would be Burgher Tovus Giljaf. He can be found at the administration office in the town square."~ */
  IF ~~ THEN REPLY #10032 /* ~"I see. What can you tell me about Tovus?"~ */ GOTO 10
  IF ~~ THEN REPLY #10033 /* ~"Many thanks. I need to ask you something else."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10034 /* ~For the first time he actually looks up and makes eye contact with you. "Nothing, cutter. Nothing at all. If you have questions about his lordship you should take them to him." He lowers his gaze.~ */
  IF ~~ THEN REPLY #10035 /* ~"All right, I just might do that. Let me ask you another question."~ */ GOTO 3
  IF ~~ THEN REPLY #10036 /* ~"I see. Well, I have to go now. Farewell."~ */ EXIT
END
