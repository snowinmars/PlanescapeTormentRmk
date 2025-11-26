// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHKSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHKSLAV~

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #50969 /* ~거구의 전직 토콜라 노예 상인이 보인다. 그는 카케리의 몬스터들의 피로 범벅이 되어 있다. "우리 몬스터 죽여. 나쁘지 않아... 노예 잡는 대신 괴물 죽이는 거. 우리 좋아해, 에?"~ */
  IF ~~ THEN REPLY #50970 /* ~"수고하시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #50971 /* ~"하! 우린 죽이는 게 좋아, 에?"~ */
  IF ~~ THEN REPLY #50972 /* ~"계속하시오... 거의 다 됐소..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #50973 /* ~덩치가 큰 토콜라 노예 상인이 보인다. 그는 증오로 가득 찬 흐린 눈으로 당신을 노려본다. 그는 당신이 무슨 말을 할 때마다 투덜거리나, 대답은 하지 않는다. ~ */
  IF ~~ THEN REPLY #50974 /* ~"그럼 안녕히 계시오..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #50975 /* ~토콜라는 당신에게 투덜거리기만 할 뿐이다. ~ */
  IF ~~ THEN REPLY #50976 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 4 // from:
  SAY #50977 /* ~덩치가 큰 토콜라 노예 상인이 보인다. 그는 증오로 가득 찬 흐린 눈으로 당신을 노려본다. 그는 당신이 무슨 말을 할 때마다 투덜거리나, 대답은 하지 않는다. ~ */
  IF ~~ THEN REPLY #50978 /* ~"그럼 안녕히 계시오..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 5 // from:
  SAY #50979 /* ~토콜라는 당신에게 투덜거리기만 할 뿐이다. ~ */
  IF ~~ THEN REPLY #50980 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
