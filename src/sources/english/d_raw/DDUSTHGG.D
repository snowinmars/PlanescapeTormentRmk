// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTHGG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTHGG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66596 /* ~You see a pale-faced Dustman standing guard over the front gate; he is staring off across the city rooftops with a distant expression. As you approach, he turns to face you. "Yes?"~ */
  IF ~~ THEN REPLY #66597 /* ~"I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #66598 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.4 4.0 5.1 6.0 7.0
  SAY #66599 /* ~He nods and waits.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66600 /* ~"I'd like to enter the Mortuary."~ */ GOTO 2
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66601 /* ~"I am a Dustman Initiate; I'd like to enter the Mortuary."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #66602 /* ~"I'm looking for someone named Pharod. Do you know where he might be found?"~ */ JOURNAL #66588 /* ~One of the Dustmen told me that if I was looking for Pharod, I should speak to someone named 'Emoric' at the Gathering Dust Bar, a bar to the south and to the west of the Mortuary Front Gate. ~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #66603 /* ~"I'm looking for a lost journal. Have you seen one?"~ */ GOTO 7
  IF ~~ THEN REPLY #66604 /* ~"Never mind. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66605 /* ~"What is your purpose within the Mortuary?"~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #66606 /* ~"I am here to pay my respects to Deionarra, the woman in the northwest memorial hall."~ */ GOTO 3
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #66607 /* ~"I am here to see Dhall."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66608 /* ~"I am here for a wake; I was hoping one of the Dustmen inside might know where in the Mortuary it is being held."~ */ GOTO 3
  IF ~~ THEN REPLY #66609 /* ~"I don't have any business, I just need to get inside."~ */ GOTO 4
  IF ~~ THEN REPLY #66610 /* ~"Actually, I just had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #66611 /* ~"Never mind. I will take my leave."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2
  SAY #66612 /* ~He nods. "Very well. Follow me."~ */
  IF ~~ THEN REPLY #66613 /* ~"All right..."~ */ DO ~TeleportParty("AR0201",[1190.2578],10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #66614 /* ~He shakes his head. "You are not permitted inside."~ */
  IF ~~ THEN REPLY #66615 /* ~"All right then. I had some other questions..." ~ */ GOTO 1
  IF ~~ THEN REPLY #66616 /* ~"I will take my leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #66617 /* ~"Pharod is a Collector." The man studies you for a moment. "If you would wish to know more of him, I am told that Initiate Emoric in the Gathering Dust Bar also seeks him. It may be that he can help you."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66618 /* ~"Where is the Gathering Dust bar?"~ */ GOTO 6
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66619 /* ~"I'm familiar with the bar you speak of. Before heading there, I had some other questions for you..."~ */ GOTO 1
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66620 /* ~"The Gathering Dust Bar? That's to the southwest of here, right? I'll head there, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #66621 /* ~"As one leaves the Mortuary Front Gate, head south and west. It lies past the memorial."~ */
  IF ~~ THEN REPLY #66622 /* ~"All right. I had some other questions before I go..."~ */ GOTO 1
  IF ~~ THEN REPLY #66623 /* ~"Very well. I will seek it out, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #66624 /* ~He shakes his head. "No."~ */
  IF ~~ THEN REPLY #66625 /* ~"I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #66626 /* ~"Very well. Thanks."~ */ EXIT
END
