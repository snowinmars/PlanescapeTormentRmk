// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~당신이 다가가자 이 시체는 동작을 멈추고 당신을 공허한 눈으로 바라본다. 그의 이마에는 "782" 이라고 새겨져 있으며, 그의 입은 꿰매져 있다. 그의 몸으로부터는 포름알데히드 냄새가 약간 난다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24709 /* ~"나는 열쇠를 찾고 있소... 혹시 당신이 가지고 있소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24712 /* ~"나는 열쇠를 찾고 있소... 혹시 당신이 가지고 있소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24713 /* ~시체를 살펴 열쇠가 있는지 본다.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24714 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~~ THEN REPLY #24718 /* ~"나는 당신과 잭이라는 상인에 대해 얘기하고 싶소."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24710 /* ~시체는 아무런 응답을 하지 않는다.~ */
  IF ~~ THEN REPLY #24711 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24715 /* ~이 시체가 바로 열쇠를 가지고 있는 시체인 것 같다. 그는 열쇠를 왼손 엄지와 집게손가락으로 꽉 쥐고 있는데 경직되어 벌어질 생각을 하지 않는다. 열쇠를 빼내려면 시체의 손을 잘라야만 할 것 같다. ~ */
  IF ~~ THEN REPLY #24716 /* ~"난 그 열쇠가 필요하오, 시체... 어차피 당신은 이 세상에 오래 있을 것 같지는 않소."~ */ EXIT
END
