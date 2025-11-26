// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVORTEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVORTEN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42519 /* ~You see a Harmonium officer. He gives you a bored look as you approach. ~ */
  IF ~~ THEN REPLY #44833 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #44834 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42520 /* ~He gives you a bored look. "Greetings, citizen. Measure Three Vorten at your service."~ */
  IF ~~ THEN REPLY #44838 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44839 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #44835 /* ~He sighs. "I don't mean to be rude, but I am on duty and have no time for questions." He pauses. "If you would like information go talk to Ebb Creakknees."~ */
  IF ~~ THEN REPLY #44836 /* ~"Who is Ebb Creakknees?"~ */ GOTO 3
  IF ~~ THEN REPLY #44837 /* ~"Where can I find him?"~ */ GOTO 4
  IF ~~ THEN REPLY #44840 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44841 /* ~"He is an old friend of mine. I think he considers himself to be a tout now, so he can give you the chant concerning just about anything."~ */
  IF ~~ THEN REPLY #44842 /* ~"Where do I find him?"~ */ GOTO 4
  IF ~~ THEN REPLY #44843 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #44844 /* ~He thinks for a moment. "Last I heard he pretty much set himself up in the Smoldering Corpse bar. You can find it somewhere down in the Hive."~ */
  IF ~~ THEN REPLY #44845 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #44846 /* ~You see Measure Three Vorten, the Harmonium officer. He gives you a slight nod. "Hello again."~ */
  IF ~~ THEN REPLY #44847 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44848 /* ~"Never mind, farewell."~ */ EXIT
END
