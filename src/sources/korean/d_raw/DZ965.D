// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ965~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~이 시체는 삼각형을 그리며 움직이고 있다. 시체는 삼각형의 한 모퉁이에 도달하면 일단 잠시 멈춘다, 그리고 방향을 바꾸어 다음 모퉁이로 향한다. 그것의 해골 옆머리에는 "965"라는 문신이 새겨져 있다. 당신이 다가가자 시체는 걸음을 멈추고 당신을 쳐다본다.~ */
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
  SAY #34922 /* ~이 시체는 삼각형을 그리며 움직이고 있다. 시체는 삼각형의 한 모퉁이에 도달하면 일단 잠시 멈춘다, 그리고 방향을 바꾸어 다음 모퉁이로 향한다. 그것의 해골 옆머리에는 "965"라는 문신이 새겨져 있다. 당신이 다가가자 시체는 걸음을 멈추고 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #34923 /* ~"그런데... 당신은 왜 삼각형을 그리며 걷는 거요?"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34927 /* ~시체는 당신을 멍하니 쳐다본다.~ */
  IF ~~ THEN REPLY #34928 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END
