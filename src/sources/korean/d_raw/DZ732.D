// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ732.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ732~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6529 /* ~이 비틀거리는 시체는 입술만이 아니라 두 눈도 꿰매져 있으며, 이마에는 "732"이라는 번호가 새겨져 있다. 그것의 눈을 꿰매고 있는 실은 상당히 오래된 듯하다... 눈을 꿰맨 것이 죽기 전이었는지 아니면 죽은 후였는지 궁금하다.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6533 /* ~"당신에게서 그 책을 빼앗아 미안하오... 그냥 지나치기에는 너무 재미있어 보였소."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6532 /* ~"당신에게서 그 책을 빼앗아 미안하오... 그냥 지나치기에는 너무 재미있어 보였소."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6534 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6535 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6536 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #6537 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6530 /* ~시체는 계속 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #6538 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6531 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~~ THEN REPLY #6539 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
END
