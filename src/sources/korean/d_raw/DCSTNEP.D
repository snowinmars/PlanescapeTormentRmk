// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTNEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTNEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9789 /* ~당신 시야에 화려한 옷을 입은 잘생긴 젊은이가 들어온다. 그는 상당히 흥분한 듯하다. ~ */
  IF ~~ THEN REPLY #9790 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #9791 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9794 /* ~그는 당신 쪽으로 돌아서서 짜증스런 표정으로 당신을 바라본다. "비켜, 얼간아. 너같은 놈하고 할 이야기는 없어." 그는 다른 곳을 쳐다본다.~ */
  IF ~~ THEN REPLY #9797 /* ~"이것 보시오, 난 그냥 당신에게 한두 가지 물어보고 싶을 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #9798 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9799 /* ~그는 다시 당신 쪽으로 돌아선다. 그는 당신이 방해한 데 대해 상당히 화가 난 것 같다. "닥쳐. 나는 처형을 구경하려고 하는 데 당신은 말을 걸어 날 방해하는군. 이제 날 좀 가만히 내버려 둬." 그는 다시 등을 돌린다. ~ */
  IF ~~ THEN REPLY #9800 /* ~그의 어깨를 두드린다: "당신의 건방진 태도는 더 이상 못 참겠군. 질문에 대답하지 않으면 당신의 그 잘난 얼굴을 쑥밭으로 만들어 놓겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nephew_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #9804 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9805 /* ~그는 돌아서서 시뻘건 얼굴로 당신을 쳐다본다. "감히 그렇게는 못할 걸! 나는 다름 아닌..."~ */
  IF ~~ THEN REPLY #9806 /* ~중단시킨다: "난 당신이 레이디의 친척이라도 개의치 않소. 당신 주둥이에서 이제 나와야 할 말은 '어떻게 도와드릴까요?'가 되어야 할 거요."~ */ GOTO 4
  IF ~~ THEN REPLY #9808 /* ~중단시킨다: "관두시오. 당신은 그럴 가치도 없으니까."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9810 /* ~청년은 당장이라도 폭발할 듯하다. 그는 재빨리 주변을 둘러보나 그를 동정하는 사람은 아무도 없다. "내가 어-어떻게 당신을 도와 드리면 되겠소?" ~ */
  IF ~~ THEN REPLY #9812 /* ~"보시오... 자, 그건 그렇게 어렵지 않았소, 안 그렇소? 당신에게 질문할 것이 좀 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #9814 /* ~En souriant : "당신 얼굴에 나타난 굴욕감만 가지고도 충분하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 9.0 11.0 12.0
  SAY #9815 /* ~"듣고 있소."~ */
  IF ~~ THEN REPLY #9817 /* ~"무슨 일이 벌어지고 있는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #9818 /* ~"누가 이 곳의 실력자요?"~ */ GOTO 8
  IF ~~ THEN REPLY #9820 /* ~"난 어떤 디바를 찾고 있소. 그가 이 곳 어딘가에 있다는 얘기를 들었소."~ */ GOTO 11
  IF ~~ THEN REPLY #9821 /* ~"새로운 소식이나 흥미거리는?"~ */ GOTO 12
  IF ~~ THEN REPLY #9822 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9823 /* ~"간단한 처형일 뿐이오. 그게 전부요."~ */
  IF ~~ THEN REPLY #9825 /* ~"그는 어떤 죄를 지었소?"~ */ GOTO 7
  IF ~~ THEN REPLY #9826 /* ~"알겠소. 그럼 다음 질문을 하겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #9827 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9829 /* ~"모르겠소. 행정부 사무실에 가서 물어보시오."~ */
  IF ~~ THEN REPLY #9831 /* ~"좋소. 그렇게 하리다. 당신에게 다른 것에 대해 좀 물어보겠소."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #9833 /* ~그는 사악한 미소를 짓는다. "그건 바로 내 아저씨인 토버스 길재프요."~ */
  IF ~~ THEN REPLY #9836 /* ~"그 능글맞은 웃음을 당장 그만두지 않으면 내가 그렇게 하도록 만들어 주겠소."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #9838 /* ~미소는 금새 사라진다. 그는 아무 말도 하지 않고 당신을 노려본다.~ */
  IF ~~ THEN REPLY #9839 /* ~"훨씬 낫군. 당신에게 질문할 것들이 더 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #9841 /* ~"당신과 얘기하는 데는 이제 질렸소. 안녕히 계시오."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #9843 /* ~"당신도 안녕히 계시오. 나는 내 아저씨에게 당신 얘기를 하겠소..." 그는 시선을 군중에게로 돌린다.~ */
  IF ~~ THEN REPLY #9845 /* ~"당신이 그렇게 하시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #9846 /* ~그는 경멸하는 눈초리로 당신을 본다. "흥. 커스트에 디바라. 매일 볼 수 있는 건 아니군. 당신이 착각을 했던지 아니면 당신은 돌았소."~ */
  IF ~~ THEN REPLY #9847 /* ~"좋소, 다음 질문."~ */ GOTO 5
  IF ~~ THEN REPLY #9848 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #9849 /* ~그는 어깨를 으쓱한다. "내가 생각할 수 있는 한 없소."~ */
  IF ~~ THEN REPLY #9850 /* ~"알겠소. 다른 것에 대해서도 얘기해 주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #9851 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
