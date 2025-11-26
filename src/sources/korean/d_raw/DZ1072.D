// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1072.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1072~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35114 /* ~이 시체로부터 포름알데히드의 냄새가 유달리 강하게 난다... 최근에 방부제를 뿌린 듯하며, 그렇게 한 데는 그럴 만한 이유가 있다. 이 시체는 부패가 상당히 진행된 상태이기 때문이다. 그녀의 턱은 이미 없어졌으며, 그녀의 해골로부터 살점이 일부 떨어져 나간 탓에 뼈에 새겨진 "1072"라는 번호가 보인다.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35115 /* ~"이 좀비에게도 전성 시대가 있었겠지...~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35132 /* ~"이 좀비에게도 전성 시대가 있었겠지...~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35133 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35134 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35139 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 346
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35140 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35141 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35142 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35143 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35144 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35116 /* ~시체는 당신 목소리에 아무런 반응도 하지 않는다. 턱이 없기 때문인지도 모르겠다. 아니면 아무런 할 말이 없기 때문일 수도 있다. ~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35117 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35130 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35131 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35135 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35136 /* ~"그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35137 /* ~"그럼 안녕히 계시오."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35138 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35145 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
END
