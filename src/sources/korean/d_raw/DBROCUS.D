// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2887 /* ~이 친절하게 생긴 노인은 당신이 다가오자 정중하게 고개를 끄덕인다. "안녕하시오... 뭐 도와 드릴 일이라도 있소?"~ */
  IF ~~ THEN REPLY #2888 /* ~"그렇소, 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39381 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #39382 /* ~노인은 돌아서서 미소를 짓는다. "다시 만나 반갑소. 내게 무슨 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #39383 /* ~"그렇소, 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39384 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.1 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0
  SAY #39385 /* ~"물론이오. 계속하시오, 젊은이."~ */
  IF ~~ THEN REPLY #39386 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #39387 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39388 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68124 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39389 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39390 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39391 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39392 /* ~"혹시 래벌 퍼즐웰이 대해 아는 것이 없소?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39393 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 11
  IF ~~ THEN REPLY #39394 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #39395 /* ~노인은 유쾌하게 웃는다. "대부분의 사내들은 말이오, 젊은이... 이 곳의 아름다운 숙녀들과 담소를 나눈다오."~ */
  IF ~~ THEN REPLY #39396 /* ~"당신은 그들 중 특히 누구를 추천하오?"~ */ GOTO 4
  IF ~~ THEN REPLY #39397 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39398 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39399 /* ~그는 수염을 만지작거리며 생각에 잠긴다. "내 의견으로는... 아니, 방금 그 말은 없던 걸로 합시다. 젊은이, 나는 당신이 어떤 것을 원하는지 모르오. 만약 당신이 어떤 종류의 대화를 즐기는지 알 수 있다면 나도 제대로 권장을 해줄 수가 있을 것 같소."~ */
  IF ~~ THEN REPLY #39400 /* ~"괜찮소. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39401 /* ~"그럼 가서 그들과 직접 얘기를 나누도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #39402 /* ~노인은 미소를 짓는다, 그리고 그의 눈이 빛난다. "나는 이 곳이 정말 *멋진* 곳이라고 자신 있게 말할 수 있소! 이 곳의 숙녀들은 참으로 매력적이오... 심지어는 육감적으로 입이 험한 키마스사이조차도 나름대로 매력적이오. 하지만, 젊은이, 훨-후럼-그레이스와 꼭 얘기를 해보시오... 그녀는 이 매음굴의 소유주로서 당신에게 이 곳에 대한 더 깊은 견식을 제공할 수 있을 것이오."~ */
  IF ~~ THEN REPLY #39403 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39404 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY #39405 /* ~"아, 그렇소... 그 아름다운 생명체는 에코요. 정말 귀여운 아가씨라오... 그녀와는 아무런 부담없이 얘기할 수가 있소. 말해 두지만, 단순히 그녀가 말을 하지 않기 때문만은 아니오. 그녀에게는 뭔가 특별한 것이 있소." 그는 행복하게 한숨을 쉰다. "하지만 나는 그녀가 왜 얘기를 하지 않는지는 모르겠소."~ */
  IF ~~ THEN REPLY #39406 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39407 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #39408 /* ~"래벌?" 노인은 한쪽 눈썹을 치켜 올린다. "나이트 해그인 래벌 퍼즐웰 말이오? 정말 놀랍군! 아니, 그런 얘기는 듣지 못했소. 하지만 정말이든 아니든 놀라운 소문이오."~ */
  IF ~~ THEN REPLY #39409 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39410 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #39411 /* ~"아니, 모르오. 그리고 설령 그것이 내 코 앞에 있더라도 나는 알지 못할 거요... 내게는 후각이 거의 남아 있지 않소." 그는 자신의 코를 가볍게 두드린다. "슬픈 일이지만 사람은 늙기 마련이니까... 나는 비비안에게서는 늘 가장 아름다운 향기가 난다고 들었소..."~ */
  IF ~~ THEN REPLY #39412 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39413 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #39414 /* ~그는 고개를 젓는다. "나는 당신이 말하는 베일을 아오... 마릿사가 매음굴 밖에서 그 베일을 쓰고 있는 것을 한두 번 본 적이 있소... 하지만 지금 그것이 어디 있는지는 모르오."~ */
  IF ~~ THEN REPLY #39415 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39416 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #39417 /* ~"시길 사람이라면 누구라도 어린 시절에 들어본 적이 있는 전설 말고는 아는 것이 별로 없소. 그녀는 유달리 사악한 나이트 해그였으며 오래 전에 시길로부터 추방되었다고 하오."~ */
  IF ~~ THEN REPLY #39418 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39419 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #39420 /* ~노인은 눈살을 찌푸리면서 수염을 긁는다. "만약에 열 번째 학생이 정말 있다면 난 그녀를 꼭 만나고 싶소! 하지만 내가 아는 한 그런 사람은 없소."~ */
  IF ~~ THEN REPLY #39421 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #39422 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
