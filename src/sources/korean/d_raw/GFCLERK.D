// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFCLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFCLERK~

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5909 /* ~"그래 그들이 야단법석을 떨고 있는 게 자네 때문인가? 그들을 탓할 수도 없군... 자네는 위험한 부류의 인간처럼 보이는군. 여기서 나가 주게."~ */
  IF ~~ THEN REPLY #5910 /* ~늙은이를 죽인다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_GFClerk_1","GLOBALGood",-1)
Kill(Myself)
~ EXIT
  IF ~~ THEN REPLY #5911 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5912 /* ~"자네를 돕고는 싶지만 그러면 내 입장이 난처해지거든. 가게, 그리고 경비병들이 자네를 잡으려고 혈안이 되어 있지 않을 때 다시 오게."~ */
  IF ~~ THEN REPLY #5913 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #5914 /* ~손을 떨고 있으며 얼굴이 교활하게 생긴 노인이 보인다. 그는 당신을 조심스럽게 쳐다보더니 말을 한다. "안녕... 어... 혹시 내가 전에 자네를 본 적이 있나? 어쩐지 낯이 익네."~ */
  IF ~~ THEN REPLY #5915 /* ~"그럴지도 모르오."~ */ GOTO 4
  IF ~~ THEN REPLY #5916 /* ~"있을 수 없는 일이오, 노인."~ */ GOTO 5
  IF ~~ THEN REPLY #5917 /* ~"어디서? 어디서 봤는지 기억하시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #5918 /* ~"나는 어떤 아이템을 찾으러 왔소."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5919 /* ~"나는 여분의 넝마와 용광로용 작업 연장이 필요하오."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5920 /* ~"변장용 복장을 찾고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #5921 /* ~"당신은 누구요?"~ */ GOTO 10
  IF ~~ THEN REPLY #5922 /* ~"용광로용 작업 연장을 좀 구하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #5923 /* ~"흥미롭군. 안녕히 계시오, 노인."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from: 5.0 8.2 9.2 10.0 11.4 14.0 18.0 21.0 22.0 23.0 24.0 25.0
  SAY #5924 /* ~"달리 원하는 것이 있나?"~ */
  IF ~~ THEN REPLY #5925 /* ~"당신은 전에 날 본 적이 있다고 했소. 그게 어디였는지 기억하시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #5926 /* ~"아니, 난 당신의 웃는 얼굴이 보고 싶었을 뿐이오."~ */ GOTO 12
  IF ~~ THEN REPLY #5927 /* ~"나는 어떤 아이템을 찾으러 왔소."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5928 /* ~"나는 여분의 넝마와 용광로용 작업 연장이 필요하오."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5929 /* ~"변장용 복장을 찾고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #5930 /* ~"당신은 누구요?"~ */ GOTO 10
  IF ~~ THEN REPLY #5931 /* ~"용광로용 작업 연장을 좀 구하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #5932 /* ~"흥미롭군. 안녕히 계시오, 노인."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5933 /* ~"나는 사람 얼굴을 절대로 잊지 않네... 좀 있으면 생각이 날 거네... 이런 염병할, 관두세."~ */
  IF ~~ THEN REPLY #5934 /* ~"어디였는지 기억하시오? 내겐 몹시 중요한 일이오."~ */ GOTO 6
  IF ~~ THEN REPLY #5935 /* ~"나는 어떤 아이템을 찾으러 왔소."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5936 /* ~"나는 여분의 넝마와 용광로용 작업 연장이 필요하오."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5937 /* ~"변장용 복장을 찾고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #5938 /* ~"당신은 누구요?"~ */ GOTO 10
  IF ~~ THEN REPLY #5939 /* ~"용광로용 작업 연장을 좀 구하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #5940 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #5941 /* ~"나는 내가 자네를 본 적이 있다고 맹세할 수 있네. 자네는 혹시 범죄자였었나?" 그는 조용히 혼자서 킬킬거린다. "아, 관두게. 언젠가는 생각나겠지."~ */
  IF ~~ THEN REPLY #5942 /* ~"좋소. 그럼 내 질문에 좀 대댑해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #5943 /* ~"그러지 않기를 바라오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.0 4.0
  SAY #5944 /* ~"그렇게 빨리는 곤란하네. 이런 일을 위해 정신을 워밍업 시키려면 시간이 걸리지. 나는 오래 살았고, 그 이상으로 많은 얼굴들을 보았네, 그러니 기억하기가 쉽지가 않아. 기억이란 덧없는 것이지, 그리고 그건 틀림없는 사실이야."

그가 대답하기 전에 당신은 중얼거린다 : "말을 해, 이 '녀석'아!"
~ */
  IF ~~ THEN REPLY #5945 /* ~"그럼 관두시오. 나는 아이템을 수령하려고 왔소."~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5946 /* ~"그럼 좋소. 나는 여분의 넝마와 용광로용 작업 연장이 필요하오."~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5947 /* ~"좋소. 나는 변장용 복장을 찾고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #5948 /* ~"그럼 자신이 누군지 말해줄 수 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #5949 /* ~"그럼 용광로용 작업 연장을 좀 구하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #5950 /* ~"좋소. 안녕히 계시오, '젊은이.'"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 4.1 6.0
  SAY #5951 /* ~"영수증은 가지고 있나? 영수증없이는 아무 것도 내줄 수가 없네."~ */
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5952 /* ~"여기 한 쌍이 있소."~ */ DO ~TakePartyItemNum("Receipt",1)
TakePartyItemNum("Receipt2",1)
~ GOTO 13
  IF ~  !Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5953 /* ~"물론이오. 여기 있소."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5954 /* ~"물론이오. 여기 있소."~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5955 /* ~"그래, 가지고 있소."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 15
  IF ~  !PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5956 /* ~거짓말: "그렇소."~ */ DO ~IncrementGlobalOnceEx("GLOBALClerk1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
~ THEN REPLY #5957 /* ~"물론이오. 여기 있소."~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 19
  IF ~~ THEN REPLY #5958 /* ~"아니오."~ */ GOTO 16
  IF ~~ THEN REPLY #5959 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 3.3 4.2 6.1
  SAY #5960 /* ~"그런가? 좋네. 가격은... 어디 보세... 동전 예순 닢일세."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5961 /* ~"여기 있소."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5962 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 18
  IF ~~ THEN REPLY #5963 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #5964 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.4 4.3 6.2
  SAY #5965 /* ~"변장용 의상? 어디에 쓰려는 지는 짐작이 가네. 동전 예순 닢이라는 초특가에 자네에게 주기로 하지."~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5966 /* ~"여기 있소."~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5967 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 18
  IF ~~ THEN REPLY #5968 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #5969 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.6 3.5 4.4 6.3
  SAY #5970 /* ~"나 말인가? 나는 나딜린으로 갓즈맨 굴지의 전사일세!" 그는 한숨을 쉰다. "적어도 옛날엔 그랬었지. 이제 나는 그을음투성이의 공기를 들이마시며 죽을 날만 재촉하고 있는 주조소의 사무원에 불과하네." ~ */
  IF ~~ THEN REPLY #5971 /* ~"딱한 일이군. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #5972 /* ~"좋소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.7 3.6 4.5 6.4
  SAY #5973 /* ~"아, 이제는 대장장이가 되길 원하나? 알았네. 자네에겐 다음과 같은 물건들이 필요할 걸세: 앞치마 -동전 열 닢, 잡게- 또 동전 열 닢, 그리고 망치 - 동전 스무 닢. 합계는.. 어디 보세, 동전 쉰 닢일세."~ */
  IF ~~ THEN REPLY #5974 /* ~"그 합은 마흔 닢이오, 노인."~ */ GOTO 20
  IF ~  PartyGoldGT(49)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #5975 /* ~동전 쉰 닢을 지불한다.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(49)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5976 /* ~동전 쉰 닢을 지불한다.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #5977 /* ~"미안하지만 내 생각으로는 동전 마흔 닢이 옳은 것 같소."~ */ GOTO 20
  IF ~~ THEN REPLY #5978 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #5979 /* ~"지금 당장 그것이 필요할 것 같지는 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #5980 /* ~"안됐군. 미안하지만 난 창 밖이나 내다봐야겠네."~ */
  IF ~~ THEN REPLY #5981 /* ~"어... 좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0
  SAY #5982 /* ~"그럼 이 물건들을 가지고 곧 돌아오겠네." 몇 분이 지난다. 그는 허둥지둥 돌아와 당신에게 두 가지 물건을 준다. 하나는 작고 매우 얇은 금속 세공품이고, 다른 하나는 매우 정교하게 만들어진 메이스다. "첫 번째 물건은 백 년도 넘은 걸세. 자넨 참 오래도 기다렸군. 그 영수증은 어디서 손에 넣었나?"~ */
  IF ~~ THEN REPLY #5983 /* ~"내 자신을 위해 남겨 놓았으나 바빠서 잊어버렸었소."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
AddexperienceParty(40000)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #5984 /* ~"어떤 사람에게 물려받았소."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #5985 /* ~"유증의 일부였소."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 7.1 7.2
  SAY #5986 /* ~노인은 당신으로부터 영수증을 받아서 장부와 대조를 한다. 그는 안으로 들어가 일 분 정도 지난 후 정교하게 만들어진 메이스 하나를 들고 나온다. "여기 있네."~ */
  IF ~~ THEN REPLY #5987 /* ~"고맙소. 질문할 것들이 좀 있소..."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #5988 /* ~"고맙소. 안녕히 계시오."~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #5989 /* ~노인은 당신으로부터 영수증을 받아서 그것을 세심히 살펴본다. "이건 백 년도 넘은 걸세! 그걸 어떻게 손에 넣었나?"~ */
  IF ~~ THEN REPLY #5990 /* ~"내 자신을 위해 남겨 놓았으나 바빠서 잊어버렸었소."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 23
  IF ~~ THEN REPLY #5991 /* ~"어떤 사람에게 물려받았소."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #26874 /* ~"그건 유증의 일부였소."~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 7.4 7.6
  SAY #5992 /* ~그는 잠시 말을 멈춘다. "영수증이 있다면 내게 주게. 없다면 나는 자네에게 아무 것도 줄 수가 없네. 자, 그만 가게. 나는 지나가는 행인이 귀찮게 하지 않아도 바쁜 사람일세."~ */
  IF ~~ THEN REPLY #5993 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0 9.0
  SAY #5994 /* ~"그렇다면 여기 있네. 그년의 음모 때문에 우리가 더 이상 골치를 썩지 않도록 그 화냥년을 이 곳에서 몰래 빼내게."~ */
  IF ~~ THEN REPLY #5995 /* ~거짓말: "뭐? 난 그걸 그런 데 쓰려는 게 아니오!"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALClerk2","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #5996 /* ~"그걸 어떻게 아시오?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ GOTO 27
  IF ~~ THEN REPLY #5997 /* ~"고맙소, 노인. 안녕히 계시오."~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1 9.1 20.2
  SAY #5998 /* ~"그럼 그걸 자네에게 줄 수가 없네. 미안하네."~ */
  IF ~~ THEN REPLY #5999 /* ~"좋소. 그럼 내 질문에 좀 대답해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #6000 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #6001 /* ~그는 영수증을 세심하게 살핀 후 당신을 쳐다본다. "내가 이미 자네에게 준 것과 같은 아이템이 아닌가? 같은 물건을 두 번 줄 순 없네." 그는 영수증을 주머니에 넣는다. "이제 그만 가보게. 사라고!"~ */
  IF ~~ THEN REPLY #6002 /* ~떠난다.~ */ DO ~TakePartyItemNum("Receipt",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.0 11.3
  SAY #6003 /* ~"내가 대체 무슨 생각을 하고 있는 거지? 물론 그렇네. 기억이란 참으로 음흉한 놈이네."~ */
  IF ~  PartyGoldGT(39)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #6004 /* ~"그건 그렇소. 그 물건을 내게 주시오."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(39)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6005 /* ~"그건 그렇소. 그 물건을 내게 주시오."~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #6006 /* ~"글쎄, 아직도 내 취향으로는 너무 화려한 것 같소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.1 20.0
  SAY #6007 /* ~"용광로에서 작업을 할 거라면 잊지 말고 틸돈으로부터 철광석을 얻도록 하게. 놈은 인색한 후레자식이지만 철광석은 그로부터만 얻을 수가 있네."~ */
  IF ~~ THEN REPLY #6008 /* ~"고맙소. 그 밖에도 당신에게 물어볼 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #6009 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.2 20.1
  SAY #6010 /* ~"용광로에서 작업을 할 거라면 철광석을 구해야 할 걸세. 틸돈의 후임자와 얘기를 하게. 그녀의 이름은 잊어버렸지만 아마 별 문제없이 그녀로부터 철광석을 얻을 수 있을 걸세."~ */
  IF ~~ THEN REPLY #6011 /* ~"고맙소, 노인, 당신에게 물어볼 것이 좀 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #6012 /* ~"고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.0 15.0
  SAY #6013 /* ~"그거 걸작이군. 자네는 정말 바빴던 모양이군!" 그는 웃고 나서 들고 있던 물건을 당신에게 넘긴다. "여기 있네. 이 금속을 잘 다루게, 알겠나?"~ */
  IF ~~ THEN REPLY #6014 /* ~"그건 그렇게 하리다. 하지만 질문할 것들이 조금 더 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #6015 /* ~"물론 그렇게 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.1 15.1
  SAY #6016 /* ~"대대로 내려온 건가? 우리가 그걸 버리지 않았다는 건 다행한 일일세. 고객이 다시는 돌아오지 않을 것이라는 사실을 입증할 수 있는 경우에는 물건을 버리거나 팔기도 하네. 어쨌든 여기 있네. 그걸 잘 다루게, 알겠나?"~ */
  IF ~~ THEN REPLY #6017 /* ~"그러리다. 질문할 것들이 몇 가지 더 있는데 대답해주겠소?'~ */ GOTO 3
  IF ~~ THEN REPLY #6018 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.2 15.2
  SAY #6019 /* ~"알겠네. 자네는 봉을 잡았군. 여기 있네, 젊은이. 이 금속을 잘 다루게, 알겠나?"~ */
  IF ~~ THEN REPLY #6020 /* ~"물론이오. 질문할 것이 하나 더 있는데 대답해주겠소?'~ */ GOTO 3
  IF ~~ THEN REPLY #6021 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.0
  SAY #6022 /* ~그는 역겹다는 눈으로 당신을 바라본다. "내게 좀 감사할 줄 알게. 이제 원하는 물건을 찾았으니 여기서 나가게, 아니면 경비병을 부르는 일에 대해 다시 생각하게 될 테니."~ */
  IF ~~ THEN REPLY #6023 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #6024 /* ~"내가 늙고 쇠약한 건 사실이지만, 사물을 보는 눈까지 먼 건 아니네. 베다이-린은 전부터 기분이 좋지 않았고, 그녀는 마족을 위해 일하는 일에 대해서 처음부터 달가워 하지 않았네. 이제 그만 가게. 나도 찾아보면 할 일이 있을 테니."~ */
  IF ~~ THEN REPLY #6025 /* ~떠난다.~ */ EXIT
END
