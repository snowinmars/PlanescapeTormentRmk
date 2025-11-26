// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF444.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF444~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35210 /* ~Diese weibliche Leiche ist in einem schrecklichen Zustand. Etwas, das wie Hunderte von winzigen Bissen aussieht - vielleicht von Ratten - entstellt die zähe, konservierte Haut der Leiche. Dem verzogenen Fleisch um die Wunden herum nach zu urteilen, wurden die Bisse der Leiche höchstwahrscheinlich bereits zugefügt, bevor sie präpariert wurde. Ihre Lippen sind zugenäht, und die Zahl "444" ist mit dunkelblauer Tinte auf ihr Gesicht gekleckst worden.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35211 /* ~"Sag mal... hast du nachher schon was vor?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35228 /* ~"Sag mal... hast du nachher schon was vor?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35229 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35230 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35235 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 358
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35236 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35237 /* ~Danke für die anregende Unterhaltung. Leb wohl.~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35238 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35239 /* ~Es war nett, sich mit dir zu unterhalten. Leb wohl.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35240 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35212 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35213 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35226 /* ~"Na dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35227 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35231 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35232 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35233 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35234 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35241 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
END
