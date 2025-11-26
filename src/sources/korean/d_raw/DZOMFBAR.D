// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2574 /* ~이 여자 좀비는 삼베로 만든 셔츠를 입고 있으며, 그것은 각종 음식 및 와인 때로 더러워져 있다. 그녀의 입술은 꿰매져 있으며, 그녀의 팔과 다리에는 붕대가 겹겹이 감겨져 있다. 붕대는 시체를 신선하게 보존하기 위해 방부제에 적신 듯하다... 결과로서 시체의 썩는 냄새는 같을 정도로 역겨운 식초 냄새로 대체되었다.~ */
  IF ~~ THEN REPLY #2575 /* ~"그래... 나중에 다른 약속이라도 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2576 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2577 /* ~"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 120
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2578 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7047 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7048 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7049 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7050 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2579 /* ~좀비는 계속 당신을 바라본다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2580 /* ~"좋소 그럼. 당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7051 /* ~"좋소 그럼. 당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7052 /* ~"좋소 그럼. 당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2581 /* ~좀비는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2582 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7053 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7054 /* ~시체를 그냥 내버려 두고 떠난다.~ */ EXIT
END
