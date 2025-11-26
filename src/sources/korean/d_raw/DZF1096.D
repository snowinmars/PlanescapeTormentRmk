// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF1096.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF1096~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35082 /* ~이 여자 시체는 방안의 철판들 사이를 왔다갔다하고 있다. 그녀의 머리는 긴 변발로 매듭지어져 있으며, 그것은 그녀의 목을 마치 올가미처럼 감고 있다. 누군가가 그녀의 이마에 "1096"이란 번호를 스텐실로 새겨 놓았으며, 그녀의 입술은 꿰매져 있다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35083 /* ~"어... 참 예쁘게 땋은 머리군."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35100 /* ~"어... 참 예쁘게 땋은 머리군."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35101 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35102 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35107 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 342
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35108 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35109 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35110 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35111 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35112 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35084 /* ~시체는 반응하지 않는다. 당신 생각에 그녀는 당신이 여기 있다는 사실조차 인지하지 못하는 것 같다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35085 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35098 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35099 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35103 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35104 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35105 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35106 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35113 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
END
