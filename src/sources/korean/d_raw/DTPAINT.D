// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPAINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPAINT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36403 /* ~당신에게 등을 돌리고 서 있는 날씬한 티플링 소녀가 보인다. 당신은 그녀의 양손과 그녀 앞의 거꾸로 뒤집힌 테이블이 핑크색 페인트로 보이는 것으로 얼룩져 있다는 사실을 알아차린다. 그녀는 당신이 다가오는 것을 눈치채지 못하고 있는 듯하다. ~ */
  IF ~~ THEN REPLY #36406 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36407 /* ~소녀를 무시하고 가던 길을 간다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36404 /* ~당신 목소리를 듣자 그녀는 당신을 보려고 고개를 돌린다. 좀 더럽고 핑크색 페인트가 묻기는 했으나 그녀의 얼굴은 매우 아름답다. 그녀는 장난기가 있는 미소를 환하게 지어 보인 다음 다시 시선을 캔버스 '대용품'으로 돌린다. ~ */
  IF ~~ THEN REPLY #36408 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #36409 /* ~소녀가 그림을 그리도록 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0
  SAY #36405 /* ~티플링 소녀는 그녀의 작품에 몰입해 있다. 그녀는 당신을 완전히 무시한다. ~ */
  IF ~~ THEN REPLY #36410 /* ~소녀가 그림을 그리도록 내버려 둔다.~ */ EXIT
END
