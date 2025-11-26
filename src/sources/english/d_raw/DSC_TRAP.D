// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSC_TRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSC_TRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50384 /* ~This is an old, fading, innocuous-looking parchment scroll, bound with a single red ribbon and smelling faintly of mildew. The ribbon is held in place with a plain wax seal.~ */
  IF ~~ THEN REPLY #50385 /* ~Break the seal, open the scroll, read it.~ */ GOTO 1
  IF ~~ THEN REPLY #50386 /* ~Put the scroll away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50387 /* ~The scroll contains a few lines of shaky calligraphy and a strange rune. The calligraphy reads:

"this may not KILL you but it will SLOW you down I am SURE"
"STOP CHASING ME YOU THIEVING BASTARDS it's MY body MINE MINE MINE "
"now... DIE"~ */
  IF ~~ THEN REPLY #50388 /* ~"What the...?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50389 /* ~~ */
  IF ~~ THEN REPLY #50390 /* ~~ */ DO ~ApplySpell(Protagonist,WIZARD_BALL_LIGHTNING)
DestroyPartyItem("SCTrap",FALSE)
~ EXIT
END
