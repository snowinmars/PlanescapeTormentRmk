// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1201~

IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~Die Zahl "1201" ist mit Tinte auf die Stirn dieser Leiche geschrieben worden, und die Tinte ist in die Augen, über die Wangen und den Kiefer heruntergelaufen. Als du mit den Augen den Tintentränen auf dem Gesicht der Leiche nach unten folgst, bemerkst du, daß sie in die Naht gelaufen ist, die die Lippen der Leiche versiegelt, und daß sie sich in etwas gefangen hat, was wie eine Notiz aussieht, die der Leiche in den Mund gesteckt wurde.~ */
  IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
~ THEN REPLY #34954 /* ~Versuch, die Notiz herauszuziehen.~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34957 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34958 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 4
  IF ~~ THEN REPLY #34959 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #34962 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34955 /* ~Die Notiz hat sich mit dem Blutsaft im Mund des Zombies vermischt. Wenn du versuchen würdest, das Papier durch die Kreuzstiche hindurchzuziehen, würde es das Papier zerfetzen. Wenn du die Leiche in Stücke hacken würdest, würde die Notiz wohl ebenfalls zerstört werden. Du mußt also einen behutsamen Weg finden, die Stiche aufzulösen, bevor du die Notiz entfernst.~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #34956 /* ~Schneid die Naht mit dem Skalpell durch.~ */ DO ~SetGlobal("1201_Note_Retrieved","GLOBAL",1)
GiveItemCreate("N1201",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 2
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #45122 /* ~"Hmmm. Es muß doch irgendwas geben, um diese Fäden zu durchtrennen..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34960 /* ~Geschickt schneidest du die Naht durch, die den Mund der Leiche versiegelte, und der Unterkiefer sackt herab. Vorsichtig nimmst du den Zettel aus dem Mund der Leiche... Obschon sich das Papier nicht im besten Zustand befindet, scheint der Text immer noch lesbar zu sein.

^NHINWEIS: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #34961 /* ~Untersuche die Leiche noch einmal.~ */ GOTO 5
  IF ~~ THEN REPLY #45123 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 5.0 5.1 5.2
  SAY #45124 /* ~Die milchig-weißen Augen dieser Leiche starren dich mit leerem Blick an.~ */
  IF ~~ THEN REPLY #45125 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 5.3
  SAY #45126 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #45127 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
~ THEN BEGIN 5 // from: 2.0
  SAY #45128 /* ~Die Zahl "1201" steht in Tinte auf der Stirn dieser Leiche. Sie sieht aus, als würde sie weinen, da die Tinte über die Augen, die Wangen und das Kinn hinuntergelaufen ist. Ihre Kinnlade hängt herab, und eine blutige Flüssigkeit tröpfelt ihr aus dem Mund.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45129 /* ~"Tut mir leid, wenn ich an dir rumschnipple.Wollt nur mal sehn, was du im Mund hast."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45130 /* ~"Tut mir leid, wenn ich an dir rumschnipple.Wollt nur mal sehn, was du im Mund hast."~ */ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45131 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45132 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 4
  IF ~~ THEN REPLY #45133 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45134 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
