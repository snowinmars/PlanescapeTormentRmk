// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM965~

IF ~  NearbyDialog("Dmorte")
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~이 시체는 삼각형을 그리며 움직이고 있다. 시체는 삼각형의 한 모퉁이에 도달하면 일단 잠시 멈춘다, 그리고 방향을 바꾸어 다음 모퉁이로 향한다. 그것의 해골 옆머리에는 "965"라는 문신이 새겨져 있다. 당신이 다가가자 시체는 걸음을 멈추고 당신을 쳐다본다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 477
END

IF ~  !NearbyDialog("Dmorte")
~ THEN BEGIN 1 // from:
  SAY #34922 /* ~이 시체는 삼각형을 그리며 움직이고 있다. 시체는 삼각형의 한 모퉁이에 도달하면 일단 잠시 멈춘다, 그리고 방향을 바꾸어 다음 모퉁이로 향한다. 그것의 해골 옆머리에는 "965"라는 문신이 새겨져 있다. 당신이 다가가자 시체는 걸음을 멈추고 당신을 쳐다본다.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34923 /* ~"그런데... 당신은 왜 삼각형을 그리며 걷는 거요?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45070 /* ~"그런데... 당신은 왜 삼각형을 그리며 걷는 거요?"~ */ GOTO 2
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45071 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 2
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45072 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 3
  IF ~~ THEN REPLY #45073 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #45074 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34927 /* ~시체는 당신을 멍하니 쳐다본다.~ */
  IF ~~ THEN REPLY #34928 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #45069 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
  IF ~~ THEN REPLY #45075 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END
