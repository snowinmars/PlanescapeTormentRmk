// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ825.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ825~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24564 /* ~이 시체는 머리를 어깨 쪽으로 늘어뜨렸다 들어 올리는 것을 반복하고 있다... 목이 휜 각도로 볼 때 이 남자는 교수형을 당한 것 같다. 그의 머리 옆쪽에는 "825"란 번호가 칠해져 있다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24565 /* ~"나는 열쇠를 찾고 있소... 혹시 당신이 가지고 있소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24568 /* ~"나는 열쇠를 찾고 있소... 혹시 당신이 가지고 있소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24569 /* ~"그래... 뭐 재미있는 일은 없소?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24570 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 2
  IF ~~ THEN REPLY #24573 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ EXIT
  IF ~~ THEN REPLY #24574 /* ~시체를 살펴 열쇠가 있는지 본다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24566 /* ~이 시체는 대답은 하지 않고 바닥만 바라본다.~ */
  IF ~~ THEN REPLY #24567 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24571 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
  IF ~~ THEN REPLY #24572 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END
