// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKNFGHL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKNFGHL~

IF ~  NumTimesTalkedTo(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 0 // from:
  SAY #23790 /* ~이 굴의 얼굴에는 큰 칼자국이 나 있으며, 한쪽 눈은 완전히 못쓰게 되었다. 상처가 비교적 새로운 것임에도 불구하고 이 냄새가 고약한 괴물은 별다른 고통이나 불편을 느끼지 않는 것 같다. 당신은 그가 허리띠에 더러운 나이프를 차고 있다는 사실을 발견한다... 그 손잡이에는 '우허(UHIR)'라는 문자가 새겨져 있다.~ */
  IF ~~ THEN REPLY #23791 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23808 /* ~"어... 당신이 당신 벨트 속에 쑤셔 넣은 그 나이프를 내가 가질 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #23811 /* ~굴을 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0
  SAY #23812 /* ~굴은 눈을 가늘게 뜨고 당신에게 으르렁거린다. 그는 두 뼘은 족히 될 것 같은 긴 혀로 자신의 더러운 입술을 핥는다.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23813 /* ~"어... 당신이 당신 벨트 속에 쑤셔 넣은 그 나이프를 내가 가질 수 있겠소?"~ */ GOTO 5
  IF ~  HasItem("UhrKnf","KnfGhl")
!Global("Uhir","GLOBAL",2)
~ THEN REPLY #23814 /* ~"당신이... 우허요?"~ */ GOTO 2
  IF ~~ THEN REPLY #23815 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #23816 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #23817 /* ~굴은 계속 배고픈 눈으로 당신으로 바라본다. 그는 당장이라도 달려들어 당신을 잡아먹고 싶은 충동을 억제하는 듯, 자신의 날카로운 손톱이 달린 손을 쥐었다 폈다 한다~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23818 /* ~"어... 당신이 당신 벨트 속에 쑤셔 넣은 그 나이프를 내가 가질 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #23819 /* ~"진정하시오, 그리고 내 질문에 대답해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #23820 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #23821 /* ~굴은 당신에게 날카롭게 소리를 지른다. "닥쳐, 고기! 말하지마! 난 고깃덩어리 말은 안 들어! 나는 네 가슴의 고동만 들어, 정맥 속의 피, 달콤하고 맛있는 피... 맛있는 심장 고기..." 그의 입으로부터 침이 흘러나와 먼지투성이 바닥에 떨어진다. "말하지마!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23822 /* ~"어... 당신이 당신 벨트 속에 쑤셔 넣은 그 나이프를 내가 가질 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #23823 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 4 // from:
  SAY #23824 /* ~이 굴의 얼굴에는 큰 칼자국이 나 있으며, 한쪽 눈은 완전히 못쓰게 되었다. 당신은 그가 허리띠에 더러운 나이프를 차고 있다는 사실을 발견한다. 그는 당신이 다가가자 쉿 소리를 낸다. "가! 꺼져! 난 고기와는 말 안 해. 난 안 들어, 고기! 꺼져!~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23825 /* ~"어... 당신이 당신 벨트 속에 쑤셔 넣은 그 나이프를 내가 가질 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #23826 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.0 2.0 3.0 4.0
  SAY #23827 /* ~굴은 나이프를 내려다본다, 그리고 그것을 어디서 얻었는지 생각이 나지 않는 듯 머리를 긁적인다. 마침내 그는 고개를 쳐들고 당신을 향해 이를 드러내며 교활하게 웃는다... "나이프를 원해? 그럼 교환을 하자..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23828 /* ~"이 쥐꼬리들은 어떻겠소?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23829 /* ~"이 쥐꼬리들은 어떻겠소?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23830 /* ~"난 당신에게 돈을 줄 수도 있소..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23831 /* ~"하지만 난 당신에게 줄 돈이 없소."~ */ GOTO 6
  IF ~~ THEN REPLY #23832 /* ~"내가 그것을 강제로 빼앗기 전에 내게 넘기시오, 굴."~ */ GOTO 9
  IF ~~ THEN REPLY #23833 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.3 9.2 9.3
  SAY #23834 /* ~굴은 고개를 저으며 자신의 입을 가리킨다. "아니, 아니... 먹을 것, 그래, 고기..." 그는 긴 혓바닥을 내밀며 군침을 삼킨다.~ */
  IF ~~ THEN REPLY #23835 /* ~"그럼 당신이 먹을 만한 것을 가지고 돌아오겠소."~ */ JOURNAL #23836 /* ~나는 우허의 나이프를 가진 굴을 찾아냈다. 그는 칼과 음식을 교환하길 원한다. 그가 먹을만한 것, 예를 들어 쥐를 이 곳에서 찾거나 잡아야겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 9.0
  SAY #23837 /* ~굴은 그것들을 심각한 표장으로 살핀다. "맛은 있지만 양이 너무 적어. 더, 더! 배고파!"~ */
  IF ~~ THEN REPLY #23838 /* ~"그럼 더 가지고 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 9.1
  SAY #23839 /* ~"그래, 그래!" 굴은 탐욕스럽게 그것들을 채가서 먹는다. 그는 날카로운 손톱이 달린 자신의 손가락들을 다 핥은 후 당신에게 우허의 나이프를 던져 준다. ~ */
  IF ~~ THEN REPLY #23840 /* ~"어... 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("DN_Knife","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY #23841 /* ~"쉿쉿! 너 고기, 맛있고, 빨갛고, 촉촉한 고기 - 너따윈 무섭지 않아! 나이프를 원해? 그럼 거래를 하자!"~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23842 /* ~"이 쥐꼬리들은 어떻겠소?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23843 /* ~"이 쥐꼬리들은 어떻겠소?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23845 /* ~"난 당신에게 돈을 줄 수도 있소..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23846 /* ~"하지만 난 당신에게 줄 돈이 없소."~ */ GOTO 6
  IF ~~ THEN REPLY #23847 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 10 // from:
  SAY #23848 /* ~이 굴의 얼굴에는 큰 칼자국이 나 있으며, 한쪽 눈은 완전히 못쓰게 되었다. 상처가 비교적 새로운 것임에도 불구하고 이 냄새가 고약한 괴물은 별다른 고통이나 불편을 느끼지 않는 것 같다. ~ */
  IF ~~ THEN REPLY #23849 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #23850 /* ~굴을 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 11 // from:
  SAY #23851 /* ~이 굴의 얼굴에는 큰 칼자국이 나 있으며, 한쪽 눈은 완전히 못쓰게 되었다. 그는 당신이 다가가자 쉿 소리를 낸다. "가! 꺼져! 난 고기와는 말 안 해. 난 안 들어, 고기! 꺼져!"~ */
  IF ~~ THEN REPLY #23852 /* ~떠난다.~ */ EXIT
END
