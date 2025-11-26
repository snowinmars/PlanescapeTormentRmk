// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SCTRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~SCTRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66878 /* ~This is an old, fading, innocuous-looking parchment scroll, bound with a single red ribbon and smelling faintly of mildew. The ribbon is held in place with a plain wax seal.~ */
  IF ~~ THEN REPLY #66880 /* ~Break the seal, open the scroll, read it.~ */ DO ~SetGlobal("CW_Scroll_Trap","GLOBAL",1)
~ JOURNAL #66828 /* ~I opened and read a magically trapped scroll that read simply:

"this may not KILL you but it will SLOW you down I am SURE"
"STOP CHASING ME YOU THIEVING BASTARDS it's MY body MINE MINE MINE"
"now... DIE"

I received the scroll from a woman who told me that it had been given to her mother with directions to deliver it to a man with my description.~ */ GOTO 1
  IF ~~ THEN REPLY #66881 /* ~Put the scroll away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66882 /* ~The scroll contains a few lines of shaky calligraphy and a strange rune. The calligraphy reads:

"this may not KILL you but it will SLOW you down I am SURE"
"STOP CHASING ME YOU THIEVING BASTARDS it's MY body MINE MINE MINE "
"now... DIE"~ */
  IF ~  HPLT(Protagonist,36)
~ THEN REPLY #66883 /* ~"What the...?"~ */ GOTO 2
  IF ~  HPGT(Protagonist,35)
~ THEN REPLY #66884 /* ~"What the...?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66885 /* ~The rune suddenly throbs, and the entire scroll begins to dissolve into a stinking, black mess. The fluid seeps directly into the flesh of your hands... in seconds, the magical hemotoxin has rendered your blood into black bile. You begin to die an exquisitely painful death...~ */
  IF ~~ THEN REPLY #66886 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #66887 /* ~The rune suddenly throbs, and the entire scroll begins to dissolve into a stinking, black mess. The fluid seeps directly into the flesh of your hands... in seconds, the magical hemotoxin begins to render your blood into black bile. For a moment you clutch at yourself, howling in agony... and then the pain subsides. You have survived whatever horrible magic was placed upon the scroll.~ */
  IF ~~ THEN REPLY #66888 /* ~Done.~ */ DO ~Damage(Protagonist,LOWER,35)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END
