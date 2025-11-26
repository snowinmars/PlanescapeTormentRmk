// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48800 /* ~어떤 남자가 보인다. 그는 건물 안을 들여다 보고 있는 듯하다.~ */
  IF ~~ THEN REPLY #48801 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #48802 /* ~그를 그냥 내버려 두고 떠난다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48803 /* ~"또 당신이군... 이 곳은 내꺼라고 했잖아. 내가 험하게 나오기 전에 어서 꺼져!"~ */
  IF ~~ THEN REPLY #48804 /* ~"어디 한 번 해보시오."~ */ GOTO 3
  IF ~~ THEN REPLY #48805 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48806 /* ~"이 곳은 내가 먼저 발견했어. 뭐가 신상에 좋은지 안다면 함부로 행동하지 않는 게 좋을 거야."~ */
  IF ~~ THEN REPLY #48807 /* ~"당신이 그것에 대해 뭘 어떻게 할 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48808 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48809 /* ~"이건 네가 자초한 일이야!"~ */
  IF ~~ THEN REPLY #48810 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
