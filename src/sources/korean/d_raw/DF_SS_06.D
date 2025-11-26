// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_06~

IF ~  !Global("S_Stone","AR0603",6)
!Global("S_Stone","AR0603",13)
~ THEN BEGIN 0 // from:
  SAY #34217 /* ~이것은 보라색의 특이한 돌이다. 그것은 받침대에 단단히 고정되어 있다. ~ */
  IF ~~ THEN REPLY #47460 /* ~떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",6)
~ THEN BEGIN 1 // from:
  SAY #47461 /* ~바로 이 보라색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '피곤한 항복'이란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47462 /* ~감각 체험을 시작한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47463 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47464 /* ~온몸을 떨고 이빨을 딱딱거리면서도 당신은 살아날 방도가 있기를 간절히 바라며 얼마 남지 않은 온기를 보존하기 위해 눈 속으로 파고 들어간다. 의식을 잃지 않기 위해 안간힘을 쓰다가 당신은 자신이 더 이상 팔... 다리... 그리고 얼음으로 뒤덮인 얼굴의 감각을 전혀 느낄 수가 없게 되었다는 사실을 깨닫는다... 피곤하다... 너무나도 피곤하다... 피곤을 이기지 못한 당신은 마침내 항거할 수 없는 운명에 항복한다. 당신이 눈을 감고 잠을 맞이함에 따라 당신의 상실감이 한 방울의 눈물이 되어 당신의 아픈 눈으로부터 떨어진다 - 그러나 그것은 당신 볼에 미처 닿기도 전에 차디찬 얼음으로 변한다. ~ */
  IF ~  Global("Sensation06","AR0603",0)
~ THEN REPLY #47465 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation06","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation06","AR0603",1)
~ THEN REPLY #47466 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",13)
~ THEN BEGIN 3 // from:
  SAY #47467 /* ~바로 이 보라색 돌이 사무원이 당신에게 가서 사용하라고 일러준 돌이다. 그 안에는 '불굴의 각오'란 체험이 담겨 있다. ~ */
  IF ~~ THEN REPLY #47468 /* ~감각 체험을 시작한다.~ */ GOTO 4
  IF ~~ THEN REPLY #47469 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47470 /* ~술집 안은 거의 폐허가 되어버렸으며, 수십 명의 전투원들이 각자 자신만이 최후의 생존자가 되기 위해 상대방에게 무기를 휘두르고, 던지고, 무시무시한 주문을 영창함에 따라 지금도 한창 파괴당하고 있는 중이다. 당신이 헤치고 나온 시체들부터는 자극성의 버섯구름이 솟아오르고 있다. 시체들이 방패 구실을 해준 덕분에 당신은 사악한 주문의 위력으로부터 간신히 벗어날 수가 있었다. 그런데 이 치열한 난투극에도 불구하고 저편의 기적적으로 멀쩡히 서 있는 테이블 위에 당신의 꿀술이 무사히 있는 것이 아닌가! 그래, 당신은 설령 이 주점 안에서 싸우고 있는 싸움꾼들을 모조리 죽이는 한이 있어도 그 술을 되찾고야 말 것이다!~ */
  IF ~  Global("Sensation13","AR0603",0)
~ THEN REPLY #47471 /* ~체험으로부터 깨어난다.~ */ DO ~SetGlobal("Sensation13","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation13","AR0603",1)
~ THEN REPLY #47472 /* ~체험으로부터 깨어난 후 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47473 /* ~그 체험은 당신 정신 속에서 이미 오래 전에 잊혀진 막연하게 비슷한 기억을 불러일으킨 것 같다... 당신은 감각석 사용을 통해 뭔가를 얻었다고 느낀다.~ */
  IF ~~ THEN REPLY #47474 /* ~떠난다.~ */ EXIT
END
