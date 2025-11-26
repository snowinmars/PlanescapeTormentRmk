// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINAM~

IF ~  NumTimesTalkedTo(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46116 /* ~이 키가 작고 학자답게 생긴 남자는, 다소 불안하고 굳은 표정을 지은 채 당신을 위아래로 살펴본다. "안녕하시오. 죄송하지만 나는 초대를 받고 온 사람이든 아니면 *그렇지 않은* 사람이든 간에 손님을 별로 반기지 않소, 특별한 용건이 있는 경우를 제외하고는. 그러니 떠나 주시면 고맙겠소."~ */
  IF ~~ THEN REPLY #46117 /* ~"질문할 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #46118 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46119 /* ~휘남은 당신을 흘긋 보더니 눈살을 찌푸린다. "또 내 집을 방문하셨소? 이번에는 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #46120 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #46121 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #46122 /* ~"내가 언어학자라는 것을 알아 주셨으면 하오. 내 전공분야인 어학에 대해서라면 기꺼이 질문에 답해 드리겠으나, 다른 분야에 대해서는 당신에게 별 도움이 되지 못할 것이오."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46123 /* ~12면체를 펼쳐 '글'이 쓰여진 페이지가 나타나도록 한 후 그에게 그것을 번역할 수 있는지 물어본다.~ */ GOTO 3
  IF ~~ THEN REPLY #46124 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46125 /* ~그는 펼쳐진 12면체를 받아서는 유심히 살펴본다. "이 언어는 거의 아는 사람이 없는 이미 오래 전에 죽은 언어로, 나와 마찬가지로 언어학자이셨던 내 선친께서는 아마 이 언어를 알고 계셨을 거요. 그분 생전에도 시길에서 이 언어를 이해할 수 있는 사람은 아마 그분뿐이었을 것이오. 나는 선친의 연구일지 덕분에 그 언어를 알아볼 수는 있으나, 번역할 수는 없소." ~ */
  IF ~~ THEN REPLY #46126 /* ~"당신은 아직도 그 노트들을 가지고 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #46127 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46128 /* ~휘남은 고개를 젓는다. "번역을 하실 생각이라면 그것들은 별 도움이 되지 못할 것이오... 그리고 선친께서 가지고 계셨던 그 언어와 관련된 실제 서적들은 그분께서 살해당하셨을 즈음 사라졌던 것으로 나는 기억하고 있소."~ */
  IF ~~ THEN REPLY #63620 /* ~"그래도 나는 그것들을 몹시 보고 싶소..."~ */ GOTO 8
  IF ~~ THEN REPLY #46129 /* ~"당신 선친은 살해당했소?"~ */ GOTO 5
  IF ~~ THEN REPLY #46130 /* ~"정말 안됐소. 안녕히 계시오, 휘남."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 8.3 11.0 12.3 13.0
  SAY #46131 /* ~휘남은 고개를 끄덕인다. "교살당하셨소. 연구에서 얻는 수입만으로는 부족해 선친께서는 사람들에게 다양한 언어들에 대해 가르치는 일을 부업으로 하셨소. 어느 날 누군가를 가르치러 떠나셨다가 시 공회당 내의 한 방에서 돌아가신 채로 발견되었소. 하지만 이 얘기는... 지금으로부터 약 오십 년 전의 일이오. 그 때 나는 어린아이에 불과했소."~ */
  IF ~~ THEN REPLY #46132 /* ~"하지만 그는 그 언어를 알고 가르칠 수도 있었소?"~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #46133 /* ~"참 안된 일이오 안녕히 계시오, 휘남."~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46134 /* ~"그분께서 살아계셨더라면 당신에게 그 언어에 대해 가르쳐 주실 수 있었을 것이고, 또 기꺼이 그러셨을 것이오. 나는 내 선친께서 뛰어난 선생이기도 하셨다고 들었소." 그는 슬프게 한숨을 쉰다. "나는 그분으로부터 어학의 재능은 물려받았지만, 슬프게도 다른 이들에 대한 인내심은 물려받지 못했소."~ */
  IF ~~ THEN REPLY #46135 /* ~"그는 시체안치소에 안장되었소?"~ */ JOURNAL #39478 /* ~나는 내가 발견한 펼쳐지는 12면체에 적힌 기묘한 글에 대해서 언어학자 휘남과 얘기를 나누었다. 그는 자신의 아버지가 그것이 쓰여진 사멸한 언어를 알고 있었으나, 이미 오래 전에 정체불명의 폭한에게 목이 졸려 죽었다고 말한다. 그의 아버지의 재는 이제 그의 집에 있는 항아리 안에 안치되어 있다. 이미 오래 전에 사멸한 언어를 아는 다른 사람을 찾기는 어려울 듯하니, 재를 통해 휘남의 아버지의 혼령과 교신하는 방법을 모색하는 것이 좋을 것 같다. ~ */ GOTO 7
  IF ~~ THEN REPLY #46136 /* ~"안녕히 계시오, 휘남."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46137 /* ~"아니오... 선친의 재는 이 곳에 보관되어 있소." 그는 캐비닛 위에 자주색 꽃다발과 함께 놓인 청동 납골 단지를 가리킨다. "왜 물으시오?" 그의 입가에 경계하는 빛이 감돈다. "혹시 당신은 죽은 자와 얘기하는 강령술사요?" 그는 갑자기 눈살을 찌푸린다. "더 이상 이러한 일들에 대해 얘기하고 싶지 않소. 죄송하지만 그만 떠나 주셔야겠소... 안녕히 가시오."~ */
  IF ~~ THEN REPLY #46138 /* ~"안녕히 계시오, 휘남."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #49981 /* ~휘남은 짜증스럽게 한숨을 쉰다. "나는 그것들이 어디 있는지 모르오, 그리고 지금 나는 다른 것 - 내 연구 일지를 찾고 있소. 만약 내가 그것을 되찾는다면 당신을 위해 그 연구 기록들을 찾을 시간을 내줄 수 있을지도 모르오."~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #49982 /* ~"여기 있는 이 책이오?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~나는 언어학자 휘남에게 그의 연구일지를 되돌려 주었다.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49983 /* ~"여기 있는 이 책이오?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~나는 언어학자 휘남에게 그의 연구일지를 되돌려 주었다.~ */ GOTO 10
  IF ~~ THEN REPLY #49984 /* ~"그럼 가서 그것을 찾아오겠소. 그것을 마지막으로 본 곳은 어디였소?"~ */ DO ~SetGlobal("Finam","GLOBAL",1)
~ JOURNAL #49988 /* ~나는 언어학자 휘남의 연구일지를 찾아서 돌려주기로 했다... 대신 그가 12면체에 새겨진 언어에 관한 그의 아버지의 원고를 주길 바랄 뿐이다. 들어보니 그는 일지를 지적인 욕망을 힐난하는 매음굴 어딘가에 놓고 온 것 같다.~ */ GOTO 11
  IF ~~ THEN REPLY #49985 /* ~"당신은 당신 선친이 살해되었다고 했소?"~ */ GOTO 5
  IF ~~ THEN REPLY #49986 /* ~"안됐군. 안녕히 계시오, 휘남."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #49989 /* ~휘남의 눈썹이 아치 모양이 된다. "그렇소!" 그는 그것을 받고는 자신의 호주머니 속을 뒤지기 시작한다. "그럼 여기 있소... 내 아버지의 연구 기록이오. 그럼 우리는 셈이 끝난 거요, 맞소? 좋소. 이제 나는 내 일지를 좀 봐야겠소, 그러니 이만 떠나 주시면 고맙겠소..."~ */
  IF ~~ THEN REPLY #49990 /* ~"고맙소, 휘남. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #49991 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 12.1
  SAY #49992 /* ~휘남의 눈썹이 아치 모양이 된다. "그렇소!" 그는 그것을 받고는 자신의 호주머니 속을 뒤지기 시작한다. "흠... 이상하군. 그것들이 없어졌소. 미안하오, 하지만 누군가가 내 아버지의 연구 기록을 가져간 모양이오. 안됐소... 이제 나는 내 일지를 좀 봐야겠소, 그러니 이만 떠나 주시면 고맙겠소..."~ */
  IF ~~ THEN REPLY #49993 /* ~"그 일에 대해서는 고민하지 마시오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #49994 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 12.2
  SAY #49995 /* ~"에... 글쎄... 나도 잘 모르겠소. 아마 지적인 욕망을 힐난하는 매음굴에 있을지도 모르겠소, 하지만 그게 어떻게 그 곳에까지 가게 되었는지는 나도 모르겠소." 그는 헛기침을 하고 시선을 돌린다. ~ */
  IF ~~ THEN REPLY #49997 /* ~"그럼 그 곳에서 찾아보겠소. 당신은 당신 선친이 살해되었다고 했소?"~ */ GOTO 5
  IF ~~ THEN REPLY #49996 /* ~"그럼 그 곳에서 찾아보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #49998 /* ~휘남은 뭔가를 찾던 일을 잠시 멈추고 당신을 쳐다본다. "혹시 내 책을 찾는 데 무슨 성과라도 있었소?"~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #50000 /* ~"여기 있는 이 책이오?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~나는 언어학자 휘남에게 그의 연구일지를 되돌려 주었다.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49999 /* ~"여기 있는 이 책이오?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~나는 언어학자 휘남에게 그의 연구일지를 되돌려 주었다.~ */ GOTO 10
  IF ~~ THEN REPLY #50001 /* ~"아니오, 당신이 마지막으로 그 책을 본 곳을 다시 말해주겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #50002 /* ~"아니오... 하지만 당신 선친이 살해당했다는 건 무슨 얘기요"~ */ GOTO 5
  IF ~~ THEN REPLY #50003 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #50004 /* ~휘남은 약간 짜증스러운 표정으로 당신 쪽을 흘긋 본다. "이제 나는 내 일지를 좀 봐야겠소, 그러니 이만 떠나 주시면 고맙겠소..."~ */
  IF ~~ THEN REPLY #50005 /* ~"하나만 묻겠소. 당신은 당신 선친이 살해되었다고 했소?"~ */ GOTO 5
  IF ~~ THEN REPLY #50006 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
