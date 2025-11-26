// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20029 /* ~이 수척한 여인은 공포에 질린 표정으로 당신을 흘긋 본다, 그리고 당신이 미처 말을 꺼내기도 전에 도망친다.~ */
  IF ~~ THEN REPLY #20030 /* ~"그럼 안녕히 계시오..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20031 /* ~여자는 눈을 크게 뜨고 공포에 질린 표정으로 당신을 본다. "내게 가까이 오지 말아요, 그럼 다치지 않을 테니!"~ */
  IF ~~ THEN REPLY #20032 /* ~"진정하시오. 난 그냥 당신이 누군지 알고 싶었을 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #20033 /* ~"긴장을 푸시오. 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #20034 /* ~"당신은 뭘 두려워하는 거요?~ */ GOTO 5
  IF ~~ THEN REPLY #20035 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20036 /* ~"내가 누구냐고요?" 그녀는 씁쓸하게 웃는다. "차라리 모래알의 이름을 묻는 편이 날 걸요, 모래알이나 나나 그 중요성에 있어서는 매한가지니까."~ */
  IF ~~ THEN REPLY #20037 /* ~"그거 참 긍정적인 사고방식이군. 어쨌든 질문할 것들이 좀 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #20038 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20039 /* ~"계속하세요... 뭘 알고 싶은 거죠?"~ */
  IF ~~ THEN REPLY #20040 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #20041 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20042 /* ~"무엇을 두려워하는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #20043 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20044 /* ~"뭘 하고 있느냐고요? 이 곳 넝마주이 광장 지하에서 간신히 연명하고, 날 애초에 여기에 처넣은 자들을 피하고 있어요. 그게 바로 내가 하고 있는 일이에요." ~ */
  IF ~~ THEN REPLY #20045 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #20046 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20047 /* ~"난 당신이 파로드를 갈기갈기 찢어 죽인 괴물들 중 하나가 아닌지 확인하고 있을 뿐이에요."~ */
  IF ~~ THEN REPLY #20048 /* ~"괴물? 어떤 괴물 말이오?"~ */ GOTO 6
  IF ~~ THEN REPLY #20049 /* ~"파로드가 죽었소?"~ */ GOTO 6
  IF ~~ THEN REPLY #20050 /* ~"그럼 다른 질문들을 좀 하겠소..."~ */ GOTO 3
  IF ~~ THEN REPLY #20051 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20052 /* ~"아, 그들은 밤과 어둠의 괴물들이었어요. 그들은 냉기를 뿌리며 여기를 지나 파로드의 궁정 속으로 사라졌어요. 비명의 메아리는 아직도 남아 있는 것만 같아요..."~ */
  IF ~~ THEN REPLY #20053 /* ~"좋소. 그럼 내게 다른 것에 대해 얘기해주시오..."~ */ GOTO 3
  IF ~~ THEN REPLY #20054 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20055 /* ~그는 소매로 떨어지는 콧물을 닦는다. "이번엔 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #20056 /* ~"난 내 질문에 대한 답을 원하오."~ */ GOTO 3
  IF ~~ THEN REPLY #20057 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20058 /* ~이 수척한 여인의 주름투성이 얼굴에는 세월이 그녀에게 남긴 상처들이 그대로 드러나 있다. 그녀의 눈에는 총기가 감도나, 동시에 매우 피로해 보인다. 그녀는 말을 할 때마다 코를 훌쩍거린다. "내게 뭘 원하는 거죠?"~ */
  IF ~~ THEN REPLY #20059 /* ~"질문에나 답해주시오..."~ */ GOTO 3
  IF ~~ THEN REPLY #20060 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END
