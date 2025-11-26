// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_CRTKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_CRTKR~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 0 // from:
  SAY #66521 /* ~약간 묘하다는 표정을 짓고 있는 이 남자는 당신이 다가오자 고개를 끄덕인다. "안녕하시오. 여기 오신 용건을 물어도 괜찮겠소?" ~ */
  IF ~~ THEN REPLY #66522 /* ~"나는 내가 발견한 기묘한 문으로 들어와 저 계단으로 내려왔소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66660 /* ~"그렇다면 나는 그것을 보다 잘 숨겨야 할 것 같소." 그는 어깨를 으쓱하고 미소를 짓는다 "나는 매음굴의 관리인이오. 원래는 당신은 이 곳에 내려와서는 안 되지만, 잠깐 둘러보는 것이라면 괜찮소."~ */
  IF ~~ THEN REPLY #66665 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #66666 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 2 // from:
  SAY #66661 /* ~"다시 만나 반갑소. 이것 보시오, 당신은 정말 이 곳에 내려와서는 안 되오. 괜찮으시다면 여기서 머뭇거리지 말고 빨리 위층으로 돌아가 주시오."~ */
  IF ~~ THEN REPLY #66667 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #66668 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #66662 /* ~그는 불안한 미소를 짓는다. "나는 당신과 대화를 나누는 건 고사하고 당신이 이 곳에 내려오는 것도 허락해서는 안 되오. 제발 아무 곳도 물어보지 말아 주시오."~ */
  IF ~~ THEN REPLY #66669 /* ~"적어도 이 곳이 뭐 하는 곳인지는 얘기해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #66670 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #66663 /* ~"이 곳은 숙녀들의 감각석을 보관하는 곳이오... 그녀들은 감각석을 일기장 대용으로 이용하고 있소. 그 돌들을 사용할 생각이라면 충고하겠는데. 당신은 사용할 수가 없소. 돌은 각각 매음굴의 특정한 학생에게만 반응을 하기 때문에 다른 사람은 쓸 수가 없소."~ */
  IF ~~ THEN REPLY #66671 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ JOURNAL #66672 /* ~나는 매음굴의 지하에 있는 큰 방에서 매음굴의 관리인을 만났다. 그 방에는 감각석이 각 창녀 당 하나씩 있으며, 그것들은 그녀들에 의해 일기장으로 쓰이고 있다. 그는 내게 각 감각석은 특정한 사람 전용으로 조율되어 있기 때문에 나는 사용할 수가 없다고 말했다. ~ */ EXIT
END

IF ~  NearbyDialog("Dgrace")
~ THEN BEGIN 5 // from:
  SAY #66664 /* ~"안녕하시오."  남자는 훨-후럼-그레이스 쪽으로 고개를 돌린다. "안녕하십니까, 그레이스 여사. 여사께서 자리를 비우시는 동안 제가 책임지고 감각석들을 관리하겠습니다." 남자는 다시 당신 쪽으로 고개를 돌린다. "할 일이 있어 이만 실례하겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #66673 /* ~떠난다.~ */ EXIT
END
