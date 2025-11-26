// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3164 /* ~어울리지 않은 옷을 입은 청년이 보인다. 그는 당신이 다가가자 지루하다는 듯이 쳐다본다.~ */
  IF ~~ THEN REPLY #3165 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #9926 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9927 /* ~그는 당신 인사에 응답하기 전에 당신을 아래위로 쳐다본다. "당신도 안녕하시오, 친구. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #9928 /* ~"나는 당신에게 뭘 좀 물어보고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #9929 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9930 /* ~그는 한동안 당신을 바라본 후 킬킬대기 시작한다. "난 아무 것도 모르며, 아무 것도 보지 않고, 이무 것도 듣지 않소. 따라서 당신 질문에 대답할 수도 없소. 내가 당신을 해치기 전에 어서 꺼지시오."~ */
  IF ~~ THEN REPLY #9931 /* ~"간단한 질문 몇 개에 대답한다고 해서 당신에게 해가 될 건 없지. 어떻소?"~ */ GOTO 3
  IF ~~ THEN REPLY #9932 /* ~"만약 당신이 두들겨 맞아야만 대답을 하겠다면 어쩔 수가 없지."~ */ GOTO 4
  IF ~~ THEN REPLY #9933 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9934 /* ~그는 당신을 보며 인상을 찌푸린다. "당신에게 할 말은 없소. 이번이 당신이 무사히 떠날 마지막 기회요."~ */
  IF ~~ THEN REPLY #9935 /* ~"만약 당신이 두들겨 맞아야만 대답을 하겠다면 어쩔 수가 없지."~ */ GOTO 4
  IF ~~ THEN REPLY #9936 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9937 /* ~그는 당신의 흉터를 유심히 살피며 당신을 아래위로 쳐다본다, 그리고 나서 그는 호의적인 미소를 짓는다. "좋소, 당신은 쉽게 겁을 먹지 않는군. 당신과 같은 사람이라면 얘기가 통하지. 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #9938 /* ~"질문에 대한 답을 원할 뿐이오."~ */ GOTO 5
  IF ~~ THEN REPLY #9939 /* ~"신경 쓸 것 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0 7.1 8.0 9.1 10.1 11.0 12.1 13.0 14.0
  SAY #9940 /* ~그는 어깨를 으쓱한다. "물론이오. 질문을 하시오."~ */
  IF ~~ THEN REPLY #9941 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 커스트에 있다고 들었소."~ */ GOTO 6
  IF ~~ THEN REPLY #9942 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #9943 /* ~"누가 이 곳의 실력자요?"~ */ GOTO 12
  IF ~~ THEN REPLY #9944 /* ~"최근 이 도시에서는 어떤 일이 일어나고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #9945 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9946 /* ~그는 킬킬 웃는다. "그럴 리는 없소. 이 도시를 아예 말살할 생각이 아니라면 디바가 여기에 한 발짝이라도 들어올 가능성은 전무하오. 당신은 당신 시간만 허비하고 있는 거요."~ */
  IF ~~ THEN REPLY #9947 /* ~"알겠소. 또 다른 질문이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #9948 /* ~"무슨 뜻이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #9949 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #9950 /* ~그는 어깨를 으쓱한다. "어떤 작자들은 디바를 천사라고 부르오. 커스트는 '천사'가 있을 만한 도시가 아니오. 고리의 반대쪽이라면 모를까."~ */
  IF ~~ THEN REPLY #9951 /* ~"무슨 고리?"~ */ GOTO 8
  IF ~~ THEN REPLY #9952 /* ~"알겠소. 또 다른 질문이 있소."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #9953 /* ~"아웃터 플레인의 고리 말이오. 한쪽에는 질서, 다른 한쪽에는 혼돈, 그리고 그 사이에는 선과 악. 당신은 여기 온지 얼마 되지 않았소?" 그는 미심쩍은 눈으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #9954 /* ~"그렇다고 할 수 있소. 당신에게 다른 것에 대해 질문해야겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #9955 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #9956 /* ~그는 어깨를 으쓱하고 교활한 미소를 짓는다. "사람에 따라서는 꽤 좋은 곳일 수도 있소. 물론 당신이 누구며, 또 누구를 아는 가에 달렸지만."~ */
  IF ~~ THEN REPLY #9957 /* ~"당신 생각으로는 누구를 알아두는 게 좋을 것 같소?"~ */ GOTO 10
  IF ~~ THEN REPLY #9958 /* ~"좋소, 또 다른 질문이오."~ */ GOTO 5
  IF ~~ THEN REPLY #9959 /* ~"알겠소. 이만 실례하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9960 /* ~그는 잠시 생각한다. "당신같은 사람이라면 아마 배신자의 문에 관심이 있을 거요. 그 곳은 썩은 바스라는 사내가 운영하는 바요." 그는 당신을 보며 미소짓는다. "그에게 내가 소개했다고는 말하지 마시오."~ */
  IF ~~ THEN REPLY #9961 /* ~"그 장소는 어디에 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #9962 /* ~"알겠소. 또 다른 질문이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #9963 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #9964 /* ~그는 어깨를 으쓱한다. "정확히는 모르오. 아마 저쪽일 거요." 그는 당신 오른쪽을 가리킨다. "돌아다니다 보면 찾을 수 있을 거요."~ */
  IF ~~ THEN REPLY #9965 /* ~"좋소. 또 질문할 것이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #9966 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY #9967 /* ~"토버스 길재프. 그는 시 광장에 있는 행정부 사무실에 있소."~ */
  IF ~~ THEN REPLY #9968 /* ~"토버스에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #9969 /* ~"또 질문할 것이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #9970 /* ~"고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #9971 /* ~"나는 그와 만난 적도 없소. 만약 그가 이 도시를 통치하고 있지 않았다면, 아마 난 그의 이름도 몰랐을 거요." 그는 지루해 하는 것 같다. ~ */
  IF ~~ THEN REPLY #9972 /* ~"좋소. 내 질문에 대답해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #9973 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.3
  SAY #9974 /* ~그는 지루한 듯 주변을 흘긋 본다. "아무 것도 없소. 지금 이 도시는 상당히 평온하오."~ */
  IF ~~ THEN REPLY #9975 /* ~"알겠소. 또 질문할 것이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #9976 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END
