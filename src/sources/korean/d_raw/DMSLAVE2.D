// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37792 /* ~초라한 옷을 입은 약간 살찐 노인이 보인다. 그는 걱정스러운 표정으로 계속 주위를 두리번거리고 있다. 당신은 그가 숨을 거칠게 쉬며 땀을 심하게 흘리고 있다는 사실을 눈치챈다.~ */
  IF ~~ THEN REPLY #37804 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37805 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37793 /* ~당신이 인사를 하자 그는 깜짝 놀라 걱정스러운 표정으로 당신을 본다. "무슨 일이오?" 당신이 때릴까봐 무서운 듯 그는 몸을 움츠린다. "내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #37806 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37807 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37794 /* ~"질문?" 그는 고개를 젓기 시작한다. "당신은... 상품을 살펴보려고 온 게 아니오?" 이의 이마에서 땀이 흘러내린다.~ */
  IF ~~ THEN REPLY #37809 /* ~"무슨 상품 말이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #37810 /* ~"나는 내 질문에 대한 답을 원할 뿐이오..."~ */ GOTO 9
  IF ~~ THEN REPLY #37812 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37795 /* ~그는 두려워하는 표정으로 당신을 본다. "나... 당신은 하인을 사러 온 게 아니오? 그의 호흡은 한층 거칠어진다. ~ */
  IF ~~ THEN REPLY #37813 /* ~"그렇소."~ */ GOTO 4
  IF ~~ THEN REPLY #37815 /* ~"아니오."~ */ GOTO 6
  IF ~~ THEN REPLY #37816 /* ~"당신은 판매 대상이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #37817 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #37796 /* ~그는 걱정스러운 얼굴로 당신을 조심스레 본다. 당신 몸의 흉터들을 보더니 그는 땀을 더 심하게 흘리기 시작한다. "나.. 나는 당신 같은 사람에게 어울리는 하인이 절대 아니오." 그는 당신을 정면으로 본다. ~ */
  IF ~~ THEN REPLY #37818 /* ~"오, 그건 무엇 때문이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #37819 /* ~"그래, 난 당신이 옳다고 생각하오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37797 /* ~그는 침을 꿀꺽 삼킨다, 그리고 그의 손은 떨리기 시작한다. "나는 주로 앉아서 생활했소. 하지만 당신은... 활발하게 움직이는 사람 같소. 나는 당신에게 쓸모가 없을 거요..." 그는 걱정스러운 표정으로 숨을 더 거칠게 쉬고 있다. ~ */
  IF ~~ THEN REPLY #37820 /* ~"그래, 난 당신이 옳다고 생각하오."~ */ GOTO 6
  IF ~~ THEN REPLY #37821 /* ~"아니, 당신은 잘 해낼 것 같소."~ */ DO ~Kill(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1 5.0 8.1
  SAY #37798 /* ~그는 안도한 듯 미소를 짓는다. "그럼 안녕히 가시오." 그는 고개를 돌린다.~ */
  IF ~~ THEN REPLY #37822 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #37823 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37800 /* ~그는 당신을 잠시 쳐다본다, 그리고 그의 양손은 몹시 떨리기 시작한다. 그는 입을 열어 뭐라고 하려고 하나 말이 나오지를 않는다. 그는 가슴을 움켜쥐고 바닥에 쓰러지면서 놀라움으로 눈이 휘둥그레진다.~ */
  IF ~~ THEN REPLY #37824 /* ~아무도 눈치채기 전에 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #37801 /* ~그는 고개를 끄덕인다. "그렇소. 여기 있는 우리들은 가벼운 죄를 지은 죄수들이오. 우리에 대한 형벌은 죄질에 따라 일정 기간 동안 노예로서 봉사하는 것이오. 혹시 하인을 사러 오셨소?"~ */
  IF ~~ THEN REPLY #37825 /* ~"그렇소."~ */ GOTO 4
  IF ~~ THEN REPLY #37826 /* ~"아니오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 6.0 10.0
  SAY #37802 /* ~그는 고개를 젓는다, 그리고 슬픈 표정으로 당신을 본다. "난 당신 질문에 대답할 능력이 없소. 그러니 날 그냥 내버려 두시오." 그는 고개를 돌린다.~ */
  IF ~~ THEN REPLY #37827 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37803 /* ~초라한 옷을 입은 약간 살찐 노인이 보인다. 그는 걱정스러운 표정으로 계속 주위를 두리번거리고 있다. 그는 여전히 숨을 거칠게 쉬며 땀을 심하게 흘리고 있다. "또 왔소? 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #37828 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #37829 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
