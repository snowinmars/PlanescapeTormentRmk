// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42050 /* ~이 남자는 꿈틀거리는 피부와 지속적인 미묘한 변이를 제외하고는 페슬 킬른과 흡사하다. "다시 만나 반갑소. 이 페슬에게 어떤 도움이 필요하시오?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42051 /* ~"나는 치료용 아이템을 좀 구입하고 싶소..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42052 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #42053 /* ~"물건을 좀 사고 싶소..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42054 /* ~"실은 그냥 지나던 길이었소. 안녕히 계시오, 페슬."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #42055 /* ~"그래, 물론이오. 당신에게 줄 사례, 맞소? 어디 봅시다, 자... 물론 공짜로 만들어 드리겠소... 하지만 적절한 성분들이 필요하오. .. 흠... 오니(귀신)의 심장, 또는 적철광 가루., 또는 디바의 머리카락, 또는 애시먼의 법복에서 나온 실, 또는 트롤처럼 재생능력을 지닌 생물의 피..."~ */
  IF ~~ THEN REPLY #42056 /* ~"실은 내 상처는 *매우* 빨리 치유되오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42057 /* ~페슬은 한쪽 눈썹을 치켜 올린다. "그렇소? 좋소, 그럼, 당신 피만 있으면 될지도 모르겠소. 자... 괜찮다면 내게 당신 피를 샘플로 주시오."~ */
  IF ~~ THEN REPLY #42058 /* ~그에게 당신 피를 약간 준다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveItemCreate("ClotChrm",Protagonist,10,0,0)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42059 /* ~페슬은 당신 피를 약간 뽑은 후, 그것을 가지고 가게 뒤쪽으로 간다. 그리고 잠시 후 굳은 핏방울처럼 보이는 것 몇 개를 가지고 돌아온다.~ */
  IF ~~ THEN REPLY #42060 /* ~"고맙소, 페슬. 물어볼 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #42061 /* ~"고맙소. 이제 물건을 좀 사고 싶소..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42062 /* ~"안녕히 계시오, 페슬, 그리고 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.0 6.1
  SAY #42063 /* ~"정말 미안하오, 하지만 나는 내 가게와 관련된 일에 대해서만 얘기를 하오. 게다가 나는 가게 밖으로는 거의 나가지 않소. 다른 사람을 찾아서 물어보시는 것이 좋을 듯하오."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42064 /* ~"주조소의 늙은 기술자가 그의 기계를 작동시키려면 내가 내 피부와 피의 샘플을 가져와야 한다고 말했소. 당신이 그 일을 해주었으면 하오."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 5
  IF ~~ THEN REPLY #42065 /* ~"그럼 물건을 좀 사고 싶소..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42066 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42067 /* ~"살점? 좋소." 그의 오른손에는 면도날이 들려 있고, 왼손에는 입구가 큰 병이 들려 있다. 그는 당신 팔뚝으로부터 피부를 약간 잘라낸 후, 그것을 몇 방울의 당신 피와 함께 병 속에 넣는다. 그는 당신 상처를 거즈로 싸맨 후 당신에게 병을 건네준다. "더 필요한 건 없소?"~ */
  IF ~~ THEN REPLY #42068 /* ~"그렇소... 물건을 좀 사고 싶소."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42069 /* ~"아니, 그게 전부요. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #42070 /* ~연금술사 페슬이 보인다. "다시 만나 반갑소. 내게 뭘 원하시오?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42071 /* ~"나는 치료용 아이템을 좀 구입하고 싶소..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",3)
~ GOTO 1
  IF ~~ THEN REPLY #42072 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #42073 /* ~"물건을 좀 사고 싶소..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42074 /* ~"실은 그냥 지나던 길이었소. 안녕히 계시오, 페슬."~ */ EXIT
END
