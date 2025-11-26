// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORFIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORFIN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57994 /* ~더러운 작업복을 입은 건장한 청년이 보인다. 그는 여러 상자의 내용물을 체크하며, 그것을 목록과 대조하고 있다. ~ */
  IF ~~ THEN REPLY #57996 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57998 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58000 /* ~그는 잠깐 머뭇거린 후 돌아서서 당신을 마주본다. "뭐요? 내게 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #58001 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58007 /* ~"아니, 필요없소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #58009 /* ~그는 재빨리 주위를 둘러본다. "좋소..."~ */
  IF ~~ THEN REPLY #58010 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #58012 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #58014 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #58016 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 커스트에 있다고 들었소."~ */ GOTO 9
  IF ~~ THEN REPLY #58017 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58019 /* ~"나는 도휜이오. 나는 이 창고의 노동자들 중 하나요." 그는 다정하게 미소를 짓는다.~ */
  IF ~~ THEN REPLY #58021 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58022 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58024 /* ~"재고 목록 작성." 그는 눈살을 찌푸린다. "이번 달에만 세 번째요."~ */
  IF ~~ THEN REPLY #58025 /* ~"그게 뭐 이상하기라도 한 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #58027 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58029 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58030 /* ~그는 한숨을 쉰다. "아니, 내 보스는 정말 악질이오. 그는 우리에게 쉴 틈이라곤 거의 주질 않소." 그는 어깨를 으쓱한다. "먹고 살려면 어쩔 수가 없는 일이지만."~ */
  IF ~~ THEN REPLY #58031 /* ~"그가 그토록 당신을 혹사시킨다면 왜 그를 위해 일을 하는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #58033 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58034 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58035 /* ~그는 가까이 다가와 속삭인다. "우리는 일주일에 하루씩 유급 휴일이 있소. 그것 때문에 불평을 않는 거요~ */
  IF ~~ THEN REPLY #58037 /* ~"흥미롭군. 그가 그렇게 하는 데는 무슨 이유라도 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #58038 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58040 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58042 /* ~그는 어깨를 으쓱한다. "모르겠소, 그리고 신경 쓸 생각도 없소. 어쨌든 우린 고역으로부터의 휴식을 얻는 거니까.~ */
  IF ~~ THEN REPLY #58043 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58044 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58045 /* ~그는 어리둥절한 표정으로 당신을 쳐다보더니 어깨를 으쓱한다. "여긴 그냥 창고요. 일반적인 물건들을 저장하오, 무기, 도구, 식품 등등..."~ */
  IF ~~ THEN REPLY #58046 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58048 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58049 /* ~"정말이오?" 그는 놀란 듯하다. "나로서는 상상도 못하겠소... 내 말은 왜 디바가 이런 곳에 오겠느냐는 거요?" 그는 잠시 멈추고 웃음을 터뜨린다. "우리에게 정의의 심판을 내리려고 왔다면 모를까."~ */
  IF ~~ THEN REPLY #58051 /* ~"무슨 뜻이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #58052 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58054 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58055 /* ~"커스트 시민들은 자비나 관용하고는 거리가 먼 사람들이오. 디바는 이런 곳에는 과분하오. 신에 의해 파견되기 전에 디바가 여기 올 이유는 없소. 그리고 설령 온다고 하더라도 아마 천벌을 내리기 위해 올 거요."~ */
  IF ~~ THEN REPLY #58057 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58058 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58059 /* ~창고지기 도휜이 보인다. 그는 고개를 끄덕여 인사한다. "다시 만나 반갑소, 친구."~ */
  IF ~~ THEN REPLY #58062 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58064 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
