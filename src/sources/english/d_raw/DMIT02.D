// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43002 /* ~This person is carrying a sheaf of papers and unwound scrolls; they occasionally pause to look through them and read portions of what's written aloud, practicing elaborate hand-motions as they do so. They look up as you come to stand before them. "Greetings..."~ */
  IF ~~ THEN REPLY #43003 /* ~"Greetings... what is this place?"~ */ GOTO 1
  IF ~~ THEN REPLY #43004 /* ~"I just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43005 /* ~"This is where aspiring mages can come to train and study. Many wizards took their first steps in the Art as fledgling sorcerers, here."~ */
  IF ~  Global("Thorncombe","GLOBAL",0)
~ THEN REPLY #43006 /* ~"Where's the trainer?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",1)
~ JOURNAL #66871 /* ~I entered the mage training chamber of the Civic Festhall, but found no tutor. One of the aspiring mages there told me to seek out Lady Thorncombe - the tutor - in the Festhall's sensoriums.~ */ GOTO 2
  IF ~  GlobalGT("Thorncombe","GLOBAL",0)
GlobalLT("Thorncombe","GLOBAL",3)
~ THEN REPLY #66870 /* ~"Where's the trainer?"~ */ GOTO 2
  IF ~~ THEN REPLY #43007 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43008 /* ~"I do not know where Lady Thorncombe has gone. I would suggest you try the sensoriums... she spends much of her time there..." They lower their voice, frowning: "Perhaps too much."~ */
  IF ~~ THEN REPLY #43009 /* ~"The sensoriums?"~ */ GOTO 3
  IF ~~ THEN REPLY #43010 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #43011 /* ~"Ask Splinter, just inside the Festhall's entrance, of them. You cannot reach them yourself, but he will take you there."~ */
  IF ~~ THEN REPLY #43012 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
