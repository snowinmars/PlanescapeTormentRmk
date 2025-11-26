// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM965~

IF ~  NearbyDialog("Dmorte")
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~Diese Leiche trampelt einen dreieckigen Pfad entlang. Wenn sie eine der Ecken des Dreiecks erreicht, hält sie kurz inne, dreht sich dann um, und torkelt zur nächsten Ecke. Auf die Seite ihres Schädels ist "965" tätowiert. Als du herankommst, hält sie an und starrt dich an.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 477
END

IF ~  !NearbyDialog("Dmorte")
~ THEN BEGIN 1 // from:
  SAY #34922 /* ~Diese Leiche trampelt einen dreieckigen Pfad entlang. Wenn sie eine der Ecken des Dreiecks erreicht, hält sie kurz inne, dreht sich dann um, und torkelt zur nächsten Ecke. Auf die Seite ihres Schädels ist "965" tätowiert. Als du herankommst, hält sie an und starrt dich an.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34923 /* ~"Also... Warum läufst du immer im Dreieck?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45070 /* ~"Also... Warum läufst du immer im Dreieck?"~ */ GOTO 2
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45071 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 2
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45072 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 3
  IF ~~ THEN REPLY #45073 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45074 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34927 /* ~Die Leiche starrt dich verständnislos an.~ */
  IF ~~ THEN REPLY #34928 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #45069 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #45075 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
