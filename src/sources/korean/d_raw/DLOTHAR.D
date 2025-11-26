// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOTHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOTHAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2951 /* ~"또 그대인가? 이 늙은 로타로부터 무엇을 원하는가? 나는 그대에게 그대의 해골 친구와 답을 이미 주었다. 경고하겠는데 내게 그대에게 하루종일 신경을 쓸 시간은 없다." 그의 시선은 마치 망치처럼 당신을 내려친다. ~ */
  IF ~~ THEN REPLY #2952 /* ~"나는 질문을 조금 더 하고 싶소."~ */ GOTO 1
  IF ~~ THEN REPLY #28728 /* ~"나는 당신과 조금 더 얘기하고 싶을 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #43392 /* ~"나는 당신의 치유의 힘을 빌리고 싶소."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43393 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 53.0 57.0
  SAY #28657 /* ~"서두르게, 흉터투성이 친구. 하루종일 기다려 줄 순 없네."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28730 /* ~"래벌 퍼즐웰에 대하여 얘기해주시오."~ */ GOTO 49
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28731 /* ~"왜 나는 불사신이오?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ JOURNAL #67691 /* ~로타는 내가 불사신이 된 것은 흉측한 나이트 해그 래벌 퍼즐웰이 내게서 죽음을 빼앗아 갔기 때문이라고 내게 말해주었다. 그는 계속해서 만약 내가 더 자세한 답을 듣고자 하면 레이디 오브 페인이 래벌을 추방한 미로로 그녀를 찾아가라고 말했다. 이제 나는 그 곳에 도달할 방법만 알아내면 된다...~ */ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28732 /* ~"왜 나는 불사신이오?"~ */ GOTO 47
  IF ~~ THEN REPLY #28733 /* ~"왜 나는 기억을 잃었소?"~ */ GOTO 48
  IF ~~ THEN REPLY #43394 /* ~"나는 당신의 치유의 힘을 빌리고 싶소."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43395 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 11.1
  SAY #28658 /* ~그는 당신을 차가운 표정으로 응시한다, 그리고 그가 가볍게 몸짓을 하자 당신은 사라진다. ~ */
  IF ~~ THEN REPLY #28735 /* ~"잠깐 기다리시오..."~ */ DO ~TeleportParty("AR0500",[2270.3023],2)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #28659 /* ~"아직 이 수다쟁이를 데리고 가지 않을 생각인가? 난 그의 끝없는 한탄 때문에 피곤하다네."~ */
  IF ~~ THEN REPLY #28736 /* ~"아니, 그는 당신이 그냥 가지고 있도록 하시오."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #28737 /* ~"그렇소. 부디 그를 내게 돌려주시오."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28660 /* ~로타의 눈빛이 강철처럼 완고해진다. "그래도 자네 그를 데려가야 하네." 가벼운 손짓 하나로 로타는 모트를 해방한다, 그러자 모트가 선반 위에서 사라진다." 자네를 그를 위층의 내 영역으로 통하는 입구 부근에서 찾을 수 있을 걸세." 그는 등을 돌린다. "잘 가게."~ */
  IF ~~ THEN REPLY #61286 /* ~"안녕히 계시오."~ */ JOURNAL #37700 /* ~로타는 내가 그 수다쟁이는 필요가 없다고 했는데도 내게 모트를 돌려주었다. 나는 위층의 내가 로타의 영역으로 들어온 곳 부근에서 그를 회수해야 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #28661 /* ~가벼운 손짓 하나로 로타는 모트를 해방한다, 그러자 모트가 선반 위에서 사라진다." 자네를 그를 위층의 내 영역으로 통하는 입구 부근에서 찾을 수 있을 걸세." 그는 등을 돌린다. "잘 가게."~ */
  IF ~~ THEN REPLY #61287 /* ~"안녕히 계시오."~ */ JOURNAL #38204 /* ~로타는 내게 모트를 돌려주었다. 나는 위층의 내가 로타의 영역으로 들어온 곳 부근에서 그를 회수해야 한다. ~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #28662 /* ~"자네가 돌아왔군. 나를 위해 해골을 가져왔나?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28757 /* ~"내겐 인간의 해골이 하나 있소."~ */ GOTO 35
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28758 /* ~"나는 위어랫의 해골을 하나 가지고 있소."~ */ GOTO 35
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28759 /* ~"나는 죽은 자의 왕국의 스켈레톤 사제인 하그림의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 37
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28760 /* ~"나는 죽은 자의 왕국의 좀비 지도자인 썩은 메리의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 38
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28761 /* ~"나는 굴 반란군의 지도자인 아카스트의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 39
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28762 /* ~"나는 위어랫이자 더스트맨 전도사인 소에고의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 40
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28763 /* ~"나는 죽은 자의 왕국의 지배자인 침묵의 왕의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 41
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28764 /* ~"나는 만투옥의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 36
  IF ~~ THEN REPLY #54116 /* ~"아직 아니오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.8
  SAY #28663 /* ~"그럼 어서 가서 찾아오게. 만약 자네가 필요한 정보를 얻고, 자네의 수다쟁이 유사 미미르를 돌려받고 싶다면 말일세." ~ */
  IF ~~ THEN REPLY #28765 /* ~"좋소. 돌아오리다.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #28664 /* ~"그래? 자네 소유의 해골과 교환할 해골은 ?" 로타는 뒤틀린 미소를 짓는다.~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28766 /* ~"그 관 속에는 해골이 없소, 로타."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28767 /* ~"아직 아니오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 14.1
  SAY #28665 /* ~"그럼 가게. 그것을 찾아올 때까지 돌아올 생각은 하지 말게."~ */
  IF ~~ THEN REPLY #28768 /* ~"알겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 14.0 21.2 22.2 26.0 30.0 54.2
  SAY #28666 /* ~"이게 대체 무슨 얼토당토 않은 얘긴가? 그 무덤은 사방이 함정투성이이며, 또 탐지 마법에 대해서는 어찌나 철저하게 보안이 되어 있는지 나조차도 그 곳을 탐지하는 데 어려움을 겪었을 정도라네! 여기에는 분명히 무슨 이유가 있을 걸세." 그는 화를 내며 천천히 말을 꺼낸다. "자네가 그 이유를 알아 와야만 하네. 이 곳 지하의 동굴에 있는 전이문을 통해 그 무덤으로 가서 답을 찾아오게."~ */
  IF ~~ THEN REPLY #28769 /* ~"내겐 답이 없소. 내가 어떻게 알 수가 있겠소?"~ */ GOTO 55
  IF ~~ THEN REPLY #31897 /* ~"그것은 그러한 무덤을 노리는 도굴꾼들을 저지하기 위한 함정이었던 것 같소."~ */ GOTO 55
  IF ~~ THEN REPLY #31898 /* ~"그것은 내 무덤이었소."~ */ GOTO 56
END

IF WEIGHT #5 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #28667 /* ~"또 자네인가?" 노인은 당신을 쳐다보며 약간 비틀거린다. "이 로타로부터 또 뭘 원하는 건가? 나는 이미 자네가 원하는 답을 주었네. 경고해 두겠네만 내겐 하루종일 자네를 보살펴 줄 시간이 없네." 그는 시선은 마치 망치처럼 당신을 내려친다. ~ */
  IF ~~ THEN REPLY #28770 /* ~"몇 가지 질문에 더 대답해주었으면 고맙겠소."~ */ GOTO 1
  IF ~~ THEN REPLY #28771 /* ~"나는 당신과 조금 더 얘기하고 싶을 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #28772 /* ~"아무 것도 아니오, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #28668 /* ~"자네가 돌아왔군. 나를 위해 해골을 가져왔나?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28773 /* ~"내겐 인간의 해골이 하나 있소."~ */ GOTO 35
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28774 /* ~"나는 만투옥의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
AddexperienceParty(15000)
~ GOTO 57
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28775 /* ~"나는 죽은 자의 왕국의 스켈레톤 사제인 하그림의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
~ GOTO 42
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28776 /* ~"나는 죽은 자의 왕국의 좀비 지도자인 썩은 메리의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
AddexperienceParty(15000)
~ GOTO 43
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28777 /* ~"나는 굴 반란군의 지도자인 아카스트의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
AddexperienceParty(15000)
~ GOTO 44
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28778 /* ~"나는 위어랫이자 더스트맨 전도사인 소에고의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
AddexperienceParty(15000)
~ GOTO 45
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28779 /* ~"나는 죽은 자의 왕국의 지배자인 침묵의 왕의 해골을 가지고 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
AddexperienceParty(15000)
~ GOTO 46
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28780 /* ~"나는 위어랫의 해골을 하나 가지고 있소."~ */ GOTO 35
  IF ~~ THEN REPLY #54115 /* ~"아직 아니오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.8
  SAY #28669 /* ~"그럼 지하 묘지로 가서 새 해골을 찾는 게 어떻겠나?"~ */
  IF ~~ THEN REPLY #28782 /* ~"좋소, 좋아."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #28670 /* ~"그래, 나로부터 대답을 얻어낼 수 있을 정도의 가치를 지닌 해골을 찾았는가?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28783 /* ~"그 관 속에는 해골이 없소, 로타."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28784 /* ~"아직 아니오."~ */ GOTO 9
END

IF WEIGHT #8 /* Triggers after states #: 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 15 // from:
  SAY #28671 /* ~"아! 손님이군. 내 허락도 초대도 받지 않고 내 초라한 응접실에 온 이유가 뭔가?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #28785 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #28786 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 20
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28787 /* ~"당신은 누구요?"~ */ GOTO 20
  IF ~~ THEN REPLY #47559 /* ~"아무 것도 아니오. 방해해서 미안하오."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #28672 /* ~"하지만 밤의 뼈들에 초대도 받지 않고 와서 그처럼 빨리 나가게 둘 수는 없지. 나는 여기서 답을 판다네, 젊은이, 그리고 신들에게 맹세코 난 자네로부터 답을 들어야만 하겠네. 아니면 자네 해골도 내 선반을 장식하게 될 걸세."~ */
  IF ~~ THEN REPLY #28788 /* ~"어디 한 번 해보시지, 늙은이."~ */ GOTO 18
  IF ~~ THEN REPLY #28789 /* ~"당신은 답을 파시오? 그럼 말해주시오: 나는 누구요? 왜 나는 불사신이오?"~ */ GOTO 20
  IF ~~ THEN REPLY #28791 /* ~"난 그렇게 생각하지 않소. 안녕히 계시오."~ */ GOTO 17
  IF ~~ THEN REPLY #43396 /* ~"나는 당신의 치유의 힘을 빌리고 싶소. 나는 당신에 대한 얘기를 들었소." ~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #28673 /* ~"내가 자네의 히죽 웃는 해골로부터 직접 답을 얻어내기 전에 마지막으로 자네에게 대답할 기회를 딱 한 번 주겠네."~ */
  IF ~~ THEN REPLY #28792 /* ~"Eh bien, 나는 ici pour acheter des 응답s."~ */ GOTO 20
  IF ~~ THEN REPLY #28793 /* ~"그리고 당신에게는 내가 당신을 죽이기 전에 단 한 번의 기회가 있소."~ */ GOTO 18
  IF ~~ THEN REPLY #43397 /* ~"나는 당신의 치유의 힘을 빌리고 싶소. 나는 당신에 대한 얘기를 들었소." ~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.1 22.0 34.1
  SAY #28674 /* ~노인은 눈을 번득이며 비밀스러운 음절들로 구성된 뒤틀린 어구를 영창한다. 고통이 당신 몸을 엄습한다. 사방이 어둠에 잠긴다...~ */
  IF ~~ THEN REPLY #28794 /* ~"악..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",1)
~ EXIT
END

IF WEIGHT #0 ~  GlobalLT("KidMorte_Speak","AR0508",2)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #28675 /* ~당신은 섬광과 연기 때문에 잠시 눈을 뜨지 못한다. 당신이 눈을 열자 당신 앞에는 쭈글쭈글한 노인이 서 있다. "손님들인가, 해골?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Lothar","GLOBAL",1)
SetGlobal("KidMorte_Speak","AR0508",2)
~ EXTERN ~DKIDMORT~ 4
END

IF ~~ THEN BEGIN 20 // from: 15.0 15.1 15.2 16.1 16.3 17.0 17.2
  SAY #28676 /* ~"모든 대답과 주문에는 대가가 따르기 마련이지. 자네의 경우..." 노인은 잠시 말을 멈춘다. "내가 요구하는 것은 해골이네. 나는 해골들에게 질문을 하고 죽은 자들은 대답을 하네. 죽은 자들은 살아 있는 동안 많은 지식을 축적했지. 해골의 가치가 크면 클수록 물어볼 수 있는 주문의 수도 늘어나고, 내가 자네를 위해 영창해 줄 수 있는 역시 한층 강력해지네."~ */
  IF ~~ THEN REPLY #28795 /* ~"그래서?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 21 // from: 54.0
  SAY #28677 /* ~로타의 눈에 위험한 빛이 감돈다. "그건 부탁이 아니었네."~ */
  IF ~~ THEN REPLY #28797 /* ~"나는 관두라고 했소."~ */ GOTO 22
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28798 /* ~"좋소, 좋아. 당신이 원하는 해골을 가져오겠소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47560 /* ~"그 무덤은 이미 비어 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #28678 /* ~"내가 자네의 해골을 대신 취하기 전에 마지막으로 기회를 한 번 더 주겠네."~ */
  IF ~~ THEN REPLY #28799 /* ~"어디 한 번 해보시지, 로타."~ */ GOTO 18
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28800 /* ~"화낼 필요는 없지 않소. 당신이 원하는 해골을 가져오겠소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64538 /* ~"그 무덤은 이미 비어 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from:
  SAY #28679 /* ~노인은 모트를 무시한다. "잘 만났네. 여행자. 자네는 누구길래 이 로타의 누추한 응접실에 초대도 받지 않고 들어온 건가?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28801 /* ~"당신은 내 친구를 납치했소. 지금 당장 그를 돌려주시오."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28802 /* ~"당신은 내 친구를 납치했소. 그를 당장 내게 돌려주시오."~ */ GOTO 25
  IF ~~ THEN REPLY #28803 /* ~"미안하오, 하지만 당신은 내 소유물을 가지고 있는 것 같소."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28680 /* ~"납치? 자네 친구? 난 그런 일을 한 적이 없네. 자네 친구가 어디 있다는 건가?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 5
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28681 /* ~"납치? 자네 친구? 난 그런 일을 한 적이 없네. 자네 친구가 어디 있다는 건가?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 6
END

IF ~~ THEN BEGIN 26 // from: 21.1 22.1 54.1
  SAY #28682 /* ~"자네는 크레이움 랫들이 지배하는 사고의 굴이나 걸어다니는 시체들이 지배하는 죽은 자의 왕국을 통과한 후, 습기로 가득 찬 익사한 왕국을 지나 이 이름 없는 군주의 무덤을 찾아야만 하네. 자네처럼... 경험이 풍부한... 모험자라면 별 어려움이 없을 걸세. 여기 있는 이 소파를 옆으로 치우고 지하에 있는 동굴로 내려간 후, 그 곳 동쪽 벽에 있는 전이문으로 들어가게. 전이문은 자네가 돌아올 때까지 계속 작동할 걸세. 자네가 그 해골을 가지고 돌아오면 내가 자네 질문에 대답을 해주겠네."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28804 /* ~"나는 그 곳에 가본 적이 있소, 하지만 그 안에는 아무도 없었소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28805 /* ~"다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY #28683 /* ~"그래, 그게 뭔가?"~ */
  IF ~~ THEN REPLY #28806 /* ~"저 선반 위에는 내 소유물인 해골이 있소."~ */ GOTO 28
  IF ~~ THEN REPLY #28807 /* ~"내 친구 모트는 당신 선반에 놓인 신세가 되었소."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #28684 /* ~로타는 대답한다. "그 품위와 예의가 보통 생물의 절반 수준밖에 되지 않는 수다쟁이 해골을 원하는가? 만약 돌려받고 싶다면 내게 더 큰 가치가 있는 해골을 가져오게. 나는 이미 내 소유인 것을 가지고 흥정할 생각은 없네."~ */
  IF ~~ THEN REPLY #28809 /* ~"그는 애초부터 당신 것... 아니 누구의 것도 아니었소."~ */ GOTO 32
  IF ~~ THEN REPLY #28810 /* ~"그는 내 것이오."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28811 /* ~"더 값진 해골은 어디서 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64539 /* ~"어디에서 더 값진 해골을 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from:
  SAY #28685 /* ~EMPTY NODE REPORT THIS TO COLIN IF YOU HIT IT~ */
  IF ~~ THEN REPLY #28812 /* ~"좋소. 더 값진 해골은 어디서 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #28813 /* ~"그는 내 것이오."~ */ GOTO 33
  IF ~~ THEN REPLY #28814 /* ~"그는 애초부터 당신 것이 아니었소."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3 29.0 32.0 32.2 34.0 34.2 51.2 51.3
  SAY #28686 /* ~"이 방 중앙에 있는 이 소파를 옆으로 치우고 지하에 있는 동굴로 내려간 후, 그 곳 동쪽 벽에 있는 전이문으로 들어가게. 전이문은 자네가 돌아올 때까지 계속 작동할 걸세. 지하 묘지에는 많은 해골들이 있네. 그 중에서도 특별히 값진 해골이 익사한 왕국 너머에 있는 더스트맨에 의해 매장된 무덤 안에 있네. 그 해골을 내게 가져오게. 불행히 내 위어랫 하인들은 이미 그 임무에 실패했네. 자네가 성공하면 자네 친구를 돌려주도록 하겠네, 그리고 덤으로 자네 질문에 대답을 해줄 수도 있네."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #2970 /* ~"나는 당신이 얘기한 무덤에 가보았소. 하지만 그 곳은 텅 비었소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #66222 /* ~로타는 내게 방 한가운데에 있는 긴 의자를 치우면 그의 집 지하의 동굴로 통하는 통로가 나타날 것이라고 말해주었다. 그 곳에 일단 도착하면 지하 묘지로 들어가 익사한 나라 너머에 있는 무덤을 찾아야만 한다. 그 무덤에는 대단한 가치를 지닌 해골이 있다고 한다. 그것을 그에게 가지고 돌아오면 그는 모트를 내게 돌려줄 것이다. ~ */ GOTO 10
  IF ~~ THEN REPLY #2971 /* ~"내가 무엇으로 당신이 자신이 한 약속을 지킬 거라는 걸 확신할 수 있겠소?"~ */ JOURNAL #66222 /* ~로타는 내게 방 한가운데에 있는 긴 의자를 치우면 그의 집 지하의 동굴로 통하는 통로가 나타날 것이라고 말해주었다. 그 곳에 일단 도착하면 지하 묘지로 들어가 익사한 나라 너머에 있는 무덤을 찾아야만 한다. 그 무덤에는 대단한 가치를 지닌 해골이 있다고 한다. 그것을 그에게 가지고 돌아오면 그는 모트를 내게 돌려줄 것이다. ~ */ GOTO 31
  IF ~~ THEN REPLY #28853 /* ~"좋소. 내가 가서 당신이 원하는 걸 가져오면 모트를 내게 돌려주어야 하오. 안녕히 계시오."~ */ JOURNAL #66222 /* ~로타는 내게 방 한가운데에 있는 긴 의자를 치우면 그의 집 지하의 동굴로 통하는 통로가 나타날 것이라고 말해주었다. 그 곳에 일단 도착하면 지하 묘지로 들어가 익사한 나라 너머에 있는 무덤을 찾아야만 한다. 그 무덤에는 대단한 가치를 지닌 해골이 있다고 한다. 그것을 그에게 가지고 돌아오면 그는 모트를 내게 돌려줄 것이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #28687 /* ~"나는 이미 자네에게 언질을 주었네. 그거면 충분하네. 물론 자네에게 자네 친구를 다시는 볼 생각이 없다면 얘기는 다르겠지만..."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 7
END

IF ~~ THEN BEGIN 32 // from: 28.0 29.2 51.0
  SAY #28688 /* ~"자네의 무지는 가히 경이로운 수준이네. 자네에겐 정말 쥐꼬리만한 상식조차 없군. 자, 내게 그를 대신할 다른 해골을 가져오던지, 아니면 자네 친구에게 작별인사를 하게."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28854 /* ~"그럼 좋소. 어떻게 하면 그와 동등한 가치를 지닌 해골을 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28855 /* ~"그를 내게 돌려주시오. 그는 내 것이오."~ */ GOTO 33
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64540 /* ~"그럼 좋소. 어떻게 하면 그와 동등한 가치를 지닌 해골을 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 28.1 29.1 32.1 51.1
  SAY #28689 /* ~로타는 손으로 자신의 지팡이를 꽉 쥔다. "그 해골은 내 것이네. 만약 자네가 계속 그런 식으로 나온다면 자네 해골도 취하도록 하겠네."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 9
END

IF ~~ THEN BEGIN 34 // from:
  SAY #28690 /* ~"해골은 현명한 말을 하고 있네. 그의 말에 귀를 기울이게."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28856 /* ~"그럼 좋소. 어떻게 하면 더 값진 해골을 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28857 /* ~"난 그렇게 생각하지 않소. 그를 돌려주던지 아니면 대가를 치를 각오를 하시오."~ */ GOTO 18
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64541 /* ~"그럼 좋소. 어떻게 하면 더 값진 해골을 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 6.0 6.1 12.0 12.7
  SAY #28691 /* ~로타는 해골을 들고는 그것을 유심히 살펴본다. "흥. 이건 아무런 가치도 없네. 내게 아무 것도 말해줄 수가 없어. 만약 내 도움을 받고 싶다면 가치가 있는 해골을 가져오도록. 그만 가보게!"~ */
  IF ~~ THEN REPLY #28858 /* ~"좋소, 좋아."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 6.7
  SAY #28692 /* ~로타의 눈이 분노로 번득인다. "내 부하들을 함부로 죽이지는 말게. 그의 해골을 내게 주게." 그는 해골을 조심스럽게 살핀 후 말문을 연다. "나는 놈의 뼈로부터 놈의 배신의 냄새를 맡을 수가 있네. 놈은 아주 교묘하게 직무를 유기하는 놈이었지만, 조심성이 부족했던 것 같군. 안 그런가? 걱정 말게, 내가 놈으로부터 직접 놈의 비밀을 캐내고, 놈의 표리부동함도 다 밝혀낼 테니." 그는 손가락으로 불가해한 손짓을 한다. "자네 친구는 지상의 이 곳 입구에서 기다리고 있을 것이네. 그리고 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28859 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 37 // from: 6.2
  SAY #28693 /* ~로타는 당신으로부터 해골을 받아 세밀히 살펴본다. "하그림이라고 했나? 죽은 자의 왕국의 지도자? 그는 내게 많은 정보를 제공해 줄 것 같네. 매우 만족스러운 거래였네." 그는 손가락으로 불가해한 손짓을 한다. "자네 친구는 지상의 이 곳 입구에서 기다리고 있을 것이네. 그리고 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28860 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 38 // from: 6.3
  SAY #28694 /* ~로타는 당신으로부터 썩은 메리의 머리를 받아 여분의 살점들을 털어낸 후 그것을 유심히 살펴본다. "죽은 자의 왕국의 좀비 지도자라고 했나? 이거라면 만족이네." 그는 손가락으로 불가해한 손짓을 한다. "자네 친구는 지상의 이 곳 입구에서 기다리고 있을 것이네. 그리고 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28861 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 39 // from: 6.4
  SAY #28695 /* ~로타는 당신으로부터 아카스트의 머리를 받아 여분의 살점들을 털어낸 후 그것을 유심히 살펴본다. "굴의 여왕? 이거라면 만족이네." 그는 손가락으로 불가해한 손짓을 한다. "자네 친구는 지상의 이 곳 입구에서 기다리고 있을 것이네. 그리고 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28862 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 40 // from: 6.5
  SAY #28696 /* ~로타는 당신으로부터 소에고의 머리를 받아 그 이빨을 확인하며 유심히 살펴본다. "더스트맨 선교사이자 스파이? 이거라면 만족이네." 그는 손가락으로 불가해한 손짓을 한다. "자네 친구는 지상의 이 곳 입구에서 기다리고 있을 것이네. 그리고 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28863 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 41 // from: 6.6
  SAY #28697 /* ~로타는 당신으로부터 침묵의 왕의 해골을 받는다, 그리고 그것을 조심스럽게 흔들어 본다. "침묵의 왕인가? 이거라면 대만족이네!" 그는 해골에게 속삭인다. "자네는 내게 자네의 모든 비밀을 털어놓아야 할 걸세, 내 가장 새로운 친구여." 그는 손가락으로 불가해한 손짓을 한다. "자네 친구는 지상의 이 곳 입구에서 기다리고 있을 것이네. 그리고 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28864 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 42 // from: 12.2
  SAY #28698 /* ~로타는 당신으로부터 해골을 받아 세밀히 살펴본다. "하그림이라고 했나? 죽은 자의 왕국의 지도자? 그는 내게 많은 정보를 제공해 줄 것 같네. 매우 만족스러운 거래였네. 그럼 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28865 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 43 // from: 12.3
  SAY #28699 /* ~로타는 당신으로부터 썩은 메리의 머리를 받아 여분의 살점들을 털어낸 후 그것을 유심히 살펴본다. "죽은 자의 왕국의 좀비 지도자라고 했나? 이거라면 만족이네. 그럼 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28866 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 44 // from: 12.4
  SAY #28700 /* ~로타는 당신으로부터 아카스트의 머리를 받아 여분의 살점들을 털어낸 후 그것을 유심히 살펴본다. "굴의 여왕? 이거라면 만족이네. 그럼 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28867 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 45 // from: 12.5
  SAY #28701 /* ~로타는 당신으로부터 소에고의 머리를 받아 그 이빨을 확인하며 유심히 살펴본다. "더스트맨 선교사이자 스파이? 이거라면 만족이네, 그리고 다른 가치는 없더라도 재미는 있을 것 같군. 그럼 내가 자네 질문에 대답해주겠네."~ */
  IF ~~ THEN REPLY #28868 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 46 // from: 12.6
  SAY #28702 /* ~로타는 당신으로부터 침묵의 왕의 해골을 받는다, 그리고 그것을 조심스럽게 흔들어 본다. "침묵의 왕인가? 이거라면 대만족이네! 자네 질문에 기꺼이 대답해주지." 그는 해골에게 속삭인다. "자네는 내게 자네의 모든 비밀을 털어놓아야 할 걸세, 내 가장 새로운 친구여." ~ */
  IF ~~ THEN REPLY #28869 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 47 // from: 1.1 1.2 48.0 48.1
  SAY #28703 /* ~"자네에게는 자네가 죽고 살 수 있도록 해주는 자네의 '죽음', 달리 말해 영혼이 없네. 그것은 나이트 해그 래벌 퍼즐웰에 의해 자네로부터 분리되었네. 자네의 '죽음'은 자네 존재의 열쇠이며, 그것을 찾으면 자네는 모든 답을 얻게 될 걸세."~ */
  IF ~~ THEN REPLY #28870 /* ~"래벌에 대해 얘기해주시오."~ */ GOTO 49
  IF ~~ THEN REPLY #28871 /* ~"누구?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 1.3
  SAY #28704 /* ~"그것은 자네가 죽음을 잃음으로서 생긴 부작용일세."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28872 /* ~"내가 내 죽음을 잃었다? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28873 /* ~"내가 내 죽음을 잃었다? 그게 무슨 뜻이오?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 1.0 47.0 47.1
  SAY #28705 /* ~"래벌 퍼즐웰은 나이트 해그들 중에서도 괴짜라네. 어떤 사람들은 그녀를 미치광이라고 하고, 또 다른 사람들은 그녀가 누구도 이해하기 어려울 정도로 심원한 게임을 하고 있다고도 하네. 그녀는 철두철미하게 사악한 존재로, 그녀에게 견주면 자네가 이 주변에서 보는 마족 따위는 성인군자처럼 보일 정도라네. 그녀는 레이디 오브 페인에 의해 미로로 보내져 이제는 사람들의 손길이 닿지 않는 곳에 있네. 신들에게 감사해야 할 일이지."~ */
  IF ~~ THEN REPLY #28874 /* ~"미로에 갇혔다? 어떻게 하면 그녀를 찾을 수가 있소?"~ */ DO ~SetGlobal("bd_lothar_ravel_maze","global",1)
~ GOTO 50
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28875 /* ~"그녀는 무슨 짓을 했소?"~ */ GOTO 52
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28876 /* ~"알겠소. 고맙소. 안녕히 계시오, 로타."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28706 /* ~"미로는 소규모의 격리된 차원이라네... 차원들 사이의 작은 공간이지. 미로에 들어가려면 그에 대응되는 전이문과 열쇠를 찾아야만 하네. 자네가 찾는 미로의 열쇠와 어디 있는지는 나도 모르네. 아마 자네가 과거에 알았던 자들을 찾아가 보는 것이 좋을 걸세 - 자네는 적지 않은 양의 발자취를 남겼으니까. 그들이 자네를 찾을 건 의심할 여지가 없네. 그들이 자네에게 호의적이길 기도하게. 그리고 시 공회당에 한 번 가보게. 그 곳에서 많은 대답을 얻을 수 있을지도 모르네."~ */
  IF ~~ THEN REPLY #28877 /* ~"래벌은 무슨 짓을 했소?"~ */ JOURNAL #31882 /* ~로타는 내게 래벌에 대한 질문의 답을 얻으려면 시 공회당에 가보라고 권했다. ~ */ GOTO 52
  IF ~~ THEN REPLY #28878 /* ~"고맙소, 로타. 안녕히 계시오."~ */ JOURNAL #31882 /* ~로타는 내게 래벌에 대한 질문의 답을 얻으려면 시 공회당에 가보라고 권했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #28707 /* ~"나는 네가 말할 허락을 내리지 않았다, 해골!" 모트는 로타의 불호령 앞에 기가 죽는다. "흉터투성이 젊은이, 만약 자네가 해골을 돌려받고자 한다면 날 위해 지하 묘지로부터 더 큰 가치를 지닌 해골을 가져와야만 하네. 나는 이미 내 소유인 것을 놓고 흥정할 생각은 없네. 내 조건을 받아들이든지, 아니면 말게."~ */
  IF ~~ THEN REPLY #28880 /* ~"그는 애초부터 당신 것... 아니 누구의 것도 아니었소."~ */ GOTO 32
  IF ~~ THEN REPLY #28881 /* ~"그는 나의 것이오."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28882 /* ~"더 값진 해골은 어디서 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64542 /* ~"어디에서 더 값진 해골을 찾을 수가 있겠소?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 52 // from: 49.1 50.0
  SAY #28708 /* ~"그녀는 장난감과 퍼즐 장인으로, 풀 필요가 없는 문제를 풀려는 자였지. 그녀는 시길이 사상 최대의 퍼즐이라고 단정짓고 그것을 풀려고 작정을 했지. 그녀는 자신이 동원할 수 있는 무수한 마족들을 투입해 도시의 균형을 깨트리고 시 전체를 하나의 거대한 납골당으로 만들려고 했다네. 그녀가 성공하지 못한 것에 대해 자네가 섬기는 신들에게 감사의 기도를 드리게.~ */
  IF ~~ THEN REPLY #28883 /* ~"그럼 나는 그녀를 찾아 내 죽음을 돌려주도록 만들겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #31864 /* ~로타의 눈이 분노로 번득인다. "내 부하들을 함부로 죽이지는 말게. 그의 해골을 내게 주게." 그는 해골을 조심스럽게 살핀 후 말문을 연다. "나는 놈의 뼈로부터 놈의 배신의 냄새를 맡을 수가 있네. 놈은 아주 교묘하게 직무를 유기하는 놈이었지만, 조심성이 부족했던 것 같군. 안 그런가? 걱정 말게, 내가 놈으로부터 직접 놈의 비밀을 캐내고, 놈의 표리부동함도 다 밝혀낼 테니."~ */
  IF ~~ THEN REPLY #31865 /* ~"내겐 질문할 것들이 많소."~ */ GOTO 1
END

IF ~~ THEN BEGIN 54 // from: 20.0
  SAY #2912 /* ~"자네의 경우, 날 위해 이 곳 아래의 지하 묘지에서 해골 하나만 가져다 준다면 자네 부탁을 들어주겠네. 익사한 왕국을 지나면 굳게 봉인된 묘지가 하나 있네, 하지만 내 부하들은 아직까지 그 곳에 들어가는 데 성공하지 못했다네. 그 곳에 잠든 자의 해골을 가져다 준다면, 내가 대답할 수 있는 것이라면 어떤 질문이든지 기꺼이 대답해주겠네. 그리고 이 해골도 돌려주지." ~ */
  IF ~~ THEN REPLY #31867 /* ~"말도 안 되오."~ */ JOURNAL #66223 /* ~로타는 내게 방 한가운데에 있는 긴 의자를 치우면 그의 집 지하의 동굴로 통하는 통로가 나타날 것이라고 말해주었다. 그 곳에 일단 도착하면 지하 묘지로 들어가 익사한 나라 너머에 있는 무덤을 찾아야만 한다. 그 무덤에는 대단한 가치를 지닌 해골이 있다고 한다. 그것을 그에게 가지고 돌아오면 그는 내 질문에 대답을 해줄 것이다. ~ */ GOTO 21
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #31869 /* ~"거래 성립이오."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~로타는 내게 방 한가운데에 있는 긴 의자를 치우면 그의 집 지하의 동굴로 통하는 통로가 나타날 것이라고 말해주었다. 그 곳에 일단 도착하면 지하 묘지로 들어가 익사한 나라 너머에 있는 무덤을 찾아야만 한다. 그 무덤에는 대단한 가치를 지닌 해골이 있다고 한다. 그것을 그에게 가지고 돌아오면 그는 내 질문에 대답을 해줄 것이다. ~ */ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47561 /* ~"그 무덤은 이미 비어 있소."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~로타는 내게 방 한가운데에 있는 긴 의자를 치우면 그의 집 지하의 동굴로 통하는 통로가 나타날 것이라고 말해주었다. 그 곳에 일단 도착하면 지하 묘지로 들어가 익사한 나라 너머에 있는 무덤을 찾아야만 한다. 그 무덤에는 대단한 가치를 지닌 해골이 있다고 한다. 그것을 그에게 가지고 돌아오면 그는 내 질문에 대답을 해줄 것이다. ~ */ GOTO 10
END

IF ~~ THEN BEGIN 55 // from: 10.0 10.1
  SAY #31900 /* ~"자네 말도 일리가 있네... 하지만 그 무덤에는 대단한 가치가 있다고 느끼게 만드는 뭔가가 있네. 나는 이 일에 대해 좀더 생각해보겠네, 그러니 자네도 그렇게 하게." 그는 당신에게 등을 돌린다, 그리고 즉시 당신 쪽으로 다시 몸을 돌린다. "그럼 가서 다른 해골을 가져오게, 우리가 전에 합의한 내용은 여전히 유효하니까. 하지만 그냥 아무 해골이나 가지고 와서 날 속일 생각은 말게, 난 전문가니까. 자네가 보기에 내가 값어치가 있다고 생각할 만한 걸 찾으면 돌아오게." ~ */
  IF ~~ THEN REPLY #31901 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #31875 /* ~로타는 내게 함정 무덤 속에서 찾을 수가 없었던 해골을 대신할 해골을 가져오라고 명령하였다. ~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.2
  SAY #31902 /* ~"자네 무덤? *자네* 무덤이라고?" 그는 당신을 유심히 살펴본다. "이 일에 대해서는 보다 신중하게 조사할 필요가 있네. 자네 해골은 자네 몸뚱이에 붙어 있으니 가서 다른 해골을 가져오게, 그러면 내가 아는 한도 내에서 자네 질문에 대답을 해주겠네. 우리가 전에 합의한 내용은 여전히 유효하네. 하지만 그냥 아무 뼈나 가지고 와서 날 속일 생각은 말게, 난 전문가니까. 자네가 보기에 내가 값어치가 있다고 생각할 만한 걸 찾으면 돌아오게." ~ */
  IF ~~ THEN REPLY #31905 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #31874 /* ~로타는 내게 내 함정 무덤 속에 있을 수가 없었던 해골을 대신할 해골을 가져오라는 과제를 부여하였다. ~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 12.1
  SAY #54113 /* ~로타의 눈이 분노로 번득인다. "내 부하들을 함부로 죽이지는 말게. 그의 해골을 내게 주게." 그는 해골을 조심스럽게 살핀 후 말문을 연다. "나는 놈의 뼈로부터 놈의 배신의 냄새를 맡을 수가 있네. 놈은 아주 교묘하게 직무를 유기하는 놈이었지만, 조심성이 부족했던 것 같군. 안 그런가? 걱정 말게, 내가 놈으로부터 직접 놈의 비밀을 캐내고, 놈의 표리부동함도 다 밝혀낼 테니."~ */
  IF ~~ THEN REPLY #54114 /* ~"당신에게 물어보고 싶은 것들이 많이 있소."~ */ GOTO 1
END
