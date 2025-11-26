// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF594.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF594~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35018 /* ~이 비틀거리는 시체는 당신을 멍한 눈으로 쳐다보고 있다. 그녀의 피부는 종이처럼 얇아 마치 안개처럼 느껴진다... 누가 그녀의 뼈대를 거미줄로 만든 천으로 감은 듯하다. 그녀의 이마에는 "594"란 번호가 목탄으로 새겨져 있다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35019 /* ~"그래... 나중에 다른 약속이라도 있소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35036 /* ~"그래... 나중에 다른 약속이라도 있소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35037 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35038 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35043 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 334
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35044 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35045 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35046 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35047 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35048 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35020 /* ~시체는 계속 당신을 쳐다본다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35021 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35034 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35035 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35039 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35040 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35041 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35042 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35049 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
END
