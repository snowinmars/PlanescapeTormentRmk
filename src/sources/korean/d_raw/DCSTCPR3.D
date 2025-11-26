// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10089 /* ~당신 앞에 있는 여자는 싸구려 옷을 입고, 싸구려 향수를 뿌렸으며, 가식적인 미소를 짓고 있다. 그녀는 당신의 시선을 눈치채고 미소짓는다. ~ */
  IF ~~ THEN REPLY #10090 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #10091 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10092 /* ~그녀는 당신에게 다가와 한 손은 당신은 어깨에 얹고 다른 손은 당신 등의 허리 부분에 갖다 댄다. 그녀는 미소짓는다, 그리고 당신 어깨에서 시작하여 팔을 따라 내려가면서 당신 몸을 천천히 쓰다듬는다. "당신은 정말 강하군요. 나는 자신이 원하는 것을 자기 힘으로 취할 수 있는 그런 남자가 좋아요" 그녀는 갑자기 자기 몸을 당신에게 갖다 댄다. "말해주세요... 당신은 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #10093 /* ~"어... 몇 가지 질문에 대한 답을 원할 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #10094 /* ~"관두시오. 이만 실례해야겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10095 /* ~그녀는 당신 눈을 쳐다보며 한층 더 깊게 미소짓는다. "난 여기 얘기하러 온 게 아니에요. 당신은 정말 그걸 원하시나요?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10096 /* ~이 여자는 너무 공격적이다. 뭔가 이상하다.~ */ GOTO 3
  IF ~  PartyGoldGT(10)
~ THEN REPLY #10097 /* ~"글쎄... 약간의 오락을 즐길 수도 있겠지."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10098 /* ~"글쎄... 약간의 오락을 즐길 수도 있겠지."~ */ GOTO 10
  IF ~~ THEN REPLY #10099 /* ~"관두시오. 그만 가봐야겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10100 /* ~당신은 그녀에게 뭔가 이상한 점이 있다고 생각하고 그녀를 밀친다. 그러자 당신은 옆구리에서 무언가 당겨지는 것이 느낀다. 아래를 내려다 보자 그녀의 *빈* 손이 당신 지갑에서 나오는 것이 보인다. 이제 그녀는 빨리 떠나려는 듯 당신으로부터 물러선다. ~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10101 /* ~그녀를 잡는다.~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #10102 /* ~그녀를 잡는다.~ */ GOTO 9
  IF ~~ THEN REPLY #10103 /* ~그녀를 그냥 보내준다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10104 /* ~당신은 민첩하게 그녀의 손목을 잡는다. 그녀는 절박하게 당신 손을 뿌리치고 도망치려고 한다. "날 보내 줘, 이 얼간아! 아니면 경비병들을 부를 테니!"~ */
  IF ~~ THEN REPLY #10105 /* ~"그럼 어디 비명을 질러 보시지. 당신은 사람들이 도착하기도 전에 시체가 될 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pros3_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #10106 /* ~"그럼 어디 비명을 질러 보시지. 이 도시 사람들이 신경을 쓸 것 같소?"~ */ GOTO 5
  IF ~~ THEN REPLY #10107 /* ~그녀를 그냥 보내준다.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #10108 /* ~그녀는 당신을 잠시 뚫어지게 쏘아본 후 저항하는 것을 멈춘다. "제발 날 보내 주세요 당신은 내가 훔치기 전에 날 잡았잖아요."~ */
  IF ~~ THEN REPLY #10109 /* ~"가진 돈을 다 주면 보내주지."~ */ GOTO 6
  IF ~~ THEN REPLY #10110 /* ~"좋소, 하지만 다시는 이 부근에서 얼쩡거리지 마시오. 알겠소?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10111 /* ~그녀는 고개를 끄덕이고 자신의 지갑에 손을 넣는다. 그녀는 소량의 동전을 꺼내 당신에게 내놓는다. "제발... 만약 당신이 내 돈을 가져가면 난 제대로 먹을 수조차 없을 거예요. 제발 날 그냥 보내 주세요."~ */
  IF ~~ THEN REPLY #10112 /* ~돈을 받은 후 그녀를 보내준다. ~ */ DO ~GivePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #10113 /* ~Prends l'argent et tue-la.~ */ DO ~GivePartyGold(10)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10114 /* ~돈을 받은 후 그녀를 죽인다. ~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10115 /* ~당신을 돈을 받아 주머니에 넣는다. 그녀는 잠시 당신을 쳐다보다가 돌아서서 천천히 걸어간다. ~ */
  IF ~~ THEN REPLY #10116 /* ~그녀를 그냥 보내준다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.2
  SAY #10117 /* ~당신은 그녀를 그냥 보내 준다. 그녀는 잠시 당신을 쳐다본 후 힘없이 미소짓는다. "고마워요." 그녀는 돌아서서 천천히 걸어간다.~ */
  IF ~~ THEN REPLY #10118 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #10119 /* ~당신은 그녀의 손목을 잡으려 하나 그녀는 민첩하게 피한다. 그녀는 화급히 뒤로 물러선 후, 도망치기 위해 돌아선다.~ */
  IF ~~ THEN REPLY #10120 /* ~그녀를 공격한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10121 /* ~그녀를 그냥 보내준다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.2
  SAY #10122 /* ~그녀는 당신을 놔준 후, 한 걸음 물러서서 미소를 짓는다. "미안해요. 생각을 바꿨어요. 안녕히 계세요" 그녀는 돌아서서 떠난다. ~ */
  IF ~~ THEN REPLY #10123 /* ~그녀를 그냥 보내준다.~ */ EXIT
END
