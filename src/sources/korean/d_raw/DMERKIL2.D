// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL2~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10481 /* ~이 중무장한 사내는 아무런 말도 없이 무기를 뽑아 당신을 내려친다.~ */
  IF ~~ THEN REPLY #10482 /* ~그를 공격한다. ~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10483 /* ~도망친다.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10484 /* ~중무장한 이 사내는 덩치가 엄청 크다. 그는 또한 매우 예리한 눈을 지니고 있어, 주변에서 일어나는 일들을 하나도 놓치지 않는다. 또한 그는 당신과 얘기할 생각이 없는 것 같다.~ */
  IF ~~ THEN REPLY #10485 /* ~"몇 가지 질문을 하고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #10486 /* ~"여보시오?"~ */ GOTO 2
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10487 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #10488 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1 5.0
  SAY #10489 /* ~사내는 마치 벌레라도 보는 듯한 눈으로 당신을 쳐다본다. 그는 당신을 쳐다보면 눈을 천천히 깜박인다. 그리고 나서 그는 아무 말도 없이 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #10490 /* ~"내게 말을 하지 않으면 당신 심장을 꺼내겠소, 이 쿵쿵거리는 고철덩어리 같으니."~ */ GOTO 3
  IF ~~ THEN REPLY #10491 /* ~"여보시오?"~ */ GOTO 3
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10492 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #10493 /* ~"그럼 안녕히 계시오. 내 답은 다른 곳에서 찾도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #10494 /* ~당신은 사내의 가슴 깊숙한 곳에서 나오는 천둥과도 같은 소리를 들을 수가 있다. 그는 자신의 무기를 가볍게 휘두른다, 그리고 새로운 관심을 가지고 당신을 쳐다본다.~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10495 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #10496 /* ~"그게 당신이 원하는 거라면 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #10497 /* ~그를 공격한다. ~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.2 3.0
  SAY #10498 /* ~놀랍게도 이 조용한 거인이 반응을 보인다. 그는 몸을 앞으로 구부리고 당신을 빛나는 눈으로 눈 한 번 깜빡이지 않으며 응시한다. 그의 굵고 장중한 목소리는 그의 거대한 흉부 깊숙한 곳으로부터 천둥처럼 울려 퍼진다. "베일로는 우리들 중 최고의 전사였소. 정의는 그의 여주인이자 생명 그 자체였소. 전해지는 말로는 그는 영혼은 순수함을 식별할 능력조차 지녔었다고 하오. 그는 어찌나 헌신적이었던지 설령 죽음을 눈 앞에 두고도 결코 임무를 포기하지 않았소. 그는 오래 전에 전이문을 통해 한 범죄자를 추적하다가 실정되었소. 그 이후로 우리는 그를 보지 못했소. 그는 진정한 전설이오." 그는 다시 자기 의자에 앉아 더 이상 당신 질문에 응답하지 않는다.~ */
  IF ~~ THEN REPLY #10499 /* ~"내 질문에 더 대답해줄 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #10500 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10501 /* ~"아니오." 머시킬러는 당신을 쳐다보지도 않는다.~ */
  IF ~~ THEN REPLY #10502 /* ~"나는 내 질문들에 대한 답을 원할 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #10503 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
