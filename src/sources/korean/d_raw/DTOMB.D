// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOMB~

IF ~  Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN BEGIN 0 // from: 1.1 4.1 5.1
  SAY #31524 /* ~이 석상은 분노에 차 무슨 선언을 하려는 것처럼 보인다. 조각가는 놀랄 만한 솜씨로 석상에 분노의 정수를 담아 냈다. 목과 이마의 주름들을 조각하고 손보는 데만 여러 달이 걸렸을 것 같다. 조각 전체에 미세한 금이 가 있으며, 그 대좌에는 명판이 붙어 있다.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31530 /* ~석상에 고르곤 연고를 바른다.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 6
  IF ~~ THEN REPLY #31531 /* ~명판을 읽는다.~ */ DO ~SetGlobal("CW_Know_Curse","AR0608",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 1
  IF ~  Global("CW_Got_Splinter","AR0608",0)
~ THEN REPLY #31532 /* ~갈라진 곳들을 살펴본다.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #31533 /* ~석상 곁을 떠난다.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.2 4.2 5.2
  SAY #31534 /* ~명판에는 다음과 같이 적혀 있다. '이 석상은 이서세리아의 요술사 갱그로이그하이드론이 최후로 맞이한 운명으로 알려져 있다. 그는 그의 광기의 야망이 절정에 이르렀을 때 라이벌 요술사 집단의 공격을 받고, 육신을 돌로 만드는 주문에 의해 봉인되었다. 갱그로이그하이드론은 끔찍한 마지막 저주를 내뱉으려고 하는 바로 그 순간 돌이 되었다고 전해지며, 그 저주는 어찌나 끔찍한지 살아 있는 사람의 입에서 *결코* 나와서는 안 되는 것이라고 한다.'~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31535 /* ~석상에 고르곤 연고를 바른다.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31536 /* ~석상을 살펴본다.~ */ GOTO 0
  IF ~~ THEN REPLY #31537 /* ~석상 곁을 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #31538 /* ~당신은 석상의 표면 전체에 가는 검은색 정맥의 망처럼 퍼져 있는 갈라진 금들을 유심히 살펴본다. 석상의 팔 안쪽 부근의 한 지점에서는 한 조각의 돌이 지금 당장이라도 떨어져 나오려고 하고 있다. ~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #31539 /* ~그 부분을 부러트린다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Statue_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #31540 /* ~그 부분을 부러트린다.~ */ GOTO 5
  IF ~~ THEN REPLY #31541 /* ~명판을 읽는다.~ */ GOTO 1
  IF ~~ THEN REPLY #31542 /* ~석상 곁을 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #31543 /* ~당신은 석상의 팔뚝에서 금이 간 부분을 꽉 잡고 대장간용 망치로 내려친다. 금속과 돌이 부딪치는 소리가 나고. 대거 크기의 파편이 석상에서 떨어져 나온다. ~ */
  IF ~~ THEN REPLY #31544 /* ~"알았다..."~ */ DO ~GiveItemCreate("Splinter",Protagonist,15,0,0)
SetGlobal("CW_Got_Splinter","AR0608",1)
AddexperienceParty(4000)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31545 /* ~파편이 석상에서 떨어져 나오자 당신은 손등에 물방울이 똑똑 떨어지고 있는 듯한 느낌을 받는다... 쳐다보니 석상의 눈에서 눈물이 흘러나오고 있다. 당신은 파편을 재빨리, 그리고 조용히 챙겨넣고 눈물을 흘리는 석상으로부터 돌아선다. ~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31546 /* ~석상에 고르곤 연고를 바른다.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31547 /* ~석상을 살펴본다.~ */ GOTO 0
  IF ~~ THEN REPLY #31548 /* ~명판을 읽는다.~ */ GOTO 1
  IF ~~ THEN REPLY #31549 /* ~석상 곁을 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #31550 /* ~당신은 석상의 팔뚝에서 금이 간 부분을 꽉 잡고 당겨 보지만 아무 소용이 없다. 돌을 부수려면 망치, 그것도 작은 망치가 필요할 것 같다. 석상의 팔과 동체 사이의 공간이 제한된 탓에 전투용 망치처럼 큰 망치는 별 쓸모가 없을 듯하다.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31551 /* ~석상에 고르곤 연고를 바른다.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31552 /* ~석상을 살펴본다.~ */ GOTO 0
  IF ~~ THEN REPLY #31556 /* ~명판을 읽는다.~ */ GOTO 1
  IF ~~ THEN REPLY #31557 /* ~석상 곁을 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 4.0 5.0
  SAY #31558 /* ~당신은 악취가 나는 고약은 석상 전체에 바른다. 그러자 석상은 기묘한 광채로 휩싸인다. 석상은 숨을 들이쉰다, 그리고 갱그로이그하이드론의 두 눈이 복수심과 광기로 이글거린다. ~ */
  IF ~~ THEN REPLY #31559 /* ~"안녕하시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #31560 /* ~귀를 막는다.~ */ GOTO 7
  IF ~~ THEN REPLY #31561 /* ~미친듯이 달린다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #31562 /* ~당신이 미처 행동을 취하기도 전에 요술사의 입으로부터 저주가 빗발치듯 쏟아진다. 그가 입을 열자 당신은 강렬한 열기가 갑작스럽게 당신을 엄습해 당신 피부를 물집 투성이로 만드는 것과 같은 격통을 느낀다. 그리고 당신의 두 눈이 깨진 달걀처럼 터져서 눈구멍에서 흘러나옴에 따라 당신은 아무 것도 볼 수가 없게 된다... 누군가가 비명을 지르는 소리가 들린다, 그리고 당신은 그 사람이 바로 당신 자신이라는 것을 깨닫는다...~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #31563 /* ~참사가 끝나기를 기다린다.~ */ DO ~AddexperienceParty(4000)
IncrementGlobal("Morte_Taunt","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31564 /* ~갱그로이그하이드론의 끔찍스런 저주의 희생자가 되어 어둠 속으로 빠져든다..."~ */ DO ~AddexperienceParty(4000)
OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31565 /* ~당신 귀에 마지막으로 들리는 소리는 당신 자신의 비명이 아니라 모트의 고함소리이다...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 298
END

IF ~  Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #66515 /* ~'석상' - 실제로는 한때 석화되었던 요술사 갱그로이그하이드론은 사라지고 없다. 사과문 한 장 남기지 않고 떠난 모양이다. ~ */
  IF ~~ THEN REPLY #66516 /* ~떠난다.~ */ EXIT
END
