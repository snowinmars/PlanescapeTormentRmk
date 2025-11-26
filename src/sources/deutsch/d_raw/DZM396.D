// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM396~

IF ~  HasItem("Bandage","ZM396")
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~Diese Leiche schlurft von Totenbank zu Totenbank und bandagiert die darauf liegenden Leichen. In ihre linke Schläfe ist die Zahl "396" geritzt, und ihre Lippen sind zugenäht. Du merkst, daß die Leiche in ihrer Hand eine Rolle Bandagen trägt... Die Bandagen sehen brauchbar aus.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"Hast du was dagegen, wenn ich mir mal diese Bandagen ausleihe?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"Hast du was dagegen, wenn ich mir mal diese Bandagen ausleihe?"~ */ GOTO 1
  IF ~~ THEN REPLY #34936 /* ~Versuch, dem Zombie die Bandagen abzunehmen.~ */ DO ~GiveItem("Bandage",Protagonist)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34937 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34940 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #34941 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45106 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.3 4.0 4.1 4.2
  SAY #34933 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~  HasItem("Bandage","ZM396")
~ THEN REPLY #34934 /* ~Versuch, dem Zombie die Bandagen abzunehmen.~ */ DO ~GiveItem("Bandage",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #45107 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 4.3
  SAY #34938 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #34939 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.0
  SAY #45108 /* ~Geschickt stibitzt du der Leiche die Verbandsrolle aus der Hand. Sie scheint nichts zu bemerken und fährt unbeirrt mit derselben Handbewegung fort - als würde sie weiter Leichen bandagieren.~ */
  IF ~~ THEN REPLY #45109 /* ~Untersuche die Leiche noch einmal.~ */ GOTO 4
  IF ~~ THEN REPLY #45110 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~  !HasItem("Bandage","ZM396")
~ THEN BEGIN 4 // from: 3.0
  SAY #45111 /* ~Diese Leiche schlurft von einer Totenbank zur nächsten und umwickelt die dort liegenden Leichen mit Bandagen. Sie erledigt fleißig ihre Pflicht, obwohl sie gar keine Bandagen mehr hat. Auf der linken Schläfe ist die Zahl "396" eingeritzt, und ihre Lippen sind zugenäht.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45112 /* ~"Tut mir leid, wenn ich dir die Bandagen wegnehme. Aber ich brauch sie dringender als diese Leichen."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45113 /* ~"Tut mir leid, wenn ich dir die Bandagen wegnehme. Aber ich brauch sie dringender als diese Leichen."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45114 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45115 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #45116 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45117 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
