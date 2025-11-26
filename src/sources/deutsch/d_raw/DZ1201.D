// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1201~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~Die Zahl "1201" ist mit Tinte auf die Stirn dieser Leiche geschrieben worden, und die Tinte ist in die Augen, über die Wangen und den Kiefer heruntergelaufen. Als du mit den Augen den Tintentränen auf dem Gesicht der Leiche nach unten folgst, bemerkst du, daß sie in die Naht gelaufen ist, die die Lippen der Leiche versiegelt, und daß sie sich in etwas gefangen hat, was wie eine Notiz aussieht, die der Leiche in den Mund gesteckt wurde.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34954 /* ~Versuch, die Notiz herauszuziehen.~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34957 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34958 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34959 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ GOTO 2
  IF ~~ THEN REPLY #34962 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~~ THEN REPLY #34963 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34955 /* ~Die Notiz hat sich mit dem Blutsaft im Mund des Zombies vermischt. Wenn du versuchen würdest, das Papier durch die Kreuzstiche hindurchzuziehen, würde es das Papier zerfetzen. Wenn du die Leiche in Stücke hacken würdest, würde die Notiz wohl ebenfalls zerstört werden. Du mußt also einen behutsamen Weg finden, die Stiche aufzulösen, bevor du die Notiz entfernst.~ */
  IF ~~ THEN REPLY #34956 /* ~Schneid die Naht mit dem Skalpell durch.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34960 /* ~Geschickt schneidest du die Naht durch, die den Mund der Leiche versiegelte, und der Unterkiefer sackt herab. Vorsichtig nimmst du den Zettel aus dem Mund der Leiche... Obschon sich das Papier nicht im besten Zustand befindet, scheint der Text immer noch lesbar zu sein.

^NHINWEIS: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #34961 /* ~Untersuche die Leiche noch einmal.~ */ EXIT
END
