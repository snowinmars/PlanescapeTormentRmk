// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHPATROL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHPATROL~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27619 /* ~적색의 갑옷을 입은 이 거한은 자리에 똑바로 서서 행인들을 유심히 살피고 있다. 당신은 그가 입고 있는 장식된 갑옷이 그가 이 도시의 경찰 역할을 하는 하모니움 소속 사관이라는것을 나타내고 있다는 사실을 희미하게나마 기억해낸다. ~ */
  IF ~~ THEN REPLY #27632 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #27620 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27621 /* ~말을 할 때도 그의 시선은 당신이 아니라 구의 주민들을 향하고 있다. "움직이시오."~ */
  IF ~~ THEN REPLY #27633 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #27634 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27622 /* ~아직도 그의 관심의 대부분이 통행인들에게 쏠려 있기는 하나, 그는 잠시 시간을 내서 당신을 똑바로 쳐다본다. "이 곳엔 당신이 관심을 가질 만한 것이 없소. 그만 가보시오."~ */
  IF ~~ THEN REPLY #27635 /* ~"몇 가지 질문에 대한 답을 듣고 싶을 뿐이오."~ */ GOTO 3
  IF ~~ THEN REPLY #27636 /* ~"나는 당신 도움이 필요하오..."~ */ GOTO 4
  IF ~~ THEN REPLY #27637 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27638 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27623 /* ~그는 고개를 젓는다. "그럼 시민들 중 한 사람에게 물어보시오. 나는 여기서 해야 할 일이 있소... 당신이나 다른 사람과 얘기를 하기 위해 그것을 소홀히 할 수는 없소. 그만 가보시오."~ */
  IF ~~ THEN REPLY #27639 /* ~"하지만 난 당신 도움이 필요하오..."~ */ GOTO 4
  IF ~~ THEN REPLY #27640 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27641 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #27624 /* ~그는 무기를 든다. "도움이 필요하오? 어떤 범죄가 저질러졌소?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27642 /* ~"아니오... 질문할 것들이 좀 있을 뿐이오."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27643 /* ~"아니오... 질문할 것들이 좀 있을 뿐이오."~ */ GOTO 6
  IF ~~ THEN REPLY #27644 /* ~"아니오, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27625 /* ~그는 한숨을 쉰다. "당신에게 질문하고 싶은 것들이 있다는 건 나도 알고 있소, 그리고 다른 장소나 시간에서였더라면 기꺼이 도왔을 거요. 하지만-" 그는 지나가는 어떤 행인을 의심에 찬 눈초리로 쳐다보느라 잠시 말을 멈춘다. 그리고 다시 당신 쪽으로 고개를 돌린다. "하지만 지금은 그럴 경황이 없으니... 그냥 떠나 주시오."~ */
  IF ~~ THEN REPLY #27645 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27646 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27626 /* ~"이봐, 얼간이, 내게는..." 그는 지나가는 어떤 행인을 의심에 찬 눈초리로 쳐다보느라 잠시 말을 멈춘다. 그리고 다시 당신 쪽으로 시선을 돌린다. "내게는 맡겨진 임무가 있어, 하지만 쓸데없는 질문만 하고 길이나 가르쳐 달라고 하는 미치광이와 얘기를 하다가는 할 일을 할 수가 없어. 그러니 그만 가봐."~ */
  IF ~~ THEN REPLY #27647 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27648 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0
  SAY #27627 /* ~그가 어깨를 으쓱하자 그의 갑옷에서 철커덩 소리가 난다. "여기 서 있는 건 당신 자유지만 법을 어기지는 마시오. 말썽이 생기기 전에 떠나는 게 신상에 좋을 거요. 잘 가시오."~ */
  IF ~~ THEN REPLY #27649 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27628 /* ~이 하모니움 사관은 말썽의 소지는 없는지 주의하며 주변의 거리와 사람들을 감시하고 있다. 이 사람을 전에 만난 적이 있다는 생각이 드나, 하모니움 사관들은 모두 큰 투구를 쓰고 동일한 갑옷을 입고 있기 때문에 구별하기 힘들다.~ */
  IF ~~ THEN REPLY #27650 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #27651 /* ~사관을 그냥 내버려 둔다.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27629 /* ~당신은 이 남자가 최근 당신을 잡으려고 혈안이 된 하모니움의 멤버임을 알아본다. 그는 아직 당신을 눈치채지 못한 것 같다. ~ */
  IF ~~ THEN REPLY #27631 /* ~"안녕하시오..."~ */ GOTO 10
  IF ~~ THEN REPLY #27652 /* ~그가 당신을 보기 전에 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27630 /* ~그의 투구의 틈새로 그의 눈이 휘둥그레지는 것이 보인다. "놈이다!" 그는 당신을 향해 돌격할 준비를 하며 고함을 지른다. "산 채로든 죽여서든 이 자를 잡아!"~ */
  IF ~~ THEN REPLY #27653 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
