// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ965~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~Diese Leiche trampelt einen dreieckigen Pfad entlang. Wenn sie eine der Ecken des Dreiecks erreicht, hält sie kurz inne, dreht sich dann um, und torkelt zur nächsten Ecke. Auf die Seite ihres Schädels ist "965" tätowiert. Als du herankommst, hält sie an und starrt dich an.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34921 /* ~~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34924 /* ~~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34925 /* ~~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34926 /* ~~ */ GOTO 2
  IF ~~ THEN REPLY #34929 /* ~~ */ EXIT
  IF ~~ THEN REPLY #34930 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34922 /* ~Diese Leiche trampelt einen dreieckigen Pfad entlang. Wenn sie eine der Ecken des Dreiecks erreicht, hält sie kurz inne, dreht sich dann um, und torkelt zur nächsten Ecke. Auf die Seite ihres Schädels ist "965" tätowiert. Als du herankommst, hält sie an und starrt dich an.~ */
  IF ~~ THEN REPLY #34923 /* ~"Also... Warum läufst du immer im Dreieck?"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34927 /* ~Die Leiche starrt dich verständnislos an.~ */
  IF ~~ THEN REPLY #34928 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
