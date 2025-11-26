// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNONAME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNONAME~

IF ~  Global("NoName","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23470 /* ~이 썩은 여자 시체는 고개를 저으며 슬프게 신음한다. 하지만 당신이 다가가자 그녀는 돌아서서 손을 내미는데, 도움을 청하려는 것 같다.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23518 /* ~"안녕하시오..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23519 /* ~"안녕하시오..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23520 /* ~좀비를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 18.1
  SAY #23491 /* ~좀비는 조용한 신음으로 대답을 대신한다. "그누우... 후느누우그?" 그녀가 숨을 쉴 때마다 공기가 고기가 썩는 악취로 가득 찬다.~ */
  IF ~~ THEN REPLY #23521 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #23522 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #23492 /* ~"스터어... 마아아-어흐르?" 당신은 좀비가 하는 말을 알아들을 수가 없다, 하지만 그녀는 뭔가를 물어보려는 것 같다.~ */
  IF ~~ THEN REPLY #23523 /* ~"당신이 하는 말을 이해할 수가 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 18.0
  SAY #23493 /* ~좀비는 조용한 신음으로 대답을 대신한다. 당신은 죽은 자와 대화하는 능력 덕분에 그녀가 하는 말을 간신히 이해한다. ~ */
  IF ~~ THEN REPLY #23524 /* ~"아니오... 그것이 당신이 그토록 고민하는 이유요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_NoName_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #23525 /* ~"아니오. 그래야 하오?"~ */ GOTO 4
  IF ~~ THEN REPLY #23526 /* ~"아니오. 질문할 것들이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #23527 /* ~"아니오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #23494 /* ~"내 이이름을 잊어어 버어렸어... 내 이이름!" 그녀의 유백색 눈에서는 검은색 분비물이 나오는데 눈물인 것 같다. ~ */
  IF ~~ THEN REPLY #23528 /* ~"내가 다시 당신이 자신의 이름을 찾는 일을 도와도 괜찮겠소?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23529 /* ~"왜 그냥 새 이름을 선택하지 않소?"~ */ GOTO 8
  IF ~~ THEN REPLY #23530 /* ~"왜 그것이 당신에게 그렇게 중요하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #23531 /* ~"안됐군. 아직도 질문할 것들이 남아있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_NoName_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #23532 /* ~"당신이 그걸 찾기를 바라겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 7.1 15.0
  SAY #23495 /* ~시체는 천천히 고개를 끄덕인다. "내 무우덤..." 그녀는 남쪽을 가리킨다. "무울로 찬 지이하 묘우지..."~ */
  IF ~~ THEN REPLY #23533 /* ~"하지만 어떻게 내가 그걸 알 수가 있소?"~ */ JOURNAL #23566 /* ~한 좀비가 내게 그녀의 이름을 찾아달라고 부탁했다. 그녀는 그것이 익사한 왕국 지하 묘지에 있는, 바닥에 고정된 '못박힌 상자' 옆에 위치한 그녀의 무덤 위에 새겨져 있을 것이라고 한다. 익사한 왕국은 내가 그녀를 만난 죽의 자의 왕국 남서쪽에 있다. ~ */ GOTO 6
  IF ~~ THEN REPLY #23534 /* ~"그럼 가서 알아 오겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #23537 /* ~"그것을 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23496 /* ~"사앙자... 못이이 바악힌 사앙자, 잠암겨진... 내 무우덤 그은처..."~ */
  IF ~~ THEN REPLY #23539 /* ~"왜 그냥 새 이름을 선택하지 않소?"~ */ GOTO 8
  IF ~~ THEN REPLY #23543 /* ~"왜 그것이 당신에게 그렇게 중요하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #23545 /* ~"그럼 가서 알아 오겠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #23547 /* ~"그것을 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1 19.3
  SAY #23497 /* ~그녀는 당신이 볼 수 있도록 자신의 부패한 손을 내민다. 당신이 살펴보는 도중에도 손톱 하나가 떨어져 나가 작은 *탁* 소리와 함께 바닥에 떨어진다. "썩어어서 사라져... 곧... 아아무 것도 나암지 않아... 뼈와 이이름 말고는..."~ */
  IF ~~ THEN REPLY #23557 /* ~"나도 이름이 없소. 난 당신도 이름이 없어도 잘 지낼 수 있을 거라고 생각하오."~ */ GOTO 14
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23560 /* ~"그럼 내가 당신이 자신의 이름을 찾는 일을 도와도 괜찮겠소?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23573 /* ~"왜 그냥 새 이름을 선택하지 않소?"~ */ GOTO 8
  IF ~~ THEN REPLY #23576 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23579 /* ~"당신이 그것을 찾게 되길 빌겠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23582 /* ~"그럼 계속 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 6.0 7.2 15.1 19.2 23.0
  SAY #23498 /* ~그녀는 그 자리에 서서 조용히 당신을 바라본다. ~ */
  IF ~~ THEN REPLY #23586 /* ~"내 말을 알아들었소? 당신은 새 이름을 선택할 수가 있소."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #23499 /* ~그녀는 고개를 젓는다, 그리고 두려운 듯 뒤로 물러선다. "하지만... 아아니야..."~ */
  IF ~~ THEN REPLY #23588 /* ~"당신은 자신이 어떻게 변했는지 깨달을 수가 없소. 당신의 진정한 이름이 더 이상 당신에게 어울리겠소?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23500 /* ~그녀는 잠시 멈추고 손을 볼에다 갖다 댄다. 그리고 그녀는 자신의 아랫입술을 깨문다.~ */
  IF ~~ THEN REPLY #23591 /* ~"그래, 알겠소? 당신은 이제 옛날 이름을 버릴 수 있소. 새로운 존재가 되시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23501 /* ~"하지만... 누우구? 어어떤 이이름?" 그녀는 압도당한 듯 혼란스러워 한다.~ */
  IF ~~ THEN REPLY #23593 /* ~"당신 마음에 드는 거라면 어떤 것이라도 괜찮소. ~ */ GOTO 12
  IF ~~ THEN REPLY #23594 /* ~"그럼 생각을 해보도록 하게. 잘 가게."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #23502 /* ~그녀는 한동안 바닥을 응시하며 조용히 서 있는다. 그러다 그녀는 갑자기 고개를 쳐든다. "다앙신... 이이름? 내 이이름을 지이어?"~ */
  IF ~~ THEN REPLY #23599 /* ~그녀를 위해 이름을 하나 지어준다..~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #67827 /* ~나는 이름 없는 좀비를 위해 이름을 지어 주었다. 그녀는 꽤 만족한 듯 했다. ~ */ GOTO 13
  IF ~~ THEN REPLY #23602 /* ~"난 당신 스스로 이름을 선택하는 것이 최선이라고 생각하오. 안녕히 계시오."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 19.1
  SAY #23504 /* ~당신은 이름을 하나 생각해낸다. 하지만 당신이 미처 말하기도 전에 그녀는 당신에게 조용히 하라는 소리를 내며 다가온다, 그리고 손을 자신의 귀에 댄다. 당신은 그녀에게 작은 목소리로 이름을 말해준다. 그녀는 고개를 끄덕인 후 미소를 짓는다. "그으래... 고마아워..."~ */
  IF ~~ THEN REPLY #23603 /* ~"물론이오. 아직 질문할 것들이 남아있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #23606 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #23506 /* ~"어떻게에 스스스로... 오온전하다고 느낄 수우가 있지...?"~ */
  IF ~~ THEN REPLY #23608 /* ~진실: "당신 말이 옳을지도 모르오, 하지만 내가 잃어버린 건 내 이름만이 아닌 것 같소."~ */ GOTO 15
  IF ~~ THEN REPLY #23610 /* ~거짓말: "이름이 있건 없건 간에 나는 스스로가 온전하다고 느끼오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_1","GLOBALLaw",-1)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #23507 /* ~좀비는 그냥 조용히 고개를 젓는다. ~ */
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23617 /* ~"그럼 내가 당신이 자신의 이름을 찾는 일을 도와도 괜찮겠소?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23618 /* ~"왜 그냥 새 이름을 선택하지 않소?"~ */ GOTO 8
  IF ~~ THEN REPLY #23620 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23622 /* ~"당신이 그것을 찾게 되길 빌겠소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23625 /* ~"계속 찾아보리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3 7.3 13.0 15.2 19.4 20.1 21.0 22.0
  SAY #23508 /* ~한참 동안 아무런 말이 없다. "어어어?" 좀비는 어깨를 으쓱하나 그의 한쪽 어깨는 다른 쪽 어깨만큼 높이 올라가지 않는다. "메메리에에게 물어어봐, 써어억은 메메리."~ */
  IF ~~ THEN REPLY #23631 /* ~"썩은 메리... 에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #23634 /* ~"아마 그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #23509 /* ~"그으녀는 우우리를 인도해. 우우리를 보오살펴..."~ */
  IF ~~ THEN REPLY #23637 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #23510 /* ~좀비는 당신을 쳐다본다, 그리고 당신을 알아본 듯 그녀의 죽은 눈이 번득인다. "어어." 그녀는 도움을 구하려는 듯 자신의 썩은 손을 내민다. ~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23640 /* ~"안녕하시오..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23645 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #23646 /* ~좀비를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #23511 /* ~좀비는 당신을 쳐다본다, 그리고 당신을 알아본 듯 그녀의 죽은 눈이 번득인다. "내 이이름... 내 이이름을 찾았어어...?"~ */
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23650 /* ~진실: "무덤을 찾기는 했으나 이름은 훼손되어... 알아볼 수가 없었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_NoName_1","GLOBALLaw",1)
~ JOURNAL #23659 /* ~나는 이름 없는 좀비에게 그녀의 무덤에 새겨진 이름은 읽을 수 없게 되었다고 말해주었다... 그러자 그녀는 정신이 나가버렸다. ~ */ GOTO 23
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23653 /* ~거짓말: "그래, 당신 이름은... 어..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_2","GLOBALLaw",-1)
SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23660 /* ~나는 이름 없는 좀비에게 그녀의 무덤에 새겨진 이름을 읽을 수 있었다고 거짓말을 하고 내가 만들어낸 이름을 가르쳐 주었다. 그녀는 만족해했다. ~ */ GOTO 13
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23655 /* ~"아니오... 하지만 왜 당신은 새로운 이름을 선택하지 않소?"~ */ GOTO 8
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23656 /* ~"아직 아니오. 왜 그것이 당신에게 그렇게 중요한 거요?"~ */ GOTO 7
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23657 /* ~"아직 아니오, 하지만 질문할 것들이 좀 있소."~ */ GOTO 16
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23658 /* ~"아니오, 하지만 계속 찾아보겠소."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #23512 /* ~시체는 당신을 알아보자 열심히 손짓한다. "이이름! 내 이이름을 골랐어어.."~ */
  IF ~~ THEN REPLY #23661 /* ~"그렇소? 어떤 이름을 선택했소?"~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~이름 없는 좀비는 마침내 내 충고를 받아들여 스스로 '레이카'라는 이름을 선택했다.~ */ GOTO 21
  IF ~~ THEN REPLY #23662 /* ~"잘됐소, 축하하오. 그런데 질문할 것들이 좀 있소."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~이름 없는 좀비는 마침내 내 충고를 받아들여 스스로 '레이카'라는 이름을 선택했다.~ */ GOTO 16
  IF ~~ THEN REPLY #23663 /* ~"잘됐소. 이만 실례하도록 하겠소... 안녕히 계시오."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~이름 없는 좀비는 마침내 내 충고를 받아들여 스스로 '레이카'라는 이름을 선택했다.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23513 /* ~"레레이이카아..."~ */
  IF ~~ THEN REPLY #23665 /* ~"흥미롭군... 어쩐지 어울리는 것 같소. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #23666 /* ~"잘됐소. 안녕히 계시오, 레이카."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",4)
~ THEN BEGIN 22 // from:
  SAY #23514 /* ~시체는 미소를 지으며 당신을 향해 비틀거리며 다가온다. "고오마아워... 내 이름을 찾는 이일을 도오와줘서..."~ */
  IF ~~ THEN REPLY #23667 /* ~"물론이오. 질문할 것들이 좀 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #23668 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0
  SAY #23515 /* ~"아...아...안돼..." 좀비는 자신의 떨리는 머리는 양손으로 붙잡는다. "그으럴 수우 없어..."~ */
  IF ~~ THEN REPLY #23669 /* ~"왜 그냥 새 이름을 선택하지 않소?"~ */ GOTO 8
  IF ~~ THEN REPLY #23670 /* ~"미안하오... 안녕히 계시오."~ */ DO ~SetGlobal("NoName","GLOBAL",5)
~ EXIT
END

IF ~  Global("NoName","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #23516 /* ~이 여자 좀비는 입을 벌리고 멍한 눈으로 먼 곳을 바라보고 있다.~ */
  IF ~~ THEN REPLY #23671 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 25
  IF ~~ THEN REPLY #23672 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23517 /* ~좀비는 완전히 침묵하고 있다... 그녀는 당신을 보고도 아무런 반응을 하지 않는다. ~ */
  IF ~~ THEN REPLY #23673 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END
