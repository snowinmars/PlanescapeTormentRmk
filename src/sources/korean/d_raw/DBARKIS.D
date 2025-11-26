// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3076 /* ~얼굴에 약간의 잿빛이 감돌며, 마치 가죽과도 같은 피부를 지닌 사내가 보인다. 그의 이빨은 보통 사람보다 날카로우며, 그의 눈은 너무나도 많은 것을 본 자에게서 흔히 찾아볼 수 있는 지루함으로 가득 차 있다. 그의 목소리는 콧소리가 많이 섞였으며 발음도 명확하지 않다. "또 당신이오? 이번엔 뭘 원하오?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #3077 /* ~"'또 당신?' 그게 무슨 뜻이오?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10238 /* ~"당신은 내 눈을 가지고 있소, 그렇지 않소? 당신으로부터 그것을 되사고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #10239 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #10240 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #10241 /* ~"이 곳 손님들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #10242 /* ~"마실 것을 주시오."~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10243 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10244 /* ~"나는 수집자 파로드를 찾고 있소."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"경매인 길츠퍼는 당신이 이 전단을 게시해 주기를 바라오."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68055 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10245 /* ~"또 왔소? 이젠 뭐요?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10246 /* ~"내가 처음 당신과 얘기했을 때, 당신 '또 당신인가'라고 했소. 그건 무슨 뜻이었소?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10247 /* ~"당신은 자신이 내 눈을 가지고 있다고 했소. 이제 그것을 돌려받고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #10248 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #10249 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10250 /* ~"이 곳 손님들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10251 /* ~"마실 것을 주시오."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10252 /* ~"이제 모카이 때문에 당신이 골치를 썩는 일은 없을 거요."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10253 /* ~"마실 것을 주시오."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10254 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10255 /* ~"나는 수집자 파로드를 찾고 있소."~ */ GOTO 30
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10256 /* ~"이 곳 손님들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 35
  IF ~  Global("Mochai_Dead_KAPUTZ","GLOBAL",1)
GlobalLT("Mochai","GLOBAL",3)
~ THEN REPLY #57941 /* ~"다시는 모카이 때문에 골치를 썩는 일은 없을 거요."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"경매인 길츠퍼는 당신이 이 전단을 게시해 주기를 바라오."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68056 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.4 4.2 5.2 7.0 9.0 11.4 12.1 13.1 14.0 15.1 16.0 16.1 17.14 18.7 19.1 20.2 21.2 22.2 23.2 24.4 25.1 26.1 27.0 28.2 29.0 30.0 31.1 32.1 34.0 35.0
  SAY #10257 /* ~"제발 빨리 하시오. 유료 고객들이 기다리고 있으니까. ~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10258 /* ~"내가 처음 당신과 얘기했을 때, 당신 '또 당신인가'라고 했소. 그건 무슨 뜻이었소?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10259 /* ~"당신은 자신이 내 눈을 가지고 있다고 했소. 이제 그것을 되사고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #10260 /* ~"당신은 누구요?"~ */ GOTO 12
  IF ~~ THEN REPLY #10261 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10262 /* ~"이 곳 손님들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10263 /* ~"마실 것을 주시오."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10264 /* ~"외상을 갚지 않으려는 자를 처리했소."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10265 /* ~"마실 것을 주시오."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10266 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10267 /* ~"나는 수집자 파로드를 찾고 있소."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"경매인 길츠퍼는 당신이 이 전단을 게시해 주기를 바라오."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #45135 /* ~"이 곳 손님들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 35
  IF ~~ THEN REPLY #57942 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0
  SAY #10269 /* ~"그래, '또 당신이오.' 이제는 귀라도 먹었소? 당신은 15년 전에 여기 왔었소. 그리고 만취하여 이 가게를 다 때려 부셨소. 한 더미의 동전을 남기긴 했지만 그것 가지고는 수리비로 충분하지 않았소. 그래서 당신은 자신의 눈알을 뽑아서 내게 주곤 동전 이백 닢을 모으면 찾으러 오겠다고 했소. 15년 동안의 이자를 감안하면 당신은 내게 오백 닢의 빚이 있는 셈이오. 돈을 내면 눈알을 돌려주겠소."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10270 /* ~"오백? 그건 말도 안 되오!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10271 /* ~"오백? 그건 말도 안 되오!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10272 /* ~"오백? 좋소. 여기 있소."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10273 /* ~"내겐 그만한 돈이 없소."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10274 /* ~"지금은 관심이 없소. 대신 그 밖의 질문에 좀 대답해주시오."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10275 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #10276 /* ~그는 잠시 멈추고 골똘히 생각한다. "좋소. 내게 삼백 닢을 주면 눈을 돌려주겠소."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #10277 /* ~"좋소. 여기 돈이 있소."~ */ DO ~TakePartyGold(300)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(300)
~ THEN REPLY #10278 /* ~"아직도 돈이 부족하오."~ */ GOTO 7
  IF ~~ THEN REPLY #10279 /* ~"관두시오. 대신 그 밖의 질문에나 대답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10280 /* ~"관두시오. 나중에 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 11.1
  SAY #10281 /* ~"그 액수를 지불하던지 아니면 꺼지시오."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10282 /* ~"좋소, 사겠소."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10283 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 7
  IF ~~ THEN REPLY #10284 /* ~"관두시오. 대신 그 밖의 질문에나 대답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10285 /* ~"관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0 11.2
  SAY #10286 /* ~"좋소." 그는 주머니에서 왁스로 봉인된 입구가 넓은 검은색 병을 주머니에서 꺼낸다. 액체가 튀기는 소리가 그것보다 더 시끄럽고 철썩거리는 잡음과 함께 들린다. 그가 뚜껑을 열자, 병으로부터는 나오는 방부제의 냄새 때문에 당신은 속이 다 메스껍다. 눈알은 끈끈한 액체 위에 떠 있다. "그걸 가지고 뭘 해야 할지 궁리하는 게 좋을 거요... 이제 그것이 공기에 노출되었으니 오래 가지는 못할 거요. 결정을 하시오... 눈구멍에 도로 끼울 거요, 말 거요?"~ */
  IF ~  HPGT(Protagonist,15)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10287 /* ~눈알을 빼내고 대신 이 눈을 눈구멍에 넣는다.~ */ DO ~GiveExperience(Protagonist,1000)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPGT(Protagonist,15)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10288 /* ~눈알을 빼내고 대신 이 눈을 눈구멍에 넣는다.~ */ DO ~GiveExperience(Protagonist,750)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #10289 /* ~눈알을 빼내고 대신 이 눈을 눈구멍에 넣는다.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 10
  IF ~~ THEN REPLY #10290 /* ~그것이 썩는 것을 지켜본다.~ */ GOTO 25
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.1 5.1 11.3
  SAY #10291 /* ~"그럼 눈을 돌려줄 수 없소. 알겠소? 돈을 벌면 다시 오시오."~ */
  IF ~~ THEN REPLY #10292 /* ~"좋소. 그럼 다른 질문에도 대답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10293 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1
  SAY #10294 /* ~잠시 주저한 후 당신은 눈구멍에서 눈알을 빼낸다. 바텐더는 친절하게도 시신경을 절단해 주고 당신 손을 바에 놓인 끈적한 병이 있는 곳까지 안내해 준다. 당신은 눈알을 보존액에 담그고, 손가락으로 옛날 눈을 잡아서 빈 눈구멍에 집어넣는다. 이러한 과정에서 오는 고통은 격렬하다. 하지만 잠시 후 당신은 시신경이 이 새로운 눈에 다시 접속되는 것을 느낄 수가 있다... 그리고 당신 뇌리에 기억이 섬광처럼 떠오른다!~ */
  IF ~~ THEN REPLY #10295 /* ~그것을 흡수한다.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10296 /* ~기억이 번뜩인다: 당신 앞에 혼돈스럽고 지속적으로 변화하는 광활한 황야가 펼쳐진다, 그리고 한 무리의 콘도르와 흡사한 인간형 생물들이 흉악하게 생긴 무기를 들고 당신을 향해 돌진한다. 당신 손에는 빛나는 칼이 꽉 쥐여져 있다...

기억이 번뜩인다: 기억할 수 없는 적의 제복을 입은 세 명의 악한이 당신을 에워싸고 있다. 그들의 손에서는 긴 대거가 쥐어져 있고, 그들의 드러난 이빨은 잔혹한 광채를 띠며 빛나고 있다. 당신은 자신의 흉터투성이 손을 쳐다본다, 그리고 그것이 곧 피로 뒤덮일 거라는 사실을 깨닫는다...

기억이 번뜩인다: 거대한 개구리처럼 생긴 생명체가 날카로운 이빨로 가득한 입을 벌리고, 당신을 향해 혼돈의 물질을 가로질러 오고 있다. 당신은 변화하는 물질 속으로 투창을 던지고 그것은 놈을 갑자기 나타난 초석에 박아 놓는다. 당신은 잃어버린 전투 기술들 중 일부를 되찾았다. ~ */
  IF ~~ THEN REPLY #10297 /* ~바키스에게 질문을 더 한다.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ GOTO 2
  IF ~~ THEN REPLY #10298 /* ~떠난다.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #10299 /* ~당신은 눈구멍에서 눈을 파낸다. 고통은 격렬하며 당신은 그것에 의해 갑작스럽게 압도당한다. 당신은 바닥에 쓰러지고, 빈 눈구멍에서는 피가 쏟아져 나온다. 당신은 죽었다.~ */
  IF ~~ THEN REPLY #10300 /* ~완료.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1 1.1 2.1
  SAY #10301 /* ~"눈을 돌려받고 싶소? 가격은 오백 닢이오. 그만한 돈이 없으면 돌려받을 생각은 버리시오."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10302 /* ~"오백? 그건 말도 안 되오!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10303 /* ~"오백? 그건 말도 안 되오!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10304 /* ~"오백? 좋소. 여기 있소."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10305 /* ~"내겐 그만한 돈이 없소."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10306 /* ~"지금은 관심이 없소. 대신 그 밖의 질문에 좀 대답해주시오."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10307 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 1.2 2.2
  SAY #10308 /* ~"나? 난 바키스로 이 가게의 주인이오."~ */
  IF ~~ THEN REPLY #10309 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #10310 /* ~"그럼 내 질문에 대답해줄 적임자는 바로 당신이군."~ */ GOTO 2
  IF ~~ THEN REPLY #10311 /* ~"좋은 곳이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.3 1.3 2.3 12.0
  SAY #10312 /* ~"정문에 있는 간판을 보지 못했소? 들어왔을 때 노 위에서 불타고 있는 얼간이를 보지 못했소? 이 가게는 불타는 시체로 시길 최고의 술집이오. 적어도 벌통의 이 지역에서는 최고의 술집이고, 그건 시길에서 가장 좋은 술집들 중 하나라는 뜻이오. 물론 레이디의 구역에는 화려하게 치장한 곳들도 있고, 벌통의 다른 지역에도 대단한 선술집들이 있기는 하지만, 그 어느 가게도 불타는 시체만큼 강렬한 개성은 없소."~ */
  IF ~~ THEN REPLY #10313 /* ~"저 시체는 누구요?"~ */ GOTO 14
  IF ~~ THEN REPLY #10314 /* ~"알겠소. 다른 것들에 대해 얘기해주겠소?~ */ GOTO 2
  IF ~~ THEN REPLY #10315 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #10316 /* ~"그는 이그너스요. 그는 화염 마법사였으나, 벌통의 일부를 태우고 나서 다른 메이지들에 의해 처형당했소. 그에 대해 더 알고 싶으면 문 옆에 있는 드루실라에게 가서 그녀와 얘기하시오."~ */
  IF ~~ THEN REPLY #10317 /* ~"좋소. 하지만 다른 것들에 대해 더 알고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #10318 /* ~"알겠소, 그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.4 1.4 2.4
  SAY #10319 /* ~"나는 내게 자신들이 어렵게 번 돈을 가져다 주는 손님들의 삶에 간섭하는 일은 가급적 피하려고 하고 있소, 그들이 먼저 내게 부탁하지 않은 한은 말이오. 어쨌든 저쪽에 있는 사람은 캔드리언으로 차원 여행자요. 그는 괜찮은 사람이오. 차원 여행에 대해 물어볼 것이 있으면 그에게 가시오, 그는 안 가본 곳이 거의 없으니까. 그 아래쪽에 있는 건 삐걱거리는 무릎의 엡으로 늙은 하모니움 사관이오. 하지만 그렇다고 해서 그를 미워하지는 마시오. 그는 마음이 너그러우며, 시길 전역에 대해 잘 알고 있소. 저쪽에 있는 마족들은 이더그린과 테가린이오. 한 마디 충고하겠는데 그들을 상대할 생각은 하지 마시오. 하급 마족이라고는 해도 마족임에는 틀림없소. 그리고 저기 있는 이퀵스란 자는 믿을 만한 위인이 못 되오. 그리고 그 옆에는 희생자를 찾고 있는 머시킬러들이 있소. 기스저라이인 다콘은 내게 있어 수수께끼요. 나도 그에 대해선 아는 바가 별로 없소. 그는 거의 말을 하지 않소. 마지막으로 - 혹시 공짜 음료에 관심이 있소?"~ */
  IF ~~ THEN REPLY #10320 /* ~"그렇소."~ */ GOTO 16
  IF ~~ THEN REPLY #10321 /* ~"별로. 내 다른 질문들에나 대답해주겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #10323 /* ~"아니오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10322 /* ~"여기서부터 제일 먼 곳에 있는 벽 부근에게 어슬렁거리며, 외상을 갚지 않고 도망갈 기회만 노리고 있는 작자가 있소. 그녀가 그런 짓을 못하도록 확실히 처리해 주시오. 만약 해준다면 당신은 평생 이 곳에서 공짜로 음료를 마실 수가 있소."~ */
  IF ~~ THEN REPLY #10324 /* ~"그 일을 하겠소. 하지만 우선 내 질문에 좀 대답해주시오."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10325 /* ~"별로 생각이 없소. 대신 내 질문에 대답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10326 /* ~"그 일을 하겠소. 일을 마치고 나면 당신에게 보고하리다."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #10327 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 0.5 1.5 2.5 19.0 20.0 21.0 22.0 23.0 24.1 24.2 28.0
  SAY #10328 /* ~"뭘 원하시오? 보통 맥주는 한 닢, 비터는 두 닢, 그리고 꿀술은 네 닢이오. 원소계에서 직접 가져온 물은 여덟 닢이고, 아버리에서 수입한 화이어와인과 불꽃 씨는 열 닢이오. 커스트에서 온 하트와인은 여덟 닢, 그리고 베이터산 위스키는 스무 닢이오. 뭘 마시겠소?"~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10329 /* ~"맥주,"~ */ DO ~TakePartyGold(1)
~ GOTO 20
  IF ~  PartyGoldLT(1)
~ THEN REPLY #10330 /* ~"맥주,"~ */ GOTO 19
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10331 /* ~"비터(쓴 맥주)."~ */ DO ~TakePartyGold(2)
~ GOTO 20
  IF ~  PartyGoldLT(2)
~ THEN REPLY #10332 /* ~"비터(쓴 맥주)."~ */ GOTO 19
  IF ~  PartyGoldGT(3)
~ THEN REPLY #10333 /* ~"꿀술."~ */ DO ~TakePartyGold(4)
~ GOTO 20
  IF ~  PartyGoldLT(4)
~ THEN REPLY #10334 /* ~"꿀술."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10335 /* ~"물."~ */ DO ~TakePartyGold(8)
~ GOTO 21
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10336 /* ~"물."~ */ GOTO 19
  IF ~  PartyGoldGT(9)
~ THEN REPLY #10337 /* ~"화이어와인과 불꽃 씨."~ */ DO ~TakePartyGold(10)
~ GOTO 22
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10338 /* ~"화이어와인과 불꽃 씨."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10340 /* ~"하트와인."~ */ DO ~TakePartyGold(8)
~ GOTO 23
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10341 /* ~"하트와인."~ */ GOTO 19
  IF ~  PartyGoldGT(19)
~ THEN REPLY #10342 /* ~"위스키."~ */ DO ~TakePartyGold(20)
~ GOTO 24
  IF ~  PartyGoldLT(20)
~ THEN REPLY #10343 /* ~"위스키."~ */ GOTO 19
  IF ~~ THEN REPLY #10344 /* ~"정보."~ */ GOTO 2
  IF ~~ THEN REPLY #10345 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.7 2.7 20.1 21.1 22.1 23.1 24.3 28.1 32.0
  SAY #10339 /* ~"뭐든지 원하는 걸 드시오. 우리 가게에서 파는 음료는 맥주, 비터, 꿀술, 원소계의 물, 아버리어산 화이어와인과 불꽃 씨, 커스트 하트와인, 그리고 베이터산 위스키요. 뭘 들겠소?"~ */
  IF ~~ THEN REPLY #10346 /* ~"맥주,"~ */ GOTO 20
  IF ~~ THEN REPLY #10347 /* ~"비터(쓴 맥주)."~ */ GOTO 20
  IF ~~ THEN REPLY #10348 /* ~"꿀술."~ */ GOTO 20
  IF ~~ THEN REPLY #10349 /* ~"물."~ */ GOTO 21
  IF ~~ THEN REPLY #10350 /* ~"화이어와인과 불꽃 씨."~ */ GOTO 22
  IF ~~ THEN REPLY #10351 /* ~"하트와인."~ */ GOTO 23
  IF ~~ THEN REPLY #10352 /* ~"위스키."~ */ GOTO 24
  IF ~~ THEN REPLY #10353 /* ~"정보."~ */ GOTO 2
  IF ~~ THEN REPLY #10354 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.3 17.5 17.7 17.9 17.11 17.13
  SAY #10355 /* ~바텐더는 당신을 노려본다. "당신에겐 그만한 돈이 없소. 그리고 외상은 사절이오. 난 최근 너무 많이 당했소. 다른 걸 원하시오?"~ */
  IF ~~ THEN REPLY #10356 /* ~"어떤 음료들을 팔고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #10357 /* ~"그렇소. 정보."~ */ GOTO 2
  IF ~~ THEN REPLY #10358 /* ~"아니오. 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.2 17.4 18.0 18.1 18.2
  SAY #10359 /* ~당신은 도수가 낮은 술을 꿀꺽꿀꺽 들이킨다. 대단한 맛은 아니나 포만감을 준다, 그리고 어쨌든 술이다. 그 외의 다른 효과는 없는 듯하다. "뭘 원하시오?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10360 /* ~"한 잔 더 주시오."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10361 /* ~"한 잔 더 주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #10362 /* ~"내 질문에 대답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10363 /* ~"아무 것도 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.6 18.3
  SAY #10364 /* ~그는 벽에 있는 술통의 마개를 연다. 당신이 지금까지 본 것 중 가장 깨끗한 물이 노즐로부터 나와 바키스가 그 밑에 갖다 댄 유리잔에 담긴다. 그는 그것을 당신 앞에 가져다 놓고, 당신은 그것을 단숨에 들이킨다. 그것은 당신이 맛본 것들 중 가장 순수한 것으로, 물이 지닌 본질적인 차가움이 당신의 혀와 식도를 지나 위장에 도달하는데, 그것은 가장 강렬한 열정조차도 잠시 가라앉힌다. "물의 원소계의 심장부로부터 온 물이오." 바텐더는 말한다. "이에 비하면 다른 어떤 물도 쓰레기에 불과하오."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10365 /* ~"한 잔 더!"~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10366 /* ~"끝내주는군. 한 잔 더 주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #10367 /* ~"그렇다면 물어볼 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #10368 /* ~"멋진 경험이었소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.8 18.4
  SAY #10369 /* ~그는 당신에게 진한 적색 와인 한 잔과 한 줌의 밝은 색의 씨앗을 준다. 그는 충고해준다. "씨앗을 입에 넣고 와인을 쭉 들이키시오. 씨앗에 불이 붙더라도 놀라지는 마시오, 아무런 해는 없으니까. 그건 다른 것에 견줄 수가 없는 맛이오." 그의 말이 옳다. 당신이 씨앗을 입에 넣자, 그것들은 침과 섞여 작은 불꽃으로 화한다. 당신은 그것을 한 모금의 와인으로 끈다, 그리고 그 맛은 말로 형용할 수가 없다. 바키스는 미소짓는다. "더 들겠소?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10370 /* ~"물론이오. 한 잔 더 주시오.~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10371 /* ~"계속 주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #10372 /* ~"지금은 아니오, 고맙소. 대신 당신에게 뭘 좀 물어보고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #10373 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.10 18.5
  SAY #10374 /* ~그는 당신에게 커스트산 하트와인을 한 잔 준다. 그 향기는 가히 감동적이며, 와인은 과일의 맛이 강하고 감칠맛이 난다. 그리고 뒷맛이 너무나도 개운하다. "진짜 레이저바인으로 만들었다고 하오. 그 제법을 알았으면 좋으련만." 바텐더는 빈 잔을 바라보며 끄덕인다. "더 원하시오?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10375 /* ~"물론이오."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10376 /* ~"물론이오."~ */ GOTO 18
  IF ~~ THEN REPLY #10377 /* ~"아니오, 하지만 대답을 좀 듣고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #10378 /* ~"사양하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.12 18.6
  SAY #10379 /* ~그는 당신 앞에 끓는 오줌처럼 보이는 연기 나는 물질을 잔에 담아 놓는다. 하지만 당신 쪽으로 날아오는 연기는 매우 매혹적이다. 그리고 그 맛은 견딜 수 없을 정도로 맵고 뜨겁기는 하나 냄새만큼이나 중독성이 강하다. 술이 식도를 태우며 위장까지 가는 느낌은 고통스러우나, 그 고통조차도 감미롭다. 바텐더가 눈을 크게 뜬다. "아직도 서 있을 수가 있소? 대부분의 사람들은 반 잔도 견디지 못하고 쓰러지오."~ */
  IF ~~ THEN REPLY #10380 /* ~"기분이 좋소. 아무 것도 느끼지 못할 정도로."~ */ GOTO 28
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10381 /* ~"한 잔 더 주시오."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10381 /* ~"한 잔 더 주시오."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10382 /* ~"한 잔 더 주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #10383 /* ~"내 주량은 대단하다오. 내 질문에 대답해주겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #10384 /* ~"난 대부분의 사람들과는 격이 틀리지. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.3
  SAY #10385 /* ~눈은 당신의 눈 앞에서 분해되고, 지독한 악취를 내뿜는 끈적끈적한 액체만 남는다. 바텐더는 얼굴 앞에서 손을 흔들어 냄새를 쫓아버리면서 얘기한다. "그건 정말 돈 낭비였소. 뭐 달리 원하는 거라도 있소?"~ */
  IF ~~ THEN REPLY #10386 /* ~"내 돈을 돌려주시오. 당장."~ */ GOTO 26
  IF ~~ THEN REPLY #10387 /* ~"그냥 내가 물어보는 것에 대해서나 답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10388 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #10389 /* ~"당신이 산 물건을 가지고 아무 짓도 하지 않아 그것이 사라지게 된 건 내 책임이 아니오. 만약 당신이 그 눈을 어떤 용도로든 쓰려고 있다면 당신이 예전에 눈을 가지고 했던 것과 같은 술수라도 부렸어야 했소. 당신 눈이 어떻게 되었든 그건 내가 알 바가 아니오."~ */
  IF ~~ THEN REPLY #10390 /* ~"내가 당신을 죽이면 그렇게 될 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Barkis_One","GLOBALGood",-1)
~ GOTO 27
  IF ~~ THEN REPLY #10391 /* ~"그래, 아닌 것 같소. 그럼 내 질문에 좀 대답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10392 /* ~"나중엔 그렇게 될 거요. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #10393 /* ~"그래, 아닌 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #10394 /* ~그는 사악한 미소를 짓는다. "어디 해보시오."~ */
  IF ~~ THEN REPLY #10395 /* ~"관두시오. 대신 내 질문에 답을 해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10396 /* ~"관두시오."~ */ EXIT
  IF ~~ THEN REPLY #10397 /* ~그를 공격한다. ~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.0
  SAY #10398 /* ~바텐더는 턱을 손에 괴고 당신을 유심히 살핀다. "이보시오, 사람들 중에는 독에 대한 내성을 타고난 사람도 있소. 어떤 사람들은 술도 독이라고 하오. 만약 당신이 그런 경우라면, 당신은 당신에게 독을 먹이려는 사람에 대한 편리한 대항책을 지닌 셈이오."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10399 /* ~"글쎄, 그건... 어쨌든 한 잔 더 주시오."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10400 /* ~"글쎄, 그건... 어쨌든 한 잔 더 주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #10401 /* ~"편리할 것 같군. 한 가지 물어볼 테니 대답해주겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #10402 /* ~"좋소. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.6 1.8 2.8
  SAY #10403 /* ~"일지? 종이와 글? 친구, 그런 것들은 여기 벌통에서는 별로 가치가 없소. 이 곳 사람들은 일지는 고사하고 간판조차 제대로 읽지 못하오. 만약 일지를 찾고 있다면, 막무가내로 물어서는 소용없고, 체계적으로 찾아야만 할 거요."~ */
  IF ~~ THEN REPLY #10404 /* ~"부탁하지도 않은 충고를 해주어 고맙소. 그럼 다른 질문에 대답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10405 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 0.7 1.9 2.9
  SAY #10406 /* ~그는 돌아서서 바닥에 침을 뱉는다. "파로드? 흥. 놈은 당신이 돌아서기만 하면 당신 등을 대거로 찌를 걸. 당신 꼴을 보니 이미 당한 모양이군. 만약 꼭 놈을 찾아야만 하겠다면 저기 있는 엡과 얘기하시오. 아마 그라면 쓸모가 있는 정보를 지니고 있을 거요."~ */
  IF ~~ THEN REPLY #10407 /* ~"당신이 내 질문에 대답해준 다음 곧바로 그렇게 하겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #10408 /* ~"엡? 노인 말이오? 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.6 1.11 2.6
  SAY #10409 /* ~"친구, 그럼 이제 당신에게는 바에서 특별 대우를 받을 권한이 있소. 당신은 언제든지 원하는 때 공짜로 음료를 들 수가 있소."~ */
  IF ~~ THEN REPLY #10410 /* ~"그녀의 외상 액수가 상당했던 모양이오."~ */ GOTO 32
  IF ~~ THEN REPLY #10411 /* ~"고맙소. 몇 가지만 더 물어봅시다."~ */ GOTO 2
  IF ~~ THEN REPLY #10412 /* ~"대접은 나중에 받겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #10413 /* ~"당신이 아는 건 빙산의 일각에 불과하오. 지금 음료를 들겠소?"~ */
  IF ~~ THEN REPLY #10414 /* ~"내 잔을 채워 주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #10415 /* ~"지금 내가 원하는 것은 정보요."~ */ GOTO 2
  IF ~~ THEN REPLY #10416 /* ~"하지만 나중에 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #10417 /* ~"불꽃 씨앗 대령이오!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.8 1.12 2.10
  SAY #45136 /* ~"길츠퍼? 어디 그것 좀 봅시다." 그는 전단을 받아서 살펴본다. " 그는 그것을 보면서 눈살을 찌푸린다, 그리고 당신에게 말한다. "좋소. 그에게 붙여놓도록 하겠다고 전하시오. 달리 원하는 거라도 있소?"~ */
  IF ~~ THEN REPLY #45137 /* ~"몇 가지만 더 대답해주시오..."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ GOTO 2
  IF ~~ THEN REPLY #45138 /* ~"더 이상은 필요 없소, 고맙소. 안녕히 계시오."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.10 2.11
  SAY #57943 /* ~그는 조롱하는 표정으로 당신을 바라본다. "우린 이미 그것에 대해선 얘기를 했소? 내가 아직 얘기하지 않은 것들 중에서 알고 싶은 거라도 있으시오?"~ */
  IF ~~ THEN REPLY #57944 /* ~"그냥 내가 물어보는 것에 대해서나 답해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #57945 /* ~"아니오, 안녕히 계시오."~ */ EXIT
END
