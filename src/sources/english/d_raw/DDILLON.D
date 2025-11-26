// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILLON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILLON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #7095 /* ~"Aieee! Guards! The intruder be here!"~ */
  IF ~~ THEN REPLY #7096 /* ~Done.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #7097 /* ~"Sahr, you'll have to be leavin'. If you're t'be escorted away, I don't want to be keepin' you here."~ */
  IF ~~ THEN REPLY #7098 /* ~Leave.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",0)
Global("Alarm1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #7099 /* ~"What can I do for ye, sahr?"~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7100 /* ~"I need to use the forge. Can you give me some ore?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7101 /* ~"I need to use the forge. Can you give me some ore?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7102 /* ~"Tell me about your predecessor."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7103 /* ~"Tell me about your predecessor."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7104 /* ~"Tell me about your predecessor."~ */ GOTO 7
  IF ~~ THEN REPLY #7105 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0
  SAY #7106 /* ~"I'm sorry, sahr. The supervisor tells me that ye've spent too much time at th' forge. We need to allow some others at it. My apologies, sahr."~ */
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7107 /* ~"Tell me about your predecessor."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7108 /* ~"Tell me about your predecessor."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7109 /* ~"Tell me about your predecessor."~ */ GOTO 7
  IF ~~ THEN REPLY #7110 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1
  SAY #7111 /* ~"Ye want some ore? Very well. Use it well, sahr. It wants to be treated kind."~ */
  IF ~~ THEN REPLY #7112 /* ~"I will. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #7113 /* ~"Whatever. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.0
  SAY #7114 /* ~"It were the strangest thing! Once Saros got locked up, Thildon just disappeared. No note, no explanation... nothing. Just up and left. He was a right bastard, so no one were too sad he were gone."~ */
  IF ~~ THEN REPLY #7115 /* ~"I need to use the forge. Can you give me some ore?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7116 /* ~"I need to use the forge. Can you give me some ore?"~ */ GOTO 4
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7117 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1
  SAY #7118 /* ~"Well! Once he got arrested and locked up, we did our level best to make sure he got vanished from memory. We always hated that berk, we did, and it were a relief to have him gone."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7119 /* ~"I need to use the forge. Can you give me some ore?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7120 /* ~"I need to use the forge. Can you give me some ore?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7121 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 3.2
  SAY #7122 /* ~"'T'were a damn shame to see Saros gone. As a trade-off for that leatherhead Thildon, though... that's a bargain with a fiend, that's for sure. Y'love Saros, but Thildon? He's gone. It's good enough."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7123 /* ~"I need to use the forge. Can you give me some ore?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7124 /* ~"I need to use the forge. Can you give me some ore?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7125 /* ~"I see. Farewell."~ */ EXIT
END
