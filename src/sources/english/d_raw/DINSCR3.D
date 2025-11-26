// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38101 /* ~It is extremely important to record your journeys so that you might learn from them. The greater need, however, is that the sources of information you use to uncover this mystery need to be protected when they are found. If key figures, documents or oracles are somehow removed, either by death or destruction, then you will never know who or what you are or how you came to be this way.~ */
  IF ~  Global("Inscr_3","GLOBAL",0)
~ THEN REPLY #53707 /* ~Examine the panel.~ */ GOTO 1
  IF ~~ THEN REPLY #53708 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53709 /* ~The craftsmanship is exquisite. The panel is inset into the wall with the precision that only a master craftsman could achieve. You think the panel can recess into the wall further.~ */
  IF ~~ THEN REPLY #53710 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_3","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53711 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53712 /* ~The panel slides into the wall with the slightest pressure of your hand. You hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53713 /* ~Turn away from the inscription.~ */ EXIT
END
