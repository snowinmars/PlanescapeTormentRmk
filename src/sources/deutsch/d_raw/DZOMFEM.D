// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #241 /* ~Die weibliche Leiche starrt dich mit leerem Blick an. Auf ihrer Stirn ist eine Zahl eingeritzt, und ihre Lippen sind zugenäht. Ihrem Körper entströmt ein leichter Formaldehydgeruch.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #242 /* ~"Na... hast du nachher schon was vor?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #243 /* ~"Na... hast du nachher schon was vor?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1158 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1342 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1343 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 46
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1344 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2598 /* ~Danke für die anregende Unterhaltung. Leb wohl.~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2599 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3923 /* ~Danke für die anregende Unterhaltung. Leb wohl.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3924 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #244 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #245 /* ~"Na dann leb wohl."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2597 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3925 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #283 /* ~Diese Leiche reagiert nicht. Sie scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1157 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2600 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3926 /* ~"Dann leb wohl."~ */ EXIT
END
