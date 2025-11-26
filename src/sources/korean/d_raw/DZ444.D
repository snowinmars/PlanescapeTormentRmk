// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ444.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ444~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35210 /* ~이 여자 시체의 몰골은 말이 아니다. 방부제로 처리된 그녀의 딱딱한 피부 전체를 쥐에게 물린 것으로 추정되는 수백 개의 작은 상처가 뒤덮고 있다. 상처 주변이 오그라든 것으로 미루어 볼 때 상처들은 시체가 처리되기 전에 생긴 듯하다. 그녀의 입술은 꿰매져 있으며, 얼굴에는 "444"란 번호가 흑청색 잉크로 적혀 있다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35211 /* ~"그래... 나중에 다른 약속이라도 있소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35228 /* ~"그래... 나중에 다른 약속이라도 있소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35229 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35230 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35235 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 358
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35236 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35237 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35238 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35239 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35240 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35212 /* ~시체는 계속 당신을 쳐다본다.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35213 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35226 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35227 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35231 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35232 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35233 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35234 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35241 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
END
