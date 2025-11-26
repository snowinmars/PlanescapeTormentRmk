// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER7~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17734 /* ~This thin young man - a cloth merchant - is calling out to passersby, a nervous smile on his face. He doesn't seem to notice you standing there.~ */
  IF ~~ THEN REPLY #17744 /* ~"Greetings..."~ */ GOTO 2
  IF ~~ THEN REPLY #17745 /* ~Leave the merchant be.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17736 /* ~"Welcome, again. May I, uh, show ye somethin'?"~ */
  IF ~~ THEN REPLY #17746 /* ~"No, I have no need of cloth. I had questions, though..."~ */ GOTO 3
  IF ~~ THEN REPLY #17747 /* ~"No, I was simply passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17737 /* ~"Well met, uh... well met! What can I show ye today? Furs? Silks? Cotton?"~ */
  IF ~~ THEN REPLY #17748 /* ~"Nothing; I have no need of cloth. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #17749 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17738 /* ~"Of course, please ask. Any question ye'd like." He smiles apprehensively, an awkward attempt to make a good impression.~ */
  IF ~~ THEN REPLY #17750 /* ~"Tell me about this area."~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17751 /* ~"I'm looking for a man named Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17752 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 4
  IF ~~ THEN REPLY #17753 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #17739 /* ~"Oh!" He seems suddenly disappointed. "I... uh... well, I thought ye were goin' ta ask about... cloth."~ */
  IF ~~ THEN REPLY #17754 /* ~"Cloth?"~ */ GOTO 5
  IF ~~ THEN REPLY #17755 /* ~"No. Can you answer my question?"~ */ GOTO 6
  IF ~~ THEN REPLY #17756 /* ~"Forget I asked, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17741 /* ~The merchant's eyes light up. "Aye, cloth! I have all sorts, my friend... any kind ye'd like! Did ye want to see somethin' in particular?"~ */
  IF ~~ THEN REPLY #17757 /* ~"No, but can you answer my question?"~ */ GOTO 6
  IF ~~ THEN REPLY #17758 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #17742 /* ~He frowns, shaking his head. "Uh... no." Suddenly, he seems struck by a bright idea, and gestures to his rolls of textiles: "Cloth?"~ */
  IF ~~ THEN REPLY #17759 /* ~"No. Farewell."~ */ EXIT
END
