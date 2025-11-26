// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF679.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF679~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35178 /* ~Dies scheint die Leiche einer alten, ja uralten Frau zu sein. Abgesehen von dem Gestank des Balsamierungsöls, den Stichen, die ihren Mund versiegeln und der Zahl "679", die auf ihre rechte Wange gestickt wurde, sieht sie jetzt wahrscheinlich kaum anders aus als in den letzten Jahren ihres Lebens.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35179 /* ~"Sag mal... hast du nachher schon was vor?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35196 /* ~"Sag mal... hast du nachher schon was vor?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35197 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35198 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35203 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 354
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35204 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35205 /* ~Danke für die anregende Unterhaltung. Leb wohl.~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35206 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35207 /* ~Es war nett, sich mit dir zu unterhalten. Leb wohl.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35208 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35180 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35181 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35194 /* ~"Na dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35195 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35199 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35200 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35201 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35202 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35209 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
END
