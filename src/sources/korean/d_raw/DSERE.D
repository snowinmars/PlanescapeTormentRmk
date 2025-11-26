// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSERE~

IF ~  Global("Sere","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1796 /* ~당신이 다가가자 나이가 지긋한 여자가 돌아서서 당신을 쳐다본다. "이런, 오늘 누가 이 세레를 찾아왔는지 좀 보게... 죽음이 가장 사랑하는 아들일세." 그녀는 당신을 아래위로 흝어보더니 믿을 수 없다는 듯 고개를 흔든다. "원 세상에... 당신은 어느 무덤에서 기어 나왔소?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #1797 /* ~"나는 무덤에서 기어나온 적이 없소."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14338 /* ~"나는 무덤에서 기어나오지 않았소."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14339 /* ~"실은 난 시체안치소에서 막 나왔소."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14340 /* ~농담: "글쎄, 무덤에는 이제 싫증이 나서 지금 나는 죽을 마땅한 장소를 찾고 있소. 혹시 그런 장소가 어디 있는지 아시오?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14341 /* ~"미안하오, 난 당신을 다른 사람으로 착각했소. 안녕히 계시오."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ EXIT
END

IF ~  Global("Sere","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14342 /* ~당신을 보자 그녀는 능글맞게 웃는다. "무덤에서 기어 나온 사람이 아닌가? 이번에는 무슨 일로 이 세레를 찾아왔소?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14343 /* ~"나는 무덤에서 기어나오지 않았소."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14344 /* ~"나는 무덤에서 기어나오지 않았소."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14345 /* ~농담: "글쎄, 무덤에는 이제 싫증이 나서 지금 나는 죽을 마땅한 장소를 찾고 있소. 혹시 그런 장소가 어디 있는지 아시오?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14346 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14347 /* ~"아무 것도 아니오, 그냥 확인해 보려고 들렸소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.1 4.4 5.3 6.1 7.2 8.0 9.1 10.3 11.1 12.1 13.1 14.4 15.3 16.1 17.4 18.2 19.2 21.2 22.2 23.2 24.1 25.3 26.1 27.4 28.3 29.2 30.1 31.1 32.0 34.1 35.2 37.2 39.0 42.0 43.1 44.0 45.1 46.0 47.8 48.4 49.2 50.1 51.2 52.1 53.1 54.1 55.2 56.2 57.3 58.1 59.2 60.1 61.1 62.2 63.2 64.0 65.3
  SAY #14348 /* ~"질문? 해도 좋소..." 그녀는 당신을 냉혹한 눈으로 쳐다본 후 미소를 짓는다. ~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14349 /* ~"나는 무덤에서 기어나오지 않았소."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14350 /* ~"나는 무덤에서 기어나오지 않았소."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14351 /* ~"나는 당신에게 특정한 더스트맨에 대해 질문하고 싶소..."~ */ GOTO 47
  IF ~  Global("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14352 /* ~"당신은 더스트맨이오?"~ */ GOTO 13
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14353 /* ~"내게 햄리스에 대해 얘기해줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14354 /* ~"나는 당신의 믿음에 대해 당신과 얘기하고 싶소. 어떤 일이 있었기에 당신은 더스트맨의 철학을 더 이상 믿지 않게 되었소?"~ */ GOTO 16
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Recruit_Sere","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #14355 /* ~"세레, 당신은 더 이상 더스트맨이 아니오. 대안을 원하시오?"~ */ GOTO 34
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14356 /* ~"최근에 일지를 본 적이 있소? 난 내 일지를 잃어버렸소."~ */ GOTO 43
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #14357 /* ~"나는 파로드란 사람을 찾고 있소. 그를 본 적이 있소?"~ */ GOTO 45
  IF ~~ THEN REPLY #14358 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2 5.1
  SAY #14359 /* ~"그렇소?" 그녀는 눈썹 하나를 치켜 올린다. "그 곳에서 도망쳐 나오다니 정말 유쾌한 얘기로군. 죽지 않은 사람들에게는 별로 즐거운 곳이 아니니까." 그녀는 코방귀를 뀐다. 그녀는 코방귀를 뀐다. "거미집과 더스트맨이 너무 많거든."~ */
  IF ~~ THEN REPLY #14360 /* ~"당신은 시체안치소를 싫어하오? 당신은 더스트맨이 아니오?"~ */ GOTO 13
  IF ~~ THEN REPLY #14361 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14362 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1 1.0 1.1 2.0 2.1
  SAY #14363 /* ~그녀가 얼굴을 찡그리자 그녀의 얼굴은 마치 구겨진 양피지처럼 주름살 투성이가 된다. "좋소 그럼. 당신은 어떤 *관*에서 기어 나왔소?" 그녀는 중얼거린다. "아마 햄리스가 만든 엉성한 관에서겠지. 그의 관에 들어간 시체는 가시에 찔린다고 하더군." 그녀는 코방귀를 뀐다. "그 아이는 자기 아버지가 죽은 후에는 망가진 동전 한 닢 만큼의 가치도 없다니까."~ */
  IF ~~ THEN REPLY #14364 /* ~"나는 *관* 속에서 나오지도 않았소."~ */ GOTO 5
  IF ~~ THEN REPLY #14365 /* ~"햄리스가 누구요?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14366 /* ~"나는 *관* 속에서 나오지 않았소... 실은 난 시체안치소에서 막 나왔소."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14367 /* ~농담: "그가 만든 관은 통풍이 너무 잘 되오, 그래서 지금 나는 죽을 마땅한 장소를 찾고 있소. 혹시 그런 장소가 어디 있는지 아시오?"~ */ GOTO 9
  IF ~~ THEN REPLY #14368 /* ~"나는 정보를 얻으려 하고 있소. 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #14369 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #14370 /* ~그녀가 웃자 그녀의 고르지 않은 이빨이 드러난다. "좋소. 그럼 당신은 어떤 *석관*에서 기어 나왔소?" 그녀는 말을 멈추고 혼자서 킬킬거린다. "당신을 그냥 놀렸을 뿐이오. 별 악의는 없었소. 하지만 당신은 정말 죽은 사람처럼 보이오."~ */
  IF ~~ THEN REPLY #14371 /* ~"당신이 말한 햄리스란 누구요?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14372 /* ~"그건 당연하오... 난 시체안치소에서 막 나왔소."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14373 /* ~농담: "괜찮소. 솔직히 말해서 석관은 너무 넓었소, 그래서 지금 나는 누워서 죽을 마땅한 장소를 찾고 있소. 혹시 그런 장소가 어디 있는지 아시오?"~ */ GOTO 9
  IF ~~ THEN REPLY #14375 /* ~"나는 정보를 얻으려 하고 있소. 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #14376 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 4.1 5.0
  SAY #14374 /* ~"햄리스는 마계구에 사는 관 파괴자... 아니, 관 제작자요. 그는 아버지가 죽자 가게를 물려받았는데, 그건 시길에서 관, 무덤 또는 묘비를 필요로 하는 모든 시체들에게 있어 큰 재앙이오."~ */
  IF ~~ THEN REPLY #14377 /* ~"그의 아버지는 어떻게 되었소?"~ */ GOTO 7
  IF ~~ THEN REPLY #14378 /* ~"알겠소. 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #14379 /* ~"정보를 주어 고맙소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14380 /* ~"당신 귀는 장식용이오? 그는 *죽었소.*" 그녀는 중얼거린다. "아마 그의 아들이 말로 그를 죽였을 거요. 그 아이는 수다를 멈출 줄 모르니까. 그의 머리가 몸에서 떨어져 나오지 않는 게 신기할 정도요."~ */
  IF ~~ THEN REPLY #14381 /* ~"그렇다면 당신들 두 사람 사이에는 많은 공통점이 있는 것 같소."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14382 /* ~농담: "그렇다면 난 별로 그의 관 속에서 매장되고 싶지 않소. 혹시 권장할만한 다른 누워서 죽을 장소는 없소?"~ */ GOTO 9
  IF ~~ THEN REPLY #14383 /* ~"나는 정보를 얻으려 하고 있소. 당신에게 질문을 좀 해도 괜찮겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #14384 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14385 /* ~그녀는 눈을 좁게 뜬다. "우리 둘 모두를 위해 그 주둥아리를 좀 닥치시오. 나와 그 재잘거리는 애송이를 비교하지 말란 말이오."~ */
  IF ~~ THEN REPLY #14386 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14387 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.2 4.3 5.2 7.1
  SAY #14388 /* ~그녀는 당신 귀가 아플 정도로 크게 웃는다. "하! 여긴 아니오... 당신이 지루해서 죽고 싶다면 모르지만." ~ */
  IF ~~ THEN REPLY #14389 /* ~"여긴 대체 뭐가 잘못된 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #14390 /* ~"기억해 두리다. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14391 /* ~"이만 실례해야겠소. 안녕히 계시오, 세레."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14392 /* ~"쯧쯧. 누가 당신 시각과 정신을 빼앗기라도 했소?" 그녀는 손을 흔들어 바 안을 가리킨다. "둘러보시오. 뭐가 보이오?"~ */
  IF ~~ THEN REPLY #14393 /* ~"더스트맨."~ */ GOTO 11
  IF ~~ THEN REPLY #14394 /* ~"더스트맨들의 바."~ */ GOTO 11
  IF ~~ THEN REPLY #14395 /* ~"유쾌히 마시고 즐겁게 대화를 하며, 삶을 최대한으로 찬양하는 한 무리의 더스트맨들."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #14396 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14397 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #14398 /* ~"*매우* 훌륭하오!" 그녀는 무미건조하게 웃는다. 하지만 당신을 보고 웃는 것 같지는 않다. "나도 마찬가지지만, 더스트맨은 시길에서 가장 재미없고 멍청한 족속들이오... 항상 죽음에 대해 경건하게 얘기하지, 마치 그것이 다원 우주의 모든 생명체가 추구해야 할 신성 동맹이나 되는 것처럼. 쯧쯧."~ */
  IF ~~ THEN REPLY #14399 /* ~"하지만 당신은 더스트맨이오."~ */ GOTO 13
  IF ~~ THEN REPLY #14400 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14401 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #14402 /* ~"당신 혀는 정말 건방지군... 당신 혀가 당신보다 더 똑똑한 것 같은데?" 세레는 눈을 가늘게 뜨고 당신을 본 후 코방귀를 뀐다. "상처가 그렇게 많은 것도 당연하군."~ */
  IF ~~ THEN REPLY #14403 /* ~"하지만 그건 왜 한 더스트맨이 이 곳에 서서 다른 더스트맨을 조롱하는지에 대한 설명이 될 수가 없소. 그것에 대해 대답해주겠소? 당신은 더스트맨이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #14404 /* ~"매우 영리하군. 보시오, 그 밖에도 묻고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14405 /* ~"이미 충분히 들은 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 3.0 11.0 12.0
  SAY #14406 /* ~"더스트맨? 그런 모양이오." 세레는 조소한다. "쯧쯧. 난 이 법복을 입고 참 오랜 세월을 보냈소. 이 육신은 황천으로 갈 때가 다 되었소." 그녀는 킬킬 웃으나 즐거워 웃는 것 같지는 않다. ~ */
  IF ~~ THEN REPLY #14407 /* ~"당신은 죽는 것이 두렵소?"~ */ GOTO 14
  IF ~~ THEN REPLY #14408 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14409 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #14410 /* ~"물론이오! 그렇지 않은 사람이 어디 있소?" 그녀는 눈살을 찌푸리고 주위를 흘긋 본다. "더스트맨은 예외지만. 그들이 죽음을 두려워하지 않는 건 너무 오랫동안 자신들의 박쥐똥을 먹어온 탓에 죽음이 무슨 '해방'이라고 착각하게 됐기 때문이오. 쯧쯧."~ */
  IF ~~ THEN REPLY #14411 /* ~"그것은 일종의 해방이오..."~ */ GOTO 15
  IF ~~ THEN REPLY #14412 /* ~"당신은 더스트맨 같지가 않소."~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14413 /* ~"그래, 이 믿음의 위기의 원인은 무엇이오?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14414 /* ~"그래, 이 믿음의 위기의 원인은 무엇이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #14415 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14416 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #14417 /* ~"만약 당신이 이 삶이 짐이라고 생각한다면 그럴 수도 있소. 하지만 내 생각은 다르오."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14418 /* ~"그래, 이 믿음의 위기의 원인은 무엇이오?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14419 /* ~"그래, 이 믿음의 위기의 원인은 무엇이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #14420 /* ~"그럼 당신은 더스트맨의 가르침을 믿지 않소? 당신은 더스트맨이 아니오?"~ */ GOTO 65
  IF ~~ THEN REPLY #14421 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14422 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 14.2 14.3 15.0 15.1 65.0 65.1 65.2
  SAY #14423 /* ~그녀는 어깨를 으쓱한다. "삶은... 그건..." 그녀는 눈살을 찌푸린다. "하! 관두시오. 구질구질한 설명으로 당신을 귀찮게 하지 않겠소."~ */
  IF ~~ THEN REPLY #14424 /* ~"실은 알고 싶소."~ */ GOTO 17
  IF ~~ THEN REPLY #14425 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14426 /* ~"그건 신들에게 감사할만한 일 같소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #14427 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #14428 /* ~"오, 그래?" 그녀는 당신을 회의적으로 쳐다본다. "쯧쯧. 당신은 내가 몇 살로 보이오?"~ */
  IF ~~ THEN REPLY #14429 /* ~진실: "늙었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sere_1","GLOBALLaw",1)
~ GOTO 18
  IF ~~ THEN REPLY #14430 /* ~그녀를 가급적 실망시키지 않으려고 한다: "별로 늙지 않았소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sere_1","GLOBALGood",1)
~ GOTO 18
  IF ~~ THEN REPLY #14431 /* ~선의의 거짓말: "젊은 편이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALGood_Sere_2","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #14432 /* ~"모르겠소, 그리고 관심도 없소."~ */ GOTO 20
  IF ~~ THEN REPLY #14433 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14434 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #14435 /* ~그녀는 코방귀를 뀐다. "틀렸소. 난 *정말로* 늙었소. 나는 대부분의 세월을 더스트맨을 가르치는 데 보냈소. 나는 많은 풋내기 더스트맨이 성장하는 것을 보아 왔고, 그들에게 당파의 관행에 대해 가르쳤으며, 믿음을 지키면서 당파의 교의에 대해 설교하는... 등의 일을 했소." 그녀는 눈살을 찌푸린다. "아무런 의문도 의심도 갖지 않았소. 현생은 진정한 죽음으로 가기 위한 대기실에 불과하다고 생각했소." ~ */
  IF ~~ THEN REPLY #14436 /* ~"무슨 일이 일어났소?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14437 /* ~"점점 지루해지는군. 이만 실례하겠소."~ */ GOTO 20
  IF ~~ THEN REPLY #14438 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14439 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY #14440 /* ~그녀는 눈을 깜박인 후 미소를 짓는다. "당신은 정말 귀엽게 구는군." 그녀는 혼자서 킬킬 웃다가 기침을 한다. "난 보기보다 늙었소, 그것도 훨씬 더." 그녀는 한숨을 쉰다. "나는 대부분의 세월을 더스트맨을 가르치는 데 보냈소. 나는 많은 풋내기 더스트맨이 성장하는 것을 보아 왔고, 그들에게 당파의 관행에 대해 가르쳤으며, 믿음을 지키면서 당파의 교의에 대해 설교하는... 등의 일을 했소." 그녀는 눈살을 찌푸린다. "아무런 의문도 의심도 갖지 않았소. 현생은 진정한 죽음으로 가기 위한 대기실에 불과하다고 생각했소." ~ */
  IF ~~ THEN REPLY #14441 /* ~"무슨 일이 일어났소?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14442 /* ~"점점 지루해지는군. 이만 실례하겠소."~ */ GOTO 20
  IF ~~ THEN REPLY #14443 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14444 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.1 22.1
  SAY #14445 /* ~세레는 눈살을 찌푸린다. "쯧쯧. 나보고 얘기를 하라고 한 건 *당신*이었소. 앞으로는 당신이 질문하면 조심해야겠군.~ */
  IF ~~ THEN REPLY #14446 /* ~"물론이오. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Sere_1","GLOBALGood",-1)
SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0 19.0
  SAY #14447 /* ~"한 달 반 정도 전에 나는 열병에 걸렸소." 그녀는 한숨을 쉰다. "난 그것이 끝이라고 생각했소. 허나 그 일은... 내 정신을 흔들어 놓았소."~ */
  IF ~~ THEN REPLY #14448 /* ~"어떻게?"~ */ GOTO 22
  IF ~~ THEN REPLY #14449 /* ~"점점 지루해지는군. 이만 실례하겠소."~ */ GOTO 20
  IF ~~ THEN REPLY #14450 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14451 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #14452 /* ~그녀의 얼굴이 돌처럼 굳어진다. "당신 당파의 멤버들이 마치 창백한 굴들의 무리처럼 당신 침대를 둘러싸고 서서, 당신의 고통과 죽음을 정말 좋은 일이라며 고개를 끄덕이며 서로 동의하는 걸 상상을 해보시오. '오, 세레는 너무 운이 좋아! 그녀는 곧 삶의 짐으로부터 해방될 거야!' *삶의 짐?* 바로 그 때 내게 다른 생각이 떠올랐소..."~ */
  IF ~~ THEN REPLY #14453 /* ~"그 때...?"~ */ GOTO 23
  IF ~~ THEN REPLY #14454 /* ~"점점 지루해지는군. 이만 실례하겠소."~ */ GOTO 20
  IF ~~ THEN REPLY #14455 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14456 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14457 /* ~"그녀는 묘한 표정을 짓는다. "자신의 *삶*에 대해 고마워하지 않는 건 미친 일이라는 생각이 들었소. 더스트맨은 이 삶은 고통과 불행뿐이라고 하오... 정말 그렇소? 또한 그들은 우리가 기꺼이 망각의 세계로 가야 한다고 하오... 정말 그래야겠소?" 그녀는 고개를 젓는다. "의문만 많고... 그에 대한 답은 별로 없소."~ */
  IF ~~ THEN REPLY #14458 /* ~"당신은 더스트맨의 철학을 더 이상 믿지 않는 것 같소."~ */ GOTO 24
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14459 /* ~"당신은 어떻게 할 거요?"~ */ GOTO 25
  IF ~~ THEN REPLY #14460 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14461 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14462 /* ~"내 머릿속에서는 수많은 의문들이 윙윙거리고 있는 것 같소." 그녀는 자신의 관자놀이를 문지른다. "때로는 그것들을 모두 조용하게 만들기가 힘드오. 그것들은 답을 달라고 하고 있으나, 나는 아직 그에 대한 답들을 모두 찾지 못했소."~ */
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14463 /* ~"당신은 어떻게 할 거요?"~ */ GOTO 25
  IF ~~ THEN REPLY #14464 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14465 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #14466 /* ~"솔직히 나도 모르겠소." 세레는 한숨을 쉰다. "의심이란 그런 게 문제요. 난 내가 직접 느끼고 있는 것조차 진실이라고 확신할 수가 없소. 내가 죽음을 두려워하는 것이 열병의 후유증인지 아닌지도 모르겠고 내가 뭘 해야 할지도 모르겠소. 그냥 일시적인 현상일까? 난 모르겠소."~ */
  IF ~~ THEN REPLY #14467 /* ~"세레, 만약 당신이 더스트맨의 철학을 진정으로 믿었다면 열병에 걸렸었다고 해서 그런 의문을 품게 되는 일은 없었을 거요."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14468 /* ~"세레, 난 이 일이 당신의 믿음에 대한 시험이라고 생각하고 싶소. 당신의 이러한 감정들은 어디까지나 일시적인 것 같소. 당신의 더스트맨에 대한 오랜 헌신이 거짓일리는 없소."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",2)
AddexperienceParty(500)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14469 /* ~"더스트맨의 철학의 핵심에는 현생이 곧 고통이라는 사상이 있소. 고통은 삶이 영혼을 현생에 묶어두기 위해 사용하는 무기요. 열병에 걸렸던 일이 당신으로 하여금 더스트맨에 대한 믿음을 잃게 만들도록 하지는 마시오. 시간이 이러한 회의와 의문들을 치유해 줄 것이오."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",3)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14470 /* ~"그것은 대답하기 어려운 질문이오. 자, 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14471 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2
  SAY #14472 /* ~그녀는 당신을 쳐다본 후 천천히 고개를 끄덕인다. "아마 그럴지도..." 그녀는 눈살을 찌푸린다. 골똘히 생각하느라 그녀의 얼굴에 주름이 잡힌다. "조금 더 속고해 봐야 할 것 같소."~ */
  IF ~  Global("Sere_Death_Answer","GLOBAL",0)
~ THEN REPLY #14473 /* ~"물론이오. 그건 결코 작은 문제가 아니오."~ */ GOTO 27
  IF ~~ THEN REPLY #14474 /* ~"내가 당신에게 부탁하는 건 그게 전부요. 자, 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14475 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14476 /* ~"내 재난에 대한 얘기는 그만 하시오!" 그녀는 당신의 흉터들을 쳐다본다. "당신은 마치 죽음과 수백 번 악수를 한 사람처럼 보이는구려. 그런 경험 때문에 당신의 시야가 바뀌지 않았소? 삶에 대해 더 감사하지 않소?"~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14477 /* ~"내 상태는 특이하오... 나는 시체안치소에서 깨어났소. 내 생각에 그들은 날 시체로 착각하고 매장할 준비를 하고 있었던 것 같소. 기이한 건 난 내가 실제로 죽었으나... 다시 살아났는 생각이 든다는 점이오."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",1)
~ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14478 /* ~"나의 죽음과의 충돌은 다른 사람들의 그것보다 훨씬 밀접한 것이오. 난 죽을 수가 없소... 적어도 내가 아는 한은."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",2)
~ GOTO 28
  IF ~~ THEN REPLY #14479 /* ~진실: "그렇소."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",3)
~ GOTO 62
  IF ~~ THEN REPLY #14480 /* ~진실: "아니오."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",4)
~ GOTO 63
  IF ~~ THEN REPLY #14481 /* ~"그 일에 대해서는 별로 얘기하고 싶지 않소. 하지만 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14482 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 62.0 62.1 63.0 63.1
  SAY #14483 /* ~세레는 눈을 깜박인다. "당신은 날 놀리려 하고 있군."~ */
  IF ~~ THEN REPLY #14484 /* ~"그건 사실이오."~ */ GOTO 29
  IF ~~ THEN REPLY #14485 /* ~"그래, 난 농담을 하고 있소."~ */ GOTO 33
  IF ~~ THEN REPLY #14486 /* ~"아니오."~ */ GOTO 29
  IF ~~ THEN REPLY #14487 /* ~"그 일에 대해서는 별로 얘기하고 싶지 않소. 하지만 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14488 /* ~"난 이미 필요 이상으로 얘기를 한 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #14489 /* ~"다원 우주는 너무나도 기이한 곳이오, 그리고 다른 사람의 이야기를 함부로 쓰레기라고 단정짓기에는 난 지금까지 너무도 많은 것을 보아 왔소." 그녀는 당신 얼굴을 살펴본다. "만약 그게 사실이라면 왜 그런 일이 일어나는 거요?"~ */
  IF ~~ THEN REPLY #14490 /* ~"모르겠소."~ */ GOTO 30
  IF ~~ THEN REPLY #14491 /* ~"내가 아는 건 내가 시체안치소에서 아무런 기억도 없이 온몸에 날 세 번 죽이고도 남을 상처로 도배한 채 깨어났다는 사실뿐이오."~ */ GOTO 31
  IF ~~ THEN REPLY #14492 /* ~"모르겠소. 자, 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14493 /* ~"난 이미 필요 이상으로 얘기를 한 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14494 /* ~그녀는 잠시 생각을 한 후 어깨를 으쓱한다. "정말 기이하군. 그 비슷한 얘기도 들어본 적이 없소. 기억을 잃은 건 참 안된 일이오."~ */
  IF ~~ THEN REPLY #14495 /* ~"왜 이런 일이 일어나는지 혹시 짐작이라도 가시오?"~ */ GOTO 32
  IF ~~ THEN REPLY #14496 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14497 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #14498 /* ~"너무 큰소리로 말하지 마시오." 그녀는 주변을 흘긋 본다. "정말 기이하군. 그 비슷한 얘기도 들어본 적이 없소. 기억을 잃은 건 참 안된 일이오."~ */
  IF ~~ THEN REPLY #14499 /* ~"왜 이런 일이 일어나는지 혹시 짐작이라도 가시오?"~ */ GOTO 32
  IF ~~ THEN REPLY #14500 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14501 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0 31.0
  SAY #14502 /* ~"아니, 그런 사람은 본 적이 없소. 지금까지는 사신이 데려가기를 거부하는 사람을 본 적이 없었소."~ */
  IF ~~ THEN REPLY #14503 /* ~"그 밖의 다른 사안들에 대해 좀 물어봅시다..."~ */ GOTO 2
  IF ~~ THEN REPLY #14504 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY #14505 /* ~그녀는 눈살을 찌푸린다. "말조심하는 게 좋을 거요. 그러다가는 언젠가 목숨을 잃을 수도 있으니까." 그녀는 돌아서며 떠나라는 손짓을 한다. "날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #14506 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 2.6
  SAY #14507 /* ~"에? 분명하게 말하시오."~ */
  IF ~~ THEN REPLY #14508 /* ~"내게는 더스트맨과 같은 조직들은 타도되어야 한다고 믿는 친구들이 있소."~ */ GOTO 35
  IF ~~ THEN REPLY #14509 /* ~"실은 내가 말을 잘못했소. 그 밖에도 당신에게 질문하고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14510 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14511 /* ~"오?" 그녀는 능글맞게 웃는다. "*연맹* 말이오?"~ */
  IF ~~ THEN REPLY #14512 /* ~"그렇소."~ */ GOTO 36
  IF ~~ THEN REPLY #14513 /* ~"아마 그럴지도..."~ */ GOTO 36
  IF ~~ THEN REPLY #14514 /* ~"실은 내가 말을 잘못했소. 그 밖에도 당신에게 질문하고 싶은 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14515 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1
  SAY #14516 /* ~"쯧쯧! 그 열광적인 군중 선동가들은 더스트맨들보다 더 미쳤소. 나 같은 노파는 그런 일에는 어울리지 않소."~ */
  IF ~~ THEN REPLY #14517 /* ~"그렇소? 난 당신이 귀중한 멤버가 될 수 있다고 생각하오."~ */ GOTO 37
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14518 /* ~"거절하기 전에 이걸 생각해 보시오. 당신의 죽음과의 충돌은 당신으로 하여금 결국 삶은 살 가치가 있다는 것을 깨닫게 했소. 더스트맨은 신참자들을 타락시켜 그들이 삶보다 죽음이 낫다고 생각하게 만들고 있소. 당신은 그것이 옳다고 생각하오?"~ */ GOTO 40
  IF ~~ THEN REPLY #14519 /* ~"난 당신에게 변화가 필요하다고 생각했소."~ */ GOTO 37
  IF ~~ THEN REPLY #14520 /* ~"좋소.그럼 떠나도록 하겠소... 마음이 바뀌면 내게 알려주시오."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.2
  SAY #14521 /* ~"당신은 착각을 한 것 같소." 그녀는 재미있다는 듯 가볍게 웃는다. "내가 더스트맨에 대해 많은 의문을 가지고 있는 건 사실이지만 *그럴* 정도는 아니오."~ */
  IF ~~ THEN REPLY #14522 /* ~"거절하기 전에 이걸 생각해 보시오. 당신의 죽음과의 충돌은 당신으로 하여금 결국 삶은 살 가치가 있다는 것을 깨닫게 했소. 더스트맨은 신참자들을 타락시켜 그들이 삶보다 죽음이 낫다고 생각하게 만들고 있소. 당신은 그것이 옳다고 생각하오?"~ */ GOTO 40
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14523 /* ~"좋소, 마지막 질문이오: 당신은 사후 계약서에 대해 어떻게 생각하시오?" ~ */ GOTO 38
  IF ~~ THEN REPLY #14524 /* ~"그럼 관두시오. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #14525 /* ~"좋소.그럼 떠나도록 하겠소... 마음이 바뀌면 내게 알려주시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #14526 /* ~"사후 계약서?" 그녀는 놀란 듯하다. "그게 어떻다는 거요?"~ */
  IF ~~ THEN REPLY #14527 /* ~"노예로 부리려고 죽은 사람의 시체를 사는 것이 *옳은* 일이라고 생각하시오?" 사람의 영혼의 일시적인 약점을 이용해 그들이 죽은 후 그들의 시체를 예속시키는 일이? 그건 더스트맨이 자랑스럽게 여기는 일이오?"~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #14528 /* ~"별로 미덥지 않군."~ */
  IF ~~ THEN REPLY #14529 /* ~"당신에게 다른 질문을 해도 괜찮겠소...?~ */ GOTO 2
  IF ~~ THEN REPLY #14530 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.1 37.0
  SAY #14531 /* ~"아니오... 하지만..."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14532 /* ~"그럼 사후 계약서는 어떻소? 노예로 부리려고 죽은 사람의 시체를 사는 것이 *옳은* 일이라고 생각하시오?" 사람의 영혼의 일시적인 약점을 이용해 그들이 죽은 후 그들의 시체를 예속시키는 일이? 그건 더스트맨이 자랑스럽게 여기는 일이오?"~ */ GOTO 41
  IF ~~ THEN REPLY #14533 /* ~"스스로의 소리에 귀를 기울이시오, 세레. 당신의 대답도 당신의 회의를 드러내고 있소. 당신은 더스트맨의 철학을 믿지 않소. 당신은 그것이 틀렸다는 걸 알고 있소."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 38.0 40.0 40.1
  SAY #14534 /* ~"에..." 세레는 얼굴을 찌푸린다. "흠... 내가 더스트맨의 모든 관행에 *동의*하는 건 아니오, 하지만 당신 친구들은 무슨 일을 할 계획이오?"~ */
  IF ~~ THEN REPLY #14535 /* ~"우리는 벽들을 허물고 새로 시닥할 것이오. 그리고 모든 이들은 그들이 철학이라고 부르는 위선으로부터 해방될 것이오."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Recruit_Sere","GLOBAL",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #14536 /* ~"좋소, 나는 당신 친구들을 위한 귀가 되도록 하겠소." 세레는 자기 자신에게 놀란 듯하다. "그보다 더한 일도 할지도 모르오." 그녀는 웃는다. "난 벌써 전보다 더 활력이 넘치는 것 같소... 아마 음모에 가담한 덕분인 것 같소."~ */
  IF ~~ THEN REPLY #14537 /* ~"당신은 결코 후회하지 않을 것이오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14538 /* ~"고맙소, 세레. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 2.7
  SAY #14539 /* ~"그건 어떻게 생겼소?"~ */
  IF ~~ THEN REPLY #14540 /* ~"짐작도 가지 않소."~ */ GOTO 44
  IF ~~ THEN REPLY #14541 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 2
  IF ~~ THEN REPLY #14542 /* ~"중요한 일이 아니오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #14543 /* ~"만약 그것이 어떻게 생겼는지도 모른다면 무슨 수로 그걸 찾을 생각이오?"~ */
  IF ~~ THEN REPLY #14544 /* ~"나도 그것에 대해 걱정하기 시작하고 있소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14545 /* ~"중요한 일이 아니오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 2.8
  SAY #14546 /* ~그녀는 얼굴을 찡그린다. "그 *개자식*... 놈은 수집자들 중에서도 최악이오. 나는 그의 소굴이 시체안치소 정문에서 서쪽으로 여러 블록 가면 있는 넝마주이 광장 어딘가에 있다고 들었소. 하지만 위험한 곳이오. 수집자들 중 일부는 사람이 죽는 걸 기다려서 시체를 수거할 정도로 인내심이 많지 않소."~ */
  IF ~~ THEN REPLY #14547 /* ~"수집자들?"~ */ GOTO 46
  IF ~~ THEN REPLY #14548 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14549 /* ~"주의를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14550 /* ~"그들은 벌통에서 시체를 찾아내 더스트맨에게 파는 쥐새끼같은 자들이오. 그들은 죽은 자를 팔아 삶을 영위하고 있소. 정말 한심한 자들이오. 그들과 같은 도시에 살고 있다는 게 부끄러울 지경이오." 그녀는 한숨을 쉰다. "쯧쯧. 하지만 적어도 거리를 깨끗하게 하는 데는 도움이 되오."~ */
  IF ~~ THEN REPLY #14551 /* ~"아. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14552 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.2 48.3 49.1 50.0 51.1 52.0 53.0 54.0 55.1 56.1 57.2 58.0 59.1 60.0 61.0
  SAY #14553 /* ~"그러시오. 누구에 대해 알고 싶소?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #14554 /* ~"죽음을 기다리는 자에 대해 얘기해줄 수 있겠소?"~ */ GOTO 53
  IF ~  GlobalGT("Mortai","GLOBAL",0)
~ THEN REPLY #14555 /* ~"모타이에 대해 얘기해줄 수 있겠소?"~ */ GOTO 55
  IF ~  GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #14556 /* ~"에모릭에 대해 얘기해줄 수 있겠소?"~ */ GOTO 54
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #14557 /* ~"내게 늙은 카퍼아이즈에 대해 얘기해줄 수 있겠소?"~ */ GOTO 61
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #14558 /* ~"나는 시체안치소에서 달이라는 이름의 서기를 만났소.당신은 그를 아오?"~ */ GOTO 51
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #14559 /* ~"나는 시체안치소에서 소에고라는 이름의 가이드를 만났소. 당신은 그를 아오?"~ */ GOTO 48
  IF ~  GlobalGT("Eivene","GLOBAL",0)
~ THEN REPLY #14560 /* ~"시체안치소의 향료 처리사들 중 하나인... 에이-빈. 그녀를 아시오?"~ */ GOTO 59
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
Global("Soego","GLOBAL",0)
Global("Dhall","GLOBAL",0)
Global("Eivene","GLOBAL",0)
~ THEN REPLY #14561 /* ~"관두시오, 난 그들의 이름을 모르오."~ */ GOTO 64
  IF ~~ THEN REPLY #14562 /* ~"관두시오. 대신 다른 질문을 하고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14563 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.5
  SAY #14564 /* ~"그 아이는 이 곳의 단골이었소. 그에게 무슨 일이 일어났는지는 나도 모르오. 그는 친구가 죽은 일로 심한 충격을 받았소."~ */
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",0)
~ THEN REPLY #14565 /* ~"설명해 주시오."~ */ DO ~SetGlobal("Know_Soego_Friend_Death","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",1)
~ THEN REPLY #14566 /* ~"설명해 주시오."~ */ GOTO 49
  IF ~~ THEN REPLY #14567 /* ~"소에고는 시체안치소에서 항상 가이드 노릇을 했소?"~ */ GOTO 50
  IF ~~ THEN REPLY #14568 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14569 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14570 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #14571 /* ~"그의 친구가 몇 주 전 벌통에서 쥐들에게 갈기갈기 찢겨서 죽었소." 그녀는 고개를 젓는다. "정말 끔찍한 일이오."~ */
  IF ~~ THEN REPLY #14572 /* ~"소에고는 시체안치소에서 항상 가이드 노릇을 했소?"~ */ GOTO 50
  IF ~~ THEN REPLY #14573 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14574 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14575 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.2 49.0
  SAY #14576 /* ~"아니, 지난 몇 달 동안 만이오... 내가 그에 대해 마지막으로 들을 건 그가 선교 임무를 위해 어딘가로 떠났다는 얘기뿐이오. 하지만 어디로 갔는지는 나도 모르겠소."~ */
  IF ~~ THEN REPLY #14577 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14578 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14579 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.4
  SAY #14580 /* ~"쯧쯧. 달? 그는 내가 시체안치소에서 교육을 받을 때 내 철학 선생이었소. 정말 완고한 얼간이지. 들리는 말로는 병에 걸렸다고 하오. 나는 그가 죽음조차 지루하게 만들 거라는 데 돈을 걸어도 좋소."~ */
  IF ~~ THEN REPLY #14581 /* ~"그는 죽어가고 있소?"~ */ GOTO 52
  IF ~~ THEN REPLY #14582 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14583 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14584 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14585 /* ~"쯧쯧. 그는 발진에 걸린 개보다도 더 아프오. 이제 그에게 시간은 얼마남지 않았소. ~ */
  IF ~~ THEN REPLY #14586 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14587 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14588 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 47.0
  SAY #14593 /* ~"죽음을 기다리는 자? 쯧쯧! 그 아이에게는 수탕나귀의 *반*만큼의 지능도 없소. 그는 실제로 죽기를 *원하오.* 그렇게 젊은데 말이오. 죽으면 그도 장신을 차리고 뭔가를 좀 배우겠지..."~ */
  IF ~~ THEN REPLY #14594 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14595 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14596 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.2
  SAY #14597 /* ~"그 굳은 표정의 늙은 얼간이 말이오? 나는 그를 가르쳤고, 한때는 그를 높이 평가했으나, 이제는 아니오. 그는 이 바에 있는 젊은 더스트맨들이 자신을 권위의 상징으로 받들도록 한가할 때 이 곳에 와서 얼쩡거리는 늙은 굴에 불과하오." 그녀는 중얼거린다. "늙은 콘도르요."~ */
  IF ~~ THEN REPLY #14598 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14599 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14600 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.1
  SAY #14601 /* ~"모타이? 하! 더스트맨에 대해 물어보겠다고 하지 않았소?" 그녀는 침을 뱉는다. "그 돈이나 가지고 노는 수다쟁이 얼간이보다 더 더스트맨답지 않은 더스트맨은 없소!"~ */
  IF ~~ THEN REPLY #14602 /* ~"무슨 뜻이오?"~ */ GOTO 56
  IF ~~ THEN REPLY #14603 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14604 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14605 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #14606 /* ~"모타이는 보다 많은 사후 계약서에 서명을 받아 상급자들을 감탄하게 하려고 어찌나 안달하고 있는지 아마 그는 영원히 더스트맨이 되지 못할 거요."~ */
  IF ~~ THEN REPLY #14607 /* ~"이해할 수가 없소."~ */ GOTO 57
  IF ~~ THEN REPLY #14608 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14609 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14610 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #14611 /* ~"그는 열성적으로 계약서에 서명을 받으려고 하고 있소. 그는 자기 평판에 무척 신경을 쓴다오. 그는 더스트맨을 무슨 출세의 길로 생각하는 모양이오. 그것만 가지고도 그가 어떤 자인지 아는 데는 충분할 거요."~ */
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14612 /* ~"난 아직도 이해하지 못하겠소."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 58
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14613 /* ~"난 아직도 이해하지 못하겠소."~ */ GOTO 58
  IF ~~ THEN REPLY #14614 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14615 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14616 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #14617 /* ~"사람들은 열정이 사람을 죽인다고 하오." 세레는 코방귀를 뀐다. "쯧쯧. 하지만 더스트맨은 반대로 생각하오. 그들은 열정이 사람을 살아 있게 만든다고 생각하오. 만약 당신이 열성, 탐욕, 또는 야망 등의 열정을 버리지 못한다면, 삶이 항상 당신의 일부분을 붙잡고 있을 것이기 때문에 당신은 진정한 죽음을 맞이할 수가 없소."~ */
  IF ~~ THEN REPLY #14618 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14619 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14620 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 47.6
  SAY #14621 /* ~"누구?"~ */
  IF ~~ THEN REPLY #14622 /* ~"눈이 나쁘고, 거의 귀가 먹었으며, 손에 갈고리 발톱이 달린... 이상한 젊은 여자요."~ */ GOTO 60
  IF ~~ THEN REPLY #14623 /* ~"관두시오. 당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14624 /* ~"상관없소. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 2
  IF ~~ THEN REPLY #14625 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #14626 /* ~세레는 고개를 젓는다. "아마 새로운 참입자인 모양이오. 그녀에 대해서는 들어본 적이 없소."~ */
  IF ~~ THEN REPLY #14627 /* ~"좋소. 당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14628 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 2
  IF ~~ THEN REPLY #14629 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 47.3
  SAY #14630 /* ~"그의 대해서는 잘 모르오... 그는 기묘한 자요. 그는 저 장소에서 절대로 움직이지 않으며, 막고 마시지도 않고 다만 기다릴 뿐이오." 그녀는 몸을 약간 떤다. "그는 날 불안하게 만드오."~ */
  IF ~~ THEN REPLY #14631 /* ~"당신에게 다른 더스트맨들에 대해 물어볼 수 있겠소?"~ */ GOTO 47
  IF ~~ THEN REPLY #14632 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14633 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 27.2
  SAY #14634 /* ~"당연하오. 죽음은 아무런 위안도 되지 못하니까."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14635 /* ~"내 상태는 특이하오... 나는 시체안치소에서 깨어났소. 내 생각에 그들은 날 시체로 착각하고 매장할 준비를 하고 있었던 것 같소. 기이한 건 난 내가 실제로 죽었으나... 다시 살아났는 생각이 든다는 점이오."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14636 /* ~"나의 죽음과의 충돌은 다른 사람들의 그것보다 훨씬 밀접한 것이오. 난 죽을 수가 없소... 적어도 내가 아는 한은."~ */ GOTO 28
  IF ~~ THEN REPLY #14637 /* ~"그럴 거요. 그런데 다른 사안에 대해 물어보고 싶소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14638 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 27.3
  SAY #14639 /* ~"참 안됐소." 세레는 헛기침을 한다. "만약 사신이 당신에게 미소짓는 것을 보고도 삶에 대한 애착이 생기지 않는다면, 당신이 제정신을 차리게 만들 수 있는 건 다원 우주 어느 곳에도 존재하지 않을 거요."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14640 /* ~"내 상태는 특이하오... 나는 시체안치소에서 깨어났소. 내 생각에 그들은 날 시체로 착각하고 매장할 준비를 하고 있었던 것 같소. 기이한 건 난 내가 실제로 죽었으나... 다시 살아났는 생각이 든다는 점이오."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14641 /* ~"나의 죽음과의 충돌은 다른 사람들의 그것보다 훨씬 밀접한 것이오. 난 죽을 수가 없소... 적어도 내가 아는 한은. 그건 날 죽음에 무감각하게 만드오"~ */ GOTO 28
  IF ~~ THEN REPLY #14642 /* ~"그건 당신 생각일 뿐이오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14643 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 47.7
  SAY #14644 /* ~"쓸데없는 서설은 생략하도록 하겠소." 그녀는 조롱하는 투로 말한다. "그들은 잡다한 족속들이오. 만약 그들에 대해 알고 싶다면 먼저 그들의 이름을 알아낸 후 다시 내게 오시오."~ */
  IF ~~ THEN REPLY #14645 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14646 /* ~"그럼 가서 그들과 대화를 나누도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 14.1 15.2
  SAY #14647 /* ~그녀는 어깨를 으쓱한다. "과거와는 달리 더스트맨 법복이 내게는 더 이상 어울리지 않는 모양이오."~ */
  IF ~~ THEN REPLY #14648 /* ~"무슨 일이 일어났소?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14649 /* ~"그래, 이 믿음의 위기의 원인은 무엇이오?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14650 /* ~"그래, 이 믿음의 위기의 원인은 무엇이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #14651 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #14652 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Sere","GLOBAL",2)
~ THEN BEGIN 66 // from:
  SAY #14653 /* ~세레는 당신을 보자 눈살을 찌푸린다. "당신이 나온 무덤으로나 돌아가시오. 당신과 말장난을 할 정도로 내게 남은 시간이 많지는 않소."~ */
  IF ~~ THEN EXIT
END
