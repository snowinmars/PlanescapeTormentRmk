// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM199.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM199~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34975 /* ~Diese wiederbelebte Leiche umgibt der Gestank verkohlten Fleisches und verbrannter Textilien. Ziemlich frische Verbrennungswunden laufen entlang ihrer rechten Seite. Vielleicht hat sie zu nah an einem Feuer gestanden und zu schwelen begonnen. Die Zahl "199" ist auf ihre Stirn geätzt worden, und ihre Lippen sind zusammengenäht.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34976 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34979 /* ~"Na... irgendwas Interessantes passiert?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34980 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34981 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #34984 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #34985 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34977 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #34978 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34982 /* ~Die Leiche reagiert nicht. Sie scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können..~ */
  IF ~~ THEN REPLY #34983 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
