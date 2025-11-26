// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR6~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38107 /* ~There is nothing that can be done. Memories are gone, perhaps never to return. With every death I lose a part of me. ~ */
  IF ~~ THEN REPLY #53738 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53739 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53740 /* ~How can one be immortal and still die? ~ */
  IF ~~ THEN REPLY #53741 /* ~Continue.~ */ GOTO 2
  IF ~~ THEN REPLY #53742 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53743 /* ~He told me that my mind is weakening with every death. I asked him how this could be, but he could not answer. He was of no use. I butchered him so that no other incarnation would ever benefit from his uselessness.~ */
  IF ~  Global("Inscr_6","GLOBAL",0)
~ THEN REPLY #53744 /* ~Examine the panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53745 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53746 /* ~The carvings of the inscription are crude and detract from the workmanship of the panel itself. Upon closer inspection you think the panel can recess into the wall.~ */
  IF ~~ THEN REPLY #53747 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_6","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53748 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53749 /* ~The panel glides into the wall and you hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53750 /* ~Turn away from the inscription.~ */ EXIT
END
