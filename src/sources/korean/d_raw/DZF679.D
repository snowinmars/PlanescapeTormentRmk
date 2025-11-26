// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF679.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF679~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35178 /* ~이것은 고령의 노파의 좀비인 것 같다. 향료의 냄새, 꿰맨 입술, 그리고 오른쪽 볼에 새긴 "679"란 번호만 제외한다면 그녀의 죽기 전 모습도 지금과 별로 다르지 않았을 것 같다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35179 /* ~"그래... 나중에 다른 약속이라도 있소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35196 /* ~"그래... 나중에 다른 약속이라도 있소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35197 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35198 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35203 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 354
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35204 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35205 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35206 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35207 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35208 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35180 /* ~시체는 계속 당신을 쳐다본다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35181 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35194 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35195 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35199 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35200 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35201 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35202 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35209 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
END
