// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMBIEW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMBIEW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #280 /* ~비틀거리는 시체는 계속 당신을 공허한 눈으로 바라본다. 그의 이마에는 번호가 새겨져 있으며 입은 꿰매져 있다. 그의 몸으로부터는 포름알데히드 냄새가 약간 난다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #282 /* ~"그래... 뭐 재미있는 일은 없소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #281 /* ~"그래... 뭐 재미있는 일이라도 있소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1160 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1345 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #1346 /* ~"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #1347 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #284 /* ~시체는 계속 당신을 바라본다. ~ */
  IF ~~ THEN REPLY #285 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #1159 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~~ THEN REPLY #1161 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END
