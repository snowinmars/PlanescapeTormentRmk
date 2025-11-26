// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHSOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHSOL~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #2917 /* ~이 사내의 피부는 엷은 황색이며 귀는 뾰족하다. 그의 눈은 작은 검은색 돌과 흡사하며, 그는 에나멜로 정교하게 채색된 유연성 있는 사슬갑옷을 입고 있다. 그는 당신이 다가오자 의심스러운 눈초리를 바라보며 손을 검의 손잡이에 갖다 댄다. 그는 아무 말도 하지 않는다. ~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #2918 /* ~"안녕하시오, 칼을 울리는 자여."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 2
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44575 /* ~"안녕하시오, 영예로운 기스양키."~ */ GOTO 3
  IF ~~ THEN REPLY #44576 /* ~"당신에게 몇 가지 질문을 하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #44578 /* ~"미안하오, 사람을 착각한 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #44581 /* ~"나는 '사람'이 아닌 자와는 얘기하지 않소. 우리와 대화를 하고 싶으면 저기 있는 이'민과 얘기하시오." 당신을 계속 당신을 감시한다."~ */
  IF ~~ THEN REPLY #44582 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #44584 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #44585 /* ~그는 눈깜짝할 사이에 칼을 뽑아 든다. "어디 기스저라이 개들이 하는 식으로 나를 불러 보아라. 사과하지 않으며 널 죽이겠다."~ */
  IF ~~ THEN REPLY #44587 /* ~"사과? 당신에게? 어림없소."~ */ GOTO 4
  IF ~~ THEN REPLY #44589 /* ~"미안하오, 난 당신이 기스저라이인줄 알았소."~ */ GOTO 4
  IF ~~ THEN REPLY #44591 /* ~"사과하겠소."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #44592 /* ~그는 머리를 기울이나 그는 여전히 손을 칼자루에서 놓지 않고 있다.~ */
  IF ~~ THEN REPLY #44593 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #44595 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 5.1 6.0
  SAY #44597 /* ~숨을 들이마시는 소리와 함께 그가 공격한다!~ */
  IF ~~ THEN REPLY #44599 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44600 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 3.0
  SAY #44602 /* ~"나는 질문에 대답하지 않소. 나는 기스양키 기사요. 나는 행동으로 말하오. 이'민과 얘기하든지 아니면 기스양키와 얘기할 생각을 하지 마시오."~ */
  IF ~~ THEN REPLY #44604 /* ~"이'민? 그렇게 하리다. 그는 어디 있소?"~ */ GOTO 7
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44678 /* ~"오, 당신은 기스양키요? 당신 주변에서는 일리티드의 악취가 나는 것 같소. 당신네들의 나약한 혈통 때문인가?"~ */ GOTO 4
  IF ~~ THEN REPLY #44679 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #44680 /* ~"더 이상 내 인내심을 시험하지 말고 당장 떠나시오."~ */
  IF ~~ THEN REPLY #44681 /* ~"물어볼 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #44682 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #44683 /* ~그는 당신을 흘긋 본다. "그는 당신이 직접 찾으시오. 당장 떠나시오. 더 이상 내 인내심을 이런 식으로 시험하지 마시오." ~ */
  IF ~~ THEN REPLY #44684 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
~ THEN BEGIN 8 // from:
  SAY #44685 /* ~이 사내는 창백한 누런 피부와 매우 뾰족한 귀를 가지고 있다. 그의 눈은 작고 검은 돌 같으며, 그는 에나멜로 공들여 칠한 유연한 사슬갑옷을 입고 있다. 그는 다콘을 발견하자 마자 칼을 뽑아 든다. "기스저라이 개야! 와서 내 은제 칼의 맛을 보아라!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 159
END

IF ~~ THEN BEGIN 9 // from:
  SAY #44686 /* ~"우리들 사이에 끼어들겠다는 건가, 인간? 그러면 너도 죽을 것이다." 그는 당신을 향해 돌격한다.~ */
  IF ~~ THEN REPLY #44687 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44688 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44689 /* ~두 기스는 서로를 공격한다. ~ */
  IF ~~ THEN REPLY #44690 /* ~기스양키를 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44691 /* ~그들이 싸우도록 내버려 둔다.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
