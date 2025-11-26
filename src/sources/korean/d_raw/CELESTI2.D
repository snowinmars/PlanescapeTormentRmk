// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CELESTI2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~CELESTI2~

IF ~  Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 0 // from:
  SAY #59104 /* ~당신은 천상계의 화염을 손에 쥐고 있다, 그리고 그 칼날은 하얀 화염으로 타오르며 당신의 정신 속에서 노래를 부르고 있다. 당신은 그 무기를 당신이 원하는 형태로 단 *한 번*만 바꿀 수 있다는 사실을 명확하게 깨닫는다. ~ */
  IF ~~ THEN REPLY #64490 /* ~그것이 망치로 변하기를 바란다.~ */ DO ~TransformPartyItem("Celesti2","CFHammer",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #64491 /* ~그것이 도끼로 변하기를 바란다.~ */ DO ~TransformPartyItem("Celesti2","CFAxe",1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #64492 /* ~그것이 곤봉으로 변하기를 바란다.~ */ DO ~TransformPartyItem("Celesti2","CFClub",1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #64493 /* ~그것이 못이 박힌 장갑으로 변하기를 바란다.~ */ DO ~TransformPartyItem("Celesti2","CFFist",1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #64494 /* ~그것이 가느다란 대거로 변하기를 바란다.~ */ DO ~TransformPartyItem("Celesti2","CFDagger",1,0,0)
~ GOTO 6
  IF ~~ THEN REPLY #64495 /* ~지금으로선 칼을 그냥 내버려 둔다.~ */ EXIT
END

IF ~  !Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 1 // from:
  SAY #64496 /* ~이 무거운 칼은 당신 손 안에서는 절묘한 은세공품에 불과하다. 당신이 아무리 정신을 집중해도 아무런 반응도 보이지 않는다.~ */
  IF ~~ THEN REPLY #64497 /* ~그것을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64498 /* ~무기의 칼날이 늘어난다, 그리고 잠시 칼날이 무디어지더니, 금속이 놀라운 속도로 칼끝을 향해 흘러간다. 칼에서 균형 잡힌 전투용 망치로의 변환은 순식간에 끝난다. 그것은 정말 뛰어난 작품이다.~ */
  IF ~~ THEN REPLY #64507 /* ~"훌륭하군."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64499 /* ~무기의 칼날이 늘어난다, 그리고 칼이 원통형으로 변함에 따라 칼날이 사라진다. 금속은 놀라운 속도로 칼끝을 향해 흘러간다. 칼에서 균형 잡힌 도끼로의 변환은 순식간에 끝난다. 그것은 정말 뛰어난 작품이다.~ */
  IF ~~ THEN REPLY #64505 /* ~"훌륭하군."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64500 /* ~검의 가로대는 칼의 슴베와 융합한다, 그리고 칼날은 무디어져 아름다운 봉으로 변화한다. 그 표면에는 칼에 있었던 것과 같은 문양이 새겨져 있다. 칼에서 균형 잡힌 훌륭한 곤봉으로의 변환은 순식간에 끝난다.~ */
  IF ~~ THEN REPLY #64506 /* ~"훌륭하군."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #64501 /* ~칼에서 건틀릿으로의 변화 과정은 당신 눈으로는 도저히 쫓을 수가 없다, 하지만 금속이 손 안에서 소용돌이치는 것은 느낄 수가 있다. 손을 열자 그 안에는 너무나도 아름답고 무시무시한 은색의 건틀릿 한 벌이 있다. ~ */
  IF ~~ THEN REPLY #64504 /* ~"훌륭하군."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY #64502 /* ~칼날이 줄어들어 칼은 트리어스의 검의 축소판인 대거로 변한다. 칼자루의 크기만은 전과 다름이 없다. 이 대거는 매우 실용적일 것 같다.~ */
  IF ~~ THEN REPLY #64503 /* ~"훌륭하군."~ */ EXIT
END
