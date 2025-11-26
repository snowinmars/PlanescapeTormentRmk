// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLEIGHIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLEIGHIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58803 /* ~You see an older man in dirty work clothes. He frowns at your approach.~ */
  IF ~~ THEN REPLY #58804 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58805 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58806 /* ~His frown deepens. "Well... good day to ye, berk. Why ye rattlin' yer bone-box at me? I gots work to do."~ */
  IF ~~ THEN REPLY #58807 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58808 /* ~"Never mind, farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0 7.0
  SAY #58809 /* ~Sighs. "Ye make it quick, ye hear?"~ */
  IF ~~ THEN REPLY #58810 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #58811 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #58812 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #58813 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 6
  IF ~~ THEN REPLY #58814 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58815 /* ~"Not that ye be needin' to know, but me name is Leighis."~ */
  IF ~~ THEN REPLY #58816 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58817 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58818 /* ~He snorts. "Talkin' to a dern fool when I should be a-workin'..."~ */
  IF ~~ THEN REPLY #58819 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58820 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #58821 /* ~He looks around. "It be a warehouse, ye barmy berk. What more ye be needin' to know?"~ */
  IF ~~ THEN REPLY #58822 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58823 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #58824 /* ~He gives you a stern look then shakes his head. "Ye be lookin' fer a deva in Curst..." He laughs at you. "Ye should look fer virgins in a brothel instead. Ye'd have better luck, berk."~ */
  IF ~~ THEN REPLY #58825 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58826 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #58827 /* ~You see Leighis, the warehouseman. He frowns at your approach. "Ye be back. What ye want?"~ */
  IF ~~ THEN REPLY #58828 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58829 /* ~"Nothing, farewell."~ */ EXIT
END
