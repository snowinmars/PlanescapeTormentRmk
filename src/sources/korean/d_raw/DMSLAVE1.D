// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37758 /* ~슬픈 표정을 짓고 있는 남자가 보인다. 당신이 다가가자 그는 절망적인 표정으로 당신을 본다.~ */
  IF ~~ THEN REPLY #37770 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37771 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37759 /* ~그는 주위를 둘러보더니 당신을 쳐다본다. "뭔가 원하오"~ */
  IF ~~ THEN REPLY #37772 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37773 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37760 /* ~그는 고개를 젓는다. "난 당신의 바보 같은 질문에 대답할 입장이 아니오. 꺼지시오!"~ */
  IF ~~ THEN REPLY #37774 /* ~"여기서 대체 무슨 일이 벌어지고 있는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #37775 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37761 /* ~그는 당신을 노려본다. "여긴 경매 구획이야, 얼간아. 난 노예로 팔릴 신세라고! 그러니 당장 꺼져!."~ */
  IF ~~ THEN REPLY #37776 /* ~"왜 당신은 팔리는 신세가 된 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #37777 /* ~"'꺼져'가 무슨 뜻이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #37778 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 9.0
  SAY #37762 /* ~그는 화난 표정으로 당신을 본다. "난 어찌나 성격이 좋은지 내 자신을 노예로 팔아 돈을 버는게 좋겠다고 생각했다, 알겠냐? 자, 이제 그걸로 질문은 끝내라고, 이 미친 놈아!"~ */
  IF ~~ THEN REPLY #37779 /* ~"나는 당신이 팔리게 된 진짜 이유를 알고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #37780 /* ~"난 괜찮소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37763 /* ~그는 화를 더 내려다가 포기한다. "나는 어떤 얼간이를 찔렀소, 알겠소? 나는 술에 취했고 우리는 싸움을 했소, 그리고 나는 쉬브로 놈을 찔렀소." 그는 한숨을 쉰다. "그가 죽지 않은 건 정말 다행이오. 그랬다면 나는 감옥에 처박히는 신세가 되었을 거요."~ */
  IF ~~ THEN REPLY #37781 /* ~"'쉬브'가 뭐요?"~ */ GOTO 6
  IF ~~ THEN REPLY #37782 /* ~"감옥?"~ */ GOTO 7
  IF ~~ THEN REPLY #37783 /* ~"알겠소. 그럼 당신은 싸움을 했다고 노예로 필리게 된 거요?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37764 /* ~그는 당신을 보면서 눈살을 찌푸린다. "당신은 정말 무지몽매하군. 쉬브란 나이프를 가리키는 말이오!" 그는 당신으로부터 고개를 돌린다. "난 더 이상 당신 질문에 대답할 생각이 없으니 꺼지시오."~ */
  IF ~~ THEN REPLY #37784 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37765 /* ~그는 당신을 보면서 눈살을 찌푸린다. "그렇소, 감옥 말이오 그 곳에 가게 되면 인생의 상당 부분을 거기서 보내야 하며 그건 결코 유쾌한 일이 아니오. 노예 신세는 그만큼 나쁘지는 않으며, 그 기간 또한 짧소." 그는 당신으로부터 고개를 돌린다. "난 더 이상 당신 질문에 대답할 생각이 없으니 꺼지시오."~ */
  IF ~~ THEN REPLY #37785 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #37766 /* ~그는 당신을 보면서 눈살을 찌푸린다. "그렇소... 그 얼간이는 내 친구였기 때문에 날 고발하지는 않았소. 하지만 난 법정에서 재판을 받아야 했으며, 그 결과 이 구획으로 보내졌소. 그는 당신으로부터 고개를 돌린다. "난 더 이상 당신 질문에 대답할 생각이 없으니 꺼지시오."~ */
  IF ~~ THEN REPLY #37786 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #37767 /* ~그는 미소를 짓는다. "그건 일방통행인 전이문으로 들어가서 다시는 나오지 말란 뜻이오!"~ */
  IF ~~ THEN REPLY #37787 /* ~"알겠소. 그래, 왜 당신은 팔리는 신세가 된 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #37788 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37768 /* ~슬픈 표정을 짓고 있는 남자가 보인다. 당신이 다가가자 그는 절망적인 표정으로 당신을 본다. "젠장, 또 당신이군! 대체 어떻게 하면 날 그냥 내버려 두겠소?"~ */
  IF ~~ THEN REPLY #37789 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #37790 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37769 /* ~그는 화난 얼굴로 당신을 바라본다. "당신 질문에 대답할 생각은 없소. 꺼지시오!"~ */
  IF ~~ THEN REPLY #37791 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
