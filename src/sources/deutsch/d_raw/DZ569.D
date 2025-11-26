// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ569.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ569~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24575 /* ~Diese trottende Leiche sieht so aus, als sei sie bereits seit mehreren Jahren tot. Die Haut auf ihrer Stirn ist zurückgepellt und legt den kalkweißen Schädel frei. Jemand hat die Zahl "569" in den freigelegten Knochen gemeißelt. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24576 /* ~"Ich suche nach einem Schlüssel... Hast du zufällig einen?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24579 /* ~"Ich suche nach einem Schlüssel... Hast du zufällig einen?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24580 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24581 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 2
  IF ~~ THEN REPLY #24584 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ EXIT
  IF ~~ THEN REPLY #24585 /* ~Untersuche die Leiche und sieh nach, ob sie einen Schlüssel bei sich hat.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24577 /* ~Die Leiche starrt dich stumm an.~ */
  IF ~~ THEN REPLY #24578 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24582 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #24583 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
