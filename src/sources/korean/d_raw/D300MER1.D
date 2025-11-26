// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17240 /* ~이 시무룩한 표정의 남자는 각종 무기를 파는 듯하다. "아, 이리로 오시오! 내 무기들을 보려고 오셨소?"~ */
  IF ~~ THEN REPLY #17302 /* ~"그렇소."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17303 /* ~"아니오, 하지만 물어볼 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17304 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17244 /* ~"다시 만나 반갑소. 시길에서 제일 좋은 무기를 보려 오셨소?"~ */
  IF ~~ THEN REPLY #17305 /* ~"그렇소."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17306 /* ~"아니오, 하지만 물어볼 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17309 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17246 /* ~"난 할 일이 있소, 손님..." 그는 갑자기 고개를 돌리고 헛기침을 한다. "미안하오. 난 단지 당신과 얘기하기 위해 장사하는 걸 멈출 순 없소."~ */
  IF ~~ THEN REPLY #17311 /* ~"당신은 몸이 좋지 않소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Merch1_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #17316 /* ~"그럼 당신이 파는 상품들을 보여주시오."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17317 /* ~"그럼 당신 시간을 돈으로 보상해 주겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #17318 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #17254 /* ~늙은 상인은 잠시 주변을 둘러본다. 일단 가까운 곳에 물건을 살 만한 손님이 없다는 것을 확인한 다음, 그는 당신에게 손을 내민다.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #17319 /* ~그의 손바닥에 동전 세 닢을 떨군다.~ */ DO ~TakePartyGold(3)
~ GOTO 4
  IF ~~ THEN REPLY #17353 /* ~"관두시오. 당신이 파는 물건이나 봅시다."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17355 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17256 /* ~그는 고개를 끄덕이고 동전 세 닢을 옷 속에 넣는다. "무엇에 대해 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #17357 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17359 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17361 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #17362 /* ~"관두시오. 당신이 파는 물건이나 봅시다."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17363 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1 8.1 9.0
  SAY #17263 /* ~"이 곳 말이오? 우리의 염병할 도시 시길에서 가장 쓰레기같은 구역인 벌통에 있는 평범한 시장이오." 그는 씁쓸하게 웃고 어깨를 으쓱한다. "늘 뒤를 조심하고, 어두워진 후에는 안전한 곳에 머무른다면, 이 곳도 그리 나쁜 곳은 아니오. 물론 빈민굴치고는 말이오."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17364 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17365 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #17366 /* ~"당신 물건들을 좀 보여주시오."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17367 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 7.2 8.2 9.1
  SAY #17265 /* ~"흠... 아니, 그런 이름은 모르오. 미안하오."~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17368 /* ~"그건 별 도움이 되지 못했소..."~ */ GOTO 8
  IF ~~ THEN REPLY #17215 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17217 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #17218 /* ~"관두시오. 당신이 파는 물건이나 봅시다."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17220 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.2 8.3 9.2
  SAY #17267 /* ~"그런 건 최근 본 적이 없소, 미안하오. 만약 새 일지가 필요하다면 아마 이 곳의 다른 상인들로부터 구입할 수 있을 거요." 그는 어깨를 으쓱한다.~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17221 /* ~"그건 별 도움이 되지 못했소..."~ */ GOTO 8
  IF ~~ THEN REPLY #17222 /* ~"내게 이 지역에 대해 얘기해주시오."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17223 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #17268 /* ~"관두시오. 당신이 파는 물건이나 봅시다."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17310 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #17272 /* ~늙은 상인은 가볍게 웃은 후, 손에다 대고 기침을 한다. "당신은 돈으로 내 시간을 산 거지, 대답을 산 건 아니오. 만약 내가 도울 수 있었다면 난 진심으로 그랬을 거요. 이제는 내가 파는 상품을 보시겠소?"~ */
  IF ~~ THEN REPLY #17324 /* ~"그렇소."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17332 /* ~"지금은 아니오. 내게 이 구역에 대하여 얘기해주시오."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17356 /* ~"아니오, 하지만 난 파로드란 사람을 찾고 있소."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17358 /* ~"아니, 지금은 아니오. 난 내가 잃어버린 일지를 찾고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #17360 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #17275 /* ~"호 호! 아니오, 단지 늙었을 뿐이오. 하지만 걱정해 주어 고맙소." 그는 당신을 보며 미소를 짓는다.~ */
  IF ~~ THEN REPLY #17369 /* ~"내게 이 구역에 대해서 얘기해줄 수 있겠소?~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17370 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17371 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #17372 /* ~"당신이 파는 물건들을 볼 수 있겠소?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17373 /* ~"안녕히 계시오."~ */ EXIT
END
