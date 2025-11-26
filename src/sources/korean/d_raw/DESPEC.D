// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DESPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DESPEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53634 /* ~이 사람은 지금 곧 벌어지려는 재판과 처형을 구경하는 것을 당신이 방해해서 화가 난 듯하다. "뭐요?"~ */
  IF ~~ THEN REPLY #57408 /* ~"대체 무슨 일이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #57409 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57410 /* ~"우리 뜻대로 된다면 멋진 피투성이 처형식이오." 그들은 싱긋 웃으며 눈썹을 움직인다.~ */
  IF ~~ THEN REPLY #57411 /* ~"피고가 무슨 짓을 했소?"~ */ GOTO 2
  IF ~~ THEN REPLY #57412 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57413 /* ~그들은 어깨를 으쓱한다. "무슨 상관이오? 유죄, 유죄, 유죄, 좋소? 이건 우리가 피를 볼 유일한 방법이오!" 그들은 기대에 부풀어 손을 비빈다.~ */
  IF ~~ THEN REPLY #57414 /* ~"당신들은 *재미*로 사람에게 사형을 선고한단 말이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #57415 /* ~"옳소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57416 /* ~그들은 눈알을 부라린다.. "판결을 하는 건 내가 아니라 판사요. 불만이 있으면 가서 그와 얘기하시오. 이제 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #57417 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #57418 /* ~이 사람은 귀찮다는 듯 당신을 잠시 흘긋 볼 뿐이다. "날 그냥 내버려 두시오, 알겠소? 난 당신 질문에 답할 생각이 없으니 다른 데로 가시오."~ */
  IF ~~ THEN REPLY #57419 /* ~떠난다.~ */ EXIT
END
