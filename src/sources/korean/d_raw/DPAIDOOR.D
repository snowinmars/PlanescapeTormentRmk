// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAIDOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAIDOOR~

IF ~  GlobalLT("Know_Painted_Door","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #47816 /* ~처음 보았을 때는 문이라고 생각되었던 것은 실제로는 그림이다. 화가는 위쪽의 아치의 그림자들과 질감에 의한 효과를 교묘하게 이용하여 문이 진짜처럼 보이게 만들었다. ~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47817 /* ~"정말로 이게 문이오, 안나?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47818 /* ~눈을 감고 문을 연다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 1
  IF ~~ THEN REPLY #47819 /* ~문을 살펴본다.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ GOTO 2
  IF ~~ THEN REPLY #47820 /* ~"문"을 그냥 내버려 둔다.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1
  SAY #47822 /* ~당신은 눈을 감는다, 그리고 문을 향해 손을 내밀어 더듬어 본다... 놀랍게도 손잡이가 잡힌다. 약간 당기니까 문이 열린다. 건물 안으로 통하는 복도와 건물 안에서 누군가 멀리서 울부짖는 소리가 들려 오고 있다.~ */
  IF ~~ THEN REPLY #47823 /* ~"자 이제 돌격할 시간이군..."~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",3)
SetDoorLocked("ar0400d1",FALSE)
OpenDoor("ar0400d1")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #47824 /* ~화가의 뛰어난 솜씨를 제외한다면, 이 그림에는 남다른 점이 없다. '문'은 거친 돌 벽 위에 그려져 있으며, 나무처럼 보이는 그림 아래서 돌과 모르타르의 감촉이 느껴진다. ~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47825 /* ~"정말로 이게 문이오, 안나?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47826 /* ~눈을 감고 문을 연다.~ */ GOTO 1
  IF ~~ THEN REPLY #47827 /* ~"문"을 그냥 내버려 둔다.~ */ EXIT
END
