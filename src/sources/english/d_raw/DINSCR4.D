// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38103 /* ~I suspect that we will continue to die and be reborn until we finally get our life *right.* I do not know what we have to do to bring that about, though. And therein lies the frustration.~ */
  IF ~~ THEN REPLY #53714 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53715 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53716 /* ~Is it some sort of karmic cycle? As I gather, some incarnations have committed terrible crimes but also there have been a number of incarnations where we have labored to do nothing but good. Are these incarnations intended as punishment? I don't know. And that is the only real truth I can offer in these carvings: I do not know.~ */
  IF ~~ THEN REPLY #53717 /* ~Continue.~ */ GOTO 2
  IF ~~ THEN REPLY #53718 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53719 /* ~At what point does the *I* get separated from the *we?* At what point am I freed of the shackles of the actions of these other incarnations? At what point am I allowed to be *me,* without the weight of these past lives?~ */
  IF ~  Global("Inscr_4","GLOBAL",0)
~ THEN REPLY #53720 /* ~Examine the panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53721 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53722 /* ~The panel is well crafted and fits into the wall with precision. It looks as if it can recess into the wall.~ */
  IF ~~ THEN REPLY #53723 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_4","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53724 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53725 /* ~The panel effortlessly slides into the wall. You hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53726 /* ~Turn away from the inscription.~ */ EXIT
END
