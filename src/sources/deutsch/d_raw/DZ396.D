// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ396~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~Diese Leiche schlurft von Totenbank zu Totenbank und bandagiert die darauf liegenden Leichen. In ihre linke Schläfe ist die Zahl "396" geritzt, und ihre Lippen sind zugenäht. Du merkst, daß die Leiche in ihrer Hand eine Rolle Bandagen trägt... Die Bandagen sehen brauchbar aus.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"Hast du was dagegen, wenn ich mir mal diese Bandagen ausleihe?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"Hast du was dagegen, wenn ich mir mal diese Bandagen ausleihe?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34936 /* ~Versuch, dem Zombie die Bandagen abzunehmen.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34937 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 2
  IF ~~ THEN REPLY #34940 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ EXIT
  IF ~~ THEN REPLY #34941 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34933 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #34934 /* ~Versuch, dem Zombie die Bandagen abzunehmen.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34938 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #34939 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
