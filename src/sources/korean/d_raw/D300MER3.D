// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17155 /* ~이 초라하게 생긴 사내는 당신이 쳐다보고 있는 걸 금새 눈치챈다. "손님, 이쪽으로 오시오! 와서 내가 물건들을 구경해 보시오!" 그는 눈짓과 손짓을 하며 당신을 부른다.~ */
  IF ~~ THEN REPLY #17158 /* ~"어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17159 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17160 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17156 /* ~당신을 보자 남자의 염주처럼 작은 눈아 작은 검은색 보석처럼 빛난다. "이보시오, 물건을 더 사려고 오셨소? 와서 이번에는 어떤 물건이 있는지 한 번 보시구려!" ~ */
  IF ~~ THEN REPLY #17192 /* ~"어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17203 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17204 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17157 /* ~사내는 당신이 미처 말을 끝내기도 전에 말참견을 한다. "오늘은 정말 파격적인 가격으로 봉사하리다! 내게 오다니 당신은 정말 현명하오. 나는 이러한 몹쓸 작자들과는 달리 손님을 속이지 않소." 그는 다른 상인들이 서 있는 곳을 가리킨다. ~ */
  IF ~~ THEN REPLY #17208 /* ~"좋소, 어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17209 /* ~"실은 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #17211 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #17168 /* ~그는 고개를 끄덕인다, 하지만 그가 당신 얘기에 귀를 기울이고 있는 않는 것은 명백하다. "그렇소, 여기 정말 좋은 물건들이 있소. 한 번 쭉 살펴보시오! 그리고 또 가격은 믿기 힘들 정도로 저렴하오. *거저*나 마찬지요!"~ */
  IF ~~ THEN REPLY #17212 /* ~"좋소, 어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17214 /* ~"내 말이 안들리오? 난 물어볼 것이 있단 말이오."~ */ GOTO 4
  IF ~~ THEN REPLY #17219 /* ~돌아서서 떠난다.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17169 /* ~"물론이오! 나말고 그 누가 그렇게 멋진 물건을 그처럼 파격적인 가격으로 팔겠소? 걱정하지 마시오, 손님! 손님은 내게 오면 원하는 건 뭐든지 구할 수 있다는 것만 아시면 되오! 저 림-림만 빼고는... 하지만 누가 저런 걸 원하겠소? 하! 에? 하하!"~ */
  IF ~~ THEN REPLY #17224 /* ~"좋소, 좋아... 어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17225 /* ~돌아서서 떠난다.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 7.1
  SAY #17175 /* ~그는 당신 뒤에서 소리친다: "기다리시오, 어디로 가는 거요? 파격적인 기획상품들을 보고 싶지는 않으시오? 돌아오시오! 당신은 정말 좋은 기회를 놓치는 거요!"~ */
  IF ~~ THEN REPLY #17226 /* ~"좋소. 어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17227 /* ~계속 걷는다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2 1.2
  SAY #17473 /* ~사내는 당신이 미처 말을 끝내기도 전에 말참견을 한다. "오늘은 정말 파격적인 가격으로 봉사하리다! 내게 오다니 당신은 정말 현명하오. 나는 이러한 몹쓸 작자들과는 달리 손님을 속이지 않소." 그는 다른 상인들이 서 있는 곳을 가리킨다. ~ */
  IF ~~ THEN REPLY #17475 /* ~"좋소, 어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17476 /* ~"떠나도록 하겠소. 안녕히 계시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.2 6.1
  SAY #17474 /* ~사내는 당신이 미처 말을 끝내기도 전에 말참견을 한다. "오늘은 정말 파격적인 가격으로 봉사하리다! 내게 오다니 당신은 정말 현명하오. 나는 이러한 몹쓸 작자들과는 달리 손님을 속이지 않소." 그는 다른 상인들이 서 있는 곳을 가리킨다. ~ */
  IF ~~ THEN REPLY #17477 /* ~"좋소, 어떤 물건들을 팔고 있소?"~ */ DO ~StartStore("MerchM",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17478 /* ~돌아서서 떠난다.~ */ GOTO 5
END
