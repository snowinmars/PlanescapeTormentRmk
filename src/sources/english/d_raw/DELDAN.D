// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELDAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DELDAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57545 /* ~You see an older man with thinning white hair. His clothes are not new, but they are not the rags worn by the other prisoners. You notice books and scrolls surround him. He arches his eyebrow at your approach.~ */
  IF ~~ THEN REPLY #57546 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57547 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57548 /* ~He looks you up and down then smiles. "Well... what do we have here? You look to be a mess, young man..." He continues to examine you then shrugs. "What is it that you want of me?"~ */
  IF ~~ THEN REPLY #57549 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57550 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.1 7.0 8.0 9.0
  SAY #57551 /* ~"I may be able to help you. Ask your questions." He smiles.~ */
  IF ~~ THEN REPLY #57552 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #57553 /* ~"What can you tell me about this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #57554 /* ~"I've been told there is a deva down here. Know anything about that?"~ */ GOTO 8
  IF ~~ THEN REPLY #57555 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57556 /* ~"I am Eldan. A man of little importance who has fallen on some bad times..."~ */
  IF ~~ THEN REPLY #57557 /* ~"Why are you here?"~ */ GOTO 4
  IF ~~ THEN REPLY #57558 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57559 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57560 /* ~He frowns. "My employer no longer had need of my services. Rather than terminate my employment, and my life, he saw fit to have me interred here."~ */
  IF ~~ THEN REPLY #57561 /* ~"Why would he do that?"~ */ GOTO 5
  IF ~~ THEN REPLY #57562 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57563 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57564 /* ~"He was involved in questionable business practices and I was his record keeper. He put me here to keep his secrets safe... and to keep me from those who would learn his secrets." He sighs. "I suppose it is preferable to death, but not by much."~ */
  IF ~~ THEN REPLY #57565 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57566 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #57567 /* ~He shrugs. "I know nothing other than the fact that it's a prison. I have been in this cell since my arrival and see little need to explore what is obviously a dangerous place."~ */
  IF ~~ THEN REPLY #57568 /* ~"You never leave your cell?"~ */ GOTO 7
  IF ~~ THEN REPLY #57569 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57570 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57571 /* ~"No..." He looks away.~ */
  IF ~~ THEN REPLY #57572 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57573 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57574 /* ~He frowns and gives you a questioning look. "A deva? I cannot imagine that... why would a deva be down here?" He shrugs. ~ */
  IF ~~ THEN REPLY #57576 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57577 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #57575 /* ~You see Eldan. He smiles at your approach. "Again you grace me with your presence. Why?"~ */
  IF ~~ THEN REPLY #57578 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57579 /* ~"Never mind, farewell."~ */ EXIT
END
