// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMBIEW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMBIEW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #280 /* ~Die schlurfende Leiche starrt dich mit leerem Blick an. Auf ihrer Stirn ist eine Zahl eingeritzt, und ihre Lippen sind zugenäht. Dem Körper entströmt ein leichter Formaldehydgeruch.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #282 /* ~"Na... irgendwas Interessantes passiert?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #281 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1160 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1345 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #1346 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #1347 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #284 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #285 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #1159 /* ~Diese Leiche reagiert nicht. Sie scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.~ */
  IF ~~ THEN REPLY #1161 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
