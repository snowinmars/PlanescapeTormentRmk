// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTNEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTNEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9789 /* ~You see a handsome young man wearing fancy clothes. He seems to be quite excited.~ */
  IF ~~ THEN REPLY #9790 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #9791 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9794 /* ~He turns to you and gives you an irritated look. "Lay off, berk. I've nothing to say to the likes of you." He looks away.~ */
  IF ~~ THEN REPLY #9797 /* ~"Look, I just have a couple of questions for you."~ */ GOTO 2
  IF ~~ THEN REPLY #9798 /* ~"Sorry to bother you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9799 /* ~He turns to you again and seems quite angry at your intrusion. "Bar that. I'm trying to watch the execution and you're rattling your bone-box at me. Now leave me be." He turns away again.~ */
  IF ~~ THEN REPLY #9800 /* ~Tapping him on the shoulder: "I've had just about enough of your attitude. Answer some questions or I'll bust your pretty face."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nephew_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #9804 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9805 /* ~He turns to you, his face flushed with anger. "You wouldn't dare! I happen to be the nephew of..."~ */
  IF ~~ THEN REPLY #9806 /* ~Interrupt him: "I don't care if you're related to the Lady herself. The next words out of your 'bone-box' had better be 'how may I help you.'"~ */ GOTO 4
  IF ~~ THEN REPLY #9808 /* ~Interrupt him: "Never mind. You're hardly worth the effort."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9810 /* ~The young man looks as if he is about to explode. He quickly glances about but finds no sympathy in the crowd. "H-how may I help you?" ~ */
  IF ~~ THEN REPLY #9812 /* ~"There... Now that wasn't all that hard, was it? I have some questions for you."~ */ GOTO 5
  IF ~~ THEN REPLY #9814 /* ~Smile: "You already have. The look of humiliation on your face is enough. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 9.0 11.0 12.0
  SAY #9815 /* ~"I'm listening."~ */
  IF ~~ THEN REPLY #9817 /* ~"What's going on?"~ */ GOTO 6
  IF ~~ THEN REPLY #9818 /* ~"Who's in charge around here."~ */ GOTO 8
  IF ~~ THEN REPLY #9820 /* ~"I'm looking for a deva. Word is he's in town somewhere."~ */ GOTO 11
  IF ~~ THEN REPLY #9821 /* ~"Any local news?"~ */ GOTO 12
  IF ~~ THEN REPLY #9822 /* ~"Never mind. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9823 /* ~"A simple execution. That's all."~ */
  IF ~~ THEN REPLY #9825 /* ~"What crime did he commit?"~ */ GOTO 7
  IF ~~ THEN REPLY #9826 /* ~"I see. My next question then."~ */ GOTO 5
  IF ~~ THEN REPLY #9827 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9829 /* ~"I wouldn't know. You can ask at the administration office."~ */
  IF ~~ THEN REPLY #9831 /* ~"All right. I'll do that. Let me ask you something else."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #9833 /* ~He smiles at you wickedly. "That would be my uncle, Tovus Giljaf."~ */
  IF ~~ THEN REPLY #9836 /* ~"Wipe the smirk off your face or I'll do it for you."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #9838 /* ~The smile quickly fades. He scowls at you and says nothing.~ */
  IF ~~ THEN REPLY #9839 /* ~"That's better. I have more questions for you."~ */ GOTO 5
  IF ~~ THEN REPLY #9841 /* ~"I think I've had enough of you. Farewell."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #9843 /* ~"And a good day to you as well. I shall mention you to my uncle... scarred one." He returns his attention to the crowd.~ */
  IF ~~ THEN REPLY #9845 /* ~"You do that."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #9846 /* ~He looks at you with disdain. "Hmph. A deva in Curst. Now there's something you don't see everyday. I would say you're mistaken or addle-coved."~ */
  IF ~~ THEN REPLY #9847 /* ~"Very well, next question."~ */ GOTO 5
  IF ~~ THEN REPLY #9848 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #9849 /* ~He shrugs his shoulders. "None that I can think of."~ */
  IF ~~ THEN REPLY #9850 /* ~"I see. Perhaps you can tell me something else."~ */ GOTO 5
  IF ~~ THEN REPLY #9851 /* ~"Farewell then."~ */ EXIT
END
