// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTCOFF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51470 /* ~You strain trying to raise the sarcophagus lid, but your efforts are in vain. It appears to be locked firmly in place.~ */
  IF ~~ THEN REPLY #51471 /* ~Leave.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Inscr_1","GLOBAL",1)
Global("Inscr_2","GLOBAL",1)
Global("Inscr_3","GLOBAL",1)
Global("Inscr_4","GLOBAL",1)
Global("Inscr_5","GLOBAL",1)
Global("Inscr_6","GLOBAL",1)
Global("Inscr_7","GLOBAL",1)
Global("Inscr_8","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #51473 /* ~The sarcophagus lid moves with ease. The locking mechanism has been undone.~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53782 /* ~Open the sarcophagus.~ */ GOTO 5
  IF ~  Global("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53783 /* ~Open the sarcophagus.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 2
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #53784 /* ~Open the sarcophagus.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #53785 /* ~You open the sarcophagus... only to discover a single key lying within. There is no body, and more importantly, no skull.~ */
  IF ~~ THEN REPLY #53786 /* ~"I don't think Lothar will be pleased to learn this..."~ */ JOURNAL #51472 /* ~I found the tomb that Lothar wanted the skull from. Unfortunately the sarcophagus in the tomb was empty. I should tell Lothar.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53787 /* ~You stand in silence for a moment as you gaze at the contents of the sarcophagus.~ */
  IF ~~ THEN REPLY #53788 /* ~Take the key and leave.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #53789 /* ~You open the sarcophagus... only to discover a single key lying within. There is no body, nothing of any worth.~ */
  IF ~~ THEN REPLY #53790 /* ~Take the key and leave.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Protagonist,1,0,0)
~ JOURNAL #51475 /* ~I found a tomb in the catacombs. In the center of it was an empty sarcophagus.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #53791 /* ~The sarcophagus is empty. Nothing has changed since you last checked it.~ */
  IF ~~ THEN REPLY #53792 /* ~Leave.~ */ EXIT
END
