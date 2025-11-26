// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSSMTH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSSMTH~

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3168 /* ~이 억세고 얼굴을 찡그린 사내는 당신이 자기 일을 방해하자 당신을 쏘아본다. 그는 좀 느리기는 하나, 이 도시의 다른 사람들과는 달리 악의가 별로 없는 진실된 사람 같다. "뭐요? 뭘 원하오?"~ */
  IF ~~ THEN REPLY #3169 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #61319 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #61320 /* ~"커스트에 있다는 디바에 대해 혹시 들은 것이 없소?"~ */ GOTO 8
  IF ~~ THEN REPLY #61321 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #61322 /* ~대장장이는 짜증스런 표정으로 당신을 본다. "이젠 뭘 원하시오?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61344 /* ~"난 당신 동생에게 당신들 사이의 채무 문제에 대한 부탁을 받고 왔소."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61345 /* ~"난 당신들 형제 사이에 무슨 문제가 있다고 들었소. 난 당신을 돕고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #61347 /* ~"커스트에 있다는 디바에 대해 혹시 들은 것이 없소?"~ */ GOTO 8
  IF ~~ THEN REPLY #61348 /* ~"물건을 좀 사고 싶소."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61349 /* ~"없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61323 /* ~"크럼플펀치 말라코로 이 도시의 대장장이요. 뭐 원하는 거라도 있소?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61350 /* ~"난 당신 동생에게 당신들 사이의 채무 문제에 대한 부탁을 받고 왔소."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61351 /* ~"난 당신들 형제 사이에 무슨 문제가 있다고 들었소. 난 당신을 돕고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #61352 /* ~"당신이 파는 물건을 살펴보고 싶소."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61353 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",2)
GlobalLT("Mediate","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #61324 /* ~"그래, 일은 어떻게 되어가고 있소?~ */
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
!PartyHasItem("CrumLeg")
~ THEN REPLY #61354 /* ~"당신 동생은 내가 중재를 하는 것을 허락했소. 유산 상속에 대한 결정을 내리기 위해서는 당신 몫의 유서가 필요하오."~ */ DO ~GiveItem("CrumLeg",Protagonist)
SetGlobal("Mediate","GLOBAL",5)
~ GOTO 4
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
PartyHasItem("CrumLeg")
~ THEN REPLY #61355 /* ~"당신 동생도 내가 중재를 하는 것을 허락했소."~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 5
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
Global("Negotiate_Kester","GLOBAL",1)
~ THEN REPLY #61356 /* ~"나는 당신이 모든 유산을 차지해야 한다고 결정했오. 당신이 형이니 당연한 일이오."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~~ THEN REPLY #61357 /* ~"진행 중이오. 난 당신이 파는 물건들을 좀 봐야겠소..."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61358 /* ~"진행 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61325 /* ~"좋소, 그럼. 일을 제대로 하려면 잘 살펴봐야겠지." 그는 당신에게 구겨진 종이뭉치를 건네준다. "우리 둘 중 하나에게 결과를 알려 주시오."~ */
  IF ~~ THEN REPLY #61359 /* ~"고맙소. 결정을 내리면 당신에게 알려주도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #61326 /* ~"좋소. 그럼 가서 마음을 정하시오. 그리고 우리 둘 중 하나에게 결과를 알려 주시오."~ */
  IF ~~ THEN REPLY #61360 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61327 /* ~"결정을 내렸소?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61361 /* ~"나는 당신 동생 손을 들어주었소. 유서를 읽고 나니 당신 동생이 유산을 모두 차지해야 한다는 것이 명백해졌소."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 12
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61362 /* ~"나는 당신이 증류소를 소유하고 당신 아버지의 재산을 물려받아야 한다고 결론지었소. 당신이 옳은 것이 명백하오."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61363 /* ~"당신 둘은 두 사업장에서 나오는 이윤을 반씩 나누어야 하오. 당신들 아버지가 그것을 원한 것이 명백하오."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
~ GOTO 14
  IF ~~ THEN REPLY #61364 /* ~"당신들 중 어느 쪽에게도 돈을 받을 자격은 없소. 나는 당신들의 유산을 돈을 제대로 쓸 사람에게 전해주도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #61365 /* ~"아직 아니오. 하지만 당신이 파는 물건들을 좀 보고 싶소."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61366 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #61328 /* ~"대장간이오, 얼간이 같으니. 물건을 살 거요, 말 거요?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61367 /* ~"난 당신 동생에게 당신들 사이의 채무 문제에 대한 부탁을 받고 왔소."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61368 /* ~"난 당신들 형제 사이에 무슨 문제가 있다고 들었소. 난 당신을 돕고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #61369 /* ~"당신이 파는 물건을 살펴보고 싶소."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61370 /* ~"커스트에 있다는 디바에 대해 혹시 들은 것이 없소?"~ */ GOTO 8
  IF ~~ THEN REPLY #61371 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 7.3
  SAY #61329 /* ~"뭐? 디바? 천사의 일종 말이오? 그런 건 여기 없소." 그는 잠시 멈춘다. "내게 뭐 원하는 거라도 있소?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61372 /* ~"난 당신 동생에게 당신들 사이의 채무 문제에 대한 부탁을 받고 왔소."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61373 /* ~"난 당신들 형제 사이에 무슨 문제가 있다고 들었소. 난 당신을 돕고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #61374 /* ~"당신이 파는 물건을 살펴보고 싶소."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~  False()
~ THEN REPLY #61375 /* ~"난 당신들 형제 사이에 무슨 문제가 있다고 들었소. 난 당신을 돕고 싶소."~ */ EXIT
  IF ~~ THEN REPLY #67886 /* ~"시간을 내주어 고맙소.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 1.1 2.0 2.1 7.0 7.1 8.0 8.1
  SAY #61330 /* ~"오, 그래, 그렇단 말이지? 나와 내 잘난 동생 사이의 일이 온 도시에 퍼진 모양이지? 내 동생이 나에 대한 험담이라도 하고 다니는 거요? 내가 못 배웠다고 놀림거리로 만들고 있는 거요? 세상이 다 내 적인 모양이군!" 그는 하늘에다 대고 주먹을 휘두른다.~ */
  IF ~  !Global("Mediate","GLOBAL",2)
~ THEN REPLY #61376 /* ~"실은 난 그 문제를 해결해 줄 의향이 있소."~ */ DO ~SetGlobal("Mediate","GLOBAL",3)
~ GOTO 10
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #66570 /* ~"나는 그 문제를 해결하는 데 관심이 있소."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #61331 /* ~그는 빈틈없는 표정으로 당신을 쳐다본다. "그럼 얘기를 하겠소. 우리 아버지는 정신이 이상한데다가 성질도 더러웠소, 하지만 돈은 많았지. 그가 죽었을 때 그는 우리에게 증류소와 대장간을 물려주었소... 그런데 내 동생은 벌이가 더 좋은 증류소에 대한 내 권리를 빼앗으려고 하고 있소, 하지만 난 내 권리를 지킬 생각이오. 내겐 그걸 입증할 유증도 있소, 하지만 난 법률 관계는 잘 모르고 이 도시에서는 아무도 믿고 맡길 수가 없소. 날 도와주면 당신에게 돈을 좀 주겠소, 그리고 당신 결정에 무조건 따르겠소."~ */
  IF ~  !PartyHasItem("CrumLeg")
~ THEN REPLY #61377 /* ~"좋소. 자세히 검토하기 위해 당신 몫의 유서가 필요하오."~ */ DO ~GiveItem("CrumLeg",Protagonist)
~ JOURNAL #61381 /* ~나는 대장장이와 그 동생인 증류주 제조업자 사이의  아버지의 유산의 배분을 놓고 벌어진 분쟁에서 대장장이를 돕기로 했다. ~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #61378 /* ~"좋소. 해결할 방법을 찾아보겠소."~ */ JOURNAL #61381 /* ~나는 대장장이와 그 동생인 증류주 제조업자 사이의  아버지의 유산의 배분을 놓고 벌어진 분쟁에서 대장장이를 돕기로 했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61332 /* ~"좋소, 그럼. 일을 제대로 하려면 잘 살펴봐야겠지." 그는 당신에게 구겨진 종이뭉치를 건네준다. ~ */
  IF ~~ THEN REPLY #61379 /* ~"고맙소. 결과가 나오면 알려주겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY #61333 /* ~"녀석이 전부 다 가진다고?" 그는 고개를 푹 숙인다. "두 배로 열심히 일해야겠군. 염병할 사기꾼 같으니. 만약 금속 제품이 필요하면 여기로 오시오, 하지만 이 도시의 어느 곳보다 더 비싼 가격을 치를 각오는 하는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #61380 /* ~"염두에 두도록 하겠소."~ */ JOURNAL #61384 /* ~나는 증류주 제조업자에게 유리하게 처리했다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.1
  SAY #61334 /* ~"다 내 꺼라고?" 그의 눈이 환하게 빛난다. "전부 다?" 그는 춤을 추더니 당신 손을 잡고 흔든다. "만약 질 좋은 금속 제품이 필요하면 언제든지 오시오, 친구! 지금 난 가서 축배를 들어야겠소!"~ */
  IF ~~ THEN REPLY #61382 /* ~"그럼 안녕히 계시오."~ */ JOURNAL #61383 /* ~나는 유산 상속 문제를 대장장이에게 유리하게 처리했다. 그는 내게 자신의 제품을 저렴한 가격에 제공하겠다고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY #61335 /* ~"두 가게의 이익을 반반씩 나누자는 거요? 나는 불만이 없소. 당신은 내게 큰 도움을 주었소, 친구. 만약 질 좋은 금속 제품이 필요하면 여기로 오시오."~ */
  IF ~~ THEN REPLY #61385 /* ~"그러리다. 안녕히 계시오."~ */ JOURNAL #61386 /* ~나는 유산 상속 문제를 두 가게에서 나오는 이익을 두 사람이 고르게 나누어 가지라는 결정을 내려 해결했다.  ~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY #61336 /* ~"뭐?" 이 썩어빠진 날강도 같으니! 내 대장간에서 나가!"~ */
  IF ~~ THEN REPLY #61387 /* ~"안녕히 계시오."~ */ JOURNAL #61388 /* ~나는 유산 상속 문제를 둘 중 누구에게도 유리하게 처리하지 않았다. 그들 중 어느 쪽도 돈을 받을 자격이 없다~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",7)
~ THEN BEGIN 16 // from:
  SAY #61337 /* ~"또 왔소? 필요한 금속 제품이라도 있소?"~ */
  IF ~~ THEN REPLY #61389 /* ~"어디 당신이 뭘 팔고 있는지 좀 봅시다..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61390 /* ~"없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",8)
~ THEN BEGIN 17 // from:
  SAY #61338 /* ~"오셨소? 당신은 내 일을 공정하게 처리해 주었으니 나도 당신에게 할인 혜택을 주리다."~ */
  IF ~~ THEN REPLY #61391 /* ~"어디 당신이 뭘 팔고 있는지 좀 봅시다..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61392 /* ~"없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #61339 /* ~"당신이 망친 사람 얼굴을 보려고 왔소? 뭘 원하시오 ?"~ */
  IF ~~ THEN REPLY #61342 /* ~"당신 물건들을 좀 봅시다."~ */ DO ~StartStore("Crumple3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61343 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",8)
~ THEN BEGIN 19 // from:
  SAY #61340 /* ~"내 가게서 나가, 이 날강도야! 너 같은 놈하고는 거래할 생각이 없어."~ */
  IF ~~ THEN REPLY #61341 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
