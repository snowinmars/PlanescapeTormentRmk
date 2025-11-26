// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKILNN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKILNN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42075 /* ~이 남자의 얼굴은 꿈틀거리는 피부와 지속적인 미묘한 변이를 제외하고는 페슬 킬른과 흡사하다. "다시 만나 반갑소... 내 이름은 킬른이오. 뭔가 필요하시오?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42076 /* ~"나는 치료용 아이템을 좀 구입하고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #42077 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42078 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 4
  IF ~~ THEN REPLY #42079 /* ~"실은 그냥 지나던 길이었소. 안녕히 계시오, 킬른."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #42080 /* ~연금술사의 조수인 킬른이 보인다. "다시 만나 반갑소... 뭐 필요한 물건이라도?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42081 /* ~"나는 치료용 아이템을 좀 구입하고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #42082 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42083 /* ~"물건을 좀 사고 싶소..."~ */ GOTO 4
  IF ~~ THEN REPLY #42084 /* ~"실은 그냥 지나던 길이었소. 안녕히 계시오, 킬른."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42085 /* ~"페슬과는 얘기를 했소? 그 일을 해줄 사람은 페슬이오."~ */
  IF ~~ THEN REPLY #42086 /* ~"그럼 가서 그와 얘기를 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1
  SAY #42087 /* ~"나는 창고에서 하루종일 일하기 때문에... 내게 질문해도 별 도움이 되지 않을 거요."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42088 /* ~"주조소의 늙은 기술자가 그의 기계를 작동시키려면 내가 내 피부와 피의 샘플을 가져와야 한다고 말했소. 당신이 그 일을 해주었으면 하오."~ */ GOTO 4
  IF ~~ THEN REPLY #42089 /* ~"그럼 물건을 좀 살 수 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #42090 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.0 3.1
  SAY #42091 /* ~"그것에 대해선 페슬과 얘기를 하시오. 그런 종류의 일은 그가 모두 담당하니까."~ */
  IF ~~ THEN REPLY #42092 /* ~"그럼 가서 그와 얘기를 하겠소. 안녕히 계시오."~ */ EXIT
END
