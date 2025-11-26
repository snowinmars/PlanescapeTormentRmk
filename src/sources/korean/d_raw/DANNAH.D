// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
GlobalLT("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #1981 /* ~가죽갑옷을 입은 인상적인 빨간 머리 소녀가 보인다. 그녀의 오른팔은 서로 연결된 판들로 덮여 있는데, 그것들은 어떤 동물의 가죽으로 만든 것 같다. 또한 뿔이 달린 어깨받이가 그녀의 왼팔을 보호하고 있다. 기묘하게도 그녀에게는 꼬리가 달려 있으며... 그것은 앞뒤로 왔다갔다하고 있다. "꺼져."~ [ANA377A] */
  IF ~~ THEN REPLY #1982 /* ~"안녕하시오."~ */ DO ~SetGlobal("Know_Annah","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #1983 /* ~그냥 지나간다.~ */ DO ~SetGlobal("Know_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1984 /* ~그녀는 당신을 무시한다.~ */
  IF ~~ THEN REPLY #1985 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #1986 /* ~"여기가 어딘지 말해줄 수 있겠소?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1987 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1988 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #1989 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1990 /* ~소녀는 당신을 조소한 후 꼬리를 가지고 음탕한 몸짓을 한다. "꺼져, 머저리야."~ */
  IF ~~ THEN REPLY #2119 /* ~"이것 보시오, 난 질문을 좀 하려고 할 뿐이오..."~ */ GOTO 10
  IF ~~ THEN REPLY #2120 /* ~"입조심하시오, 난 기분이 좋지 않으니까. 자, 내 질문에 대답하시오. 당신은 누구요?"~ */ GOTO 16
  IF ~~ THEN REPLY #2121 /* ~"어... 그럼 안녕히 계시오."~ */ GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.2 10.3 11.3
  SAY #1991 /* ~"그래, 그럴 수도 있겠지. 만약 좋은 조건을 제시한다면 더 얘기할 수도 있어." 그녀는 혀로 딸깍 소리를 내고 손가락 두 개를 함께 문지른다. "징크-징크, 어때?"~ */
  IF ~  Global("Know_Jink","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #1992 /* ~"'돈-돈?'"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Know_Jink","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #1993 /* ~"'돈-돈?'"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ EXTERN ~DMORTE~ 39
  IF ~  Global("Know_Jink","GLOBAL",1)
~ THEN REPLY #1994 /* ~"좋소... 얼마면 되겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #1995 /* ~"그럼 관두시오. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 4 // from: 3.0 197.1 198.1
  SAY #1996 /* ~그녀는 도저히 믿을 수가 없다는 눈초리로 당신을 바라보며, 그녀의 꼬리도 잠시 동작을 멈춘다. "뭐라도 잘못 먹은 거야? 징크는 동전... 동화, 은화, 금화... 돈... 알겠어?" 그녀는 눈썹을 치켜 올린다. "당신이 내게 돈을 주면 나도 당신에게 정보를 줄 수도 있겠지."~ */
  IF ~~ THEN REPLY #1997 /* ~"좋소. 얼마면 되겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #1998 /* ~"당신이 내게 필요한 걸 알고 있으리라고는 생각되지는 않으나, 어디 한 번 해보시오. 돈을 낼 가치가 있는지는 그 다음에 결정하겠소."~ */ GOTO 16
  IF ~~ THEN REPLY #1999 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 5 // from:
  SAY #2002 /* ~"그래..." 그녀는 모트를 흘깃 본 후 어깨를 으쓱한다. "해골이 말한 대로 동전 말이야."~ */
  IF ~~ THEN REPLY #2003 /* ~"좋소. 얼마면 되겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #2004 /* ~"당신에게 내게 필요한 정보가 있으리라고는 생각되지 않지만 어디 한 번 말해보시오. 돈을 낼만한 가치가 있는가는 그 다음에 내가 판단하겠소."~ */ GOTO 16
  IF ~~ THEN REPLY #2005 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0
  SAY #2006 /* ~"얼마나 낼 거야?" 그녀는 당신을 살펴본 후 팔짱을 낀다. "서둘러, 난 여기서 하루종일 있을 순 없으니까."~ */
  IF ~  PartyGoldGT(9)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #2008 /* ~"열 닢은 어떻소? 그거면 충분하오?"~ */ GOTO 7
  IF ~  PartyGoldGT(9)
CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #2007 /* ~"열 닢은 어떻소? 만약 당신 정보가 정말로 유용하다면 더 줄 수도 있소."~ */ DO ~TakePartyGold(10)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2009 /* ~"스무 닢은 어떻소?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(10)
~ THEN REPLY #2010 /* ~"당신을 만족시킬만한 돈은 내게 없소."~ */ GOTO 14
  IF ~~ THEN REPLY #2011 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #2012 /* ~"그것 가지고는 어림도 없지. 여기서 친구를 사귀려면 돈이 더 있어야 할 걸."~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2013 /* ~"그럼 스무 닢은 어떻소?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(20)
~ THEN REPLY #2014 /* ~"그럼 당신을 만족시킬만한 돈은 내게 없소."~ */ GOTO 19
  IF ~~ THEN REPLY #2015 /* ~"그럼 관두시오. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 7.0
  SAY #2016 /* ~"그럼 좋아..." 그녀는 돈을 집어넣는다. 돈 어찌나 빨리 사라졌는지 그것이 어디로 갔는지 당신으로선 짐작도 할 수가 없다. "시체안치소에 스파이어 쪽, 그러니까 시체안치소의 남서쪽에 있는 골목에서 그를 찾아봐, 알겠어?"~ */
  IF ~~ THEN REPLY #2017 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 10
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2018 /* ~"묘하게도... 시체안치소의 남서쪽에는 중무장한 깡패들이 득실거리는 골목이 있소. 거기에 대해 뭐 아는 것 없소?"~ */ GOTO 30
  IF ~~ THEN REPLY #2040 /* ~"시체안치소의 남서쪽? 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 10.2 11.2
  SAY #2019 /* ~"정말 답답한 자식이군. 경을 치기 전에 어서 다른 곳으로 꺼져, 얼간아."~ */
  IF ~~ THEN REPLY #2020 /* ~"우선 물어보고 싶은 다른 질문들이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2021 /* ~"그럼 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 2.0 8.0 9.0 12.4 18.1 21.0 22.1 23.0 26.1 29.0 30.2 31.0
  SAY #2022 /* ~"뭐야? 뭘 원하는 거지?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2023 /* ~"당신은 자신에게 꼬리가 달렸다는 걸 아시오?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2024 /* ~"하지만 당신에게 꼬리가 있다는 게 신경이 쓰이는 걸 어떡하오."~ */ GOTO 12
  IF ~~ THEN REPLY #2025 /* ~"여기가 어딘지 말해줄 수 있겠소?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2026 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2027 /* ~"당신은 파로드가 시체안치소의 남서쪽에 있다고 했소, 맞소?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2028 /* ~"묘하게도... 시체안치소의 남서쪽에는 중무장한 깡패들이 득실거리는 골목이 있소. 거기에 대해 뭐 아는 것 없소?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2029 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #2030 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 19
END

IF WEIGHT #3 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
Global("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #2031 /* ~빨간 머리 소녀는 당신이 접근하자 당신을 노려본다, 그리고 그녀의 꼬리는 앞뒤로 요동을 한다. "그래, 뭐야?"~ [ANA238D] */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2032 /* ~"당신은 자신에게 꼬리가 달렸다는 걸 아시오?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2033 /* ~"하지만 당신에게 꼬리가 있다는 게 신경이 쓰이는 걸 어떡하오."~ */ GOTO 12
  IF ~~ THEN REPLY #2034 /* ~"여기가 어딘지 말해줄 수 있겠소?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2035 /* ~"나는 파로드란 사람을 찾고 있소. 그가 어디 있는지 아시오?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2036 /* ~"당신은 파로드가 시체안치소의 남서쪽에 있다고 했소, 맞소?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2037 /* ~"묘하게도... 시체안치소의 남서쪽에는 중무장한 깡패들이 득실거리는 골목이 있소. 거기에 대해 뭐 아는 것 없소?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2038 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #2039 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 11.0 11.1
  SAY #2041 /* ~"그래? 그녀는 자신의 꼬리를 쳐다본다. "그래 꼬리가 달렸네. 난 눈의 착각인 줄 알았는데. 이런, 넌 정말 똑똑한 자식이군." 그녀는 이빨을 드러낸다. "날 가만히 내버려 두고 네가 기어 나온 토굴로나 꺼져, 나나 내 꼬리는 팔 것이 아니니까."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2042 /* ~"좋소... 난 단지 궁금-"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2043 /* ~"어, 좋소... 그 밖에 다른 질-"~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2044 /* ~"그럼 관두시오. 안녕..."~ */ EXTERN ~DMORTE~ 40
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2045 /* ~"그래, 하지만 *왜* 당신에게 꼬리가 달린 거요?"~ */ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2046 /* ~"어, 좋소... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2047 /* ~"관두시오... 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2050 /* ~"뭐라고, 이 개자식?! 다시 말해봐!"~ */
  IF ~~ THEN REPLY #2051 /* ~"그는 아무 말도 하지 않았소... 하지만 난 아직도 궁금하오... *왜* 당신에게 꼬리가 달린 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #2052 /* ~"그에 대해선 잊으시오... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2053 /* ~"그는 당신이 몸을 팔아서는 벌어먹고 살지 못할 거라고 했소."~ */ GOTO 22
  IF ~~ THEN REPLY #2054 /* ~"그는 당신이 몸을 팔아서는 벌어먹고 살지 못할 거라고 했으나 그 말에 난 동의하지 않소."~ */ GOTO 23
  IF ~~ THEN REPLY #2055 /* ~"그는 당신이 몸을 팔아서는 벌어먹고 살지 못할 거라고 했으며, 그 말에는 나도 동의하오."~ */ GOTO 24
  IF ~~ THEN REPLY #2056 /* ~"아무것도 아니오. 우린 가겠소. 안녕히 계시오."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 2.2 6.3 13.5 15.2 24.2
  SAY #2057 /* ~"그래, 그럼 꺼져."~ */
  IF ~~ THEN REPLY #2065 /* ~"너의 건방진 말에는 지쳤다, 이 계집아... 이제 넌 죽어줘야겠다."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #2066 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3 13.0
  SAY #2058 /* ~그녀는 눈을 가느다랗게 뜬다. "당신은 백치야? 돌보다 더 멍청하거나 아니면 무지의 신이라도 되는 거야? 다버스가 당신 위에다 벽돌을 쌓아서 거리를 하나 새로 만들어도 되겠군."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2059 /* ~"이것 보시오..."~ */ EXTERN ~DMORTE~ 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2060 /* ~"그럼 관두시오. 그 밖에도 다른 질문들이 있소..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2061 /* ~"그럼 안녕히 계시오."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 2.1 4.1 5.1 13.1 15.1 24.1 27.0 28.0 30.0 30.1
  SAY #2062 /* ~"닥쳐! 더 이상 당신한테 얘기할 건 없어! 꺼져!"~ */
  IF ~~ THEN REPLY #2063 /* ~"혀를 함부로 놀리지 마시오, 아니면 혀를 잃게 될 테니. 다음에 우리가 다시 얘기할 때 그걸 유념하는 게 좋을 거요."~ */ GOTO 19
  IF ~~ THEN REPLY #2064 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2070 /* ~"입조심해 이 입버릇 고약한 미미르야, 네 턱으로부터 입을 떼어내기 전에!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 42
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2078 /* ~"그래. 당신 미미르를 잘 묶어 두라고, 아니면 놈을 놈의 몸과 함께 매장해 버릴 테니."~ */
  IF ~~ THEN REPLY #2086 /* ~"미미르? 그게 무슨 소리요?"~ */ GOTO 20
  IF ~~ THEN REPLY #2087 /* ~"좋소. 이것 보시오, 그 밖에도 질문할 것들이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2088 /* ~"안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 3.3 4.2 5.2 6.4 7.1 7.2 9.1 10.7 11.7 12.5 16.0 18.2 21.1 22.2 24.3 25.2 25.3 26.2 27.1 28.1 29.1 30.3 31.2
  SAY #2081 /* ~"그래, 그럼 어딘지는 모르지만 당신이 나온 곳으로 다시 꺼지라고."~ */
  IF ~~ THEN REPLY #2082 /* ~"안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #2083 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #2084 /* ~"그래, 미미르! 내 말이 울려 퍼질 정도로 네 두 귀 사이는 그렇게 텅텅 비었냐? 바보 천치 같으니!"~ */
  IF ~~ THEN REPLY #2085 /* ~"당신은 아직도 내 질문에 대답하지 않았소. 미미르란 뭐요?"~ */ EXTERN ~DMORTE~ 43
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2089 /* ~그녀는 모트와 당신을 차례로 본 후 조소한다. "당신들 중 누구에게 뇌가 있는지 알 것 같군." ~ */
  IF ~~ THEN REPLY #2090 /* ~"그래, 그래. 이것 보시오, 그 밖에도 질문할 것들이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2091 /* ~"안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 13.2
  SAY #2092 /* ~"그래? 내가 시체를 판다는 건 다행한 일이야, 안 그래? 해골, 넌 더스트맨 화로에 들어갈 준비가 된 것 같군."~ */
  IF ~~ THEN REPLY #2095 /* ~"시체를 팔아?"~ */ GOTO 25
  IF ~~ THEN REPLY #2096 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2097 /* ~"안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 23 // from: 13.3
  SAY #2093 /* ~"갑자기 이건 또 뭐야? 갑자기 고지식하고 엄격한 사람인 척이라도 하려는 거야? 그녀는 조소한다. "꺼져, 이 음란한 쓰레기 같으니."~ */
  IF ~~ THEN REPLY #2098 /* ~"아직 아니오... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2099 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.4
  SAY #2094 /* ~"그래? 내가 시체를 판다는 건 다행한 일이야, 안 그래? 당신들 둘 다 더스트맨 화로에 들어갈 준비가 된 것 같군." 그녀의 꼬리를 앞뒤로 심하게 흔든다. "내가 당신들을 죽이게 만들지는 말라고."~ */
  IF ~~ THEN REPLY #2101 /* ~"시체를 팔아?"~ */ GOTO 25
  IF ~~ THEN REPLY #2102 /* ~"진정하시오. 몇 가지만 더 물어보고 나면 우린 떠날 테니..."~ */ GOTO 16
  IF ~~ THEN REPLY #2103 /* ~"이래서는 끝이 없겠군. 안녕히 계시오."~ */ GOTO 14
  IF ~~ THEN REPLY #2104 /* ~떠난다.~ */ GOTO 19
END

IF ~~ THEN BEGIN 25 // from: 22.0 24.0
  SAY #2100 /* ~"그래, 더스트맨은 누구든지 거리에서 시체를 거주어 시체안치소로 가져오면 돈을 좀 주지. 여긴 내 구역이니까 여기서 시체 낚시를 할 생각은 꿈도 꾸지마, 알았어?"~ */
  IF ~~ THEN REPLY #2105 /* ~"더스트맨을 시체를 가지고 뭘 하려는 거요?"~ */ GOTO 26
  IF ~~ THEN REPLY #2106 /* ~"당신 구역?"~ */ GOTO 28
  IF ~~ THEN REPLY #2107 /* ~"알겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #2108 /* ~"안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #2109 /* ~"뭐 그들을 제대로 매장해 준다나. 그들을 모두 각각 상응하는 차원들로 보내고 다원 우주의 모든 것이 깔끔하게 유지하겠다는 뭐 그런 얘기지."~ */
  IF ~~ THEN REPLY #2111 /* ~"차원?"~ */ GOTO 27
  IF ~~ THEN REPLY #2112 /* ~"알겠소. 이것 보시오, 그 밖에도 질문할 것들이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2113 /* ~"안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2110 /* ~"그래, 차원 말이야! 내 말이 울려 퍼질 정도로 당신 두 귀 사이는 그렇게 텅텅 비었어?" 흥! 당신은 질문을 너무 많이 하는군, 딱지. 가서 다른 놈이나 질문으로 귀챃게 하라고."~ */
  IF ~~ THEN REPLY #2114 /* ~"딱 한가지만 더 물어보겠소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2115 /* ~"그럼 좋소. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #2116 /* ~"그래, 내 구역 말이야! 내 말이 울려 퍼질 정도로 당신 두 귀 사이는 그렇게 텅텅 비었어?" 흥! 당신은 질문을 너무 많이 하는군, 딱지. 가서 다른 놈이나 질문으로 귀챃게 하라고."~ */
  IF ~~ THEN REPLY #2117 /* ~"딱 한가지만 더 물어보겠소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2118 /* ~"그럼 좋소. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 29 // from: 1.3 10.6 11.6
  SAY #2122 /* ~그녀는 당신을 이상하다는 듯 바라본다. "아니... 그런 건 본 적도 없어."~ */
  IF ~~ THEN REPLY #2123 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2124 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.5 11.5 31.1
  SAY #2125 /* ~"그래? 그럼 놈들에게 그 늙은 말 더듬는 절름발이가 어디 있는지 물어봐."~ */
  IF ~~ THEN REPLY #2126 /* ~진실: "이제 네 거짓말에는 지쳤다. 내게 파로드가 어디 있는지 말해라, 이 계집아, 아니면 넌 시의 사망자 명단에 오르게 될 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Annah_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2127 /* ~허풍: "이제 네 거짓말에는 지쳤다. 내게 파로드가 어디 있는지 말해라, 이 계집아, 아니면 넌 시의 사망자 명단에 오르게 될 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2128 /* ~"아마 그럴지도. 이것 보시오, 그 밖에도 질문할 것이 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2071 /* ~"안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 10.4 11.4
  SAY #2129 /* ~"그래..." 그녀는 당신을 살펴본다. "그렇게 말했어. 벌써 까먹은 거야?"~ */
  IF ~~ THEN REPLY #2130 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 10
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2131 /* ~"아니오, 하지만 혹시 당신이 잊어버렸나 해서... 알다시피 시체안치소의 남서쪽에는 중무장한 깡패들이 득실거리는 골목이 있소. 거기에 대해 뭐 아는 것 없소?"~ */ GOTO 30
  IF ~~ THEN REPLY #2132 /* ~"지금은 아니오. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 32 // from:
  SAY #2359 /* ~"나라면 그냥 떠나겠어. 얘기할 생각이 없는 기스와 얘기를 하려는 건 무의미하나까. 가자."~ */
  IF ~  Global("Know_Gith","GLOBAL",0)
~ THEN REPLY #9023 /* ~"기스?"~ */ DO ~SetGlobal("Know_Gith","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Know_Gith","GLOBAL",0)
~ THEN REPLY #9024 /* ~"기스?"~ */ GOTO 74
  IF ~~ THEN REPLY #9025 /* ~"나는 아직 떠날 생각이 없소. 나는 먼저 그에게 질문을 좀 해야겠소..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9026 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2365 /* ~"관두라고... 그냥 가자."~ */
  IF ~~ THEN EXTERN ~DGITH~ 7
END

IF ~~ THEN BEGIN 34 // from:
  SAY #6807 /* ~"에..." 안나는 묘한 표정으로 당신을 바라본다. "그는 다버스야."~ */
  IF ~~ THEN REPLY #6961 /* ~"'다버스'란 무엇이오?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #6811 /* ~안나는 목소리를 낮춘다. "다버스는 *그녀*의 권속들 중 하나야. 그들은 도시를 관리해. 고쳤다가 부셨다가 다시 짓곤 하지. 그들은 공중에 뜬 심벌들로 얘기를 해... 그들을 하는 말을 알아들으려면 그 심벌들을 맞추어야 하지." 안나는 짜증스러운 것 같다. "정말 두통거리라고. "~ */
  IF ~~ THEN REPLY #6962 /* ~"'그녀'의 권속? 누구 말이오?"~ */ GOTO 36
  IF ~~ THEN REPLY #6963 /* ~"알겠소."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #6813 /* ~"레이디 오브 페인." 안나는 손가락으로 공중에 반원을 그린다. "그들은 그녀를 위해 일하고 그녀는 그들을 보호해. 그들을 건드리지 마, 아니면 그녀의 주목을 받게 될 테니."~ */
  IF ~~ THEN REPLY #6964 /* ~"레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 37
  IF ~~ THEN REPLY #6965 /* ~"알겠소."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #6814 /* ~"쉿!" 안나는 손가락으로 목을 베는 시늉을 한다. "그녀에 대해 함부로 얘기하지 마. *사방*에 그녀의 귀가 있다고, 그러니 함부로 그녀의 이름을 부르지 마, 알겠어?"~ */
  IF ~~ THEN REPLY #6966 /* ~"오."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6967 /* ~"좋소, 좋아."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6815 /* ~그녀는 잠시 멈춘다. "그래... 할 수 있어."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6968 /* ~"해주겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6970 /* ~"해주겠소?"~ */ GOTO 39
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6971 /* ~"그럼 하시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6972 /* ~"그럼 하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 39
  IF ~~ THEN REPLY #6973 /* ~"관두시오. 그냥 떠납시다."~ */ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.3
  SAY #6818 /* ~안나는 고개를 젓는다. "아니, 난 당신과 함께 레이디의 그림자 속으로 들어갈 생각은 없어. 여기서 얼쩡거리지 말자고. 그녀의 권속들과 얘기를 해봤자 그녀의 시선을 끈 것 외에는 얻을 것이 없어."~ */
  IF ~~ THEN REPLY #6975 /* ~"알겠소."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6974 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.2 41.0 44.0 45.1 46.1 48.1
  SAY #6822 /* ~안나는 고개를 끄덕인다. 다버스는 팔을 소매 속에 넣은 채 당신들 두 사람을 계속 바라본다. ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6976 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6977 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6978 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6979 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6980 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6981 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #6982 /* ~"그보고 우리에게 레이디 오브 페인에 대해 얘기해 달라고 부탁하시오." ~ */ GOTO 45
  IF ~~ THEN REPLY #6983 /* ~"그보고 우리에게 휄에 대해 얘기해 달라고 부탁하시오." ~ */ GOTO 48
  IF ~~ THEN REPLY #6984 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 41 // from:
  SAY #6825 /* ~"그는 자신이 다버스들 중 하나라고 했어." 그녀는 어깨를 으쓱한다. "그들에게는 이름이 없어."~ */
  IF ~~ THEN REPLY #6985 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 40
  IF ~~ THEN REPLY #6986 /* ~"내가 알고 싶었던 건 그게 전부요. 여기서 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 42 // from:
  SAY #6826 /* ~"그는 자신이 다버스들 중 하나라고 했어." 그녀는 어깨를 으쓱한다. "그들에게는 이름이 없어."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 115
END

IF ~~ THEN BEGIN 43 // from:
  SAY #6828 /* ~"글쎄, 적어도 이 다버스는 이름을 얘기하지 않았어, 안 그래, 해골?!~ */
  IF ~~ THEN EXTERN ~DMORTE~ 116
END

IF ~~ THEN BEGIN 44 // from:
  SAY #6835 /* ~그녀는 어깨를 으쓱한다. "그는 자신이 직무를 하고 있다고 해. 알잖아 - 도시를 관리하는 일 말이야."~ */
  IF ~~ THEN REPLY #6987 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 40
  IF ~~ THEN REPLY #6988 /* ~"내가 알고 싶었던 건 그게 전부요. 여기서 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 45 // from: 40.6
  SAY #6840 /* ~안나는 고개를 젓는다. "아니, 난 당신과 함께 레이디의 그림자 속으로 들어갈 생각은 없어. 여기서 얼쩡거리지 말자고. 그녀의 권속들과 얘기를 해봤자 그녀의 시선을 끈 것 외에는 얻을 것이 없어."~ */
  IF ~~ THEN REPLY #6989 /* ~"자, 그냥 그에게 레이디 오브 페인에 대해 물어봐 주시오, 알겠소?"~ */ GOTO 46
  IF ~~ THEN REPLY #6990 /* ~"좋소. 날 위해 그에게 하나만 더 물어볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6991 /* ~"관두시오, 그럼. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0
  SAY #6845 /* ~안나는 고개를 젓는다. "아니, 하지 않겠어."~ */
  IF ~~ THEN REPLY #6992 /* ~"이것 보시오, 시키는 대로 하시오. 이건 경고요."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 47
  IF ~~ THEN REPLY #6993 /* ~"좋소. 날 위해 그에게 하나만 더 물어볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6994 /* ~"관두시오, 그럼. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #6848 /* ~안나는 팔짱을 낀다, 그리고 그녀의 꼬리는 앞뒤로 빠르게 움직이기 시작한다.~ */
  IF ~~ THEN REPLY #6995 /* ~"그럼 내가 시도하겠소..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6996 /* ~"관두시오, 그럼. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 48 // from: 40.7
  SAY #6851 /* ~"아니, 난 휄의 옛 동족에게 그에 대해 묻지 않겠어. 그건 재수없는 일이고 그런 얘기를 해서 누구에게든 득이 될 건 없다고."~ */
  IF ~~ THEN REPLY #6997 /* ~"이것 보시오, 그냥 염병할 질문을 하란 말이오, 알겠소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 46
  IF ~~ THEN REPLY #6998 /* ~"날 위해 그에게 한 가지만 더 물어볼 수 있겠소?"~ */ GOTO 40
  IF ~~ THEN REPLY #6999 /* ~"관두시오, 그럼. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1855 /* ~당신이 그 여자를 따라가려고 하자 안나는 격분한다. "당신은 귀가 멀었어... 아니면 그냥 머리가 나쁜 거야?" 그녀는 꼬리를 앞뒤로 격렬하게 흔든다, 그리고 창녀에게 달려든다. "쉿!" 그녀는 놀란 창녀에게 펀치 대거를 꺼내서 들이댄다. "꺼져, 이 더러운 창녀야!"~ */
  IF ~~ THEN REPLY #7469 /* ~"와우! 진정하시오, 안나."~ */ GOTO 50
  IF ~~ THEN REPLY #7470 /* ~"그 염병할 칼들을 당장 치우시오!"~ */ GOTO 50
  IF ~~ THEN REPLY #7471 /* ~무슨 일이 일어나는지 지켜본다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 53.0 53.1
  SAY #1856 /* ~그녀는 당신에게 달려든다. "그리고, 너 이 자식 - 계속 이런 바보짓이나 하면 네 XX를 잘라버릴 거야, 알겠어?"~ */
  IF ~~ THEN REPLY #7472 /* ~"'내 거시기를 자르겠다?' 그것도 돈을 내야 하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7473 /* ~"그 여자를 위협하는 걸 멈추시오, 아니면 *당신* 꼬리를 잘라버릴 테니. 알겠소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7474 /* ~"나는 이 건에 대해 당신 의견을 물어본 적이 없는데, 안나."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7475 /* ~"좋소, 좋아... 진정하시오."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3
  SAY #7183 /* ~안나는 흥분을 다소 가라앉힌 듯 하다, 하지만 아직도 그녀의 꼬리는 앞뒤로 움직이고 있다. "능지처참을 당하고 싶지 않으면 조심해."~ */
  IF ~~ THEN REPLY #7476 /* ~"날 *협박*하지 마시오, 안나. 목숨이 있는 건 당신이니까, 알겠소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7477 /* ~"나는 이 건에 대해 당신 의견을 물어본 적이 없는데, 안나."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7478 /* ~"좋소, 좋아... 제발 진정하시오. 당신 몸에 흐르는 마족의 피가 끓어오르기 전에."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 50.0 51.0 51.1 51.2
  SAY #7184 /* ~안나는 꼬리로 몸짓을 한다... 무슨 지저분한 욕설인 것 같다. ~ */
  IF ~~ THEN EXTERN ~DHARLOTN~ 35
END

IF ~~ THEN BEGIN 53 // from: 49.2
  SAY #7185 /* ~안나는 칼 끝으로 여자를 살짝 긁어 약간의 피가 나오게 만든다. 안나는 속삭인다. "넌 나한테 찍혔어." 여자는 공포에 질려 움직이질 못한다.~ */
  IF ~~ THEN REPLY #7480 /* ~"헤. 멋진데. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Harlot_2","GLOBALLaw",-1)
~ GOTO 50
  IF ~~ THEN REPLY #7481 /* ~"진정하시오, 안나..."~ */ GOTO 50
END

IF ~~ THEN BEGIN 54 // from:
  SAY #1884 /* ~당신이 돌아서려 하자 안나는 갑자기 쉿 소리를 낸다, 그리고 술취한 여자가 두려움에 떨며 한 걸음 물러서는 것이 보인다.~ */
  IF ~~ THEN REPLY #7598 /* ~"무슨 일이오?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #1885 /* ~안나는 그 여자를 보며 고개를 끄덕인다, 그리고 그녀의 손으로부터 펀치 대거가 튀어나온다. "이 마녀가 당신을 털었어." 안나는 칼날들 중 하나를 그녀의 목에 들이민다. "이 더러운 창녀가 당신에게 몸을 비빈 후에 당신 돈이 줄었을 거야."~ */
  IF ~~ THEN REPLY #7599 /* ~"대체 무슨--?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #1886 /* ~술취한 여자는 안나를 쳐다보고, 그 다음에 당신을 쳐다본 후 두려움에 떨며 고개를 젓는다. "나는 아무 것도 훔치지 않았어요! 그녀가 뭔가 잘못 안 거예요!"~ */
  IF ~~ THEN REPLY #7600 /* ~"어... 틀림없소, 안나?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 57
  IF ~~ THEN REPLY #7601 /* ~"내가 정말 화를 내기 전에 그 빌어먹을 칼들을 치우시오, 알겠소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7602 /* ~"미안, 아가씨, 하지만 난 어느 때라도 당신보다는 이 티플링을 믿을 거요. 돈을 돌려주시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #7603 /* ~"그녀를 그냥 보내주시오, 안나. 그녀는 그럴 가치조차 없소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #1887 /* ~"그래?" 안나는 으르렁거린다, 그리고 그녀의 꼬리는 격렬하게 움직이기 시작한다. "틀림없느냐고?" 그녀의 칼은 여자의 목에 더 가까이 다가간다. "그래... 난 확신해." 그녀는 눈을 가늘게 뜨고 당신을 본다. "상관없어. 내가 직접 그녀를 죽여 그녀의 돈을 빼앗을 테니까."~ */
  IF ~~ THEN REPLY #7604 /* ~"내가 정말 화를 내기 전에 그 빌어먹을 칼들을 치우시오, 알겠소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7605 /* ~"그녀를 그냥 보내주시오, 안나. 그녀는 그럴 가치조차 없소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.1 56.3 57.0 57.1
  SAY #1888 /* ~"그래?" 안나는 고양이처럼 쉿 소리를 낸다. "당신은 얼간이야?! 그녀가 당신을 털었다고."~ */
  IF ~~ THEN REPLY #7606 /* ~"당신이 그녀가 잘못을 했다는 걸 입증하기 전에는 그녀를 해치게 할 수는 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_Harlot_1","GLOBALLaw",1)
~ GOTO 61
  IF ~~ THEN REPLY #7607 /* ~"마지막 경고요. 칼을 내려놓고 그녀를 보내주시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
  IF ~~ THEN REPLY #7608 /* ~"그녀가 그랬으면 어떻소? 그녀는 손볼 가치도 없소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY #1889 /* ~여자는 잠시 가만히 있다가 고개를 끄덕인다. 그녀가 천천히 자신의 소매를 걷어 올리자 손목에 걸린 작은 자루가 드러난다. 안나는 그것을 잘라서 자신의 주머니에 넣는다. "빨리 꺼지는 게 좋을 거야." 그리고 나서 그녀는 여자를 밀친다. "쉿! 꺼져!"~ */
  IF ~~ THEN REPLY #7609 /* ~"꺼지시오. 다시는 이 근처에서 어슬렁거리지 않는 게 좋을 거요."~ */ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 60 // from: 58.1 58.2 61.1
  SAY #1890 /* ~안나는 한참 동안 아무 말도 하지 않다가 칼을 도로 집어넣고 한 걸음 물러선다. 그리고 나서 그녀는 쉿 소리를 내고 창녀의 발에다 침을 뱉는다. "쉿! 꺼져!"~ */
  IF ~~ THEN REPLY #7610 /* ~"빨리 떠나는 게 신상에 좋을 거요."~ */ EXTERN ~DHARLOTD~ 27
END

IF ~~ THEN BEGIN 61 // from: 58.0
  SAY #1891 /* ~안나는 으르렁거린다, 그리고 나서 자신의 펀치 대거를 호를 그리듯 휘두른다... 칼날은 창녀의 드레스의 소매를 베어 여자의 손목에 묶인 자루를 폭로한다. 그것은 돈을 재빨리 감추기 위해 있는 것 같다.~ */
  IF ~~ THEN REPLY #7611 /* ~"당신이 옳았던 것 같소. 좋아, 아가씨, 훔친 걸 내놓으시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #7612 /* ~"상관없소. 그 일에 대해서는 잊으시오, 안나."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #1892 /* ~여자는 고개를 끄덕이고 손목에 묶은 작은 주머니를 천천히 풀기 시작한다. 안나를 그것을 잡아채서 주머니에 넣는다.~ */
  IF ~~ THEN REPLY #7613 /* ~"꺼지시오. 다시는 꼴도 보기 싫으니까."~ */ DO ~GivePartyGold(100)
GiveGoldForce(38)
~ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 63 // from:
  SAY #7701 /* ~당신이 돌아서서 떠나려 하자, 안나는 갑자기 당신에게 접근하여 몸을 갖다 댄다. ~ */
  IF ~~ THEN REPLY #7702 /* ~"뭘 하고 있는 거요?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #7703 /* ~안나는 아직도 부근에서 건물들을 쳐다보면서 얼쩡거리고 있는 남자를 가리킨다. "저 개자식이 당신을 털었어." 안나는 미소를 짓는다. "모르는 사람과 얘기할 때는 조심하는 게 좋아, 아니면 나중에 빈털터리가 될 테니."~ */
  IF ~~ THEN REPLY #7704 /* ~"무슨 얘기를 하고 있는 거요?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #7705 /* ~그녀는 한 줌의 동전을 꺼내 당신에게 준다. "당신 돈이 다시 주인에게로 돌아왔어. 어때?" 그녀는 그를 다시 흘긋 본다. "놈은 정말 어설픈 악당이지. 시길이 떠나갈 정도로 떠들어대지 않고서는 다른 얼간이의 지갑도 털지 못하거든. 놈은 당신을 털었고, 다시 나는 놈을 떨었어." 그녀는 미소를 짓는다. "어때?"~ */
  IF ~~ THEN REPLY #7706 /* ~"어... 그가 나로부터 훔친 것이 틀림없소, 안나?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 66
  IF ~~ THEN REPLY #7707 /* ~"어이.. 고맙소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #7708 /* ~"에?" 안나는 인상을 찌푸리고 꼬리를 흔들기 시작한다. "틀림없느냐고?!" 그녀는 당신으로부터 한 걸음 물러선다. "당신을 날 믿지 못하는 거야?" 그녀는 침을 뱉는다. "상관없어."~ */
  IF ~~ THEN REPLY #7709 /* ~"내겐 상관있소. 만약 그 돈이 우리 것이 아니라면..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_3","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 67
  IF ~~ THEN REPLY #7710 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #7711 /* ~"에?" 안나는 고양이처럼 쉿 소리를 낸다. "당신은 *얼간이야?* 놈은 당신을 털었다고. 만약 당신이 그것도 눈치채지 못할 정도로 둔하다면 그런 일을 당해서 싸지."~ */
  IF ~~ THEN REPLY #7712 /* ~"그것을 증명할 수 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_4","GLOBALLaw",1)
TakePartyGold(5)
~ GOTO 68
  IF ~~ THEN REPLY #7713 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #7714 /* ~안나는 잠시 아무 말도 없다. 그러다가 얼마 뒤 그녀는 당신 손바닥에서 돈을 잡아채서 던져버린다. 동전은 거리에 흩어진다. 일부는 웅덩이에 빠지고 나머지는 도랑과 하수구에 떨어진다. "그럼 그가 가지라고 해!" 안나는 당신 발에 침을 뱉는다. "*어차피* 당신은 그 돈을 가질 자격이 없으니까!"~ */
  IF ~~ THEN REPLY #7715 /* ~"목소리를 좀 낮추시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #7716 /* ~안나는 고개를 끄덕이고 사악한 미소를 짓는다. "천만에. 뭘 그런 걸 가지고."~ */
  IF ~~ THEN REPLY #7717 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #7822 /* ~"안돼!" 안나는 겁에 질린 듯하다. "그만둬! 그들과는 얘기를 하지 마! 저런 마족들은 산 채로 당신 가죽을 벗길 거라고!"~ */
  IF ~~ THEN REPLY #7826 /* ~"나는 그에게 뭘 좀 물어보고 싶네..."~ */ GOTO 71
  IF ~~ THEN REPLY #7827 /* ~"좋소, 그럼 관둡시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #7829 /* ~안나는 고개를 젓는다. "놈은 틀림없이 당신 가죽을 벗길 거야, 그렇다고."~ */
  IF ~~ THEN REPLY #7830 /* ~"나는 위험을 감수하겠소."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7831 /* ~그 생물을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #7832 /* ~"당신은 *얼간이*야?" 안나는 꼬리를 앞뒤로 흔들며 당신을 가로막는다. "내가 한 얘기는 듣지도 않은 거야? 마족과는 얘기하지 말라고!"~ */
  IF ~~ THEN REPLY #7833 /* ~"나는 위험을 감수하겠소."~ */ GOTO 73
  IF ~~ THEN REPLY #7834 /* ~"그럼 좋소. 그를 그냥 내버려 두도록 하겠소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #7835 /* ~"정말 당신은 구제불능이군!" 안나는 침을 뱉는다. 그녀는 몹시 화가 난 것 같다. "그런 식으로 나간다면 당신은 곧 죽겠지, 그리고 나도 지긋지긋한 당신과 작별할 수 있겠군."~ */
  IF ~~ THEN REPLY #7836 /* ~"그리고 난 덕분에 더욱 축복받겠지. 자, 난 얘기를 해야겠소."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7837 /* ~"금방 끝날 거요. 진정하시오."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7838 /* ~"그럼 좋소. 그를 그냥 내버려 두도록 하겠소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 32.0 32.1
  SAY #2360 /* ~"그래, 기스지." 그녀는 기스가 당신들 둘을 쏘아보고 있는 상황에서는 별로 얘기를 하고 싶지 않는 것 같다. "여기서 그냥 떠나자고, 어때?"~ */
  IF ~~ THEN REPLY #9027 /* ~"나는 아직 떠날 생각이 없소. 나는 먼저 그에게 질문을 좀 해야겠소..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9028 /* ~기스를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #9801 /* ~그녀는 뭔가 말하려는 듯 하다, 하지만 당신은 그녀가 미처 항의하기 전에 냉엄한 눈초리로 쏘아본다. 그녀는 팔짱을 끼고 꼬리를 흔들며 당신을 조소한다.~ */
  IF ~~ THEN REPLY #9835 /* ~그의 관심을 끌기 위해 그를 흔든다.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9837 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #9802 /* ~그녀는 당신 말을 듣지 못한 척 한다, 그리고 사내가 비틀거리자 그의 이가 득실거리는 옷에 손을 집어넣는다. 그가 무일푼이라는 걸 확인하자 그녀는 그를 가볍게 밀치고 돌아선다. "흥! 어차피 놈에게는 한 푼도 없어. 빌어먹을 주정뱅이 같으니..."~ */
  IF ~~ THEN REPLY #9840 /* ~그의 관심을 끌기 위해 그를 흔든다.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9842 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #9803 /* ~사내가 비틀거리자 그의 이가 득실거리는 옷에 손을 집어넣는다. 그가 무일푼이라는 걸 확인하자 그녀는 그를 가볍게 밀치고 돌아선다. "흥! 놈에게는 한 푼도 없어. 빌어먹을 주정뱅이 같으니..."~ */
  IF ~~ THEN REPLY #9844 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #10078 /* ~"흥! 그렇게 어설프게 하면서 안 들키길 바래? 이 도시에는 아마추어밖에 없군!" 그녀는 당신 쪽으로 고개를 돌린다. "그를 살핀 건 잘한 일이야. 놈은 어떤 얼간이를 털 준비를 하고 있어." ~ */
  IF ~~ THEN REPLY #10079 /* ~"당신이 옳은 것 같소, 안나. 이 일에 대해 뭔가 조치를 취해야 할 것 같소."~ */ EXTERN ~DCSTCROG~ 4
END

IF ~~ THEN BEGIN 79 // from:
  SAY #11267 /* ~안나는 화나서 반박한다. "그래, 어비스가 그에게 가장 어울리는 곳이지, 하지만 그는 자유 의지로 일하지. 그에게는 선택의 여지가 있어, 이 악마야. 하지만 너처럼 혼령으로 만든 기계같은 존재는 그렇지 못해!"
~ */
  IF ~~ THEN EXTERN ~DILQUIXT~ 20
END

IF ~~ THEN BEGIN 80 // from:
  SAY #11270 /* ~그녀의 얼굴의 모든 근육이 긴장으로 팽팽해진다, 그리고 그녀는 폭발한다. "정말 당신은 이... 이 지옥에서 온 괴물이 하라는 대로 할 거야? 그래, 아직도 내 정신은 멀쩡해, 그리고 난 놈이 당신 영혼을 삼키는 걸 똑똑히 지켜볼 거야, 이 얼간아!" ~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11271 /* ~"그럼 하시오. 이퀵스, 그 밖에도 물어보고 싶은 것들이 있소..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11272 /* ~"그럼 하시오. 이퀵스, 그 밖에도 물어보고 싶은 것들이 있소..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY #11667 /* ~그녀는 굳은 미소를 짓는다. "그래, 마족, 당신은 이 곳에서 우리가 *진정한* 자유를 믿는다는 걸 배우게 될 거야. 누구도 내가 하고 싶은 말을 하는 걸 막을 순 없어." 이퀵스는 잠시 조소하는 표정을 짓는다, 그리고 다시 정중한 태도를 취한다. ~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11668 /* ~"그럼 하시오. 이퀵스 그 밖에도 질문할 것들이 좀 있소..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11669 /* ~"그럼 하시오. 이퀵스, 그 밖에도 물어보고 싶은 것들이 있소..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 82 // from:
  SAY #13084 /* ~"내 생각은 내가 직접 말하겠어! 난 안나야, 물론 당신이 상관할 바는 아니지만." 안나는 팔짱을 끼고 *흥* 소리를 낸다. 낼즈는 그냥 미소를 짓고 그녀의 멀쩡한 눈을 당신에게로 돌린다."~ */
  IF ~~ THEN REPLY #13231 /* ~"말을 함부로 하지 마시오, 안나."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 87
  IF ~~ THEN REPLY #13232 /* ~"그녀에 대해선 신경 쓸 것 없소, 낼즈. 물어볼 것들이 좀 있소..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13233 /* ~"물어볼 것들이 좀 있소, 낼즈."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13234 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 83 // from:
  SAY #13085 /* ~"내 생각은 내가 직접 말하겠어! 난 안나야, 물론 당신이 상관할 바는 아니지만." 그리고 이 얼간이가..." 그녀는 당신을 무섭게 노려본다. "과연 내 친구인지는 아직 모르겠어." 낼즈는 가벼운 미소를 짓고 그녀의 멀쩡한 눈을 당신에게로 돌린다."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13235 /* ~진실: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13236 /* ~진실: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13237 /* ~거짓말: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13238 /* ~거짓말: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13239 /* ~"그녀에 대해선 신경 쓸 것 없소, 낼즈. 물어볼 것들이 좀 있소..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13240 /* ~"물어볼 것들이 좀 있소, 낼즈."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13241 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 84 // from: 83.0 87.0
  SAY #13086 /* ~안나의 꼬리가 갑자기 흔드는 걸 멈춘다, 그리고 그녀는 고개를 돌려 당신을 본다. 그녀는 놀라서 눈을 크게 뜨고 있다. 그녀는 무슨 말을 하려는 것 같다... 그러더니 고개를 돌리고 그냥 고개를 끄덕인다. 그녀의 목 뒤쪽은 빨간 것 같다. 그녀는 부끄러워하는 것 같다.~ */
  IF ~~ THEN REPLY #13242 /* ~"낼즈... 질문한 것들이 좀 있소..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13243 /* ~"나에 대해 신경 쓸 것 없소, 낼즈. 안녕히 계시오."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 85 // from: 83.1 83.2 87.1 87.2
  SAY #13087 /* ~안나의 꼬리가 흔드는 걸 멈춘다. 그녀는 아무 말없이 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #13244 /* ~"낼즈... 질문한 것들이 좀 있소..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13245 /* ~"나에 대해 신경 쓸 것 없소, 낼즈. 안녕히 계시오."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 86 // from: 83.3 87.3
  SAY #13088 /* ~안나의 두 눈은 녹색 불꽃처럼 반짝인다, 하지만 그녀는 아무 말없이 당신을 노려볼 뿐이다. ~ */
  IF ~~ THEN REPLY #13246 /* ~"낼즈, 질문한 것들이 좀 있소..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13247 /* ~"나에 대해 신경 쓸 것 없소, 낼즈. 안녕히 계시오."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 87 // from: 82.0
  SAY #13089 /* ~안나의 전신이 잠시 긴장으로 팽팽해진다. 그녀는 아무 말도 하지 않는다. 그러나 당신이 한 말에 대한 그녀의 분노는 주변의 공기를 가득 채우고 있는 듯하다. 당신은 최악의 사태에 대비하나, 의외로 그녀는 조용히 당신을 역겹다는 듯 조소할 뿐이다. ~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13248 /* ~진실: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13249 /* ~진실: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13250 /* ~거짓말: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13251 /* ~거짓말: "안나... 만약 내가 친구로서 충실하지 못했다면 미안하오. 내가 지금까지 당신의 기분을 상하게 한 일들을 모두 용서해주었으면 좋겠소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13252 /* ~"그녀에 대해선 신경 쓸 것 없소, 낼즈. 물어볼 것들이 좀 있소..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13253 /* ~"물어볼 것들이 좀 있소, 낼즈."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13254 /* ~"관두시오, 낼즈. 안녕히 계시오."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 88 // from:
  SAY #13090 /* ~안나는 머리를 기울이고 낼즈를 보며 얼굴을 찡그린다. "내가 뭘 아는지에 대해 신경 쓰지 말고 이 남자 질문에나 대답하는 게 어때?" 그녀는 낼즈를 보며 한동안 히죽 웃는다.~ */
  IF ~~ THEN EXTERN ~DIRONNA~ 29
END

IF ~~ THEN BEGIN 89 // from:
  SAY #13751 /* ~당신의 말을 하려고 하자 안나가 당신을 붙잡고 조용히 말한다. "당신 *돌았어?!" 그하고는 한 마디도 하지마! 그는 굶주린 개들 중 하나야." 그녀는 목소리를 낮춘다. "카오스맨이야, 미쳤어, 위험하다고! 파리만큼, 아니 파리보다 더 우둔한 놈들이라고."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13780 /* ~"굶주린 개? 대체 무슨 얘기요?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13781 /* ~"굶주린 개? 그들이 누군지 다시 말해주겠소?"~ */ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13782 /* ~"그래도 난 그와 얘기를 해야겠소."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13783 /* ~"당신이 옳은 것 같소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #13752 /* ~"그들은 벌통 깡패에다가 카오스맨이라고!" 그녀는 고개를 젓는다, 그리고 꼬리로 당신 등을 찌른다. "그들을 가능한 한 피하고 그들 근처에서는 뒤를 조심해야 해. 나도 놈들과 싸운 적이 있지만 놈들의 이빨은 짖는 소리보다 더 지독해."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13784 /* ~"카오스맨?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 91
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13785 /* ~"카오시텍트가 어떤 자들인지 다시 말해주겠소?"~ */ GOTO 91
  IF ~~ THEN REPLY #13786 /* ~"그래도 난 그와 얘기를 해야겠소."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13787 /* ~"그로부터 뭔가를 배울 수 있으리라 생각했는데. 관두고 그냥 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1
  SAY #13753 /* ~"그들도 더스티, 거버너, 또는 센세이트처럼 당파이긴 하지만... 그들에게는 아무런 신념도 규칙도 없어..." 강조를 하려고 안나는 꼬리를 나선 모양으로 구부린다. :그들은 돌았어, 미쳐도 단단히 미쳤다고. 알겠어?" 그녀는 잠시 골똘히 생각한다. "놈들을 카오시텍츠라고 부르는 사람도 있지만 그건 그들에게는 아무런 상관도 없어."~ */
  IF ~~ THEN REPLY #13788 /* ~"그들은 어떻게 새 멤버를 얻소?"~ */ GOTO 92
  IF ~~ THEN REPLY #13789 /* ~"그래도 난 그와 얘기를 해야겠소."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13790 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #13754 /* ~안나는 어깨를 으쓱한다. "몰라. 그냥 모여. 내가 보기에 똥에 파리가 몰려드는 것과 비슷한 것 같아."~ */
  IF ~~ THEN REPLY #13791 /* ~"어쨌든 난 그와 얘기를 하겠소."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13792 /* ~"알겠소. 정보를 주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #13831 /* ~당신의 말을 하려고 하자 안나가 당신을 붙잡고 조용히 말한다. "당신 *돌았어?!" 그하고는 한 마디도 하지마! 그는 굶주린 개들 중 하나야." 그녀는 목소리를 낮춘다. "카오스맨이야, 미쳤어, 위험하다고! 파리만큼, 아니 파리보다 더 우둔한 놈들이라고."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13992 /* ~"굶주린 개? 대체 무슨 얘기요?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13993 /* ~"굶주린 개? 그들이 누군지 다시 말해주겠소?"~ */ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13994 /* ~"그래도 난 그와 얘기를 해야겠소."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13995 /* ~"당신이 옳은 것 같소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1
  SAY #13832 /* ~"그들은 벌통 깡패에다가 카오스맨이라고!" 그녀는 고개를 젓는다, 그리고 꼬리로 당신 등을 찌른다. "그들을 가능한 한 피하고 그들 근처에서는 뒤를 조심해야 해. 나도 놈들과 싸운 적이 있지만 놈들의 이빨은 짖는 소리보다 더 지독해."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13996 /* ~"카오스맨?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 95
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13997 /* ~"카오스맨이 어떤 자들인지 다시 말해주겠소?"~ */ GOTO 95
  IF ~~ THEN REPLY #13998 /* ~"그래도 난 그와 얘기를 해야겠소."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13999 /* ~"그로부터 뭔가를 배울 수 있으리라 생각했는데. 관두고 그냥 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 94.1
  SAY #13833 /* ~"그들도 더스티, 거버너, 또는 센세이트처럼 당파이긴 하지만... 그들에게는 아무런 신념도 규칙도 없어..." 강조를 하려고 안나는 꼬리를 나선 모양으로 구부린다. :그들은 돌았어, 미쳐도 단단히 미쳤다고. 알겠어?" 그녀는 잠시 골똘히 생각한다. "놈들을 카오시텍츠라고 부르는 사람도 있지만 그건 그들에게는 아무런 상관도 없어."~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #14000 /* ~"그들은 어떻게 새 멤버를 얻소?"~ */ GOTO 96
  IF ~~ THEN REPLY #14001 /* ~"그래도 난 그와 얘기를 해야겠소."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14002 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #13834 /* ~안나는 어깨를 으쓱한다. "몰라. 그냥 모여. 내가 보기에 똥에 파리가 몰려드는 것과 비슷한 것 같아."~ */
  IF ~~ THEN REPLY #14003 /* ~"어쨌든 난 그와 얘기를 하겠소."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14004 /* ~"알겠소. 정보를 주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #15337 /* ~당신이 그에게 인사를 하려고 하자 안나가 당신 어깨를 잡아당긴다. "기다려... 난 저 자에 대한 얘기를 들었어. 벌통에 새로 나타난 자로 자신의 검술을 뽐내고 다닌다고 해. 그와 싸운 자는 한 사람도 남김없이 죽었어. 그런 자는 가급적 피하는 게 좋아."~ */
  IF ~~ THEN REPLY #15486 /* ~"그래도 난 그와 얘기를 하겠소."~ */ GOTO 98
  IF ~~ THEN REPLY #15487 /* ~"그럼 그를 피하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #15338 /* ~"흥! 좋아! 나랑은 상관없는 일이지. 당신이 정신을 차릴 때까지 내가 기다려 줄 거라고는 기대하지 마!"~ */
  IF ~~ THEN REPLY #15488 /* ~그에게 말을 건다.~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ EXTERN ~DADYZOEL~ 1
  IF ~~ THEN REPLY #15489 /* ~"당신이 옳은 것 같소, 안나. 그를 피하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #16621 /* ~"뭐? 농담이겠지?"~ */
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16902 /* ~"난 진지하오. 도와줄 수 있겠소?"~ */ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16903 /* ~"난 진지하오, 안나. 만약 당신이 그들을 위해 약간의 호의하도 보여준다면 감사하겠소... 그냥 날 위해 그렇게 한다고 생각해 주시오."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #16622 /* ~"헤! 어림없지! 그런 건 다른 사람에게나 부탁하라고! 내가 그런 데 시간을 낭비할 거라고 생각했다니 당신은 정말 얼간이야. 얼간이라고!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16904 /* ~"모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16905 /* ~"이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16906 /* ~"그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16907 /* ~"다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16908 /* ~"다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16909 /* ~"노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16910 /* ~"베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16911 /* ~"좋소. 질문할 것들이 좀 있소, 통곡자..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16912 /* ~"그럼 관두시오. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #16623 /* ~마침내 그녀의 표정이 능글맞은 웃음에서 미소로 변한다. "염병할! 당신이 그렇게 절실히 바란다면 그렇게 하지. 당신 나무들에게 관심을 기울이겠어. 하지만 내게 신세를 졌다는 건 잊지 말라고!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16913 /* ~"고맙소. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16914 /* ~"고맙소. 이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16915 /* ~"고맙소. 그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16916 /* ~"고맙소. 다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16917 /* ~"고맙소. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16918 /* ~"고맙소. 노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16919 /* ~"고맙소. 베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16920 /* ~"고맙소. 질문할 것들이 좀 있소, 통곡자..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16921 /* ~"고맙소, 안나. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #17207 /* ~안나는 당신이 미처 그에게 다가가기 전에 당신 갈빗대를 찌른다. "나라면 저 늙은 굴에게 시간을 낭비하지 않겠어."~ */
  IF ~~ THEN REPLY #17348 /* ~"상관 마시오, 그와 얘기할 사람은 나니까."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17349 /* ~"알겠소. 하지만 그래도 나는 그와 얘기를 해야겠소."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17350 /* ~"무엇 때문이오? 그는 어떤 사람이오?"~ */ GOTO 103
  IF ~~ THEN REPLY #17351 /* ~"그럼 가까이 가지 않도록 하리다."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.2
  SAY #17210 /* ~안나는 마치 오래된 전설을 얘기하듯 말한다. "저 '골수-친구'란 늙은이는 단단히 돌았어. 그는 광장에서도 가장 나이가 많고 지저분한 수집자들 중 하나였지. 그는 시체를 수거해 번 돈으로 간신히 연명을 했는데, 몇 년 전에 끝없는 굶주림에 시달리는 정신병에 걸리고 나서는 시체를 먹고 살아가게 되었어. 이제 다른 수집자들은 그들 따돌리고, 기회만 있으면 똥을 던져 그를 놀리지. 그는 그냥 그들을 바라보기 만 해... 내 생각에 그는 그러면서 그들을 먹으면 어떤 맛일까 상상하는 것 같아. ~ */
  IF ~~ THEN REPLY #17352 /* ~"흠... 그래도 만약을 생각해 그와 얘기하도록 하겠소."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17354 /* ~"그럼 가까이 가지 않도록 하리다."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #17426 /* ~"그래, 그는 관심이 없어. 그가 하는 말을 듣지 못했어?" 안나는 눈알을 굴린다. "그 친구를 그냥 종 놔두는 게 어때? 넌 스스로를 망신시키고 있다고, 그래."~ */
  IF ~~ THEN REPLY #17427 /* ~상인이 안나에게 대답하도록 한다.~ */ EXTERN ~D300MER4~ 11
  IF ~~ THEN REPLY #17428 /* ~"안나... 조용하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17466 /* ~"그녀가 옳소. 여긴 내게 필요한 것이 아무 것도 없소. 내 질문은..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17467 /* ~"그녀가 옳소. 여긴 내게 필요한 것이 아무 것도 없소. 안녕히 계시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #17429 /* ~안나는 경악한다, 그리고 경악은 곧 분노로 바뀐다. "*질투?!* 닥쳐! 혀를 함부로 놀리지마, 아니면 내가 네 혀를 잘라내, 그것과 네 시체를 각각 시길의 반대쪽에 매장할 테니까!" 상인은 겁에 질려 뒤로 한 걸음 물러선다. "그리고 당신!" 그녀는 분노에 불타는 눈으로 당신 쪽으로 고개를 돌린다, 그리고 역겹다는 듯 냉소한다. "한 마디도 하지마! 이 미친 년이 조잘거리는 소리를 듣고 엉뚱한 생각은 하지 말라고, 정말 뜨거운 맛을 보기 싫으면!"~ */
  IF ~~ THEN REPLY #17468 /* ~"안나... 조용하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17469 /* ~"그녀가 옳소. 여긴 내게 필요한 것이 아무 것도 없소. 내 질문은..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17470 /* ~"그녀가 옳소. 여긴 내게 필요한 것이 아무 것도 없소. 안녕히 계시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 106 // from: 104.1 105.0
  SAY #17430 /* ~"하! 어림없지! 난 내가 말을 하고 싶을 때 할 거야, 그걸 절대 잊지 말라고! 그리고 내가 이 일을 잊을 거라고는 생각하지마, 이 등신아."~ */
  IF ~~ THEN REPLY #17471 /* ~"좋소, 안나. 그녀가 옳소, 상인. 여긴 내가 필요한 것이 없소. 내 질문은..."~ */ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17472 /* ~"좋소, 안나. 그녀가 옳소, 상인. 여긴 내가 필요한 것이 없소. 내 질문은..."~ */ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 107 // from:
  SAY #17534 /* ~"허! 안나는 고개를 저으며 당신에게 눈알을 부라린다. "그 따위 것을 살 생각을 하다니 당신은 정말 얼간이군! 하지만 귀엽긴 하네... 뭐, 당신 돈으로 사는 거니까 마음대로 하라고."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17589 /* ~"모트? 어떻게 생각하나?"~ */ EXTERN ~DMORTE~ 187
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17590 /* ~"한 마리 사겠소, 상인."~ */ DO ~TakePartyGold(40)
~ EXTERN ~D300MER5~ 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17591 /* ~"돈을 낭비하지 않는 것이 좋을 것 같소. 질문할 것들이 좀 있소, 상인..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17592 /* ~"사지 않겠소. 안녕히 계시오."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17593 /* ~"내겐 그만한 돈이 없소, 상인, 하지만 물어볼 것들이 좀 있소..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17594 /* ~"관두시오, 상인. 내겐 그만한 돈이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #18796 /* ~안나는 눈깜짝할 사이에 그녀의 칼들을 꺼낸다. "날 만지면 넌 그 즉시 황천행이야."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18797 /* ~"안나? 진정하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18798 /* ~안나가 처리하도록 내버려 둔다.~ */ EXTERN ~DCOLYLFN~ 59
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18799 /* ~"안나? 진정하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18800 /* ~안나가 처리하도록 내버려 둔다.~ */ EXTERN ~DCOLYLFN~ 60
END

IF ~~ THEN BEGIN 109 // from:
  SAY #19035 /* ~안나는 역겨워하는 것 같다 "가자고."~ */
  IF ~~ THEN REPLY #19036 /* ~"먼저 그에게 질문을 좀 해야겠소"~ */ EXTERN ~DOJO~ 12
  IF ~~ THEN REPLY #19037 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #19230 /* ~안나는 코웃음친다. "아직도 잘난 체 하는 거야, 퀸트? 꺼져."~ */
  IF ~~ THEN REPLY #19231 /* ~"우선 그에게 물어봐야 할 것들이 있소, 안나."~ */ EXTERN ~DQUINT~ 1
  IF ~~ THEN REPLY #19232 /* ~"안녕히 계시오, 퀸트."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #20625 /* ~안나는 발을 신경질적으로 질질 끈다. "죽은 자를 가지고 장난치지 않는 게 좋아. 불행을 가져온다고."~ */
  IF ~~ THEN REPLY #20626 /* ~"그건 괜찮소. 어치피 이 시체는 아무 말도 하지 않고 있으니. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #20627 /* ~안나는 발을 신경질적으로 질질 끈다. "죽은 자를 가지고 장난치지 않는 게 좋아. 불행을 가져온다고."~ */
  IF ~~ THEN REPLY #20628 /* ~"그것이 우리가 원하는 답을 알고 있을지도 모르오."~ */ EXTERN ~DBODY1~ 2
END

IF ~~ THEN BEGIN 113 // from:
  SAY #20629 /* ~"여긴 우리에게 필요한 게 아무 것도 없어. 그냥 가자, 응? 시체들을 상대해야 이로울 건 아무 것도 없어."~ */
  IF ~~ THEN REPLY #20630 /* ~"갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #20775 /* ~"그리스, 이 멍청한 대머리수리야, 생전에 네 녀석에겐 지각이라고는 눈꼽만큼도 없었고, 이제 넌 죽었고, 썩어서 사라질 신세야. 그 어떠한 죽음의 신도 네 썩은 시체에 자비를 베풀지 않기를. 네 놈이 여기서 썩게 된건 정말 다행한 일이야. 네가 자신이 어떻게 죽었는지 얘기할 수 없는 건 참으로 딱한 일이군."~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN REPLY #20776 /* ~"저게 그리스요?"~ */ JOURNAL #66263 /* ~나는 매장된 마을의 수집자들 중 하나인 대머리수리 그리스의 시체를 발견했다. 그것은 굴들이 지키는 어떤 묘지의 석관 속에 있었으며 심하게 손상되었다. ~ */ GOTO 115
  IF ~~ THEN REPLY #20777 /* ~"그것 참 아름다운 감상이오, 안나. 갑시다."~ */ JOURNAL #66263 /* ~나는 매장된 마을의 수집자들 중 하나인 대머리수리 그리스의 시체를 발견했다. 그것은 굴들이 지키는 어떤 묘지의 석관 속에 있었으며 심하게 손상되었다. ~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #20778 /* ~"그래, 대머리수리 그리스, 성질 더러운 까마귀의 부리와 같은 매부리코를 지닌. 음탕하기 짝이 없는 놈이었지. 놈이 살아 있었을 때 목을 째어 발기지 못한 게 한이군."~ */
  IF ~~ THEN REPLY #20779 /* ~"알겠소, 안나. 고맙소. 여기서 나갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #20780 /* ~안나는 시체를 발가락으로 찔러 본 후 당신 쪽으로 고개를 돌린다. "당신은 왜 사람들이 녀석을 대머리수리 그리스라고 했는지 알아? 그건 이 얼간이의 매부리코가 너무나 컸기 때문이야. 그의 코는 항상 놈보다 수십 센티미터는 앞서서 걷곤 했지."~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20781 /* ~"퀸트는 당신을 찾고 있소, 그리스. 그는 당신이 자기 물건을 가지고 있다고 했소."~ */ EXTERN ~DGRIS~ 10
  IF ~~ THEN REPLY #20782 /* ~"그리스? 다른 마을 사람들에게 그가 죽었다는 걸 알리도록 하겠소."~ */ EXTERN ~DGRIS~ 19
  IF ~~ THEN REPLY #20783 /* ~"의견에는 감사하오, 안나. 난 그리스에게 물어볼 것들이 더 있소."~ */ EXTERN ~DGRIS~ 9
  IF ~~ THEN REPLY #20784 /* ~"고맙소, 안나. 갑시다."~ */ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.3
  SAY #20785 /* ~"천만의 말씀." 그녀는 감미로운 미소를 짓는다. "그리고 잘 있어, 그리스! 쥐들보고 네 뼈를 너무 심하게 갉아먹지 말라고 해!" 그녀는 시체에 침을 뱉는다.~ */
  IF ~~ THEN REPLY #20786 /* ~"갑시다, 안나."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #21611 /* ~"쉿쉿!" 안나는 쉿 소리를 내 경고한다. 당신이 그녀를 향해 고개를 돌리자 그녀가 눈을 크게 뜨고 그 생명체를 쳐다보고 있는 것이 보인다. 그녀는 가슴 위에 손가락으로 반원을 그린다.~ */
  IF ~~ THEN REPLY #24723 /* ~"뭐가 잘못되었소, 안나?"~ */ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #21612 /* ~"당신 미쳤어?!" 안나는 당신을 향해 고개를 돌린다... 그리고 당신은 그녀가 겁에 질려 있다는 사실을 갑자기 깨닫는다. "이 자와 말을 하려고 하다니 당신은 레이디의 그림자 안에서 춤을 추고 싶어 환장한 거야?! 우리 모두 뒈지기 전에 여길 뜨자고!"~ */
  IF ~~ THEN REPLY #24724 /* ~"뭐가 문제요?"~ */ GOTO 120
  IF ~~ THEN REPLY #24725 /* ~"그럼 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #21613 /* ~"그는 *휄*이야." 안나는 두려운 표정으로 휄이라는 생명체를 흘긋 본다. "그냥 가자고, 응? 여기 있어서 좋을 건 아무 것도 없다고!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #24726 /* ~"다시 묻겠소... 뭐가 문제요?"~ */ GOTO 121
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #24727 /* ~"휄?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 7
  IF ~~ THEN REPLY #24728 /* ~"그럼 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #21614 /* ~그는 다버스가 아닌 다버스야, 알겠어? 그는 땅 위를 걸어..." 안나의 목소리는 속삭이는 것처럼 작아진다, 그리고 그녀는 떨기 시작한다. "더 이상 묻지 마. 여길 뜨자고, 응?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24729 /* ~"안나, 내가 여기 있는 한 아무도 당신을 해칠 순 없소. 말해주시오, '다버스'란 뭐요?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 122
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24730 /* ~"'다버스'가 뭐요?"~ */ GOTO 122
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24731 /* ~"안나, 안나, 내가 여기 있는 한 아무도 당신을 해칠 순 없소. 자, 내게 무엇이 잘못되었는지 말해주시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 123
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24732 /* ~"아무래도 이 문제를 명확히 해두는 것이 좋을 것 같소."~ */ GOTO 123
  IF ~~ THEN REPLY #24733 /* ~"그럼 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1
  SAY #21615 /* ~안나는 목소리를 낮춘다. "다버스는 *그녀*의 권속들 중 하나야. 그들은 도시를 관리해. 고쳤다가 부셨다가 다시 짓곤 하지. 그들은 공중에 뜬 심벌들로 얘기를 해... 그들을 하는 말을 알아들으려면 그 심벌들을 맞추어야 하지." ~ */
  IF ~~ THEN REPLY #24734 /* ~"좋소... 하지만 휄도 다버스요. 뭐가 문제인 거요?"~ */ GOTO 123
  IF ~~ THEN REPLY #24751 /* ~"안나, 난 휄에게 몇 가지만 물어보고 싶을 뿐이오. 우린 금방 떠날 것이오."~ */ GOTO 126
  IF ~~ THEN REPLY #24752 /* ~"알겠소. 좋소, 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 121.2 121.3 122.0
  SAY #21616 /* ~안나는 두려운 표정으로 휄을 흘긋 본다. "휄은 *그녀*를 화나게 만든 다버스야. 들리는 얘기로 그는 다버스가 아닌 다버스라고 해, 그리고 얼마 안 있으면 레이디의 진노가 그를 엄습할 거야."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #24753 /* ~"그녀?"~ */ GOTO 124
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24754 /* ~"그녀? 레이디 오브 페인 말이오?"~ */ GOTO 125
  IF ~~ THEN REPLY #24755 /* ~"안나, 난 휄에게 몇 가지만 물어보고 싶을 뿐이오. 우린 금방 떠날 것이오."~ */ GOTO 126
  IF ~~ THEN REPLY #24756 /* ~"알겠소. 좋소, 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #21617 /* ~"레이디 오브 페인 말이야." 안나는 다시 가슴 위에 손가락으로 반원을 그린다. "다버스는 그녀를 위해 일하고 그녀는 그들을 보호해... 휄만 빼고." 그녀는 전율한다. "그만 가자고, 응?". ~ */
  IF ~~ THEN REPLY #24757 /* ~"그 전에 먼저 휄과 얘기를 하고 싶소."~ */ GOTO 126
  IF ~~ THEN REPLY #24758 /* ~"좋소, 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY #21618 /* ~"그래... 그리고 입조심해." 당신이 레이디의 이름을 입에 담자 안나는 다시 가슴 위에 손가락으로 반원을 그린다. "다버스는 그녀를 위해 일하고 그녀는 그들을 보호해... 휄만 빼고." 그녀는 전율한다. "그만 가자고, 응?". ~ */
  IF ~~ THEN REPLY #24759 /* ~"그 전에 먼저 휄과 얘기를 하고 싶소."~ */ GOTO 126
  IF ~~ THEN REPLY #24760 /* ~"알겠소. 좋소, 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from: 122.1 123.2 124.0 125.0
  SAY #21619 /* ~안나는 당신 팔을 잡는다. "제발, 안돼, 안 된다고! 그래서 좋을 건 아무 것도 없어 - 휄과 얘기하는 자는 레이디의 분노를 사게 돼. 난 죽고 싶지 않아!" 놀랍게도 그녀는 울음을 터뜨리기 직전인 것 같다.~ */
  IF ~~ THEN REPLY #24761 /* ~"*조용히* 하시오... 아무 일도 없을 거요. 이제 난 휄과 얘기를 할 테니 당신은 가만히 있도록 하시오." ~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 127
  IF ~~ THEN REPLY #24762 /* ~약속: "안나, 내가 여기 있는 한 아무도 당신을 해칠 순 없소. 약속하오. 나는 그와 잠시 얘기를 나누고 싶을 뿐이오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Fell_2","GLOBALLaw",1)
~ GOTO 128
  IF ~~ THEN REPLY #24763 /* ~그녀가 우는 것을 멈추려고 거짓말을 한다: "안나, 내가 여기 있는 한 아무도 당신을 해칠 순 없소. 약속하오. 나는 그와 잠시 얘기를 나누고 싶을 뿐이오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Fell_2","GLOBALLaw",-1)
~ GOTO 128
  IF ~~ THEN REPLY #24764 /* ~"좋소, 좋아. 떠납시다."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #21620 /* ~안나는 따귀를 맞은 것처럼 얼굴이 빨개진다. 그녀는 으르렁거린다, 그리고 늘 그러는 것처럼 꼬리를 흔들며 화를 낸다. "대체 왜 내가 신경을 쓰는지 모르겠어... 좋아, 가서 당신 혀가 비수처럼 당신 목을 벨 때까지 그와 실컷 얘기하라고!"~ */
  IF ~~ THEN REPLY #24765 /* ~"알겠소."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 128 // from: 126.1 126.2
  SAY #21621 /* ~잠시 그녀는 당신을 그냥 바라본다. 그리고 당신 시선 안의 뭔가가 그녀를 진정시킨 듯 그녀는 마음을 굳게 먹는다. "난 내가 왜..." 그녀는 고개를 젓는다. "그럼 좋아, 가서 그와 얘기하라고! 난 신경 쓰지 않을 테니까!" 그녀의 목소리의 바닥에는 공포가 깔려 있다. ~ */
  IF ~~ THEN REPLY #24766 /* ~"알겠소."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 129 // from:
  SAY #21622 /* ~그녀는 잠시 말을 멈춘다. 그녀는 괴로워하는 듯하다. "그래... 할 수 있어."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24767 /* ~"해주겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24768 /* ~"그래 주겠소?"~ */ GOTO 130
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24769 /* ~"그럼 하시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24770 /* ~"그럼 하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 130
  IF ~~ THEN REPLY #24771 /* ~"그럼 관두시오. 그냥 떠납시다."~ */ EXIT
END

IF ~~ THEN BEGIN 130 // from: 129.1 129.3
  SAY #21623 /* ~안나는 고개를 젓는다. "아니, 난 당신과 함께 레이디의 그림자 속으로 걸어 들어갈 생각은 없어. 안 하겠어."~ */
  IF ~~ THEN REPLY #24772 /* ~"알겠소. 내가 직접 그와 대화를 시도해보도록 하겠소."~ */ EXTERN ~DFELL~ 8
  IF ~~ THEN REPLY #24773 /* ~"좋소. 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 129.0 129.2 132.0 133.1 134.3 135.3 136.0 137.12 138.12 139.12 140.9 141.9 142.0 143.3 144.1 145.3 146.3 147.3 148.0 149.3 150.3 151.1 152.3 153.3 154.3 155.12 158.0 159.0
  SAY #21624 /* ~안나는 고개를 끄덕인다. 다버스는 소매 안에 팔을 넣은 채 계속 당신들 두 사람을 쳐다본다.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24774 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24775 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24776 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24777 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24778 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24779 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24780 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24781 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24782 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24783 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24784 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24785 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64394 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64395 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64396 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64397 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64398 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64399 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24786 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24787 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24788 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #24789 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24790 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24791 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #24792 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24793 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24794 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24795 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24796 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24797 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24798 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24799 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24800 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24801 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #21625 /* ~안나는 꼬리를 앞뒤로 천천히 흔들며 어깨를 으쓱한다. "그의 이름은 휄이래."~ */
  IF ~~ THEN REPLY #24802 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24803 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #21626 /* ~안나는 심벌들을 살피며 눈살을 찌푸린다. "그가 내뿜는 심벌들은 다 이해하지는 못하겠어..." 그녀는 건물 안의 벽들을 흘긋 본다. "하지만... 내가 똑바로 보았다면 이 곳은 일종의 문신 가게인 것 같아."~ */
  IF ~~ THEN REPLY #24804 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24805 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24806 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #21627 /* ~안나는 눈을 가늘게 뜨고 심벌들을 쳐다본다. "우선 그는... 아니, 기다려." 그녀는 눈살을 찌푸린다. "그는 당신이 이 곳에 온 것은 *처음*이지만... 동시에 처음이 아니라고 말하고 있어." 그녀는 짜증이 나는 듯 쉿 소리를 내며 꼬리를 뱀처럼 앞뒤로 흔들어 댄다. "쉿쉿! 그도 *당신*만큼이나 미쳤어. 그가 하는 소린 말이 되질 않아."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24807 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24808 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24809 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #24810 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24811 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #21628 /* ~안나는 눈을 깜박인다. "오, 이건 걸작이군. 그는 당신을 잘 안대... 그러더니 당신 얘기는 들려줄 수가 없다는군."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24812 /* ~"그건 왜요?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24813 /* ~"그건 왜요?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24814 /* ~"그건 왜요?"~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #24815 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24816 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #21629 /* ~"그는 말할 수가 없데. 그는 미안하다고 말하고 있어..." 안나는 눈살을 찌푸린다. "그는 자신이 인간의 본성을 바꿀 수는 없다고 말하고 있어." 그녀는 심벌들을 다시 훑어본 후 어깨를 으쓱한다. "그가 마지막에 한 말의 의미는 잘 모르겠어."~ */
  IF ~~ THEN REPLY #24817 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24818 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #21630 /* ~안나는 자신의 아랫입술을 깨문다. "그 마귀할멈은 동화 속의 존재가 아니래. 그녀는 실제로 존재한다고 해."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24819 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24820 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24821 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24822 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24823 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24824 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24825 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24826 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24827 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24828 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24829 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24830 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24831 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24832 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #21631 /* ~"그..." 안나는 가슴 위에 손가락으로 반원을 그린다. "그는 그녀가 미로에 갇혔다고 해. 그러니..." 그녀의 목소리가 속삭임처럼 작아진다. "그녀는 레이디의 감옥들 중 한 곳에 있어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24833 /* ~"미로에 갇혀?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24834 /* ~"미로에 갇히다?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24835 /* ~"미로에 갇히다?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24836 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24837 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24838 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24839 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24840 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24841 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24842 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24843 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24844 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24845 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24846 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #21632 /* ~"그녀..." 안나는 눈을 가늘게 뜨고 심벌들을 쳐다본다. "그녀들은 사이가 좋지 않았고 그래서 레이디가 그녀를 처벌했다는 것 같아. 레이디는 그녀를 미로에 가두었어." 안나는 당신을 향해 고개를 돌린다. "미로는 자신이 레이디를 능가할 수 있다고 착각한 자들을 위한 일종의 닭장이지... 아무도 레이디에게 이긴 자는 없어. 미로의 수만 늘어날 뿐이지."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24847 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24848 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24849 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24850 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24851 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24852 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24853 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24854 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24855 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24856 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24857 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24858 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24859 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24860 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #21633 /* ~안나는 번역을 하면 할수록 더 불안해하는 듯하다, 그리고 그녀가 몸서리치는 것이 당신 눈에 들어온다. "그는 그녀가 시길을 마치 달걀처럼 깨트리려고 했다고 말하고 있어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24861 /* ~"그는 래벌이 있는 곳까지 갈 수 있는 방법을 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24862 /* ~"그는 래벌이 있는 곳까지 갈 수 있는 방법을 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24863 /* ~"그는 래벌이 있는 곳까지 갈 수 있는 방법을 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24864 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24865 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24866 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24867 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24868 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24869 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24870 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24871 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 156.5
  SAY #21634 /* ~안나는 눈살을 찌푸린다. "그는 그녀를 찾으려고 하지 말래." 그녀는 불안한 듯 몸을 긁는다. "그의 말로는 그녀는 레이디의 관리 아래에 놓여 있대." 그녀는 당신을 향해 고개를 돌린다. "그는 하는 말이 옳아... 레이디와 적대하려는 건 미친 짓이야. 그러니 그냥 내버려 두는 게 좋아, 알겠어?"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24872 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24873 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24874 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24875 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24876 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24877 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24878 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24879 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24880 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24881 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24882 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #21635 /* ~"그는 그녀를 찾으려고 하지 말래, 왜냐하면..." 안나는 눈을 가늘게 뜨고 심벌들을 쳐다본다. "그녀는 사악한 마음을 지니고 있기 때문이야." 그녀는 잠시 멈춘다. "그는 그녀가 모든 수단을 동원해 당신과 당신 동료들을 해칠 거라고 말하고 있어." 안나는 한숨을 쉰 후 불안한 표정으로 당신을 흘긋 본다. "그가 옳아. 만약 그녀가 살아 있더라도 그녀는 불행의 근원, 최악의 재앙일 뿐이야."~ */
  IF ~~ THEN REPLY #24883 /* ~"염두에 두도록 하리다. 그에게 묻고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24884 /* ~"우리는 다시 만나게 될 것이라는 생각이 드오. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #21636 /* ~안나는 꼬리를 앞뒤로 흔든다. "그는 팔은 당신 것이지만 문신은 자기가 새긴 거라고 하고 있어." 그녀는 공중에 떠 있는 심벌들을 살펴보며 눈살을 찌푸린다. "...마지막 부분은 모르겠어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24885 /* ~"무슨 문신 말이오?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24886 /* ~"무슨 문신 말이오?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24887 /* ~"무슨 문신 말이오?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #24888 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24889 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #21637 /* ~"그는 그것들이 자신의 작품이지만 지금까지 잊어버리고 있었다고 해. 그는 만약 당신이 원한다면 그것들을 다시 새겨 줄 수 있다고 말하고 있어."~ */
  IF ~~ THEN REPLY #24890 /* ~"좋소.. 그가 어떤 문신들을 판매하고 있는지 보고 싶소."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24891 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24892 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #21638 /* ~"그는 그것들이 자신이 새긴 것이 아니라고 말하고 있어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"그가 내게 그것들에 대해 말해줄 수 있겠소?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"그가 내게 그것들에 대해 말해줄 수 있겠소?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"그가 내게 그것들에 대해 말해줄 수 있겠소?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #24896 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24897 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #21639 /* ~"그는 당신 등 뒤에 새겨진 것들은 지시 사항이라고 하고 있어. 그리고 당신 어깨에 있는 건..." 갑자기 휄 주위에 있는 심벌들 중 하나가 밝아진다, 그리고 나머지는 모두 사라진다. 심벌은 더욱 커지고 또한 뚜렸해진다.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24898 /* ~"내 어깨에 있는 심벌들은 무엇이오?"~ */ EXTERN ~DFELL~ 69
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24899 /* ~"내 어깨에 있는 심벌들은 무엇이오?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24900 /* ~"내 어깨에 있는 심벌들은 무엇이오?"~ */ EXTERN ~DFELL~ 70
  IF ~~ THEN REPLY #24901 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24902 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #21640 /* ~"그림자들." 안나는 꼬리를 앞뒤로 흔들기 시작한다... 이상하게도 그녀는 불안해하는 것 같다. "그는 그림자들이 당신을 죽였대."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24934 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24935 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24936 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #24937 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24938 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #21641 /* ~"그는..." 안나의 꼬리는 앞뒤로 흔드는 것을 멈추고 사냥감을 노리는 뱀처럼 천천히 움직이기 시작한다. "그는 당신이 많은 그림자들에 의해 죽임을 당했다고 해. 그 이유는 그도 몰라."~ */
  IF ~~ THEN REPLY #24939 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24940 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #21642 /* ~"그는... 그것이 자기 신전... 자기 갤러리라고 하고 있어. 그는, 어... 당신이 자신의 *캔버스*래. 그는 당신에게 경의를 표하지만... 동시에 당신 때문에 슬프대."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24941 /* ~"나 때문에 슬프다?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24942 /* ~"나 때문에 슬프다?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24943 /* ~"나 때문에 슬프다?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #24944 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24945 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #21643 /* ~안나는 해석하려고 애를 쓰는 것 같다. "그는... 고문, 아니... *고통*의 낙인이 당신 위에 떠 있다고 해. 그 비극... 비극들... 그리고 많은 상실과 고통이... 어. 당신의 육신에 새겨졌데. 그는 당신이 엄청난 고통을 견뎌 냈다고 하고 있어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24946 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24947 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24948 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #24949 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24950 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from:
  SAY #21644 /* ~안나는 눈살을 찌푸린다. "전부 다 이해하지는 못하겠어, 하지만..." 그녀는 눈을 가늘게 뜨고 심벌들을 쳐다본다. "그는... 존경한대... 당신에게 *경의*를 표해, 왜냐하면 당신이 굴복... 아니, 아니야... 당신이 상실... 상실감... 사슬에... 굴복하지 *않았기*..." 안나는 으르렁거린 후 바다에 침을 뱉는다. "빌어먹을! 저주받을 그림문자들 같으니! 대체 말이 되질 않아!"~ */
  IF ~~ THEN REPLY #24951 /* ~"심호흡을 하고 다시 시도하시오."~ */ GOTO 152
  IF ~~ THEN REPLY #24952 /* ~"그럼 관두시오. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24953 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #21645 /* ~"좋아, 계속하겠어." 안나는 숨을 내쉰 후 다시 눈을 가늘게 뜨고 심벌들을 쳐다본다. "그는 당신이 지금 이 순간도 당신을 무겁게 짓누르고 있는 이러한 상실과 고통에 결코 굴복한 적이 없기 때문에 경의를 표한다고 말하고 있어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24954 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24955 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24956 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #24957 /* ~"그럼 관두시오. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24958 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #21646 /* ~안나는 눈살을 찌푸린다. "그는... 이러한 상실과 고통이 당신의 지금 삶과 그 이전의 삶들을 뒤덮고 있다고 말하고 있어. 그리고 당신이... 뱀이 허물을 벗듯이 피부를 벗어 던진다고... 당신은 삶의 많은 갈림길을 걷고..." 그녀는 잠시 멈춘다. "아니, 무수한 갈림길을 걷고 있다고 해."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24959 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24960 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24961 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #24962 /* ~"그럼 관두시오. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24963 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #21647 /* ~"어... 그는 당신에게 뭔가에 대해 경고하고 있어... 당신의 각... 삶... 전생..." 그녀는 눈을 가늘게 뜨고 본 후 말을 계속한다. "화... *화신들*은 그림자를 드리워. 그리고 당신은 미친 그림자들이 있는 곳, 미친 그림자들이 사는 곳, 그리고 대지가 후회에 의해 베인 곳으로 가야 한다고 말하고 있어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24964 /* ~"알겠소... 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24965 /* ~"알겠소... 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24966 /* ~"알겠소... 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #24967 /* ~"그럼 관두시오. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24968 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #21648 /* ~"그는 또한 어떤 것에도 서명하지 말라고 말하고 있어."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24969 /* ~"알겠소."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24970 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24971 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24972 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24973 /* ~"알겠소."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24974 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24975 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24976 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24977 /* ~"알겠소."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24978 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24979 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24980 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #24981 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24982 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #21649 /* ~"휄은... 어, 아니, 당신이 스스로를 온전하지 않다고 느끼느냐고 *묻고* 있어..." 안나는 눈살을 찌푸린다. "내 *생각에* 그는 당신이 스스로를 온전하다고 느끼느냐고 물은 것 같아."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24983 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24984 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24985 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #24986 /* ~"당신과는 상관없는 일이오."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24987 /* ~거짓말: "나는 온전하오. 그건 왜 물으시오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24988 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 141
  IF ~~ THEN REPLY #24989 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #21650 /* ~"휄은... 당신은 강한 사람이라고 말하고 있어. 그리고 믿음을 가지라고. 그럼 다시 온전하게 될 거래.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24991 /* ~"해보리다."~ */ EXTERN ~DFELL~ 103
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24992 /* ~"해보리다."~ */ EXTERN ~DFELL~ 104
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24993 /* ~"해보리다."~ */ EXTERN ~DFELL~ 105
END

IF ~~ THEN BEGIN 158 // from:
  SAY #21651 /* ~안나는 눈을 깜박인다. "그는... 내게 내 마음을 저버리지 말라고 했어."~ */
  IF ~~ THEN REPLY #24994 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24995 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #21652 /* ~"그는 그것이 고문..." 그녀는 눈살을 찌푸린다. "아니, '고통'이라고 말한 것 같아. 그는 피부와 정신에 대해 뭐라고 말하고 있는데 나로서는 잘 모르겠어." 그녀는 고개를 젓는다. "정말 내 머리를 아프게 해."~ */
  IF ~~ THEN REPLY #24996 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 131
  IF ~~ THEN REPLY #24997 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #23928 /* ~"아, 쉐드. 우리가 모두 널 걱정하고 있는 건 알지? 네가 이렇게 된 건 정말 안된 일이야." 그녀는 그를 따뜻한 눈으로 바라보는데, 당신은 그녀가 그런 눈을 하는 것을 일찍이 본 적이 없다. "어서 우리를 꺼내 주고 도망치라고. 여기 있는 이 친구가 쥐들에게 단단히 복수를 해줄 생각이니까."~ */
  IF ~~ THEN REPLY #23929 /* ~"맞았소."~ */ EXTERN ~DSHAD~ 7
  IF ~~ THEN REPLY #23930 /* ~"제발, 쉐드."~ */ EXTERN ~DSHAD~ 7
END

IF ~~ THEN BEGIN 161 // from:
  SAY #28622 /* ~당신 옆에서 안나가 쉿 소리를 낸다. "쉿! 쓸데없는 미사여구나 늘어놓으며 대체 뭘 하는 거야? 얼이라도 빠진 거야?"~ */
  IF ~~ THEN REPLY #28623 /* ~"안나, 진정하고 조용히 하시오. 나는 이 곳에 있는 사람과 얘기를 할 거요, 알았소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 162
  IF ~~ THEN REPLY #28624 /* ~"나는 그녀가 내 무례함을 용서하도록 칭찬을 했을 뿐이오, 안나. 알겠소?"~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0 161.1
  SAY #28625 /* ~안나는 침을 뱉는다. "멋쟁이 흉내를 내고 계신 모양이군. 그것도 마족 상대로 그 짓을 하다니 당신은 정말 얼간이야! 이 다음에는 창관으로 갈 생각인가?~ */
  IF ~~ THEN EXTERN ~DGRACE~ 53
END

IF ~~ THEN BEGIN 163 // from:
  SAY #28626 /* ~"그녀는 마족, 그것도 서큐버스야. 그녀는 당신을 안팎으로 잘 살핀 후에 당신 영혼을 마계로 데려갈 거리고!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 72
END

IF ~~ THEN BEGIN 164 // from:
  SAY #28627 /* ~안나는 뻣뻣해진다, 그리고 숨을 거칠게 쉬며 투덜거리기 시작한다. "대체 누가 그 여자가 우리와 함께 여행을 해도 좋다고 하는 거야? 우리에겐 저런 여자 따윈 필요없어. 그러니 안돼."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 118
END

IF ~~ THEN BEGIN 165 // from:
  SAY #28628 /* ~안나는 뻣뻣해진다, 그리고 숨을 거칠게 쉬며 투덜거리기 시작한다. "대체 누가 그 여자가 우리와 함께 여행을 해도 좋다고 하는 거야? 우리에겐 저런 여자 따윈 필요없어. 그러니 안돼"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 277
END

IF ~~ THEN BEGIN 166 // from:
  SAY #28629 /* ~"주둥아리를 닥쳐, 해골, 아니면 네 이빨이 튀어서 스파이어로 날아갈 때까지 널 두들길 테니까--!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 117
END

IF ~~ THEN BEGIN 167 // from:
  SAY #30829 /* ~안나는 눈을 희번덕거리며 어깨를 으쓱한다. "말하고 싶은 대로 말해, 난 당신이 무슨 말을 하든 신경 안 쓰니까... 하지만 *나*에 대해 주둥아리를 놀리고 있는 거라면 사정은 다르지."~ */
  IF ~~ THEN REPLY #30836 /* ~그의 관심을 끌려고 시도한다.~ */ EXTERN ~DABLE~ 7
END

IF ~~ THEN BEGIN 168 // from:
  SAY #30830 /* ~"그래, 그는 보면 괴로워, 그렇다고."~ */
  IF ~~ THEN REPLY #30837 /* ~"재미있군, 안나. 질문할 것들이 좀 있소."~ */ EXTERN ~DABLE~ 16
  IF ~~ THEN REPLY #30838 /* ~"엉덩이에 거대한 쥐꼬리처럼 생긴 것이 달린 자가 그런 소리를 하다니 웃기는군..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY #30831 /* ~안나는 이빨을 드러내고 꼬리를 흔들어 댄다. "정말 *그런* 거야, 이 얼간아? *원한다면* 나와 내 꼬리는 당신 앞에서 영원히 사라져 줄 수도 있어! *그러면* 행복하겠어, 그래?"~ */
  IF ~~ THEN REPLY #30839 /* ~"아니오, 안나. 가지 마시오. 난 당신을 좀 놀렸을 뿐이오... 당신이 한 말에 대한 보복으로."~ */ GOTO 170
  IF ~~ THEN REPLY #30840 /* ~"안나, 안 되오, 난 당신이 떠나는 걸 원하지 않소. 내가 힌 말 대해선 사과하리디. 부디 내 곁에 남아주시오." ~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 171
  IF ~~ THEN REPLY #30841 /* ~"원하는 대로 하시오, 안나."~ */ GOTO 172
END

IF ~~ THEN BEGIN 170 // from: 169.0 171.0 172.0 173.0
  SAY #30832 /* ~"흥." 그녀는 당신을 보며 능글맞게 웃는다, 하지만 떠나려는 낌새는 없다.~ */
  IF ~~ THEN REPLY #30842 /* ~"고맙소, 안나. 그리고 당신... 당신에게 물어볼 것들이 좀 있소."~ */ EXTERN ~DABLE~ 16
END

IF ~~ THEN BEGIN 171 // from: 169.1
  SAY #30833 /* ~안나는 한참 동안 아무 말이 없다. 그녀는 입을 열어 말을 하려고 하다가 그만둔다...
~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 172 // from: 169.2
  SAY #30834 /* ~안나는 충격 때문에 한동안 당신을 그냥 빤히 쳐다본다, 그리고 이내 얼굴이 분노로 흙빛이 된다. "*좋아!*" 그녀는 날카롭게 소리를 지른다. "대체 내가 *왜* 당신과 함께 다니느라 그 많은 시간을 허비했는지 모르겠어!" 그녀는 당신과 당신 조상, 그리고 당신과 만난 적이 있는 모든 사람들에게 큰 소리로 욕지거리를 하며 무거운 발걸음으로 떠나간다.~ */
  IF ~~ THEN REPLY #30843 /* ~"안나, 기다리시오... 사과하겠소. 부디 돌아오시오."~ */ GOTO 170
  IF ~~ THEN REPLY #30844 /* ~그녀가 떠나려 하자 그녀를 붙잡는다.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 173
  IF ~~ THEN REPLY #30845 /* ~그녀를 그냥 보내준다.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 172.1
  SAY #30835 /* ~당신의 그녀의 팔을 잡는다, 그러나 그녀는 당신 손을 뿌리치고 쉿쉿 소리를 낸다. "다시는 날 쳐다보지도 마, 이 한심한 얼간아!" 그녀는 자신의 펀치 대거를 들어 올린다. 그리고 당신 몸의 일부라도 내 몸에 *닿으면* 난 그 부분을 잘라서 시길의 시궁창에 처넣을 거야! 맹세코 말이야!"~ */
  IF ~~ THEN REPLY #30846 /* ~"안나, 기다리시오... 나는 사과를 하고 싶을 뿐이오. 당신을 그렇게 불쾌하게 할 생각은 없었소. 제발 떠나지 마시오."~ */ GOTO 170
  IF ~~ THEN REPLY #30847 /* ~"그 협박에 대한 대가는 치러야 할 걸, 이 입버릇 더러운 티플링 쓰레기야."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30848 /* ~"아듀, 안나."~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #32668 /* ~당신이 그녀 앞에 무릎을 꿇으려 하자 안나가 격분하여 소리를 지른다. "정말 그렇게 하려는 건 아니겠지?! 그냥 저 지랄같은 창녀를 죽여버리라고, 얼간아! 좋아... 내가 대신 해주지..."~ */
  IF ~~ THEN REPLY #32689 /* ~"안나, 기다리시오!"~ */ DO ~Attack("Sarhava")
~ EXIT
  IF ~~ THEN REPLY #32690 /* ~안나와 그 여자 사이에 선다.~ */ GOTO 175
  IF ~~ THEN REPLY #32691 /* ~안나가 그 여자를 공격하는 것으 돕는다.~ */ DO ~Attack("Sarhava")
~ EXTERN ~DSARHAVA~ 15
  IF ~~ THEN REPLY #32692 /* ~안나가 처리하도록 내버려 둔다.~ */ DO ~Attack("Sarhava")
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY #32669 /* ~당신이 그 지키려고 몸을 움직이지 안나는 놀라서 당신을 빤히 쳐다본다. "너... 너... *미쳤어?*"~ */
  IF ~~ THEN REPLY #32693 /* ~"이 곳은 벌통이 아니오, 안나. 여기서는 우리 마음대로 싸울 수가 없소. 조심하지 않으면 경비병들이 올 수도 있소."~ */ GOTO 176
  IF ~~ THEN REPLY #32694 /* ~"자, 안나. 그냥 갑시다."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #32670 /* ~안나는 떫은 표정을 하고 그 여자의 발에 침을 뱉는다. 놀랍게도 그녀는 안나를 공격하려고 하지 않는다. "역겨워... 정말 역겹군." 그녀는 목소리를 낮추고 혼자서 뭐라고 중얼거린다. 그녀는 듣기 거북한 욕을 하는 것 같다. ~ */
  IF ~~ THEN REPLY #32695 /* ~"이것 보시오. 우린 말썽을 원하지 않소. 내가 직접 경비병들을 부르기 전에 그만 끝냅시다."~ */ EXTERN ~DSARHAVA~ 7
  IF ~~ THEN REPLY #32696 /* ~"자, 안나. 그냥 갑시다."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 177 // from:
  SAY #32671 /* ~안나는 그레이스와 사하바를 분노에 찬 눈으로 노려본다. ~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 178 // from:
  SAY #32672 /* ~안나의 얼굴이 빨개진다, 그리고 고함소리와 함께 그녀의 주먹에서 칼날들이 튀어나온다. ~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DSARHAVA~ 30
END

IF ~~ THEN BEGIN 179 // from:
  SAY #32673 /* ~"주둥아리를 험하게 놀리는 데는 재주가 있군, 이 창녀야." 안나는 침을 뱉는다, 그리고 한쪽 칼날을 다른 쪽 칼날에 대고 갈기 시작한다. "네가 거리에서 뒈진 다음에 네 몸을 장식하고 있는 창녀의 옷과 싸구려 보석들이 얼마나 보기 좋을지 궁금하군!"~ */
  IF ~~ THEN REPLY #32674 /* ~"안나, 기다리시오!"~ */ EXTERN ~DSARHAVA~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #33296 /* ~"닥쳐, 이 역겨운 쓰레기야! 내가 지난번에 다시는 내게 말을 걸지 말라고 했던 거 기억하지? 애초에 대체 어떻게 해서 너같은 놈이 내 이름을 알게 된 거야?"~ */
  IF ~~ THEN EXTERN ~DGHIVEM~ 53
END

IF ~~ THEN BEGIN 181 // from:
  SAY #33297 /* ~"내가 경고하지 않았다고는 말하지 못하겠지!" 안나의 칼이 사내가 내민 손을 향해 나간다...~ */
  IF ~~ THEN REPLY #33298 /* ~그를 당신이 직접 공격한다.~ */ EXIT
  IF ~~ THEN REPLY #33299 /* ~안나가 처리하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #33435 /* ~"닥쳐, 이 역겨운 쓰레기야! 내가 지난번에 다시는 내게 말을 걸지 말라고 했던 거 기억하지? 애초에 대체 어떻게 해서 너같은 놈이 내 이름을 알게 된 거야?"~ */
  IF ~~ THEN EXTERN ~DGHIVEF~ 51
END

IF ~~ THEN BEGIN 183 // from:
  SAY #33437 /* ~"내가 경고하지 않았다고는 말하지 못하겠지!" 안나의 칼이 사내가 내민 손을 향해 나간다...~ */
  IF ~~ THEN REPLY #33438 /* ~그를 당신이 직접 공격한다.~ */ EXIT
  IF ~~ THEN REPLY #33439 /* ~안나가 처리하도록 내버려 둔다.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 218 227 even though they appear after this state */
~  GlobalGT("Annah","GLOBAL",0)
!Global("Annah_Talked_Grace","GLOBAL",5)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 184 // from:
  SAY #33981 /* ~당신이 다가가자 안나는 꼬리를 앞뒤로 흔들며 당신을 쳐다본다. "그래... 아직 내 도움이 필요없는 거야?"~ [ANA454A] */
  IF ~~ THEN REPLY #33982 /* ~"나는 우리가 다시 함께 여행했으면 하오."~ */ GOTO 185
  IF ~~ THEN REPLY #33983 /* ~"아무 것도 아니오, 방해해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY #33984 /* ~"오, 이번엔 정말인 거야? 당신은 한 번 날 여기에 버려 두고 떠났고, 난 기분이 별로 좋지 않았어. 난 당신 때문에 이런 데서 서성거릴 시간은 없다고. 만약 정말 확실하게 내가 필요한 것이 아니라면 날 그냥 내버려 둬."~ */
  IF ~~ THEN REPLY #33985 /* ~"이번에는 틀림없소. 난 당신 도움이 필요하오, 안나."~ */ GOTO 186
  IF ~~ THEN REPLY #33986 /* ~"그렇다면 난 그냥 가야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #33987 /* ~"쳇. 말도 안 되는군. 하지만 당신과 함께 가기로 하지. 당신에게는 그 어떠한 도움이라도 필요할 테니."~ */
  IF ~~ THEN REPLY #33988 /* ~"좋소, 갑시다."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 451 460 218 227 even though they appear after this state */
~  InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 187 // from:
  SAY #33989 /* ~"그래? 그럼 뭘 원하는 거야?"~ [ANA579B] */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67680 /* ~"그래 당신이 내 시체를 발견한 장소는 어디요?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67681 /* ~"그래 당신이 내 시체를 발견한 장소는 어디요?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67682 /* ~"그래 당신이 내 시체를 발견한 장소는 어디요?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67683 /* ~"당신이 어떻게 내 시체를 찾았는가에 대해서 물어보고 싶은 것이 하나 있소..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67684 /* ~"안나... 내가 파로드를 만나기 전에 혹시 나와 벌통에서 만난 적이 있지 않소?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67685 /* ~"안나, 내 시체를 시체안치소로 가져오기 전에 혹시 내 몸에서 뭔가 발견했소?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67693 /* ~"안나, 나는 악풍의 궁정에서 파로드가 죽은 것을 발견했소."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67694 /* ~"안나, 당신은 파로드가 어떻게 죽었는지 아시오?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67686 /* ~"파로드에 대해 좀 얘기해주시오."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67687 /* ~"안나, 파로드가 내게 돌려주기 위해 내 몸에서 나온 공물을 찾으러 갔을 때 그는 잠시 동안 사라졌다가 다시 나타났소. 하지만 그는 악풍의 궁정을 떠나지 않았소. 그가 어디로 갔었는지 혹시 아시오?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67690 /* ~"안나, 내게 도둑 기술을 가르쳐 줄 수 있겠소?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68261 /* ~"안나, 내게 도둑 기술을 가르쳐 줄 수 있겠소?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67688 /* ~"당신도 알았으면 하오. 내가 미로에서 래벌에게 키스했을 때 나는..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67689 /* ~"당신도 알았으면 하오. 내가 미로에서 래벌에게 키스했을 때 나는..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67695 /* ~"미로에서 래벌은 당신이 고통을 받았다고 했소... 그게 무슨 뜻이오?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67051 /* ~"래벌 퍼즐웰이라는 나이트 해그에 대해 들은 적이 있소?"~ */ GOTO 316
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67052 /* ~"어디 가면 래벌의 '일부'를 찾을 수 있을지 혹시 아시오?"~ */ GOTO 319
  IF ~~ THEN REPLY #33990 /* ~"아무 것도 아니오, 안나. 난 당신이 아직도 나와 있는지 확인했을 뿐이오."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #39003 /* ~"악, 뇌 쥐들의 집합체야! 빨리 여길 뜨는 게 좋아. 그들은 당신 정신을 박살 낼 거야! 나는 놈들 스무 마리가 주정뱅이들을 기습하고 건물을 파괴하는 것을 봤어, 그리고 놈들이 많이 모이면 주문조차 사용할 수 있다는 얘기를 들었어. 놈들이 수백 마리 모이면 대체 어떤 짓을 할 수 있을지 상상하기도 싫어..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 189 // from:
  SAY #39004 /* ~"악, 뇌 쥐들의 집합체야! 빨리 여길 뜨는 게 좋아. 그들은 당신 정신을 박살 낼 거야! 나는 놈들 스무 마리가 주정뱅이들을 기습하고 건물을 파괴하는 것을 봤어, 그리고 놈들이 많이 모이면 주문조차 사용할 수 있다는 얘기를 들었어. 놈들이 수백 마리 모이면 대체 어떤 짓을 할 수 있을지 상상하기도 싫어..."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 5
END

IF ~~ THEN BEGIN 190 // from:
  SAY #39005 /* ~안나는 당신에게 속삭인다. "당신은 뇌 쥐들의 노여움을 샀어, 그렇지? 그럼 이 이야기는 꼭 해야겠어. 놈들이 우리 모두를 작살내기 전에 우린 빨리 여기서 줄행랑을 쳐야 해. 그들은 수가 늘수록 더 똑똑해져, 정말이야. 나는 놈들이 주정뱅이들을 기습하고 건물을 파괴하는 것을 봤어, 그리고 놈들이 많이 모이면 주문도 사용할 수 있다는 얘기를 들었어. 나는 이 집합체가 얼마나 강대한지 상상조차 할 수 없어, 그런데 당신은 놈들을 화나게 만든 거라고. 여기선 조심하자고, 알겠어?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 191 // from:
  SAY #39006 /* ~안나는 당신에게 속삭인다. "당신은 뇌 쥐들의 노여움을 샀어, 그렇지? 그럼 이 이야기는 꼭 해야겠어. 놈들이 우리 모두를 작살내기 전에 우린 빨리 여기서 줄행랑을 쳐야 해. 그들은 수가 늘수록 더 똑똑해져, 정말이야. 나는 놈들이 주정뱅이들을 기습하고 건물을 파괴하는 것을 봤어, 그리고 놈들이 많이 모이면 주문도 사용할 수 있다는 얘기를 들었어. 나는 이 집합체가 얼마나 강대한지 상상조차 할 수 없어, 그런데 당신은 놈들을 화나게 만든 거라고. 여기선 조심하자고, 알겠어?"~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 58
END

IF ~~ THEN BEGIN 192 // from:
  SAY #39007 /* ~나는 뇌 쥐들이 당신을 가지고 어떤 음모를 꾸미는지 모르겠어, 하지만 만약 놈들이 평화를 제의하고 있는 거라면, 받아들이는 게 좋아. 그들은 수가 늘수록 더 똑똑해져, 정말이야. 그리고 이 정도 규모의 집합체라면 설령 당신이 대미지를 입히더라도 당신을 저 세상으로 보낼 수가 있어."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 193 // from:
  SAY #39008 /* ~나는 뇌 쥐들이 당신을 가지고 어떤 음모를 꾸미는지 모르겠어, 하지만 만약 놈들이 평화를 제의하고 있는 거라면, 받아들이는 게 좋아. 그들은 수가 늘수록 더 똑똑해져, 정말이야. 그리고 이 정도 규모의 집합체라면 설령 당신이 대미지를 입히더라도 당신을 저 세상으로 보낼 수가 있어."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 78
END

IF ~~ THEN BEGIN 194 // from:
  SAY #39200 /* ~안나는 화가 나서 뭐라고 중얼거린다. "XX 같은" "얼간이"와 같은 단어들이 난무한다. ~ */
  IF ~~ THEN EXTERN ~DVIVIAN~ 12
END

IF ~~ THEN BEGIN 195 // from:
  SAY #39585 /* ~"그래, 난 그런 이야기는 잘 하지 못한다고, 정말이야." 그녀는 눈살을 찌푸린다, 그리고 손을 흔들어 그 생각을 떨쳐버리려고 한다. "그런 말도 안 되는 소린 하지도 마." ~ */
  IF ~~ THEN EXTERN ~DYVES~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #39586 /* ~안나는 거부한 듯 꼬리를 천천히 앞뒤로 흔든다. "한 가지 이야기를 알기는 하는데..." 그녀는 갑자기 화를 내며 이브즈를 노려본다. "...하지만 당신 맘에 안 들지도 몰라. 하지만 듣자고 한 건 당신이니까 날 원망하진 마!"~ */
  IF ~~ THEN REPLY #39764 /* ~"안나, 계속하시오..."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 197
  IF ~~ THEN REPLY #39765 /* ~"기다리시오... 당신과 공유할 이야기가 있소, 이브즈."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39766 /* ~"관두시오, 안나. 질문할 것이 하나 있소, 이브즈..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39767 /* ~"걱정하지 마시오, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #39587 /* ~안나는 얼굴을 찡그린다, 그러나 마침내 마음을 누그러뜨리고 한숨을 쉰다... "내가 어렸을 때 들은 이야기야."

"이 얼간이는 자정이 다된 늦은 밤에 집으로 돌아가다가 어둡고 인적도 없는 거리에서 이빨이라고는 하나도 남지 않은 늙은 할망구를 만났어. 노파가 물었지. '어디로 가는가?"
~ */
  IF ~~ THEN REPLY #39768 /* ~"안나, 계속하시오..."~ */ GOTO 198
  IF ~~ THEN REPLY #39769 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있네..."~ */ GOTO 4
  IF ~~ THEN REPLY #39770 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #39588 /* ~"'내 마누라가 기다리고 있는 집이오,' 그가 대답했어."

"'광재 부근의?' 그녀가 물었어."

"'그렇소,' 그가 대답했어."
~ */
  IF ~~ THEN REPLY #39771 /* ~"안나, 계속하시오..."~ */ GOTO 199
  IF ~~ THEN REPLY #39772 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #39773 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #39589 /* ~"그래서 그녀는 그에게 부탁을 했지... 죽은 자의 구덩이로 상자를 가져가서 거기 있는 여자에게 전해 달라고. 그런데 이 얼간이는 사람이 너무 좋아서 이 노파가 수상쩍다고 느끼면서도 싫다고 말도 못하고 하겠다고 동의했어. 그는 물었어. '하지만 그 여자의 이름은? 그녀는 어디 사오? 만약 죽은 자의 구덩이에 그녀가 없다면 어디로 가야 하오?'"~ */
  IF ~~ THEN REPLY #39774 /* ~"안나, 계속하시오..."~ */ GOTO 200
  IF ~~ THEN REPLY #39775 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있소..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39776 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #39590 /* ~"여자는 그에게 색깔 있는 천으로 싸인 나무 상자를 건네주었어, 그리고 가면 그녀가 반드시 있을 테니 그냥 가라고 했어. 그리고 마지막으로 그녀는 그에게 경고를 했어 '무슨 일이 있어도 상자를 열지 말게!'"~ */
  IF ~~ THEN REPLY #39777 /* ~"안나, 계속하시오..."~ */ GOTO 201
  IF ~~ THEN REPLY #39778 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있소..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39779 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #39591 /* ~"그는 집에 돌아와서 상자를 서까래에 숨겼어, 죽은 자의 구덩이에는 날이 밝으면 갈 생각을 하고 말이야. 하지만 그의 아내는 그가 상자를 감추는 것을 보고는 그것이 애인을 위한 선물일 거라고 착각하고는 질투를 했어, 그리고 그가 눈을 돌리자마자 상자를 열었지."~ */
  IF ~~ THEN REPLY #39780 /* ~"안나, 계속하시오..."~ */ GOTO 202
  IF ~~ THEN REPLY #39781 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있소..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39782 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY #39592 /* ~"그런데 열어보니 상자는 도려낸 눈알들과 아직도 털이 붙어 있는 남자의 성기들로 가득했어. 남편은 아내의 비명을 듣고는 달려왔어... 그는 노파가 한 말을 기억하고 겁이 나서 다시 상자를 잘 쌌어."~ */
  IF ~~ THEN REPLY #39783 /* ~"안나, 계속하시오..."~ */ GOTO 203
  IF ~~ THEN REPLY #39784 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있소..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39785 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #39593 /* ~"그는 즉시 죽은 자의 구덩이로 갔고, 아니나 다를까 그 곳에서는 또 다른 마귀할멈이 그를 기다리고 있었어. 그가 상자를 건네주자 노파는 말했어. '이 상자를 열어서 속을 들여다 보았군.'"~ */
  IF ~~ THEN REPLY #39786 /* ~"안나, 계속하시오..."~ */ GOTO 204
  IF ~~ THEN REPLY #39787 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있소..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39788 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #39594 /* ~"불쌍한 얼간이는 부인하려고 했지만 그녀는 무시무시한 표정을 짓고 그를 노려봤어. 그녀는 말했지, '자네는 끔찍한 짓을 했네!" 그리고 그녀는 사라졌어. 일이 끝났다고 생각하고 그는 서둘러 집으로 돌아갔어."~ */
  IF ~~ THEN REPLY #39789 /* ~"안나, 계속하시오..."~ */ GOTO 205
  IF ~~ THEN REPLY #39790 /* ~"기다리시오... 이브즈에게 물어볼 것이 하나 있소..."~ */ EXIT
  IF ~~ THEN REPLY #39791 /* ~"그 이야기는 다른 기회에 듣도록 합시다, 안나. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #39595 /* ~"그는 집에 돌아오자마자 아프기 시작했고, 이내 몸져누웠어. 그의 아내는 몹시 후회했으나 이미 때는 늦었어... 다음 날 그는 몸이 썩는 병에 걸렸고, 제일 먼저 썩어서 없어진 건 그의 눈과 성기였어."

안나는 고개를 단호하게 끄덕이며 이야기를 마친다.
~ */
  IF ~~ THEN EXTERN ~DYVES~ 64
END

IF ~~ THEN BEGIN 206 // from:
  SAY #41137 /* ~"쳇" 안나는 눈알을 부라리며 냉소한다. "얼간이."~ */
  IF ~~ THEN REPLY #41138 /* ~안나의 코멘트를 무시한다.~ */ EXTERN ~DKESAI~ 35
  IF ~~ THEN REPLY #41139 /* ~"그냥 그녀를 무시하시오, 케사이."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 207
  IF ~~ THEN REPLY #41140 /* ~"안나, 제발... 그건 사교적인 찬사일 뿐이오."~ */ GOTO 207
  IF ~~ THEN REPLY #41141 /* ~"불쾌해 하지 마시오, 안나... 당신도 그녀 만큼 아름다우니까."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 208
END

IF ~~ THEN BEGIN 207 // from: 206.1 206.2
  SAY #41142 /* ~안나는 당신을 싸늘한 눈초리로 쏘아본다, 그러나 아무런 말도 하지 않는다.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 208 // from: 206.3
  SAY #41143 /* ~"*그게* 무슨 지랄 같은 소리야, 이 백치야?! 내가 이 수다스러운 매춘부에게 *질투*를 한다고? 미친 놈!" 안나는 침을 뱉고 당신으로부터 고개를 돌린다. ~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 209 // from:
  SAY #43906 /* ~"흥!" 안나는 모트를 조소한다. "침 좀 그만 흘려, 이 곁눈질 하는 해골아."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 469
END

IF ~~ THEN BEGIN 210 // from:
  SAY #43907 /* ~"조금만 가까이 오면 네 이빨을 모조리 뽑아서 수십 미터 밖으로 다 던져 버리겠어!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 470
END

IF ~~ THEN BEGIN 211 // from:
  SAY #44246 /* ~"염병할..." 안나는 으르렁댄다. "거기 당신! 우린 더 이상 기다릴 수가 없어, 그러니까..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 18
END

IF ~~ THEN BEGIN 212 // from:
  SAY #44250 /* ~안나는 놀란 듯하다. "에?" 그녀의 표정은 놀라움에서 찡그림으로 이내 바뀐다. "무슨 *뜻*이야?"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 19
END

IF ~~ THEN BEGIN 213 // from:
  SAY #44252 /* ~안나는 당황해 한다. "아니. 아니, 난 센세이트가 아냐..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 21
END

IF ~~ THEN BEGIN 214 // from:
  SAY #44253 /* ~"싫어. 난 이 옷에 맘에 들어. 그리고 난 혈통 덕분에 추위나 더위는 걱정 안 해도 된다고. 그리고 티플링에 대한 얘기는 함부로 하지 말라고, 알겠어?~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 22
END

IF ~~ THEN BEGIN 215 // from:
  SAY #45721 /* ~"내게 파낼 내장이라도 있었다면 그렇게 했을 거야, 해골."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 486
END

IF ~~ THEN BEGIN 216 // from:
  SAY #46094 /* ~"'모가지를 따?!' 무슨 얼토당토 않은 헛소리야, 이 백치야? 그 말은 하모니움 석두들에게 잡힌다는 걸 돌려서 말하는 거야, 이 쥐뿔도 모르는 바보멍청아."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 1
END

IF ~~ THEN BEGIN 217 // from:
  SAY #46095 /* ~안나는 고개를 저으며 낄낄거린다. "덜거덕거린다고 해야 하는 거라고, 얼간아. 골통을 덜거덕거린다고. 니가 하는 꼴을 보니 니가 벌통에 마지막으로 간 게 언젠지 궁금하군..." 안나는 당신 쪽으로 돌아선다. "자, 가자고. 이 땅콩만한 XX를 지닌 깡패 지망생한테 시간을 낭비할 필요는 없어."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 3
END

IF WEIGHT #1 /* Triggers after states #: 227 even though they appear after this state */
~  Global("0110_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 218 // from:
  SAY #47311 /* ~"뭐야?" 당신은 가죽갑옷을 입은 아름다운 붉은 머리 소녀를 보려고 돌아선다... 당신은 그녀가 방 안에 들어오는 소리조차 듣지 못했다. 그녀의 오른팔은 서로 연결된 판들로 덮여 있는데, 그것들은 어떤 동물의 가죽으로 만든 것 같다. 또한 뿔이 달린 어깨받이가 그녀의 왼팔을 보호하고 있다. 기묘하게도 그녀에게는 꼬리가 달려 있으며... 그것은 앞뒤로 왔다갔다하고 있다.~ [ANA229B] */
  IF ~  Global("Know_Annah","GLOBAL",0)
~ THEN REPLY #47320 /* ~"그래, 당신이 내게 내 시체가 어디서 발견되었는지를 가르쳐 줄 사람이오?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #47321 /* ~"당신이 안나요? 난 시체안치소 밖에서 당신을 만났소, 그렇지 않소?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0 218.1
  SAY #47312 /* ~소녀는 당신을 무시하고 파로드 쪽으로 돌아선다. "그럼 대체 뭐야? 난 이 흉터투성이 개를 끌고 산책을 할 생각은 없어, 없다고. 당신 똘만이들 중 한 놈에게 시키라고."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 81
END

IF ~~ THEN BEGIN 220 // from:
  SAY #47313 /* ~"에? 대체 무슨 소리야?" 그는 눈을 가늘게 뜨고 당신을 본다. "그는 시체가 아니잖아."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 82
END

IF ~~ THEN BEGIN 221 // from:
  SAY #47314 /* ~"그래서?" 안나는 당신을 흘긋 보더니 어깨를 으쓱한다. "녀석은 적어도 내가 있는 동안에서는 시체 흉내를 안 내는 게 좋을 거야, 아니면 내가 놈을 죽여 더스티 품에 안겨 줄 테니."~ */
  IF ~~ THEN REPLY #47322 /* ~"당신은 날 그 곳에 버리기 전에 내가 아직 살아 있는지 확인했었어야 했소."~ */ GOTO 222
  IF ~~ THEN REPLY #47323 /* ~"그만 집어치우시오. 내 시체를 어디서 발견했소?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #47315 /* ~"오, 그래? 너야말로 그 골목의 차가운 자갈 바닥에서 죽은 시체처럼 눕지 않도록 조심했어야 했어!"~ */
  IF ~~ THEN REPLY #47324 /* ~"너 같이 역겨운 시체 도둑에게는 골목에서 빈사 상태로 쓰러져 있는 기분이 어떤 건지 좀 보여줘야 할 것 같군."~ */ GOTO 223
  IF ~~ THEN REPLY #47325 /* ~"그만 집어치우시오. 내 시체를 어디서 발견했소?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #47316 /* ~"난 당신이 조금도 무섭지 않아-" 그녀는 옆구리에서 한 쌍의 무시무시하게 생긴 펀치 대거를 뽑는다. "물러서지 않으면 이것들을 네 눈에 쑤셔 넣겠어!"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 224 // from:
  SAY #47317 /* ~"쳇..." 안나는 냉소하는 표정으로 파로드를 본 후 당신을 흘겨본다. "그럼 가자고. 그리고 가능한 한 빨리 움직이라고, 알겠어? 난 당신 같은 작자에게 낭비할 시간은 없어."~ */
  IF ~~ THEN REPLY #47326 /* ~"실은 난 아직 매장된 마을에 용건이 있소. 일단 여기서 볼일을 다 마친 후에 내가 죽은 장소로 갑시다."~ */ GOTO 225
  IF ~~ THEN REPLY #47327 /* ~"좋소. 그 곳으로 당장 갑시다."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
StartCutSceneMode()
StartCutSceneEx("0110cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #47318 /* ~"그래? 그럼 니 무덤은 직접 냄새를 맡아서 찾으라고, 얼간아! 난-"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 84
END

IF ~~ THEN BEGIN 226 // from:
  SAY #47319 /* ~안나는 바닥에다 침을 뱉는다. "둘 다 매독이나 걸려 죽어..."~ */
  IF ~~ THEN REPLY #47328 /* ~"내 생각도 그렇소. 갑시다."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Annah_AR0400_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 227 // from:
  SAY #47329 /* ~안나는 당신 앞에 있는 문을 가리킨다. "저 문을 통해야 원하는 곳에 갈 수 있어."~ */
  IF ~~ THEN REPLY #47330 /* ~"좋소, 출발합시다."~ */ DO ~SetGlobal("Annah_AR0400_Cut_Scene","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #47849 /* ~"그래...그건 굶주린 개들이 그린 미친 그림으로 얼룩져 있어. 그건 당신이 쳐다보기만 하면 보통 문에서 그림으로 변해버린다고."~ */
  IF ~~ THEN REPLY #47850 /* ~"그들은 어떻게 그런 걸 만들어 냈소?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #47851 /* ~안나는 어깨를 으쓱한다. "다원 우주에는 그것보다 더 기묘한 일들도 많아." 그녀는 갑자기 눈살을 찌푸린다. "당신이야말로 내가 분명히 죽은 걸 확인했는데 어떻게 저 세상으로부터 살아 돌아왔는지를 설명해 보시지."~ */
  IF ~~ THEN REPLY #47852 /* ~"그래, 이 문은... 쳐다보지 않고 열면 되는 거요?"~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #47853 /* ~안나는 눈을 흘긋 보더니 고개를 끄덕인다. "만약 소문이 사실이라면 그것이 문의 비밀이야."~ */
  IF ~~ THEN REPLY #47854 /* ~"그럼 좋소... 당신이 말하는 대로 하겠소. 당신은-"~ */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #47855 /* ~"기다려!" 안나는 문을 향해 손을 내밀려는 당신을 제지한다. "이 길은 내가 당신을 발견한 곳으로 가기 위한, 내가 아는 유일한 길이야, 하지만 가장 안전한 길은 아냐, 알아? 준비가 된 건 확실해? 그 늙은 절름발이가 뭐라고 했던 간에 난 네 베이비 시터 노릇을 할 생각은 없어."~ */
  IF ~~ THEN REPLY #47856 /* ~"이 문 너머에 있는 그 무엇이 그토록 위험하다는 거요?"~ */ GOTO 232
  IF ~~ THEN REPLY #47857 /* ~"날 위해 걱정할 필요는 없소. 내 뒤만 따라오도록 하시오. 이제 내가 문을 열겠소."~ */ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47858 /* ~"들어가기 전에 무기를 보충하고 휴식을 취하도록 합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #47859 /* ~카오스맨." 안나가 속삭인다. "정말 미친 놈들이지. 밤낮을 가리지 않고 미친 듯이 울부짖으며 눈에 보이는 건 모두 칼로 찌르던지 몽둥이로 골통을 부술 생각만 하지. 정말 위험한 작자들이야."~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47860 /* ~"걱정하지 마시오. 난 그들 당파의 일원이오."~ */ GOTO 233
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47861 /* ~"만약 그들이 그토록 위험하다면 당신은 어떻게 그 곳을 통과할 수가 있었소?"~ */ GOTO 234
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47862 /* ~"날 위해 걱정할 필요는 없소. 내 뒤만 따라오도록 하시오. 이제 내가 문을 열겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47863 /* ~"흠... 장비를 재정비한 후 다시 오도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #47864 /* ~"오, 그래 당신은 모든 카오스맨들이 서로 친할 거라고 생각해?" 그녀는 조소한다. "만약 그렇다면 당신은 정말 그들의 일원이 될 만큼 미쳤군."~ */
  IF ~~ THEN REPLY #47865 /* ~"만약 그들이 그토록 위험하다면 당신은 어떻게 그 곳을 통과할 수가 있었소?"~ */ GOTO 234
  IF ~~ THEN REPLY #47866 /* ~"날 위해 걱정할 필요는 없소. 내 뒤만 따라오도록 하시오. 이제 내가 문을 열겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47867 /* ~"흠... 장비를 재정비한 후 다시 오도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.1 233.0
  SAY #47868 /* ~"나는 몰래 숨어 들어갔지. 보이지 않으면 공격하거나 죽일 수가 없으니까." 그녀는 당신을 아래위로 훑어보고 눈살을 찌푸린다. "당신과 함께 또 한 번 그 일에 성공할 수 있을 것 같진 않군. 당신은 정말 굼떠 보이는 걸."~ */
  IF ~~ THEN REPLY #47869 /* ~"내 뒤만 따라오도록 하시오. 이제 내가 문을 열겠소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47870 /* ~"흠... 장비를 재정비한 후 다시 오도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from:
  SAY #50111 /* ~"에..." 안나는 묘한 표정으로 당신을 바라본다. "그는 다버스야."~ */
  IF ~~ THEN REPLY #50112 /* ~"'다버스'는 무엇이오?"~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #50113 /* ~안나는 목소리를 낮춘다. "다버스는 *그녀*의 권속들 중 하나야. 그들은 도시를 관리해. 고쳤다가 부셨다가 다시 짓곤 하지. 그들은 공중에 뜬 심벌들로 얘기를 해... 그들을 하는 말을 알아들으려면 그 심벌들을 맞추어야 하지." 안나는 짜증스러운 것 같다. "정말 두통거리라고. "~ */
  IF ~~ THEN REPLY #50114 /* ~"'그녀'의 권속? 누구 말이오?"~ */ GOTO 237
  IF ~~ THEN REPLY #50302 /* ~"알겠소."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #50115 /* ~"레이디 오브 페인." 안나는 손가락으로 공중에 반원을 그린다. "그들은 그녀를 위해 일하고 그녀는 그들을 보호해. 그들을 건드리지 마, 아니면 그녀의 주목을 받게 될 테니."~ */
  IF ~~ THEN REPLY #50116 /* ~"내게 레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 238
  IF ~~ THEN REPLY #50301 /* ~"알겠소."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #50117 /* ~"쉿!" 안나는 손가락으로 목을 베는 시늉을 한다. "그녀에 대해 함부로 얘기하지 마. *사방*에 그녀의 귀가 있다고, 그러니 함부로 그녀의 이름을 부르지 마, 알겠어?"~ */
  IF ~~ THEN REPLY #50118 /* ~"오."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50300 /* ~"좋소, 좋아."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 239 // from:
  SAY #50153 /* ~"그는 자신이 다버스들 중 하나라고 했어." 그녀는 어깨를 으쓱한다. "그들에게는 이름이 없어."~ */
  IF ~~ THEN REPLY #50154 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 240
  IF ~~ THEN REPLY #50235 /* ~"내가 알고 싶었던 건 그게 전부요. Sortons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 240 // from: 239.0 243.0 244.1 245.1 247.1 248.0 248.2
  SAY #50155 /* ~안나는 고개를 끄덕인다. 다버스는 팔을 소매 속에 넣은 채 당신들 두 사람을 계속 바라본다. ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50156 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50157 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50213 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50214 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50215 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50216 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50217 /* ~"그보고 우리에게 레이디 오브 페인에 대해 얘기해 달라고 부탁하시오." ~ */ GOTO 244
  IF ~~ THEN REPLY #50229 /* ~"그보고 우리에게 휄에 대해 얘기해 달라고 부탁하시오." ~ */ GOTO 247
  IF ~~ THEN REPLY #50234 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 241 // from:
  SAY #50161 /* ~"그는 자신이 다버스들 중 하나라고 했어." 그녀는 어깨를 으쓱한다. "그들에게는 이름이 없어."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 490
END

IF ~~ THEN BEGIN 242 // from:
  SAY #50163 /* ~"글쎄, 적어도 이 다버스는 이름을 얘기하지 않았어, 안 그래, 해골?!~ */
  IF ~~ THEN EXTERN ~DMORTE~ 491
END

IF ~~ THEN BEGIN 243 // from:
  SAY #50185 /* ~그녀는 어깨를 으쓱한다. "그는 자신이 직무를 하고 있다고 해. 알잖아 - 도시를 관리하는 일 말이야."~ */
  IF ~~ THEN REPLY #50186 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 240
  IF ~~ THEN REPLY #50187 /* ~"내가 알고 싶었던 건 그게 전부요. Sortons d'ici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 244 // from: 240.6
  SAY #50218 /* ~안나는 고개를 젓는다. "아니, 난 당신과 함께 레이디의 그림자 속으로 들어갈 생각은 없어. 여기서 얼쩡거리지 말자고. 그녀의 권속들과 얘기를 해봤자 그녀의 시선을 끈 것 외에는 얻을 것이 없어."~ */
  IF ~~ THEN REPLY #50219 /* ~"이보시오, 시키는 대로 레이디에 대해 물어보시오, 알겠소?~ */ GOTO 245
  IF ~~ THEN REPLY #50227 /* ~"좋소. 날 위해 그에게 하나만 더 물어볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50228 /* ~"그럼 관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 245 // from: 244.0 247.0
  SAY #50220 /* ~안나는 고개를 젓는다. "아니, 하지 않겠어."~ */
  IF ~~ THEN REPLY #50221 /* ~"이보시오, 시키는 대로 하시오. 이건 경고요."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 246
  IF ~~ THEN REPLY #50225 /* ~"좋소. 날 위해 그에게 하나만 더 물어볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50226 /* ~"그럼 관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #50222 /* ~안나는 팔짱을 낀다, 그리고 그녀의 꼬리는 앞뒤로 빠르게 움직이기 시작한다.~ */
  IF ~~ THEN REPLY #50223 /* ~"그럼 내가 시도하겠소..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50224 /* ~"그럼 관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 247 // from: 240.7
  SAY #50230 /* ~"아니, 난 휄의 옛 동족에게 그에 대해 묻지 않겠어. 그건 재수없는 일이고 그런 얘기를 해서 누구에게든 득이 될 건 없다고."~ */
  IF ~~ THEN REPLY #50231 /* ~"이보시오, 빌어먹을 질문을 하란 말이오, 알겠소?~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 245
  IF ~~ THEN REPLY #50232 /* ~"날 위해 그에게 한 가지만 더 물어볼 수 있겠소?"~ */ GOTO 240
  IF ~~ THEN REPLY #50233 /* ~"그럼 관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 248 // from:
  SAY #50275 /* ~그녀는 잠시 멈춘다. "그래... 할 수 있어."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50276 /* ~"그렇게 해주겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50277 /* ~"그렇게 해주겠소?"~ */ GOTO 249
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50281 /* ~"그럼 하시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50282 /* ~"그럼 하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 249
  IF ~~ THEN REPLY #50283 /* ~"관두시오. 그냥 떠납시다."~ */ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.3
  SAY #50278 /* ~안나는 고개를 젓는다. "아니, 난 당신과 함께 레이디의 그림자 속으로 들어갈 생각은 없어. 여기서 얼쩡거리지 말자고. 그녀의 권속들과 얘기를 해봤자 그녀의 시선을 끈 것 외에는 얻을 것이 없어."~ */
  IF ~~ THEN REPLY #50279 /* ~"알겠소."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50280 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 250 // from:
  SAY #50702 /* ~"완전히 돌아버린 거야, 이 얼간아? 만약 그게 썰렁한 농담이 아니었다면, 천계와 마계의 신들에게 맹세코 내가 널 영원히 끝장을 내주겠어!"~ */
  IF ~~ THEN REPLY #50703 /* ~"진심이오. 그녀를 사겠소, 브리스치카?"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
SetGlobal("Sell_Annah","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #50704 /* ~"물론 농담이었소. 다른 질문이 있소, 브리스치카."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50705 /* ~"당신이 옳소... 그건 정말 썰렁한 농담이었소, 안나. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #52530 /* ~안나는 아무런 응답도 하지 않는다. 래벌은 그 존재만으로도 그녀를 침묵시킨 듯하다. 그녀의 꼬리는 동작을 멈추었으며, 그녀의 눈 역시 예리함을 잃었다. ~ */
  IF ~~ THEN REPLY #52531 /* ~"그만 집어치우시오, 래벌. 또 뭘 물어보고 싶소?"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 252 // from:
  SAY #52533 /* ~래벌이 시선을 안나 쪽으로 돌리자, 그녀는 눈만 휘둥그렇게 뜨고 꼼짝도 하지 못한다. 당신은 그녀의 전신이 떨리고, 심장은 거칠게 뛰는 것을 느낄 수 있다. ~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 39
END

IF ~~ THEN BEGIN 253 // from:
  SAY #52534 /* ~"그래, 삶이 그를 삼켰을 지는 모르지만 그는 그 쪽에서 나온 게 아니라고, 그래 아냐..."~ */
  IF ~~ THEN REPLY #52535 /* ~그만 집어치우시오, 보시오, 래벌. 당신이 나로부터 죽음을 빼앗았고, 그 일은 득보다 해가 더 컸소. 나는 그것을 당장 돌려받고 싶소. 내 생각으론 당신이 그것을 너무 오랫동안 지니고 있었던 것 같소."~ */ EXTERN ~DRAVEL~ 126
END

IF ~~ THEN BEGIN 254 // from:
  SAY #52536 /* ~"당신은 그를 *사랑했어!*" 안나는 침묵을 깨트린다 - 그녀는 경악을 한 듯하다. 당신은 그를 *사랑했어,* 그래!"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 129
END

IF ~~ THEN BEGIN 255 // from:
  SAY #52537 /* ~래벌이 시선을 안나 쪽으로 돌리자, 그녀는 눈만 휘둥그렇게 뜨고 꼼짝도 하지 못한다. 당신은 그녀의 전신이 떨리고, 심장은 거칠게 뛰는 것을 느낄 수 있다. ~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 91
END

IF ~~ THEN BEGIN 256 // from:
  SAY #52639 /* ~"몰라." 안나는 믿을 수 없다는 표정으로 돌 얼굴을 쳐다본다, 그리고 그녀의 손은 대거들을 초조하게 만지작거리고 있다. "하지만 난 그걸 알아내기 전에 떠나자는 쪽이야, 어때?"~ */
  IF ~~ THEN REPLY #52773 /* ~"아직 아니오..."~ */ EXTERN ~DPREGAL~ 1
END

IF ~~ THEN BEGIN 257 // from:
  SAY #52640 /* ~"다버스 얘기를 하는 것 같아. 그들은 늘 뭔가를 고치고 수리하고 있으니까."~ */
  IF ~~ THEN REPLY #52772 /* ~"알겠소."~ */ EXTERN ~DPREGAL~ 9
END

IF ~~ THEN BEGIN 258 // from:
  SAY #52641 /* ~"어, '방해'가 되는 모양이야."~ */
  IF ~~ THEN REPLY #52768 /* ~"무슨 얘기를 하는 거요?"~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0
  SAY #52642 /* ~"그것은 임신을 한 것 같아."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #52769 /* ~"오!"~ */ EXTERN ~DPREGAL~ 10
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52770 /* ~"오!"~ */ EXTERN ~DMORTE~ 510
END

IF ~~ THEN BEGIN 260 // from:
  SAY #52988 /* ~안나는 공포에 질린 표정으로 당신을 쳐다본다. 그녀는 앞으로 나서서 당신을 돕고 싶어하나 몸이 움직여 주지 않는 것 같다. "당신... 괜찮아?" ~ */
  IF ~~ THEN REPLY #52989 /* ~"그래... 괜찮을 거요... 잠시 시간이 필요할 뿐이오...~ */ GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #52990 /* ~안나는 아무 말도 없이 뭔가에 홀린 표정으로 당신을 쳐다본다. 당신의 피는 바닥에 뚝뚝 떨어지고 있다, 그리고 눈물이 한 방울씩 떨어질 때마다 감각 체험실의 바닥에는 진홍색 원이 그려진다. "대체 뭘 본 거야... 그 악마의 돌에서 대체 뭘 본 거야?"~ */
  IF ~~ THEN REPLY #52991 /* ~"갈망..."~ */ GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #52992 /* ~안나는 혼란스러운 듯 얼굴을 찌푸린다, 그리고 감각석을 부셔버릴 생각을 하고 있는 듯 그것을 무섭게 노려본다. "그래? 난 당신을 그렇게 만든 저 돌을 부시는 걸 갈망하고 있어!"~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52993 /* ~"아니, 잠시 시간이 필요할 뿐이오, 안나. 난 괜찮을 거요..."~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52996 /* ~"아니, 잠시 시간이 필요할 뿐이오, 안나. 난 괜찮을 거요..."~ */ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 263 // from:
  SAY #53933 /* ~"아빠! 여기서 뭘 하고 있는 거야?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 7
END

IF ~~ THEN BEGIN 264 // from:
  SAY #53974 /* ~안나는 주먹을 꽉 쥐고 꼬리를 빳빳하게 세운 채, 눈을 가늘게 뜨고 기둥을 노려본다. 그녀의 떨리는 얼굴은 고뇌와 분노로 얼룩져 있다.~ */
  IF ~~ THEN REPLY #53975 /* ~"안나... 괜찮소?"~ */ GOTO 265
  IF ~~ THEN REPLY #53976 /* ~진실: "그를 도울 수 있었으면 좋겠소. 어떤 이라 할지라도 그런 일을 당하는 건 비극적인 일이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pillar_1","GLOBALGood",1)
~ GOTO 265
  IF ~~ THEN REPLY #53977 /* ~진실: "딱한 일이오, 안나. 하지만 결국은 자업자득이오. 너무 그 일 때문에 마음 아파하지는 마시오."~ */ GOTO 265
  IF ~~ THEN REPLY #53978 /* ~진실: "그 개자식이 저기 처박히게 되어 정말 기쁘군. 그리고 그가 당신 '아버지'든 아니든 간에 당신도 그렇게 생각하는 게 좋을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_1","GLOBALGood",-1)
~ GOTO 265
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53979 /* ~침묵을 지킨다.~ */ EXTERN ~DGRACE~ 171
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #53980 /* ~침묵을 지킨다.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1 264.2 264.3
  SAY #53982 /* ~안나는 침을 뱉고 썩은 머리들로부터 돌아선다. 그녀는 어깨를 으쓱하나, 당신을 쳐다보려고 하지는 않는다. "상관없어."~ */
  IF ~~ THEN REPLY #54056 /* ~"당신은 파로드를 사랑했소, 안나?"~ */ GOTO 266
  IF ~~ THEN REPLY #54057 /* ~침묵을 지킨다.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 266 // from: 265.0 268.0
  SAY #54040 /* ~안나는 이글거리는 눈을 하고 고개를 돌린다. "그는 내 *아빠*였어." 그녀는 이를 드러낸다. "나는 그를 *증오*했어. 그는 날 돈을 벌기 위한 수단으로밖에 생각하지 않았어. '사랑스런 안나,' '내 딸 안나, 넌 내 금고에서 가장 소중한 거란다,' 그는 거짓말을 하고 또 했어. 그리고 그는 심신 모두가 약했어. 그에게서는 시체가 썩는 냄새가 났고 인정머리라고는 시체를 쪼아먹는 콘도르만큼도 없었어."~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY #54047 /* ~안나의 목소리는 낮아진다, 하지만 그녀 눈 안의 불꽃은 한층 밝게 타오른다. "그렇지만 그는 내게 눈곱만큼의 친절이라도 베풀어 준 유일한 사람이었어. 그게 당신이 듣고 싶었던 거야? 이젠 속이 후련해?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 268 // from:
  SAY #54050 /* ~안나는 침을 뱉고 썩은 머리들로부터 돌아선다. 그녀는 어깨를 으쓱하나, 당신이나 그레이스를 쳐다보려고 하지는 않는다. "상관없어."~ */
  IF ~~ THEN REPLY #54058 /* ~"당신은 파로드를 사랑했소, 안나?"~ */ GOTO 266
  IF ~~ THEN REPLY #54059 /* ~침묵을 지킨다.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 269 // from:
  SAY #54051 /* ~"*거짓말*이란 뜻이겠지!" 안나는 쉿 소리를 낸다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 517
END

IF ~~ THEN BEGIN 270 // from:
  SAY #54052 /* ~"당신 뭐야, 백치야?! 저건 거짓말을 해서 불쌍한 얼간이들을 죽음으로 내몬 작자들의 골통들이라고. 그것은 거의 어떤 질문이라도 대답해줄 수 있지만, 그 대가로 염병할 정도로 많은 걸 요구한다고! 그것에게 그 따위 질문은 하지 마!"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 271 // from:
  SAY #54062 /* ~"그것이 날 가질 수 있다고, 그래?! 어림없어, 이 얼간아! 대체 무슨 생각으로 그런 헛소리를 지껄이는 거야?" 그녀는 갑자기 멈추고 당신을 흘겨본다. "레이디의 그림자에 걸고 묻겠는데, 진심은 아니겠지? 만약 진심이라면 내가 널 그것에게 직접 처먹이겠어..."~ */
  IF ~~ THEN REPLY #54063 /* ~진실: "진담이오. 거기로 들어가시오, 안나, 아니면 내가 직접 처넣을 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_4","GLOBALGood",-1)
SetGlobal("Pillar_Question","AR1001",0)
LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #54064 /* ~"진담이 아니었소. 기둥: 좋소, 다른 어떤 선물이라면 받겠소?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54065 /* ~"물론 농담이었소. 갑시다."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54066 /* ~"물론 농담이었소. 갑시다."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #54129 /* ~"나..." 안나는 전이문으로부터 냉기가 또 다시 엄습하자 몸을 떤다. "그래, 난 당신을 따라가겠어... 게다가 당신은 자기 머리도 잃어버릴 정도로 건망증이 심하잖아. 당신은 누군가 돌봐 줄 사람이 필요해. 그러니 내가 가야지."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54130 /* ~"그럴지도. 다콘? 나와 함께 가겠소?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54131 /* ~"그럴지도. 다콘? 나와 함께 가겠소?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54132 /* ~"그럴지도. 모트? 나와 함께 가겠나?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54133 /* ~"그럴지도. 모트? 나와 함께 가겠나?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54134 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54135 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54136 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from:
  SAY #54137 /* ~"나..." 안나는 훨-후럼-그레이스를 노려보더니 돌아서서 당신을 불타는 눈으로 바라본다. "그녀가 가면 나도 갈 거야, 여기까지 와서 당신에게 배신을 때릴 수는 없지."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54138 /* ~"알겠소. 다콘? 나와 함께 가겠소?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54139 /* ~"알겠소. 다콘? 나와 함께 가겠소?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54140 /* ~"알겠소. 모트? 나와 함께 가겠나?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54141 /* ~"알겠소. 모트? 나와 함께 가겠나?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54142 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54143 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54144 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from:
  SAY #56678 /* ~안나는 눈을 가늘게 뜬다. "네 그 먼 눈을 내게서 치우는 게 좋을 거야, 망령! 난 너 같은 것하고는 상대하기 싫어, 그러니 안 할 거라고!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 94
END

IF ~~ THEN BEGIN 275 // from:
  SAY #56679 /* ~베일로의 눈이 안나를 노려보자, 안나는 마치 불에라도 덴 듯 움찔한다. "아니, 유령, 그리고 넌 날 심문할 권한 따윈 없어, 없다고."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 95
END

IF ~~ THEN BEGIN 276 // from:
  SAY #56680 /* ~"그래?대체 무슨 놈의 정의지?! 네 정의는 내 정의가 아냐... 네 정의는 그 빈 갑옷만큼이나 공허하다고! 넌 스스로를 심판할 때는 들여대지 않을 정의의 잣대를 내세우고 있잖아!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 96
END

IF ~~ THEN BEGIN 277 // from:
  SAY #56681 /* ~"그래? 너희들 *머시킬러*는 단지 그러고 싶다는 이유 하나만으로 정의의 이름으로 내 친구들을 여럿이나 교수대로 보냈어! 베이터의 화염 속에서 타버리라고, 이 죽지도 살지도 않은 저주받은 괴물아, 그리고 신들이 네게 오줌을 갈기를 기도하겠어! 난 네 갑옷이 대 주조소 의 용광로 속으로 떨어져 철판 하나 남지 않았으면 좋겠어!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 97
END

IF ~~ THEN BEGIN 278 // from:
  SAY #56682 /* ~안나는 절박하다. "아니, 난 그런 적이 없어, 그러니 날 그냥 내버려 두라고, 젠장!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 98
END

IF ~~ THEN BEGIN 279 // from:
  SAY #57162 /* ~안나는 눈알을 부라리며 불쾌한 듯 *흥* 소리를 낸다.~ */
  IF ~~ THEN REPLY #57163 /* ~"안녕히 계시오."~ */ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 280 // from:
  SAY #57164 /* ~안나는 얼굴을 찡그린다. "쳇! 아예 그녀랑 거리에서 눕지 그래?"~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 281 // from:
  SAY #61416 /* ~당신이 여자를 따라가려고 하자 안나가 벌컥 화를 낸다. "무슨 생각이야, 이 얼간아!" 그녀는 펀치 대거를 뽑아 들고는 고급 창녀에게 달려든다. "꺼져, 이 뻔뻔한 매춘부야!"~ */
  IF ~~ THEN REPLY #61425 /* ~"와우! 진정하시오, 안나!"~ */ GOTO 282
  IF ~~ THEN REPLY #61427 /* ~"그 염병할 칼들을 당장 치우시오!"~ */ GOTO 282
  IF ~~ THEN REPLY #61428 /* ~무슨 일이 일어나는 지켜본다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 285
END

IF ~~ THEN BEGIN 282 // from: 281.0 281.1
  SAY #61417 /* ~그녀는 당신에게 달려든다. "그리고, 너 이 개자식 - 허튼 수작이나 부리고 다니면 내가 네 X을 잘라버릴 거야, 알겠어?"~ */
  IF ~~ THEN REPLY #61429 /* ~"내 거시기를 '자르겠다고'? 그 일에도 돈을 내야 하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61430 /* ~"그 여자를 위협하는 걸 멈추시오, 아니면 *당신* 꼬리를 잘라버릴 테니. 알겠소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61431 /* ~"나는 이 건에 대해 당신 의견을 물어본 적이 없는데, 안나."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61432 /* ~"좋소, 좋아... 진정하시오."~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.1 282.2 282.3
  SAY #61418 /* ~안나는 다소 진정한 것 같으나 그녀의 꼬리는 아직도 앞뒤로 빠르게 움직이고 있다. "온전하게 숨쉬고 싶으면 조심하는 게 좋을 거야.."~ */
  IF ~~ THEN REPLY #61433 /* ~"날 *협박하지* 마시오. 목숨이 하나밖에 없는 건 내가 아니라 당신이니까. 알겠소?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61434 /* ~"나는 이 건에 대해 당신 의견을 물어본 적이 없는데, 안나."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61435 /* ~"좋소, 좋아... 제발 진정하시오. 당신 몸에 흐르는 마족의 피가 끓어오르기 전에."~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 282.0 283.0 283.1 283.2
  SAY #61419 /* ~안나는 꼬리로 몸짓을 하는데... 무슨 욕인 것 같다.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 285 // from: 281.2
  SAY #61420 /* ~안나는 여자에게 다가간다; 창녀를 벨 것처럼 보인다.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 6
END

IF ~~ THEN BEGIN 286 // from:
  SAY #61421 /* ~안나는 머뭇거리면서 뭐라고 중얼거린다. "염병할 하모니움 석두들..." 그녀는 칼을 칼집에 넣고 팔짱을 낀 채, 당신과 고급 창녀를 악의에 찬 눈으로 쳐다보는 것으로 만족한다.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 287 // from:
  SAY #61664 /* ~"당신 일에나 신경 쓰라고, 서큐버스. 난 당신하고 할 말 없어."~ [ANA626A] */
  IF ~~ THEN EXTERN ~BGRACE~ 10
END

IF ~~ THEN BEGIN 288 // from:
  SAY #61665 /* ~"난 당신에게 할 말이 없어, 서큐버스."~ [ANA625A] */
  IF ~~ THEN EXTERN ~BGRACE~ 12
END

IF ~~ THEN BEGIN 289 // from:
  SAY #61762 /* ~"그래, 널 해칠 수도 있다는 얘기야."~ [ANA571B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #61763 /* ~"니가 입을 닥치면 나도 내 꼬리를 멈추지."~ [ANA569A] */
  IF ~~ THEN EXTERN ~BMORTE~ 2
END

IF ~~ THEN BEGIN 291 // from:
  SAY #61764 /* ~"그래... 네 골통 속으로 들어가 뇌를 파낼 정도로."~ [ANA572C] */
  IF ~~ THEN EXTERN ~BMORTE~ 4
END

IF ~~ THEN BEGIN 292 // from:
  SAY #61765 /* ~"악센트? 무슨 소리야?"~ [ANA614B] */
  IF ~~ THEN EXTERN ~BMORTE~ 6
END

IF ~~ THEN BEGIN 293 // from:
  SAY #61766 /* ~"그래, 네가 내 무릎에 앉으려고 하는 건 멋진 이야기가 되겠지, 짧긴 하지만"~ [ANA570C] */
  IF ~~ THEN EXTERN ~BMORTE~ 8
END

IF ~~ THEN BEGIN 294 // from:
  SAY #61767 /* ~"아니, 너에게만이야"~ [ANA573A] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from:
  SAY #61768 /* ~"다시 까불면, 해골, 내가 네 머리를 네 엉덩이에 처박아 버리겠어."~ [ANA611A] */
  IF ~~ THEN EXTERN ~BMORTE~ 11
END

IF ~~ THEN BEGIN 296 // from:
  SAY #61769 /* ~"이런 염병할, 해골, 넌 그렇게 재잘거리는 것이 지겹지도 않아?"~ [ANA619] */
  IF ~~ THEN EXTERN ~BMORTE~ 13
END

IF ~~ THEN BEGIN 297 // from:
  SAY #61770 /* ~"그래, 너도 늘 그렇게 주접만 떨지 않으면 좋은 해골일 텐데."~ [ANA610A] */
  IF ~~ THEN EXTERN ~BMORTE~ 15
END

IF ~~ THEN BEGIN 298 // from:
  SAY #61771 /* ~"주둥아리를 닥쳐, 해골! 그녀의 이름을 그렇게 함부로 부르지 마!"~ [ANA622B] */
  IF ~~ THEN EXTERN ~BMORTE~ 17
END

IF ~~ THEN BEGIN 299 // from:
  SAY #61772 /* ~"육시를 당하고 싶어?! 운명을 가지고 장난치지 말라고, 해골!"~ [ANA622CA] */
  IF ~~ THEN EXTERN ~BMORTE~ 18
END

IF ~~ THEN BEGIN 300 // from:
  SAY #61773 /* ~"오, 내가 너라면 골통을 닫는 법부터 배우겠어."~ [ANA616B] */
  IF ~~ THEN EXTERN ~BMORTE~ 20
END

IF ~~ THEN BEGIN 301 // from:
  SAY #61774 /* ~"내가 너라면 지금 당장 멈추겠어."~ [ANA617A] */
  IF ~~ THEN EXTERN ~BMORTE~ 22
END

IF ~~ THEN BEGIN 302 // from:
  SAY #61775 /* ~"알아, 해골? 넌 조만간 꼬챙이에 꽂혀 그 능글맞은 웃음을 웃게 될 거야, 하지만 일단 내가 널 손보고 나며 그것조차도 별게 아니었다고 생각하게 될 거야."~ [ANA607C] */
  IF ~~ THEN EXTERN ~BMORTE~ 23
END

IF ~~ THEN BEGIN 303 // from:
  SAY #61776 /* ~"너한테 어울리는군, 해골. 넌 정말 우리들을 짜증나게 하니까."~ [ANA624A] */
  IF ~~ THEN EXTERN ~BMORTE~ 25
END

IF ~~ THEN BEGIN 304 // from:
  SAY #61777 /* ~"많은 사람들이 혀를 잘못 놀라다가 코가 부러졌지, 해골."~ [ANA618A] */
  IF ~~ THEN EXTERN ~BMORTE~ 27
END

IF ~~ THEN BEGIN 305 // from:
  SAY #61778 /* ~"난 그에게 내 감정을 말하지 않아. 너도 입 함부로 놀리지 마. 그에게는 죽음의 낙인이 찍혀 있으며, 난 그가 그의 길을 바꾸게 할 생각은 없어. 알겠어, 해골 ?"~ [ANA621B] */
  IF ~~ THEN EXTERN ~BMORTE~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY #61779 /* ~"내 피부가 숨을 쉬게 해주지."~ [ANA620B] */
  IF ~~ THEN EXTERN ~BMORTE~ 31
END

IF ~~ THEN BEGIN 307 // from:
  SAY #61780 /* ~"가서 아오스칸 사냥개랑 그짓이라도 하지 그래!"~ [ANA588A] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #62891 /* ~"그녀는 마족, 그것도 서큐버스야. 그녀는 당신을 안팎으로 잘 살핀 후에 당신 영혼을 마계로 데려갈 거리고!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 213
END

IF ~~ THEN BEGIN 309 // from:
  SAY #63485 /* ~TBD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #63693 /* ~"아니, 그건 내 등을 굵기 위해서야, 이 꺼벙한 상자야!"~ [ANA565A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 23
END

IF ~~ THEN BEGIN 311 // from:
  SAY #63694 /* ~::한숨::~ [ANA565BC] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #63695 /* ~"대체 *그런* 꺼벙한 질문이 어디 있어, 이 바보상자야?!"~ [ANA566C] */
  IF ~~ THEN EXTERN ~BNORDOM~ 25
END

IF ~~ THEN BEGIN 313 // from:
  SAY #63696 /* ~"*뭐?!*"~ [ANA567E] */
  IF ~~ THEN EXTERN ~DMORTE~ 643
END

IF ~~ THEN BEGIN 314 // from:
  SAY #63859 /* ~"그를 그냥 내버려 둬! 넌 그를 몰라!"~ [ANA568C] */
  IF ~~ THEN EXTERN ~BVHAILOR~ 3
END

IF ~~ THEN BEGIN 315 // from:
  SAY #64221 /* ~::모트를 보며 얼굴을 찡그린다::~ */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 187.15 477.15
  SAY #67053 /* ~그 이름을 듣자 안나는 침을 세 번 뱉고 가슴 위에 반원을 그린다. "쉿! 당신 미쳤어? 만약 목숨이 아까우면 그녀 이름을 입에 담지 마!"~ */
  IF ~~ THEN REPLY #67055 /* ~"왜?"~ */ GOTO 317
  IF ~~ THEN REPLY #67054 /* ~"그럼 관두시오. 그 밖에도 다른 질문들이 있소.."~ */ GOTO 477
  IF ~~ THEN REPLY #67056 /* ~"그럼 그 질문에 대해서는 신경 쓰지 마시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #67057 /* ~"그녀는 회색 귀부인들 중에서도 가장 사악한 존재야." 안나는 누가 들을까 두려운 듯 거의 속삭이는 듯한 목소리로 말한다. "성질은 더럽고, 어지간한 신들보다도 큰 힘을 지녔다고. 사람들 말로는 그녀는 전체가 다 가시나무로 이루어졌다고 해, 심지어는 그녀의 *심장*도. 그녀는 절대로 죽일 수가 없어, 왜냐하면 그녀의 몸은 나무와 같거든. 가지를 잘라내도 다원 우주의 어딘가에서는 아직도 살아 있는 가지들이 있으니까."~ */
  IF ~~ THEN REPLY #67058 /* ~"당신은 그녀가 아직도 살아 있는 것처럼 말을 하는군."~ */ GOTO 318
  IF ~~ THEN REPLY #67059 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 477
  IF ~~ THEN REPLY #67060 /* ~"그럼 그 질문에 대해서는 신경 쓰지 마시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 317.0
  SAY #67061 /* ~"물론 그녀는 살아 있을 거야." 안나의 목소리가 다시 낮아진다. "어떻게 그런 괴물을 죽일 수가 있겠어? 레이디가 그녀를 죽이지 않고 미로에 감금한 것도 그 때문이라고 해."~ */
  IF ~~ THEN REPLY #67062 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67063 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 187.16 477.16
  SAY #67064 /* ~"그 해그의 일부? 아니, 난 그런 게 어디 있는지 몰라." 안나는 꼬리를 천천히 흔들면서 잠시 생각을 한다, 그리고 능글맞은 미소를 짓는다. "물론이지. 그녀는 아마 당신이 물어볼 수 있도록 온 다원 우주에 자기 종자를 뿌렸을 거라고."~ */
  IF ~~ THEN REPLY #67065 /* ~"'씨앗?' 그게 무슨 뜻이오?"~ */ JOURNAL #67068 /* ~안나는 래벌이 그녀의 씨앗을(하나 또는 여러 명의 딸들을) 다원 우주에 분산시켰다고 말했다. 만약 그들 중 하나를 찾을 수가 있다면... 그녀의 미로에 도달할 방법을 그들로부터 알아낼 수 있을지도 모른다. 하지만 어디서부터 찾기 시작해야 할지 모르겠다. ~ */ GOTO 320
  IF ~~ THEN REPLY #67066 /* ~"그럼 관두시오. 그 밖에도 다른 질문들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67067 /* ~"그럼 그 질문에 대해서는 신경 쓰지 마시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #67069 /* ~"자식 말이야. 어떤 사람들은 래벌에게 무수히 많은 딸들이 있다고 하고, 또 다른 사람들은 한 명뿐이라고도 하지 - 얘기하는 사람과 얘기할 때의 정신 상태에 따라 천차만별이지." 안나의 목소리가 다시 낮아진다. "전설에 의하면 래벌은 *마족*과 관계를 가져 딸들을 얻었다고 해."~ */
  IF ~~ THEN REPLY #67070 /* ~"당신은 그녀의 딸들 중 하나가 아직도 살아 있으리라고 생각하시오? 그녀의 딸들이라면 그녀가 있는 곳에 갈 수 있는 방법에 대해 아는 게 있을지도 모르오."~ */ GOTO 321
  IF ~~ THEN REPLY #67071 /* ~"흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67072 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #67073 /* ~안나는 어깨를 으쓱한다. "몰라. 그녀의 딸들이 성질이 지 어미의 만큼만 더러워도 난 만날 생각이 없어..."~ */
  IF ~~ THEN REPLY #67074 /* ~"그럼 관두시오. 그 밖에도 다른 질문들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67075 /* ~"그럼 그녀들 중 하나를 찾아보는 게 좋을 것 같소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 187.10 477.10
  SAY #67076 /* ~"에?" 그녀는 얼굴을 찌푸린다. "무슨 소리야?"~ */
  IF ~  Class(Protagonist,FIGHTER)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67077 /* ~"나는 당분간 무술을 포기하고 보다 은밀한 기술을 배우고 싶소."~ */ GOTO 325
  IF ~  Class(Protagonist,MAGE)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67078 /* ~"나는 당분간 마법을 접어두고 보다 은밀한 기술을 배우고 싶소."~ */ GOTO 325
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67079 /* ~"나는 당분간 무술을 포기하고 다시 도둑이 되고 싶소. 날 가르쳐 줄 수 있겠소."~ */ GOTO 323
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67080 /* ~"나는 당분간 마법을 접어두고 다시 도둑이 되고 싶소. 날 가르쳐 줄 수 있겠소."~ */ GOTO 323
  IF ~  Class(Protagonist,THIEF)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67081 /* ~"당신으로부터 도둑질과 은밀 행동에 대해 더 배우고 싶소."~ */ GOTO 348
  IF ~~ THEN REPLY #67082 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67083 /* ~"관두시오, 안나. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.2 322.3
  SAY #67085 /* ~그녀는 회의적인 표정이다, 그리고 눈알을 부라린다. "그래... 할 수 있어, 하지만 그러기 위해서는 입을 닥치고 내 말에 귀를 기울야야 해... 그리고 내 지시에 따라, 알겠어?" 그녀는 당신을 아래위로 쳐다본다. "제일 먼저 해야 하는 건 자세를 바꾸는 거야. 평소처럼 허리하고 거시기를 내밀고 다니는 식으론 안돼..."~ */
  IF ~~ THEN REPLY #67086 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0 344.0
  SAY #67087 /* ~안나는 당신의 역량을 시험한다. 잠시 후 그녀는 뒤로 한 걸음 물러나서 고개를 끄덕인다. 그녀는 감탄한 것 같다. "그래, 소질이 있어. 아주 빨리 배우는데."~ */
  IF ~~ THEN REPLY #67088 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67089 /* ~"고맙소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 322.0 322.1
  SAY #67090 /* ~그녀는 당신을 아래위로 한 번 훑어본 후 의아하다는 표정으로 당신을 쳐다본다. "진담이야?"~ */
  IF ~~ THEN REPLY #67091 /* ~"그렇소, 나는 도둑이 되는 법을 배우고 싶소. 날 가르칠 수 있겠소?"~ */ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #67092 /* ~그녀는 당신을 잠시 쳐다보더니 고개를 젓는다. "안 되겠어. 당신은 너무 느려. 마치 돌자루처럼 움직인다고." 그녀는 눈살을 찌푸린다. "내가 당신에게 뭐라도 가르치려면 그런 굼뜬 동작 가지고는 어려워."~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #67093 /* ~맹렬하게 덤벼들어 그녀의 팔을 잡는다.~ */ GOTO 327
  IF ~  CheckStatGT(Protagonist,13,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67094 /* ~맹렬하게 덤벼들어 그녀의 팔을 잡는다.~ */ GOTO 328
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67095 /* ~맹렬하게 덤벼들어 그녀의 팔을 잡는다.~ */ GOTO 330
  IF ~~ THEN REPLY #67096 /* ~"그럼 좋소. 달리 질문할 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67097 /* ~"그럼 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #67098 /* ~"쉿!" 당신이 덤벼들자 그녀는 쉿 소리를 내며 뒤로 피한다. "난 당신이 그렇게 나오라는 걸 일찌감치 알고 있었어. 당신은 너무 느려. 날 잡으려면 한참은 더 빨라야 할 거야." 그녀는 약간 긴장을 푼다. "그래도 당신 사지는 채찍처럼 빠른 데가 있군..."~ */
  IF ~~ THEN REPLY #67099 /* ~"그래 내게 가르쳐 줄 거요?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 328 // from: 326.1
  SAY #67100 /* ~"쉿!" 당신이 덤벼들자 그녀는 뒤로 피한다 - 하지만 충분히 빠르지 못한 탓에 당신 손은 그녀의 펀치 대거에 걸려 피를 흘린다. ~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #67101 /* ~안나는 당신 손에 묻은 피를 본다, 그리고 그 상처가 천천히 아무는 것을 지켜본다. 잠시 후 그녀는 침을 뱉는다. "자업자득이야, 얼간아. 당신 사지는 당신 자신이 미처 알기도 전에 당신이 어떻게 움직일 거라는 걸 내게 말해주고 있었어."  그녀는 약간 긴장을 푼다. "그래도 당신 사지는 채찍처럼 빠른 데가 있군...~ */
  IF ~~ THEN REPLY #67737 /* ~"그래 내게 가르쳐 줄 거요?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 330 // from: 326.2
  SAY #67102 /* ~당신은 채찍처럼 빠르게 손을 내민다, 그리고 안나가 미처 움직이기도 전에 그녀의 손목을 꽉 움켜 쥔다. 그녀는 즉시 쉿 소리를 내며 당신 손아귀에서 벗어나려고 안간힘을 쓴다. "이거 놔, 얼간아! 놓으라고, 아니면 네 몸에 새로운 구멍을 내 줄 테니까!" ~ */
  IF ~~ THEN REPLY #67103 /* ~그녀를 놓아준다.~ */ GOTO 331
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #67104 /* ~그녀는 뒤로 급히 물러선다. 그녀의 볼은 새빨개졌으며, 그녀는 숨을 거칠게 쉬고 있다. "내 몸에 손대지 마!" 그녀의 호흡이 안정을 되찾기 시작한다, 그리고 그녀는 눈살을 찌푸린다. "당신은 빨라, 정말 빠르다고. 당신이 방금 전에 한 것처럼 내 손목을 잡을 수 있는 자는 아무도 없었어... 당신 몸에는 뱀의 피라도 흐르는 모양이야."~ */
  IF ~~ THEN REPLY #67105 /* ~"그래 내게 가르쳐 줄 거요?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 332 // from: 327.0 329.0 331.0
  SAY #67106 /* ~그녀는 회의적인 표정이다, 그리고 눈알을 부라린다. "그래... 할 수 있어, 하지만 그러기 위해서는 입을 닥치고 내 말에 귀를 기울야야 해... 그리고 내 지시에 따라, 알겠어?"~ */
  IF ~~ THEN REPLY #67107 /* ~"좋소..."~ */ GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.0
  SAY #67108 /* ~"쉽게 잡히지 않으려면 몇 가지 알아야 할 것들이 있어... 다른 사람들이 당신을 보는 것을 원하지 않을 때 숨는 방법을 알아야 해."~ */
  IF ~~ THEN REPLY #67109 /* ~"좋소."~ */ GOTO 334
  IF ~~ THEN REPLY #67110 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #67111 /* ~"당신은 당신이 지금 어디 있는지를 알고, 얼마나 빨리 주변 환경과 동화될 수 있는지 알아야 해." 그녀는 한 마디씩 말할 때마다 강조를 하려는 듯 꼬리를 흔든다. " 방법만 터득하면 당신은 그림자나 마찬가지야."

주: 어두운 지역에서 숨으면 그림자 속에서 숨기가 성공할 확률이 더 커진다.~ */
  IF ~~ THEN REPLY #67112 /* ~"그래 어떻게 하면 그것을 할 수 있소?"~ */ JOURNAL #67734 /* ~나에 대한 도둑 교육의 일환으로 안나는 내게 그림자 속에 숨는 법을 가르쳐 주었다. 그것은 기본적으로 어느 환경에서도 가능하나, 내가 누구를 공격하거나 문이나 상자의 자물쇠를 열 때, 또는 소매치기를 할 때는 효과가 없다. ~ */ GOTO 335
  IF ~~ THEN REPLY #67113 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #67114 /* ~"하지만 더 중요한 건 어떻게 해서는 안 되느냐는 거야. 누가 당신을 보고 있거나, 당신이 누굴 공격하고 있거나, 자물쇠를 열고 있을 때는 숨을 수가 없어. 그러니까 판단을 잘 하라고."

주: 그림자 속에 숨으려면 퀵 메뉴의 특수 능력 버튼에서 은밀 행동 아이콘을 선택한다. 선택을 하면 일정 확률로 그림자 속에 숨을 수가 있다. 하지만 다른 캐릭터나 물체에 대해 행동을 취하면 그 효과는 취소된다. ~ */
  IF ~~ THEN REPLY #67115 /* ~"그래 그림자 속에 숨는 이유는 무엇이오?"~ */ JOURNAL #67735 /* ~안나는 내게 그림자 속에 숨기의 한 가지 장점을 알려주었다. 내가 그림자 속에서 나와 누군가를 기습하면, 내 공격은 훨씬 큰 대미지를 입힐 수가 있다. 그것은 '배후 공격'이라고 불리는 것 같다.  언젠가 기회를 보아 한번 시도해봐야겠다.~ */ GOTO 336
  IF ~~ THEN REPLY #67116 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #67117 /* ~"왜냐하면..." 안나는 강조를 하려고 꼬리를 비비꼰다. "그림자 속에서 나와 적의 배후로부터 공격하면 보통 때보다 더 많은 대미지를 입힐 수가 있어. 보이지 않는 상태의 장점들 중 하나지.

주: 그림자 속에서 기습 공격을 하면, 공격자의 레벨에 따라 평상시의 2~4 배의 대미지를 적에게 입힐 수가 있다.~ */
  IF ~~ THEN REPLY #67118 /* ~"아."~ */ GOTO 337
  IF ~~ THEN REPLY #67119 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #67120 /* ~"다음은 다른 사람의 호주머니에서 물건을 빼내는 거야. 간단한 일이긴 하지만 그림자와 하나가 되는 것처럼 목표물을 잘 골라야 해. 벌통 주민들로부터 동전 몇 푼 훔치는 건 간단하지만, 더 힘있고 똑똑한 사람들을 상대하는 일은 간단하지가 않아. 그리고 화가 나 있는 사람들은 털기가 어려워, 그들의 이목이 쉽게 당신에게 집중할 수가 있거든. ~ */
  IF ~~ THEN REPLY #67121 /* ~"쓸모가 있기에는 위험부담이 너무 큰 것 같소."~ */ GOTO 338
  IF ~~ THEN REPLY #67122 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 338 // from: 337.0
  SAY #67123 /* ~"글쎄..." 안나는 능글맞게 웃는다. "마을 사람들만 노려도 많은 수의 사람들을 털면 그것이 모여 적잖은 액수가 되지. 그리고 때로는 표적이 돈 이외의 물건을 지니고 있는 경우도 있는데, 그러면 정말 운이 좋은 거지." 그녀는 미소짓는다. "그리고 상인들의 경우에는 동작만 빠르다면 그들로부터 가게 물건을 직접 훔칠 수도 있어."

^NNOTE: <소매치기> 상점 화면에 있는 버튼을 이용해서 상점에서 물건을 훔칠 수 있다. ~ */
  IF ~~ THEN REPLY #67124 /* ~"만약 상인들이 계속 물건을 상자에 넣고 잠근다면 어떻게 하오?"~ */ GOTO 339
  IF ~~ THEN REPLY #67125 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #67126 /* ~"자, 이제는 열리지 않는 자물쇠를 따는 일이야. 때로는 어려운 일이지만 잠겨 있는 곳/것에 든 건 억지로라도 열 가치가 있거든..." 그녀는 눈살을 찌푸린다. "대부분의 경우에는."

^NNOTE: <PICKLOCKS>^-~ */
  IF ~~ THEN REPLY #67127 /* ~"좋소."~ */ GOTO 340
  IF ~~ THEN REPLY #67128 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #67129 /* ~"이제는 다음 단계로 넘어갈 차례야. 만약 누가 훔쳐 가는 것을 막으려고 상자나 문에 자물쇠를 채워 놓았다면, 그 주변에 함정 역시 설치해 놓았을 가능성도 높아. 칼날, 독가스, 주문 등 종류는 다양하지.~ */
  IF ~~ THEN REPLY #67130 /* ~"그래 어떻게 하면 이런 것들을 발견할 수 있소?"~ */ GOTO 341
  IF ~~ THEN REPLY #67131 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #67132 /* ~"그림자 속에 숨는 것과 마찬가지 주변 환경에 신경을 써야 해. 어떤 지역에 들어가면 뭔가 이상한 건 없는지 살펴보라고. 그래서 뭔가 이상한 게 있다고 생각되면 함정을 찾아보는 거야."

주: 함정을 찾으려면 퀵 메뉴의 특수 능력 버튼에서 함정 발견/제거 아이콘을 작동시킨다. 일단 작동이 되면 커서의 움직임에 따라 일정 확률로 함정을 발견하며, 발견된 경우에는 함정이 강조되어 표시된다. ~ */
  IF ~~ THEN REPLY #67133 /* ~"그래 어떻게 하면 이런 것들을 피할 수가 있소?"~ */ GOTO 342
  IF ~~ THEN REPLY #67134 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #67135 /* ~"어떻게 피하느냐고? 찾은 다음에는 제거를 해야지. 제거에 성공할 확률은 함정을 찾을 확률과 동일해..." 그녀는 어깨를 으쓱한다. "대부분의 경우 일단 함정을 찾았으면 제거하는 데도 성공할 가능성이 높아..."

^NNOTE: <함정해체> 해체에 실패할 경우 함정이 작동할 가능성도 있다.^-~ */
  IF ~~ THEN REPLY #67136 /* ~"그 밖에 다른 건?"~ */ GOTO 343
  IF ~~ THEN REPLY #67137 /* ~"기본은 이해할 것 같소, 안나."~ */ GOTO 344
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #67138 /* ~"더 이상 할말은 없어 - 나머지는 시행착오를 하면서 배우는 거야. 행운을 빌어..." 그녀는 짗궂은 미소를 짓는다. "하지만 내가 찍은 표적은 건드리지 말라고, 알겠어?"~ */
  IF ~~ THEN REPLY #67139 /* ~"좋소." ~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 333.1 334.1 335.1 336.1 337.1 338.1 339.1 340.1 341.1 342.1 343.0
  SAY #67140 /* ~ "그럼 좋아?" 그녀는 당신을 아래위로 쳐다본다. "그럼 땀 좀 흘려볼까." 그녀는 당신을 살피면서 눈살을 찌푸린다. "제일 먼저 해야 하는 건 자세를 바꾸는 거야. 평소처럼 허리하고 거시기를 내밀고 다니는 식으론 안돼..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67141 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 324
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #67142 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 345
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67143 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67144 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
END

IF ~~ THEN BEGIN 345 // from: 344.1
  SAY #67145 /* ~안나는 당신의 반사 신경과 균형 감각을 비롯한 각종 기량을 시험한다. 이는 당신의 정신을 자극하여 잊혀진 기억을 불러낸다, 그리고 당신의 몸은 이러한 기억을 따라 움직이기 시작한다. 안나는 당신의 실력에 놀란 듯하다, 하지만 그녀는 한층 속도를 올려 당신이 그녀의 페이스에 따라가기 어렵게 한다, 다 마친 후 고개를 끄덕인다. 그녀는 감탄한 것 같다. "그래, 소질이 있어. 아주 빨리 배우는데."~ */
  IF ~~ THEN REPLY #67146 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67147 /* ~"고맙소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 344.2 344.3
  SAY #67148 /* ~안나는 당신의 반사 신경과 균형 감각을 비롯한 각종 기량을 시험한다. 그녀기 시험을 할 때마다 당신 머릿속에서 그에 대응되는 기억이 되살아난다. 이러한 기억이 흘러 들어옴에 따라 당신은 그녀가 내는 모든 시험을 가볍게 해내고, 오히려 그녀에게 도전한다.~ */
  IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #67149 /* ~안나는 열성적으로 당신과의 기량 대결에 몰입한다. 그녀는 갖가지 속임수로 당신에게 도전하나, 당신은 그것들을 가볍게 간파하고 대응을 한다. 대결이 끝난 후 안나는 뒤로 물러선다, 그리고 당신을 새로운 시선으로 바라본다. "정말 전에 해본 적이 없는 것이 맞아? 당신은 정말 빨라, 당신이 내게서 배운 것보다 내가 당신에게서 배운 게 더 많은 것 같아." ~ */
  IF ~~ THEN REPLY #67305 /* ~"나는 당신이 내게 가르쳐 준 것들 중 일부를 전에 해본 적이 있는 것 같소. 어쨌든 그 밖에도 당신에게 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67306 /* ~"훈련을 시켜주어 고맙소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 322.4
  SAY #67308 /* ~"그래... 그럴 수 있어. 어떤 것 말야?~ */
  IF ~  Global("Annah_Stealth","GLOBAL",0)
~ THEN REPLY #67309 /* ~"나는 당신으로부터 은밀 행동에 대해 더 배우고 싶소."~ */ GOTO 349
  IF ~  Global("Annah_Open_Locks","GLOBAL",0)
~ THEN REPLY #67310 /* ~"뭐든지 괜찮으니 자물쇠 따기에 대해 내게 가르쳐 주었으면 고맙겠소."~ */ GOTO 351
  IF ~  Global("Annah_Traps","GLOBAL",0)
~ THEN REPLY #67311 /* ~"내게 함정을 제거하거나 해제하는 방법에 대해 가르쳐 줄 수 있겠소?"~ */ GOTO 353
  IF ~  Global("Annah_Pick_Pockets","GLOBAL",0)
~ THEN REPLY #67312 /* ~"내게 다른 사람의 주머니를 터는 일에 대해 조언해 줄 수 있겠소?"~ */ GOTO 355
  IF ~~ THEN REPLY #67313 /* ~"실은 내게도 당신에게 가르쳐 줄 수 있는 것들이 있다고 생각하오."~ */ GOTO 363
  IF ~~ THEN REPLY #67314 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67315 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #67316 /* ~그녀는 고개를 끄덕인다. "보이지 않게 숨는 것에서 중요한 건 지금 어디 있는지를 알고, 얼마나 빨리 주변 환경과 동화될 수 있는지 아는 거야. 내가 터득한 방법들 중 하나는, 남들이 잘 쳐다보지 않는 천장 같은 곳에 숨는 거지, 아니면 남들이 수색을 하고 있는 도중에 숨은 장소를 바꾸든지..." 그녀는 짓궂게 웃는다. "전에 하모니움 부대로부터 숨었던 적이 있었지... 그 때 내가 했던 건..." ~ */
  IF ~~ THEN REPLY #67317 /* ~"그래서...?~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Stealth","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,STEALTH,RAISE,3)
~ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #67318 /* ~"...그래서 석두 녀석은 바지도 없는 채 시궁창에 머리를 처박게 되었지. 그의 동료 세 놈은 할머니 방에 갇혔고, 그녀의 비명이 하늘에 울려 퍼졌지." 안나는 숨을 들이쉰다. "당신도 비슷한 방법을 써보라고ㅡ 위기 시에 도움이 될 테니."~ */
  IF ~~ THEN REPLY #67319 /* ~"그래 어디 봅시다: 자신이 잘 아는 곳으로 후퇴하라, 그리고 가능하다면 적의 주의를 끌만한 다른 것들이 있는 곳으로 - 만약 없다면 만들어라." ~ */ GOTO 362
END

IF ~~ THEN BEGIN 351 // from: 348.1
  SAY #67320 /* ~"자물쇠 따기라 -- 뭘 해서는 안 되는지는 가르쳐 줄 수 있지. 우선 늘 윤활유나 그 비슷한 가지고 다녀. 뻑뻑한 자물쇠를 딸 때는 따개에 바르고 하라고. 또 한가지 -이건 다름 아닌 파로드에게 들은 건데, 시길의 대부분의 자물쇠는 고대의 어떤 자물쇠 장인 한 사람이 만든 디자인에 그 바탕을 두고 있다는 거야, 따라서 그런 자물쇠들은 모두 공통점이 --"~ */
  IF ~~ THEN REPLY #67321 /* ~"계속하시오..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Open_Locks","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,3)
~ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #67322 /* ~"...그래서 시간은 자정이 다 되었고, 나는 그들이 날 찾아 다락을 뒤질 거라는 걸 알고 있었어. 하지만 다락 자물쇠는 시길제였기 때문에, 나는 그들이 열 수 없도록 망가트릴 수가 있었지, 그리고 덕분에 번 시간에 나는 돈을 가지고 지붕 위로 무사히 도망칠 수가 있었어."~ */
  IF ~~ THEN REPLY #67323 /* ~"그래 그 회전판식 '타입'은 많은 자물쇠들의 원형인 셈이군... 만약 비슷한 종류의 자물쇠를 따게 되는 일이 생기면 도움이 될 것 같소."~ */ GOTO 362
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY #67324 /* ~"그건 조언을 해주기가 한층 수월해. 가장 중요한 건 어떤 함정이든지 설치한 사람은 반드시 존재하고, 일단 설치한 후에 그는 그것에 대해 알고 있다는 사실이지, 그러니 귀중품을 보관한 곳 근처에서는 표시나 흔적을 주의 깊게 살펴보라고. 한 번은 내가 사무구의 그랜드 디멘스에 들어갔을 때의 일인데..."~ */
  IF ~~ THEN REPLY #67325 /* ~"그래서..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Traps","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,TRAPS,RAISE,3)
~ GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #67326 /* ~"...캐비닛 근처의 양탄자만 새롭다는 사실을 발견하고는 내 대거로 쑤셔 보았지. 아니나 다를까 그 밑의 돌에 산에 탄 자국이 있는 게 아니겠어? 그래서 나는 산이 쏟아져 나오는 함정을 교묘히 피하면서 캐비닛을 열고 돈을 꺼낼 수 있었지."~ */
  IF ~~ THEN REPLY #67327 /* ~"그래서 함정을 찾아서 해제하려 할 때는. 단순히 함정이 설치되었는지만 살피지 말고, 일단 함정이 설치된 후에 사람들이 그것을 회피하려고 어떤 방법을 사용했는지도 살펴야 하오."~ */ GOTO 362
END

IF ~~ THEN BEGIN 355 // from: 348.3
  SAY #67328 /* ~"남의 주머니를 터는 건 생각만큼 어렵지 않아..." 안나는 어깨를 으쓱한다. "표적이 자신의 지갑이 가벼워지는 걸 느끼지 못하도록 빠르고 부드럽게 하면 돼. 만약 실패를 거듭하고 있다면, 그건 당신이 하는 방식의 문제지 ." 그녀는 고개를 끄덕인다. "내 앞에서 한 번 해봐."~ */
  IF ~~ THEN REPLY #67329 /* ~"당신이 보고 있는데 그냥 무작위로 다른 사람의 주머니를 털고 싶지는 않소. 다른 때 하는 것이 좋을 것 같소."~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #67330 /* ~"아니, 내게서 돈을 훔쳐 봐. 내가 당신에게 뭐가 잘못 되었는지 말해 줄게,"~ */
  IF ~~ THEN REPLY #67331 /* ~"좋소... 어디에 그것을 보관하고 있소?"~ */ GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.0
  SAY #67332 /* ~"진정한 도둑이 되려면 그걸 깨달아야 하는 거야."~ */
  IF ~~ THEN REPLY #67333 /* ~"좋소... 어디 당신으로부터 그것을 소매치기해 봅시다."~ */ DO ~SetGlobal("Annah_Pick_Pockets","GLOBAL",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 358
END

IF ~~ THEN BEGIN 358 // from: 357.0
  SAY #67334 /* ~당신이 다가가자마자 안나가 손을 든다. "좋아, 그만. 당신은 이미 망쳤어."~ */
  IF ~~ THEN REPLY #67335 /* ~"뭐?"~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY #67336 /* ~"다가가는 방법에 신경을 쓰라고. 토콜라처럼 근육을 내밀면서 가면 안돼, 특히 당신처럼 생긴 사람의 경우에는 더욱 그래." 안나는 갑자기 두 손을 엉덩이에 얹고, 당신에게는 무관심하다는 듯 시선을 돌린다. "표적이 당신에게 아무런 존재도 아닌 것처럼 행동해야 해. 그가 뭘 가졌는지 아무런 관심이 없는 것처럼 말이야."~ */
  IF ~~ THEN REPLY #67337 /* ~"알겠소. 그래 난 관심이 전혀 없는 것처럼 행동해야 하오. 그 다음엔 뭐요?"~ */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #67338 /* ~"그 다음에는 적시를 기다렸다가 실행에 옮기는 거야. 나는 대개 다른 사람을 스치고 지나갈 때 소매치기를 하지. 당신의 경우에는 스치고 지나간 직후에 하는 것이 좋아. 왜냐하면 당신이 무서워서 뒤돌아보지 못할 테니까. 그리고 한 가지 더 주의해야 할 점은...~ */
  IF ~~ THEN REPLY #67339 /* ~"그래서... ?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,1000)
~ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0
  SAY #67340 /* ~"...너무 위협적으로 보이지 않도록 옷을 차려 입으라는 거야, 그래야지 표적이 방심을 할 테니까."~ */
  IF ~~ THEN REPLY #67341 /* ~"좋소. 그래 위협적으로 보이지 않도록 행동하고 대상에게 아무런 관심도 없는 것처럼 긴장을 푼 다음, 그가 당신으로부터 시선을 돌리면 그 때 행동을 취하란 말이오?"~ */ GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 350.0 352.0 354.0 361.0
  SAY #67342 /* ~그녀는 고개를 끄덕인다. "그래, 그게 비밀이야."~ */
  IF ~~ THEN REPLY #67343 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67344 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 348.4
  SAY #67345 /* ~"뭐? 진담이야?*" 그녀는 한쪽 눈썹을 치켜 올린다. "당신이 날 가르치겠다고?"~ */
  IF ~  Global("PC_Annah_Stealth","GLOBAL",0)
CheckStatGT(Protagonist,49,STEALTH)
~ THEN REPLY #67346 /* ~"더 은밀하게 행동하는 데 대해 내가 당신에게 해줄 조언이 있소."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",1)
~ GOTO 364
  IF ~  Global("PC_Annah_Open_Locks","GLOBAL",0)
CheckStatGT(Protagonist,49,LOCKPICKING)
~ THEN REPLY #67347 /* ~"당신과 공유하고 싶은 자물쇠 따는 기술들이 있소."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",2)
~ GOTO 364
  IF ~  Global("PC_Annah_Pick_Pockets","GLOBAL",0)
CheckStatGT(Protagonist,49,PICKPOCKET)
~ THEN REPLY #67348 /* ~"그렇소, 소매치기에 대해 내가 당신에게 가르쳐 줄 수 있는 것들이 있소."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",3)
~ GOTO 364
  IF ~  Global("PC_Annah_Traps","GLOBAL",0)
CheckStatGT(Protagonist,49,TRAPS)
~ THEN REPLY #67349 /* ~"그렇소, 함정을 발견하고 제거하는 노하우를 좀 배웠는데 그것을 당신에게 전수하고 싶소."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",4)
~ GOTO 364
  IF ~~ THEN REPLY #67350 /* ~"관두시오. 지금은 당신에게 가르칠 것이 아무 것도 없는 것 같소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67351 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 364 // from: 363.0 363.1 363.2 363.3
  SAY #67352 /* ~"그래?" 그녀는 능글맞게 웃는다. "어떻게 말이야 ?"~ */
  IF ~  Global("Annah_Training","GLOBAL",1)
~ THEN REPLY #67353 /* ~"당신 꼬리는 당신이 생각하는 것보다 훨씬 더 당신을 노출시키고 있소. 내가 관찰한 바로는 당신은 누가 당신을 보고 있거나 안절부절 못할 때 지신도 모르게 꼬리를 움직이오. 그것은 누군가가 그림자 속에서 당신을 찾으려 할 때 당신을 노출시키기에 충분하오. 그리고 또 한 가지..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Stealth ","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",STEALTH,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",2)
~ THEN REPLY #67354 /* ~"당신은 자물쇠를 딸 때 엉뚱한 따개를 사용하고 있소. 당신이 사용해야 할 연장은: 끝이 Y모양의 따개, 그리고..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Open_Locks","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",LOCKPICKING,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",3)
~ THEN REPLY #67355 /* ~"다른 사람의 주머니를 털려고 할 때는 스스로의 신체를 보다 효율적으로 이용하시오. 당신이라면 어렵지 않게 대상의 관심을 그의 소유물로부터 돌릴 수가 있을 것이오. 그리고..."~ */ DO ~SetGlobal("PC_Annah_Pick_Pockets","GLOBAL",1)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 365
  IF ~  Global("Annah_Training","GLOBAL",4)
~ THEN REPLY #67356 /* ~"함정을 *눈*으로만 찾으려고 하지 마시오. 함정을 발견하기 위해서는 다른 감각도 모두 활용하시오. 공기 중의 황 냄새, 온도의 변화..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Traps","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",TRAPS,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
END

IF ~~ THEN BEGIN 365 // from: 364.2
  SAY #67357 /* ~"에?" 안나는 눈을 가늘게 뜬다. "나보고 창녀 노릇을 하라고?"~ */
  IF ~~ THEN REPLY #67358 /* ~"그럼 대체 왜 그런 옷을 입고 있는 거요? 난 그것이 그 옷을 입은 목적이라고 생각했었소."~ */ GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #67359 /* ~안나는 내려다본 후 다시 고개를 든다. "난 뜨거워지기 쉬운 성격이거든. 혈통인 것 같아. 이 조끼는 내가 숨을 쉴 수 있게 해주지."~ */
  IF ~~ THEN REPLY #67360 /* ~"만약 조금만 더 노출도를 높인다면 당신 목표물은 당신이 자기 주머니를 털든 말든 신경도 쓰지 않을 거요. 자, 내 손을 보시오 - 지갑의 끈을 자를 때는..."~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #67361 /* ~당신이 손을 내밀어 안나에게 지갑 끈을 자르는 법을 보여주려고 하자, 안나의 몸이 굳는다.~ */
  IF ~~ THEN REPLY #67362 /* ~"이제는 뭐요?"~ */ GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #67363 /* ~"어쩔 수가 없어 - 당신 탓이야!" 안나는 눈을 꽉 감는다. "당신은 조끼에 대해 아무 말도 하지  말았어야 했어, 이제 난 그것 말고는 아무 것도 생각할 수가 없어!"~ */
  IF ~~ THEN REPLY #67364 /* ~"내 눈을 보시오 -- 이제 마음을 가라앉히시오."~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #67365 /* ~안나의 시선이 당신과 마주친다, 그리고 당신은 그녀의 몸이 아직도 경직되어 있다는 것을 눈치챈다 - 그리고 그녀는 입술을 깨물고 있다.~ */
  IF ~~ THEN REPLY #67366 /* ~"자, 내가 재빨리 시범을 보여줄 테니 그걸로 끝내도록 합시다. ~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #67367 /* ~당신이 그녀에게로 다가가자, 안나는 자신의 몸을 당신에게 갖다 대고는 팔로 당신 몸을 감싼다. 그녀는 잠시 당신을 부드럽게 포옹하고 있다가 꼭 껴안는다, 그리고 당신의 목 냄새를 약간 맡고는 당신 광대뼈 있는 곳까지 따라 올라가면서 냄새를 맡는다. "나는 당신 냄새가 좋아." 그녀는 자신의 볼을 당신 볼에다 비빈다 - 그리고 놀랍게도 당신은 그녀의 피부는 얼마나 매끈한지를 느낄 수가 있다. "당신 피부는 가죽 같아."~ */
  IF ~~ THEN REPLY #67368 /* ~당신 지갑을 살펴본다. ~ */ GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #67369 /* ~당신은 손을 내밀어 안나의 꼬리를 잡는다, 그리고 그것을 당신의 배낭으로부터 천천히 푼다. 안나는 뒤로 물러서더니 싱긋 웃는다. "그게 당신이 말한 뜻이었어? 그런 식으로 지갑을 훔치라고?" 그녀의 얼굴은 약간 불그스레하다, 그리고 당신은 그녀의 심장이 거칠게 뛰고 있다는 사실을 눈치챈다. "너무 쉬워."~ */
  IF ~~ THEN REPLY #67370 /* ~"그렇소... 당신은 감을 잡은 것 같소. 자, 물어볼 것들이 좀 있소..."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ GOTO 477
  IF ~~ THEN REPLY #67371 /* ~"그렇소... 갑시다."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 364.0 364.1 364.3
  SAY #67372 /* ~당신의 강의가 끝나자, 안나는 조용히 고개를 끄덕인다. "그래, 난 그런 것들에 대해 생각해보지 못했어." 그녀는 눈살을 찌푸린다. "하지만 그런 것쯤 나도 언젠가는 나도 스스로 깨달았을 거라고, 그러니 자기가 무슨 시 공회당 강사나 되는 것처럼 까불지 마, 알겠어?"~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN REPLY #67373 /* ~"그냥 도우려 헀을 뿐이오."~ */ GOTO 373
  IF ~~ THEN REPLY #67374 /* ~"거 참 썰렁한 감사의 표시군. 어쨌든 당신에게 물어볼 것이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67375 /* ~"천만에. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 373 // from: 372.0
  SAY #67376 /* ~"당신은 날 바보처럼 보이게 만들려는 것 같아, 그렇다고."~ */
  IF ~~ THEN REPLY #67377 /* ~"대체 무슨 얘기를 하는 거요?"~ */ GOTO 374
  IF ~~ THEN REPLY #67378 /* ~"거 참 썰렁한 감사의 표시군. 어쨌든 당신에게 물어볼 것이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67379 /* ~"천만에. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #67380 /* ~"당신은 파로드의 궁정으로 활보하며 들어왔지, 그리고 그는 당신한테 온갖 경의를 다 표하며 구두를 핥는 시늉까지 했어, 그리고 그는 내게 당신과 함께 가라고 명령까지 했어, 전에는 그런 식으로 명령한 적이 한 번도 없었는데. 이제 당신은 자기가 나에 대해 더 아는 것처럼 거만까지 떨고 있어... 대체 누가 당신에게 그런 권한을 주었어? 당신은 자신이 대체 뭐라고 생각하는 거야? ~ */
  IF ~~ THEN REPLY #67381 /* ~"나는 당신을 도우려고 할 뿐이오, 안나."~ */ GOTO 375
  IF ~~ THEN REPLY #67382 /* ~"거 참 썰렁한 감사의 표시군. 어쨌든 당신에게 물어볼 것이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67383 /* ~"천만에. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #67384 /* ~"그래? 당신은 자신이 내가 소매치기를 하거나 자물쇠를 딸 때마다 뒤에서 고개를 저으면서 '저런 병신같은 년, 일 하나도 제대로 할 줄 모르는군' 하면서 날 조소하지 않을 거라고 단언할 수 있어? 그런 짓을 하면서 우월감이라도 느끼는 거야?"~ */
  IF ~~ THEN REPLY #67385 /* ~"안나, 내가 그런 것들을 당신에게 보여준 것은 당신이 보다 *나아지길* 바랐기 때문이지 당신 앞에서 뽐내고자 했던 것은 아니오. 나는 당신이 서투르거나 어리석다고는 *결코* 생각하지 않소. ~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse","GLOBAL",1)
~ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #67386 /* ~안나는 눈살을 찌푸린다, 그리고 그녀의 꼬리는 앞뒤로 빠르게 움직이고 있다. "그래, 조심해. 난 동정 받는 것 따윈 견딜 수 없으니까."~ */
  IF ~~ THEN REPLY #67387 /* ~"됐소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67388 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 377 // from: 187.0 477.0
  SAY #67389 /* ~"내가 당신 시체를 찾은 곳은 벌통의 빨간 불 지역 북쪽 거리에 있는 그려진 문 너머에 있어. 그 문은 불타는 시체 바의 북동쪽에 있어. 그 문을 지나가면 내가 당신 시체를 찾은 골목이 있어. 이상한 곳이라 대부분의 사람들은 얼씬도 하지 않아.~ */
  IF ~~ THEN REPLY #67390 /* ~"이상한 곳? 어떻게 말이오?"~ */ GOTO 380
  IF ~~ THEN REPLY #67391 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67392 /* ~"그럼 좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 378 // from: 187.1 477.1
  SAY #67393 /* ~"굶주린 개들의 아파트를 지나면 괴상한 골목이 있어 - 거기가 바로 우리가 가야할 곳이야. 아파트 뒤쪽에 그 곳으로 통하는 문이 있어."~ */
  IF ~~ THEN REPLY #67394 /* ~"이상한 골목? 그건 무슨 뜻이오?"~ */ GOTO 380
  IF ~~ THEN REPLY #67395 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67396 /* ~"그럼 좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 379 // from: 187.2 477.2
  SAY #67397 /* ~"내가 당신을 발견한 곳은 이상한 골목에서 남동쪽으로 가서, 낡은 문을 지난 후, 몇 계단 내려간 곳이야."~ */
  IF ~~ THEN REPLY #67398 /* ~"이상한 골목? 그건 무슨 뜻이오?"~ */ GOTO 380
  IF ~~ THEN REPLY #67399 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67400 /* ~"그럼 좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 380 // from: 377.0 378.0 379.0
  SAY #67401 /* ~"용기가 부족한 얼간이들은 그 곳을 귀신이 나오는 곳이라고 하지." 안나는 침을 뱉고는 가슴 위에 반원을 그린다. "헛소리야. 골목을 지나가는 바람 때문에 기묘한 탄식 소리가 들릴 때도 있지만, 그렇다고 해서 유령이나 망령 따위가 나오는 건 아냐." ~ */
  IF ~~ THEN REPLY #67402 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67403 /* ~"그럼 좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 187.3 477.3
  SAY #67404 /* ~"그래, 뭐?"~ */
  IF ~~ THEN REPLY #67405 /* ~"임신한 골목까지 가서 시체를 찾은 것은 무엇 때문이었소? 내 말은 그 곳에 가기 위해서는 깡패들의 아파트를 몰래 빠져나가야 하며 그 다음에는 다버스의 눈도 피해야만 하오. 그리고 그 곳은 벌통처럼 시체들이 많은 곳도 아니오. 그런데도 왜 애초에 그 곳에 가서 시체를 찾을 생각은 하게 되었소?"~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #67406 /* ~안나는 어깨를 으쓱한다. "벌통의 다른 지역에는 남은 시체라곤 없어. 시체를 찾을 새 장소들을 개척해야 한다고."~ */
  IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #67407 /* ~안나가 말을 하자 당신은 후두부에 뭔가가 기어다니고 있는 듯한 감각을 느낀다, 그리고 갑자기 당신은 그녀가 거짓말을 하고 있다는 사실을 깨닫는다. ~ */
  IF ~~ THEN REPLY #67408 /* ~"틀림없소, 안나?"~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #67409 /* ~안나의 꼬리는 동작을 잠시 멈춘 후 전보다 느린 속도로 다시 움직이는 걸 볼 때, 당신의 어조에 뭔가가 있는 게 틀림없다. "그래..." 그녀는 눈살을 찌푸린다, 그리고 별로 자신이 없어 보인다. "보통 난 그 곳에 시체를 수집하려고 가지 않아... 생각해보니 그 전에는 거기 간 적도 없어. 그냥 우연히 거기 들렸던 거야."~ */
  IF ~~ THEN REPLY #67410 /* ~"그래 왜 그 곳에 갔소?"~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #67411 /* ~"나... 몰라! 난 그냥 그랬다고 - 당신에겐 행운이었지. 아니면 아직도 거기 있었을 테니까!"~ */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #67412 /* ~전과 같은 꿈틀거리는 감각이 다시 당신의 후두부를 엄습한다, 그리고 그것과 함께 당신은 새로운 사실을 깨닫는다. 안나는 거짓말을 하고 있다, 그러나 그녀는 자신이 거짓말을 하고 있다는 걸 모른다.~ */
  IF ~~ THEN REPLY #67413 /* ~"안나, 그 곳에 꼭 가야만 한다는 생각이 들었던 거요? 그렇게 해서 날 발견하게 된 거요?"~ */ DO ~AddexperienceParty(2500)
SetGlobal("Annah_Alley_Geas","GLOBAL",1)
~ JOURNAL #67414 /* ~안나가 내 시체를 발견했을 때, 그녀는 뭔가에 의해 그것을 찾도록 강제당한 것 같다. 그녀는 내 시체가 마치 자석과도 같이 그녀를 끌어당기는 바람에 그것을 찾아야만 했었다고 말했다.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #67415 /* ~그녀는... 천천히 고개를 끄덕인다. "그래, 그럴지도." 그녀는 내키지 않는 듯 어깨를 으쓱한다. "거긴 내가 흔히 가는 사냥터가 아니야, 하지만 어쩔 수가 없었어. 나는 그 날 그냥 그 곳에 무엇이 있는지 보기를 원했어 - 그라고 거기 당신이 목재처럼 쓰러져 있었어." 그녀는 잠시 멈춘다. "당신은 자석과 같았어. 난 대체 무엇에 홀려 당신을 발견하게 되었는지 모르겠어."~ */
  IF ~~ THEN REPLY #67416 /* ~"흠... 흥미롭군. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67417 /* ~"그냥 알고 싶었을 뿐이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 388 // from: 187.4 477.4
  SAY #67418 /* ~그녀는 약간 조심스럽게 고개를 끄덕인다. "그래, 난 당신을 잊지 않았어."~ */
  IF ~  GlobalGT("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67419 /* ~"내가 파로드에 대해서 물어봤을 때 당신은 내게 그가 시체안치소의 남서쪽에 있다고 했었소 - 그가 거기에 없었는데도 말이오."~ */ GOTO 389
  IF ~  Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67420 /* ~"시체안치소 부근에서 뭘 하고 있었던 거요?"~ */ GOTO 390
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #67421 /* ~"그래, 그랬어. 하지만 당신도 어떤 흉터투성이 인간 말종이 당신을 찾아와 당신 아빠가 어디 있느냐고 물었다면 그렇게 했을 거야." 그녀는 어깨를 으쓱한다. "어쨌든 당신은 그를 만났잖아, 그러니 그 일에 대해 불평하는 건 듣고 싶지 않아. "~ */
  IF ~~ THEN REPLY #67422 /* ~"시체안치소 부근에서 뭘 하고 있었던 거요?"~ */ GOTO 390
  IF ~~ THEN REPLY #67423 /* ~"그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67424 /* ~"만약 당신이 그 때 그가 어디 있는지 말해주었더라면 당신이나 나나 훨씬 편했었을 텐데. 어쨌든 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 390 // from: 388.1 389.0
  SAY #67425 /* ~"여긴 내 구역이야 - 난 시체를 찾고 있었어." 그녀는 당신을 아래위로 훑어본 후 능글맞게 웃는다. "난 걸어다니는 시체를 발견했지."~ */
  IF ~~ THEN REPLY #67426 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67427 /* ~"갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 187.5 477.5
  SAY #67428 /* ~안나는 경계하는 눈초리로 당신을 쳐다본다, 그리고 그녀의 꼬리는 움직임을 잠시 멈추었다가 다시 전보다 느린 속도로 움직이기 시작한다. "그래, 뭔가를 발견했을지도 몰라. 하지만 만약 내가 뭔가를 찾았다면 그건 당연히 내 꺼야 - 그리고 나머지는 파로드가 보관하고 있어."~ */
  IF ~~ THEN REPLY #67429 /* ~"안나, 내겐 장난을 할 시간이 없소... 내 시체에서 *무엇*을 발견했소?"~ */ GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0
  SAY #67430 /* ~"그래, 당신은 쇠로 만든 넉클하고 약간의 돈이 있었어, 하지만 더스티가 날 좀 정직하다고 생각하도록 그건 그냥 내버려 두었지. 당신이 지녔던 못생긴 반지 하나는 내가 가져갔어." 그녀는 팔 보호대에서 보석이 달린 반지 하나를 꺼낸다. "돈하고 넉클보다 세 배는 가치가 더 있을 거야." 안나는 반지를 살피고는 눈을 가늘게 뜬다. "애석하게도 끼기에는 너무 추하게 생겼어."~ */
  IF ~~ THEN REPLY #67431 /* ~"그 반지를 당장 돌려주시오."~ */ DO ~GiveItemCreate("Ring03",Protagonist,0,0,0)
~ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #67432 /* ~그녀는 눈살을 찌푸리고 반지를 살펴본 후 당신을 흘긋 본다, 그리고 다시 당신을 본다. 그녀는 냉소를 하며 반지를 다시 당신에게 던진다. "그런 못생긴 건 원하지도 않았어."~ */
  IF ~~ THEN REPLY #67433 /* ~"좋소. 당신이 내 시체에서 나온 물건들 중 일부가 파로드의 '창고'로 갔다고 한 건 무슨 뜻이오?"~ */ GOTO 394
  IF ~~ THEN REPLY #67434 /* ~"그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67435 /* ~"이 일에 대해선 나중에 얘기합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY #67436 /* ~"그래, 파로드는 우리가 찾은 시체에서 조금씩 '세금'을 받아. 그건 마을의 지배자인 그의 권한이라고."~ */
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67437 /* ~"당신들이 찾아내는 모든 시체들로부터? 그렇다면 그 수는 장난이 아닐 텐데."~ */ GOTO 395
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67438 /* ~"그렇다면 금고가 파로드가 모든 것을 보관하던 곳이었겠군. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67439 /* ~"그렇다면 그는 모든 것을 금고 안에 모든 것을 보관했을 것이 틀림없소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 395 // from: 187.9 394.0 429.0 477.9
  SAY #67440 /* ~"오, 그래. 소문에 의하면 늙은 지팡이는 자기 근처에 보물을 숨겨 놓았다고 해. 내 생각으론 그게 그가 그 더럽고 바람 들어오는 홀에 살고 있는 유일한 이유야. 거긴 악취와 그림자 말고는 아무 것도 없어."~ */
  IF ~~ THEN REPLY #67441 /* ~"정말로? 그리고 그 곳이 그가 받는 공물들을 보관하는 곳이오?"~ */ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #67442 /* ~"그래." 그녀는 당신을 흘겨본다. "이제 어쩔 생각이야? 그를 두들기기라도 할 거야?"~ */
  IF ~~ THEN REPLY #67443 /* ~진실: "아니, 내겐 그런 짓을 할 이유가 없소. 파로드는 내게 해를 끼치지 않았소"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Annah_1","GLOBALLaw",1)
~ GOTO 397
  IF ~~ THEN REPLY #67444 /* ~거짓말: "아니, 내겐 그런 짓을 할 이유가 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_2","GLOBALLaw",-1)
~ GOTO 397
  IF ~~ THEN REPLY #67445 /* ~"그 구체를 찾느라고 그토록 고생을 하고도 변변한 대가도 받지 못했다는 걸 감안하면, 그러고 싶은 생각도 드오."~ */ GOTO 398
END

IF ~~ THEN BEGIN 397 // from: 396.0 396.1
  SAY #67446 /* ~"좋아 - 하지만 그런 짓에 대해 경고를 해 두겠어. 파로드는 때로 정신이 좀 오락가락하지만 야마가 돌면 장난이 아니라고." 그녀는 눈살을 찌푸린다. "그리고 그는 자기 장난감들을 무척 좋아한다고."~ */
  IF ~~ THEN REPLY #67447 /* ~"하지만 그는 어디에다가 그 모든 것을 보관하는 거요? 만약 그가 자신이 말하는 것처럼 매장된 마을에 오래 있었다면 그는 엄청난 양의 물건들을 모았을 것이오."~ */ GOTO 399
END

IF ~~ THEN BEGIN 398 // from: 396.2
  SAY #67448 /* ~"하지만 그런 짓에 대해 경고를 해 두겠어. 파로드는 때로 정신이 좀 오락가락하지만 야마가 돌면 장난이 아니라고." 그녀는 눈살을 찌푸린다. "그리고 그는 자기 장난감들을 무척 좋아한다고."~ */
  IF ~~ THEN REPLY #67449 /* ~"하지만 그는 어디에다가 그 모든 것을 보관하는 거요? 만약 그가 자신이 말하는 것처럼 매장된 마을에 오래 있었다면 그는 엄청난 양의 물건들을 모았을 것이오."~ */ GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 397.0 398.0
  SAY #67450 /* ~"글쎄..." 안나는 잠시 침묵한다. "난 그가 공물을 가지러 갈 때도 자신의 홀을 떠난 적이 없다는 걸 알아."~ */
  IF ~~ THEN REPLY #67451 /* ~"그의 절뚝거리는 다리 가지고는 멀리 갈 수도 없었을 거요."~ */ GOTO 400
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #67452 /* ~"그래, 그건 사실이야. 하지만 그건 그를 유심히 살피지 얺을 때 얘기지. 그는 다리를 저는 척하지만, 그는 다리 병신이 아냐."~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #67453 /* ~"그렇다면 그는 왜 그 지팡이를 가지고 다니는 거요?"~ */ GOTO 401
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #67454 /* ~"그럼 그의 지팡이는... 혹시 전이문 열쇠가 아니오?"~ */ GOTO 402
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #67455 /* ~안나는 어깨를 으쓱한다. "몰라." 그녀는 고개를 끄덕인다. "차라리 왜 허리에는 뼈가 있느냐고 물어보지 그래."~ */
  IF ~~ THEN REPLY #67456 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67457 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 402 // from: 400.1
  SAY #67458 /* ~안나는 잠시 생각에 잠겨 눈살을 찌푸린다, 그리고 천천히 고개를 끄덕인다. "그래... 그럴 수도 있겠군." 그녀는 어깨를 으쓱한다. "하지만 그가 그걸 어떻게 사용하는지는 모르겠어. 아마 가지고 있기만 하면 되는지도."~ */
  IF ~~ THEN REPLY #67459 /* ~"아마 알아낼 수 있을 것이오 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67460 /* ~"그 일에 대해서는 나중에 생각해봅시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 403 // from: 187.8 477.8
  SAY #67461 /* ~"늙은 지팡이? 그는 내 아빠야... 친 아빠는 아냐. 그는 내가 어린아이 때 날 데려왔어..." 안나는 어깨를 으쓱한다. "그는 다른 뚱보들이 들어갈 수 없는 곳까지 들어갈 수집자를 원했어, 그래서 날 키운 거지..."~ */
  IF ~  Global("Annah_Looks","GLOBAL",0)
~ THEN REPLY #67462 /* ~"나는 당신과 그가 별로 닮았다고는 생각하지 않았었소."~ */ DO ~SetGlobal("Annah_Looks","GLOBAL",1)
~ GOTO 404
  IF ~~ THEN REPLY #67463 /* ~"그에 대해서 내게 해줄 다른 얘기는 없소?"~ */ GOTO 424
  IF ~~ THEN REPLY #67464 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67465 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #67466 /* ~안나는 눈을 가늘게 뜬다, 그리고 그녀의 꼬리는 앞뒤로 움직이기 시작한다. "그럼 그게 대체 무슨 뜻이야?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67467 /* ~"내가 한 말의 뜻은 그 추악하고, 욕심많고, 치사하고, 냄새나고 더러운 트롤과 당신 사이에는 별 유사점이 없다는 거요."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 410
  IF ~~ THEN REPLY #67468 /* ~"내가 한 말의 뜻은 그가 티플링처럼 보이지는 않는다고 거요."~ */ GOTO 405
  IF ~~ THEN REPLY #67469 /* ~"내가 한 말의 뜻은 당신이 별로 인간처럼 생기지는 않았다는 거요."~ */ GOTO 406
  IF ~~ THEN REPLY #67470 /* ~"내가 한 말의 뜻은 당신들은 서로 별로 닮지 않았다는 거요."~ */ GOTO 407
  IF ~~ THEN REPLY #67471 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 477
  IF ~~ THEN REPLY #67472 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 405 // from: 404.1 409.1
  SAY #67473 /* ~"그래, 닮지 않았어. 하지만 당신이 티플링에 대해 조금이라도 안다면 그런 소린 안 할 거야. 서로 닮은 티플링이란 없어." 그녀는 고개를 젓는다. "당신은 정말 희망이 없군."~ */
  IF ~~ THEN REPLY #67474 /* ~"모욕하려는 뜻으로 한 말은 아니오. 당신들은 그 생김새가 서로 너무 다르오. 내 말은 파로드에게는... 그만의 독특한 특징들이 있으나 당신에겐 없소."~ */ GOTO 407
  IF ~~ THEN REPLY #67475 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 477
  IF ~~ THEN REPLY #67476 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 406 // from: 404.2 409.2
  SAY #67477 /* ~"가관이군. 걸어다니는 흉터 전시대인 주제에 나보고 인간이 어떻게 생겼느니 운운하는 거야? 가서 당신이 싼 똥에나 빠져 죽으라고."~ */
  IF ~~ THEN REPLY #67478 /* ~"모욕하려는 뜻으로 한 말은 아니오. 당신들은 그 생김새가 서로 너무 다르오. 내 말은 파로드에게는... 그만의 독특한 특징들이 있으나 당신에겐 없소."~ */ GOTO 407
  IF ~~ THEN REPLY #67479 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 477
  IF ~~ THEN REPLY #67480 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 407 // from: 404.3 405.0 406.0 409.3
  SAY #67481 /* ~"대체 왜 그런 생각을 하게 된 거지? 내 머리? 내 피부? 다른 건 생각..." 안나는 자신의 이마를 탁 친다, 그리고 빈정거리듯 코웃음친다, "꼬리 때문이었군, 그렇지? 당신은 생각했던 것보다 더 똑똑한데. 정말 천재야."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67482 /* ~"내가 한 말의 뜻은 그 추악하고, 욕심많고, 치사하고, 냄새나고 더러운 트롤과 당신 사이에는 별 유사점이 없다는 거요."~ */ GOTO 410
  IF ~~ THEN REPLY #67483 /* ~"대체 뭐가 문제요? 난 간단한 평을 했을 뿐인데 당신을 그것을 대거처럼 뒤틀고 있소."~ */ GOTO 408
  IF ~~ THEN REPLY #67484 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 477
  IF ~~ THEN REPLY #67485 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 408 // from: 407.1
  SAY #67486 /* ~"대거는 그냥 대거라고."~ */
  IF ~~ THEN REPLY #67487 /* ~"난 당신들 두 사람이 전혀 닮지 않았다고 했을 뿐이오. 당신들 두 사람 사이에는 공통점이 거의 없소."~ */ GOTO 410
END

IF ~~ THEN BEGIN 409 // from:
  SAY #67488 /* ~"'관두고 그냥 가자'로 적당히 얼버무릴 생각은 하지 마! 방금 한 말이 대체 무슨 뜻이야?~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67489 /* ~"내가 한 말의 뜻은 그 추악하고, 욕심많고, 치사하고, 냄새나고 더러운 트롤과 당신 사이에는 별 유사점이 없다는 거요."~ */ GOTO 410
  IF ~~ THEN REPLY #67490 /* ~"내가 한 말의 뜻은 그가 티플링처럼 보이지는 않는다고 거요."~ */ GOTO 405
  IF ~~ THEN REPLY #67491 /* ~"내가 한 말의 뜻은 당신이 별로 인간처럼 생기지는 않았다는 거요."~ */ GOTO 406
  IF ~~ THEN REPLY #67492 /* ~"내가 한 말의 뜻은 당신들은 서로 별로 닮지 않았다는 거요."~ */ GOTO 407
END

IF ~~ THEN BEGIN 410 // from: 404.0 407.0 408.0 409.0
  SAY #67493 /* ~안나의 얼굴이 새빨개진다. "오, 그래? 어떻게 그걸 알지?"~ */
  IF ~~ THEN REPLY #67494 /* ~진실: "내 말은, 혹시 당신은 자기 자신을 잘 본 적이 있소? 당신이 행동하는 방식은 제쳐두더라도, 당신은 자신감이 있고, 재치있으며, 우아하오. 그리고 그런 평가를 내리는 데 있어 당신의 뛰어난 외모 - 불꽃처럼 선명한 빨간 머리, 날카로운 초록빛 눈, 그리고 또렷한 윤곽 - 는 고려하지조차 않았소. ~ */ GOTO 412
  IF ~~ THEN REPLY #67495 /* ~거짓말: "내 말은, 혹시 당신은 자기 자신을 잘 본 적이 있소? 당신이 행동하는 방식은 제쳐두더라도, 당신은 자신감이 있고, 재치있으며, 우아하오. 그리고 그런 평가를 내리는 데 있어 당신의 뛰어난 외모 - 불꽃처럼 선명한 빨간 머리, 날카로운 초록빛 눈, 그리고 또렷한 윤곽 - 는 고려하지조차 않았소. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_3","GLOBALLaw",-1)
~ GOTO 412
  IF ~~ THEN REPLY #67496 /* ~진실: "내 말은 당신 자신을 한 번 돌아보라는 거요. 당신은 파로드보다 두 배는 더 탐욕스러운 시체 해적이며, 당신으로부터는 내 눈을 아프게 하는 벌통 구역 특유의 기이한 냄새가 나고, 당신 뒤에는 그 더러운 쥐꼬리가 달려 있소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 411
END

IF ~~ THEN BEGIN 411 // from: 410.2
  SAY #67497 /* ~안나의 얼굴은 뒤틀려 야수가 으르렁거리는 형상이 된다, 그리고 그녀의 눈이 번득인다. "조심하는 게 좋을 거야, 다음번에는 내가 당신을 저승에서 끌어내는 대신 밀어 넣을지도 모르니까."~ */
  IF ~~ THEN REPLY #67498 /* ~"어디 원하는 대로 해보시지, *꼬마 아가씨*, 하지만 당신 시체를 줍게 될 건 나지 그 반대가 아니야."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #67499 /* ~"만약 협박을 해대는 것이 당신으로 하여금 자신이 강하다고 느끼게 해준다면 계속하시오. 그 동안 난 당신에게 질문을 좀 해야겠소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67500 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 412 // from: 410.0 410.1
  SAY #67501 /* ~안나는 그냥 당신을 쳐다보기만 한다.~ */
  IF ~~ THEN REPLY #67502 /* ~"내가 당신과 파로드가 닮지 않았다고 했을 때의 의미는 그게 다요."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #67503 /* ~안나는 여전히 당신을 쳐다보면서 고개를 끄덕인다. 그녀는 눈 한 번 깜박이지 않는다.~ */
  IF ~~ THEN REPLY #67504 /* ~"내 말을 듣고 있소?"~ */ GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 413.0
  SAY #67505 /* ~안나는 갑자기 다가와 당신 목을 세게 물어뜯고는 작은 쉿 소리를 낸다. 그녀는 뒤로 물러설 생각은 않고 오히려 당신에게 더 가까이 다가와 귀에다 대고 속삭인다. "자신 있어?" 그녀의 꼬리가 앞뒤로 천천히 움직이기 시작한다, 그러니 그 리듬은 화난 것이라기보다는 최면성이다.~ */
  IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY #67506 /* ~당신은 안나의 심장이 빠르게 뛰는 것을 느낄 수가 있다, 그리고 그녀의 볼이 붉어지기 시작한다. 당신은 안나의 피부가 매끄럽고 부드럽다는 사실을 깨닫는다. "난 당신에게 말할 게 있어, 그리고 당신은 날 놀릴 수 없을 거야." ~ */
  IF ~~ THEN REPLY #67507 /* ~"좋소..."~ */ GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #67508 /* ~"내가 당신 *냄새*를 좋아한다는 거 알았어? 그래, 그건 날 카오스맨보다 더 미치게 만들어." 그녀는 당신 볼 냄새를 맡으며, 열성적인 쉿 소리를 낸다. "난 당신이 날 보는 시선이 *좋아*. 당신은 굶주린 듯한 *눈*을 하고 있어. 그건 날 뜨겁게 해."~ */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #67509 /* ~"난 당신 목을 부드럽게 물어뜯고 싶어..." 그녀는 당신 목 옆쪽을 이빨로 집적거리나, 피부에 상처를 내지는 않는다. 그리고 그녀가 속삭일 때마다 당신은 그녀의 입김을 느낄 수가 있다. 그녀의 손을 당신 목을  감싸고 꽉 쥔다, 그리고 당신은 그녀의 손톱이 당신 살로 파고드는 것을 느낄 수가 있다. "난 당신 목을  당겨 키스를 하고 싶어.."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 731
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67512 /* ~그녀를 붙잡고 그녀 말에 귀를 기울인다.~ */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.1
  SAY #67511 /* ~"당신은 내가 당신의 포름알데히드 냄새를 15 미터 밖에서도 냄새 맡을 수 있다는 걸 알아? 만약 당신이 목욕을 한다면 좀 봐줄만 할지도 모르지." 그녀의 눈이 번득인다. "나는 당신이 스파이어에서 나가떨어질 정도로 격렬하게 사랑할 수 있어." 그녀는 한 걸음 물러선다, 그리고 그녀의 꼬리는 당신 다리를 가볍게 때리고 있다. 그녀는 당신을 격한 표정으로 바라본다. "그래... 당신은 날 좋아해?"~ */
  IF ~~ THEN REPLY #67514 /* ~그녀를 붙잡고 그녀의 등을 물어뜯는다. ~ */ GOTO 419
  IF ~~ THEN REPLY #67515 /* ~"그래... 그렇소."~ */ GOTO 422
  IF ~~ THEN REPLY #67516 /* ~"안나, 그건 더 이상 하지 마시오, 알겠소?"~ */ GOTO 423
END

IF ~~ THEN BEGIN 419 // from: 418.0
  SAY #67513 /* ~당신은 안나를 붙잡고는 그녀가 미처 뿌리치기 전에 그녀의 목을 가볍게 물어뜯는다. 당신 이빨이 피부에 닿자 안나는 크게 쉿 소리를 지르고 고양이처럼 당신을 할퀴어 당신 손아귀에서 벗어난다. "난 당신을 놀리고 있었을 뿐이야, 이 흉터투성이 흡혈귀야!" 그녀의 항의에도 불구하고 그녀의 얼굴은 새빨갛고 그녀는 숨을 거칠게 쉬고 있다. "다시 네 몸에 손대면 각오하라고!" 그녀는 팔짱을 낀다. "넌 날 빨갛게 만들었잖아."~ */
  IF ~~ THEN REPLY #67517 /* ~거짓말: "뭐 잘못되었소? 내가 온 곳에서는 물어뜯는 것이 인사요."~ */ GOTO 420
  IF ~~ THEN REPLY #67518 /* ~"당신은 날 물어뜯었고, 그래서 나도 당신을 물어뜯어소. 만약 그게 싫다면 당신도 하지 마시오."~ */ GOTO 421
  IF ~~ THEN REPLY #67519 /* ~"자. 그만하시오... 당신에게 물어볼 것이 좀 있소." ~ */ GOTO 477
  IF ~~ THEN REPLY #67520 /* ~"그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #67521 /* ~"오, 그래, 내가 당신 말을 잘도 믿겠다." 안나의 호흡이 정상으로 돌아온다. "내 몸에 손대지 마, 알겠어?"~ */
  IF ~~ THEN REPLY #67522 /* ~"자. 그만하시오... 당신에게 물어볼 것이 좀 있소." ~ */ GOTO 477
  IF ~~ THEN REPLY #67523 /* ~"그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 421 // from: 419.1
  SAY #67524 /* ~"난 내가 원하는 걸 할 거야." 안나는 냉소한다. 그녀는 아직도 얼굴이 불그스레하다. "내 몸에 손대지 마, 알겠어?"~ */
  IF ~~ THEN REPLY #67525 /* ~"자. 그만하시오... 당신에게 물어볼 것이 좀 있소." ~ */ GOTO 477
  IF ~~ THEN REPLY #67526 /* ~"그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 422 // from: 418.1
  SAY #67527 /* ~"가능성은 당신이 생각하는 것보다 희박해." 안나는 냉소한다. 그녀는 아직도 얼굴이 불그스레하다. 난 당신을 놀리고 있었을 뿐이야, 이 흉터투성이 흡혈귀야! 넌 그렇게 냄새가 좋지 않아, 아니라고."~ */
  IF ~~ THEN REPLY #67528 /* ~"자. 그만하시오... 당신에게 물어볼 것이 좀 있소." ~ */ GOTO 477
  IF ~~ THEN REPLY #67529 /* ~"그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 423 // from: 418.2
  SAY #67530 /* ~"전혀 안 무서워." 안나는 냉소한다. 그녀는 아직도 얼굴이 불그스레하다. 난 당신을 놀리고 있었을 뿐이야, 이 흉터투성이 흡혈귀야! 넌 그렇게 냄새가 좋지 않아, 아니라고."~ */
  IF ~~ THEN REPLY #67531 /* ~"자. 그만하시오... 당신에게 물어볼 것이 좀 있소." ~ */ GOTO 477
  IF ~~ THEN REPLY #67532 /* ~"그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 424 // from: 403.1
  SAY #67533 /* ~"마을에 나보다 훨씬 오래 있었어. 엄청 오래 전에 왔다고 해. 어떤 사람들은 그가 마을을 세웠다고도 해." 안나는 눈살을 찌푸린다. "파로드는 정말 빈틈이 없는 자야. 그리고 돈을 쥐어짜내는 데는 특별한 재주가 있어, 그래서 늘 돈 걱정을 안 하지."~ */
  IF ~  Global("Pharod_Annah_Story","GLOBAL",0)
~ THEN REPLY #67534 /* ~"그는 그 청동 구체를 항상 찾고 있었소?"~ */ GOTO 425
  IF ~  Global("Pharod_Annah_Story","GLOBAL",1)
~ THEN REPLY #67535 /* ~"그는 그 청동 구체를 항상 찾고 있었소?"~ */ GOTO 426
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67536 /* ~"그는 내가 찾아갔을 때 별로 잘사는 티를 내지 않았소. 당신이 생각하는 것보다 더 철저하게 돈을 움켜쥐고 있는 모양이오."~ */ GOTO 429
  IF ~~ THEN REPLY #67537 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67538 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 425 // from: 424.0
  SAY #67539 /* ~"그럴 거야." 안나는 다시 어깨를 으쓱한다. "난 그가 왜 그걸 그렇게 찾으려고 했는지 모르겠어. 난 당신이 그걸 가져오자마자 그 냄새를 맡을 수 있었어." 그녀는 코를 찌푸린다. "썩은 커스타드 냄새가 났어. 하지만 그가 그걸 그렇게 애타게 찾은 걸 볼 때 그에겐 매우 소중했나봐. 열 명 이상의 수집자들이 그걸 찾으려다가 죽었어."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #67540 /* ~"그는 그것이 자신의 목숨을 구할 수 있다고 생각했기 때문을 그것을 찾고 있었던 것 같소."~ */ DO ~SetGlobal("Pharod_Annah_Story","GLOBAL",1)
AddexperienceParty(2500)
~ GOTO 427
  IF ~~ THEN REPLY #67541 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67542 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 426 // from: 424.1
  SAY #67543 /* ~"당신 말이 사실이라면 그랬겠지." 안나는 다시 어깨를 으쓱한다. "파로드도 정말 어리석어. 애당초 그런 장난감 따위는 그를 운명으로부터 구할 수 없었어. 걸레를 아무리 씻어도 행주는 될 수 없듯이 일단 악으로 물든 마음은 어쩔 수가 없어." 그녀는 잠시 멈춘다. "만약 그가 그것이 자신을 구할 수 있다고 생각했다면, 그것에도 나름대로 어떤 가치가 있을지도 몰라."~ */
  IF ~~ THEN REPLY #67544 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67545 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 427 // from: 425.0
  SAY #67546 /* ~그녀 눈을 깜박인다. "무슨 뜻이지?"~ */
  IF ~~ THEN REPLY #67547 /* ~"내가 알기로 파로드는 별로 행복한 삶을 누리지 못했소. 한때 그는 상부 구역들 한 곳에 사는 '거버너(질서의 교단 멤버의 별칭. 거버너는 주로 시길의 사법부에서 일함)'였소. 그는 자신의 지위를 남용하여 수많은 사람들을 기만하고 괴롭혔으며, 때문에 그는 죽으면 지옥에 떨어질 운명에 처하게 되었소. 그는 청동 구체가 어떤 방법으로든 자신을 구할 수 있다고 생각하게 되었으며, 그 믿음이 얼마나 강렬했던지 자신의 직채, 지위, 그리고 부를 모두 버리면서까지 그것을 찾으려고 했소."~ */ JOURNAL #67548 /* ~나는 안나에게 내가 벌통의 리크윈드로부터 들은 얘기를 들려주었다. 그녀는 파로드의 과거에 대해 전혀 모르는 듯했으며, 내 얘기를 듣고 상당히 놀랬다.~ */ GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY #67549 /* ~"정말이야?" 그녀는 잠시 침묵한다, 그리고 고개를 젓는다. "파로드도 정말 어리석어. 애당초 그런 장난감 따위는 그를 운명으로부터 구할 수 없었어. 걸레를 아무리 씻어도 행주는 될 수 없듯이 일단 악으로 물든 마음은 어쩔 수가 없어." 그녀는 잠시 멈춘다. "만약 그가 그것이 자신을 구할 수 있다고 생각했다면, 그것에도 나름대로 어떤 가치가 있을지도 몰라."~ */
  IF ~~ THEN REPLY #67550 /* ~"그 밖에도 물어보고 싶은 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67551 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 429 // from: 424.2
  SAY #67552 /* ~"아니, 그는 드러내질 않아. 그는 다른 사람들이 자기 물건에 손대는 걸 싫어하기 때문에 감추어 두지."~ */
  IF ~~ THEN REPLY #67553 /* ~"그래 그는 자신의 귀중품들을 숨겨두고 있소?"~ */ GOTO 395
END

IF ~~ THEN BEGIN 430 // from: 187.14 477.14
  SAY #67554 /* ~안나는 눈살을 찌푸린다. "그녀가 한 말은 아무 의미도 없어. 미친 해그의 헛소리야."~ */
  IF ~~ THEN REPLY #67555 /* ~"틀림없소?"~ */ GOTO 431
  IF ~~ THEN REPLY #67556 /* ~"관두시오, 그럼. 당신에게 다른 것에 대해 물어보고 싶소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67557 /* ~"관두시오, 그럼. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY #67558 /* ~"아무 것도 아니었어. 당신이 그녀가 무슨 소리를 했는지 모른다면 그건 나도 마찬가지야."~ */
  IF ~~ THEN REPLY #67559 /* ~"만약 당신이 그것에 대해 얘기하고 싶다면, 나는--"~ */ GOTO 432
  IF ~~ THEN REPLY #67560 /* ~"관두시오, 그럼. 당신에게 다른 것에 대해 물어보고 싶소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67561 /* ~"관두시오, 그럼. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY #67562 /* ~"나..." 안나는 잠시 고개를 떨군다. "나는 왜 내가 당신과 여행을 하는지 모르겠어! 난 왜 내가 당신과 래벌을 찾으러 갔는지 모르겠어!" 그녀는 눈살을 찌푸린다, 하지만 그녀는 화가 난 게 아니라 혼란스러워 하는 것 같다. "이치에 닿지 않아, 그리고 난 그게 싫어." ~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Ravel_Torment","GLOBAL",1)
~ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY #67563 /* ~"나..." 안나는 심호흡을 한다. "나는 당신을 좋아하는 것 같아, 이상한 느낌이야... 난 지금까지 아무도 좋아한 적이 없었어. 하지만 당신..." 안나는 당신의 시선을 피하면서 내키지 않는 듯 어깨를 으쓱한다. "난 내가 당신을 왜 좋아하는지 모르겠어, 내 말은 - 당신은 정신이 오락가락할 때가 많아, 그리고 걸음은 엉덩이뼈가 부서진 사람처럼 걷고, 미련한 데다가, 좀비 냄새까지 나. 하지만..." 그녀는 한숨을 쉰다. "난 당신이 좋아."~ */
  IF ~~ THEN REPLY #67565 /* ~"안나, 왜 진작 말하지 않았소? 우리는 이 문제를 벌써-"~ */ GOTO 437
  IF ~~ THEN REPLY #67566 /* ~"안나, 난 당신을 소중히 여기오... 하지만 그런 감정은 아니오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.1
  SAY #67564 /* ~안나는 눈살을 찌푸리고 땅바닥을 쳐다본다. "그래, 그건 축복일지도 몰라. 다른 사람에 대한 감정은 아물지 않는 곳만 찌르거든."~ */
  IF ~~ THEN REPLY #67567 /* ~"안나, 왜 진작 말하지 않았소? 우리는 이 문제를 벌써-"~ */ GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #67568 /* ~"그건 왜냐하면 당신이 저주받은 운명을 지니고 있다고 생각하기 때문이야." 안나는 갑자기 당신을 마주본다. "내 생각에 당신은 사슬에 묶여 걷고 있어, 하지만 당신은 아직 그걸 모르고 있어. 난 당신이 좋아... 하지만 난 당신이 걱정돼... 그리고 그것이 날 죽도록 괴롭게 해. 나는 당신이 다치는 게 싫어, 하지만 어떻게 하면 그걸 막을 수 있는지 모르겠어. 그래서 나는 당신과 같은 길을 걷고 있어..."~ */
  IF ~~ THEN REPLY #67569 /* ~"내 곁에 있어 주어 고맙소, 안나."~ */ GOTO 436
  IF ~~ THEN REPLY #67570 /* ~"이런, 난 이제 끝장이군. 자, 다른 질문이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67571 /* ~"알겠소. 이젠 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 436 // from: 435.0 437.2
  SAY #67572 /* ~"그래... " 그녀는 잠시 침묵한다, 그리고 어깨를 으쓱한다. "상관없어."~ */
  IF ~~ THEN REPLY #67573 /* ~"자, 다른 질문이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67574 /* ~"그럼 좋소, 안나. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 437 // from: 433.0
  SAY #67575 /* ~"그건 왜냐하면 당신이 저주받은 운명을 지니고 있다고 생각하기 때문이야." 안나는 갑자기 당신을 마주본다. "내 생각에 당신은 사슬에 묶여 걷고 있어, 하지만 당신은 아직 그걸 모르고 있어. 난 당신이 좋아... 하지만 난 당신이 걱정돼... 그리고 그것이 날 죽도록 괴롭게 해. 나는 당신이 다치는 게 싫어, 하지만 어떻게 하면 그걸 막을 수 있는지 모르겠어!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67576 /* ~그녀에게 키스한다.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67577 /* ~그녀에게 키스한다.~ */ GOTO 444
  IF ~  Global("Annah_Kissing","GLOBAL",1)
~ THEN REPLY #67696 /* ~"내 곁에 있어 주어 고맙소, 안나."~ */ GOTO 436
END

IF ~~ THEN BEGIN 438 // from: 187.13 477.13
  SAY #67578 /* ~안나는 으르렁댄다. "말도 안 되는 헛소리는 집어치워. 만약 당신이 마족과 키스하기를 원했다면, 그 해그와 키스를 하는 게 가장 안전한 방법이었을 거야." 그녀는 침을 뱉는다. "이제 골통을 그만 딸랑거려, 그것에 대해선 더 이상 한 마디도 듣기 싫으니까."~ */
  IF ~~ THEN REPLY #67579 /* ~"관두시오, 그럼. 당신에게 다른 것에 대해 물어보고 싶소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67580 /* ~"관두시오, 그럼. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 439 // from:
  SAY #67581 /* ~안나는 눈살을 찌푸린다, 그리고 고개를 끄덕인다. "그래, 그 해그를 키스하지 않은 건 잘한 일이야."~ */
  IF ~~ THEN REPLY #67582 /* ~"당신과 키스하고 싶어 그녀와 키스했던 건 아니오."~ */ GOTO 440
  IF ~~ THEN REPLY #67583 /* ~"관두시오, 그럼. 당신에게 다른 것에 대해 물어보고 싶소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67584 /* ~"관두시오, 그럼. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #67585 /* ~"에? 뭐라고?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67586 /* ~그녀에게 키스한다.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67587 /* ~그녀에게 키스한다.~ */ GOTO 444
  IF ~~ THEN REPLY #67588 /* ~"관두시오. 당신에게 다른 것에 대해 물어보고 싶소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67589 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 441 // from: 187.12 477.12
  SAY #67590 /* ~안나는 눈알을 부라린다. "오! 그래, 다원 우주에서 가장 사악하고 추악한 마녀하고는 키스를 하고, 나하고는 못하시겠다? 이제 당신이 더 이상 뭐라고 말하든 상관 안 하겠어!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67591 /* ~그녀에게 키스한다.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67592 /* ~그녀에게 키스한다.~ */ GOTO 444
  IF ~~ THEN REPLY #67594 /* ~"관두시오, 그럼. 당신에게 다른 것에 대해 물어보고 싶소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67595 /* ~"관두시오, 그럼. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 442 // from: 437.0 440.0 441.0
  SAY #67596 /* ~당신은 안나의 목 뒤쪽을 빈 손으로 움켜 쥔다, 그리고 당신이 그녀의 머리를 끌어당겨 입을 맞추자 그녀의 얼굴이 돌처럼 굳어진다.~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.0
  SAY #67597 /* ~처음에는 마치 벽하고 키스하는 것 같다, 그러나 그녀도 천천히 당신의 키스에 응답하기 시작한다. 처음에는 다소 주저하나, 이내 자신감을 가지고 당신의 위쪽입술을 가볍게 깨문다. 그녀의 목구멍에서는 으르렁거리는 듯한 소리가 나오고, 그녀의 꼬리는 당신 다리를 뱀처럼 감는다, 그리고 그녀가 한 번 깨물 때마다 꼬리도 당신 다리를 꽉 조인다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 732
END

IF ~~ THEN BEGIN 444 // from: 437.1 440.1 441.1
  SAY #67598 /* ~당신은 안나의 목 뒤쪽을 빈 손으로 움켜 쥔다, 그리고 당신이 그녀의 머리를 끌어당겨 입을 맞추자 그녀의 얼굴이 돌처럼 굳어진다.~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #67599 /* ~처음에는 마치 벽하고 키스하는 것 같다, 그러나 그녀도 천천히 당신의 키스에 응답하기 시작한다. 처음에는 다소 주저하나, 이내 자신감을 가지고 당신의 위쪽입술을 가볍게 깨문다. 그녀의 목구멍에서는 으르렁거리는 듯한 소리가 나오고, 그녀의 꼬리는 당신 다리를 뱀처럼 감는다, 그리고 그녀가 한 번 깨물 때마다 꼬리도 당신 다리를 꽉 조인다.~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #67601 /* ~키스를 하다가 당신은 안나의 피부가 따뜻해지고 있다는 것을 깨닫는다 - 그것은 마치 석탄처럼 열을 내뿜고 있다. 당신은 안나를 밀치고 뒤로 물러선다. 당신을 한 번 더 깨물려고 했던 그녀는 어리둥절해 한다, 그리고 이내 화를 낸다. "뭐야? 내가  잘 못해서 그러는 거야?"~ */
  IF ~~ THEN REPLY #67602 /* ~"아니, 당신 피부 때문이오. 왜 갑자기 그렇게 뜨거워진 거요?"~ */ DO ~SetGlobal("Annah_Kissing","GLOBAL",1)
PermanentStatChange("Annah",RESISTFIRE,RAISE,5)
PermanentStatChange("Annah",RESISTMAGICFIRE,RAISE,5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #67603 /* ~"그래?" 안나는 눈살을 찌푸린다, 그리고 자기 몸을 내려다본다; 당신 눈에도 그녀의 조끼의 테두리에서 연기가 나오는 것이 보인다. "마족의 피 때문이군..." 그녀는 한쪽 눈썹을 치켜 올린다. "하지만 전에는 이런 일 없었어."~ */
  IF ~~ THEN REPLY #67604 /* ~"뭐? 아무도 당신을 키스한 적이 없단 말이오?"~ */ GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #67605 /* ~그녀는 어깨를 으쓱한다. "아무도 감히 내게 그러진 못했어. 설령 했더라도 이렇게 되진 않았을 거야."~ */
  IF ~~ THEN REPLY #67606 /* ~"그럼 그건 칭찬으로 받아들이겠소."~ */ GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #67607 /* ~"그래... 에..." 안나는 주변을 둘러본다, 그리고 그녀의 꼬리는 불규칙하게 움직인다. "안 움직일 거야? 우리는 여기 서서 담소나 나눌 시간이 없다고."~ */
  IF ~~ THEN REPLY #67608 /* ~"난 아직 당신과의 키스가 끝나지 않았소. 이쪽으로 오시오."~ */ GOTO 450
  IF ~~ THEN REPLY #67692 /* ~"좋소, 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #67609 /* ~그녀는 뒤로 물러서서 경계한다. "아니, 다음엔 무슨 일이 일어날지 누가 알겠어? 아마 내 몸이 타버릴지도 몰라! 당신하고 당신 입술은 내 근처에도 얼씬하지 마!"~ */
  IF ~~ THEN REPLY #67610 /* ~"좋소 - 이번에는. 갑시다."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 460 even though they appear after this state */
~  InParty("Annah")
InParty("Grace")
Global("Annah_Accuse_Grace","GLOBAL",0)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 451 // from:
  SAY #67611 /* ~당신이 부르자 안나는 당신을 쳐다보다가 눈살을 찌푸린다. "그래? 이젠 뭘 원하지?"~ */
  IF ~~ THEN REPLY #67612 /* ~"괜찮소?"~ */ GOTO 452
  IF ~~ THEN REPLY #67613 /* ~"당신에게 물어보고 싶은 것들이 있소."~ */ GOTO 453
  IF ~~ THEN REPLY #67614 /* ~"아무 것도 아니오, 안나. 당신이 아직도 나와 함께 있는지 확인했을 뿐이오."~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #67615 /* ~안나는 당신을 노려볼 뿐이다.~ */
  IF ~~ THEN REPLY #67616 /* ~"당신에게 뭘 좀 물어보려고 했소."~ */ GOTO 453
  IF ~~ THEN REPLY #67617 /* ~"관두시오, 그럼. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 451.1 452.0
  SAY #67618 /* ~"그럼 저 서큐버스에게 물어보지 그래?" 안나의 눈이 실처럼 가늘어진다. "대체 왜 우리는 그녀와 여행하는 거지? 우리에겐 그녀가 필요없다고!"~ */
  IF ~~ THEN REPLY #67619 /* ~"내겐 이럴 시간이 없소, 안나. 그만 좀 징징 짜고 날 좀 도와주시오."~ */ GOTO 455
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67620 /* ~"안나, 내게는 내가 받을 수 있는 모든 도움이 필요하오, 그리고 거기에는 당신 도움도 포함되어 있소."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67621 /* ~"안나, 제발. 당신은 내게 매우 소중하오, 그리고 난 당신 도움이 필요하오."~ */ GOTO 458
  IF ~~ THEN REPLY #67622 /* ~"안나, 나는 그녀가 아닌 당신이 나와 함께 있기를 바라오. 만약 그녀가 당신 기분을 상하게 한다면 그녀에게 떠나달라고 말하겠소.~ */ GOTO 454
  IF ~~ THEN REPLY #67623 /* ~"당신과 이 일에 대해 논쟁을 벌일 시간이 없소, 안나. 만약 훨-후럼-그레이스가 있는 게 싫다면 당신이 떠나시오."~ */ GOTO 455
  IF ~~ THEN REPLY #67624 /* ~"이 일에 대해서는 나중에 얘기하도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 453.3
  SAY #67625 /* ~"그럼 그렇게 해!" 안나는 당신을 노려본다. "당신이 그렇게 하지 않을 거라는 데 돈을 걸지. 만약 당신이 하면 좋은 거고, 안 하면 나중에 또 얘기가 나오게 되겠지."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67626 /* ~"안나, 내게는 내가 받을 수 있는 모든 도움이 필요하오, 그리고 거기에는 당신 도움도 포함되어 있소."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67627 /* ~"안나, 제발. 당신은 내게 매우 소중하오, 그리고 난 당신 도움이 필요하오."~ */ GOTO 458
  IF ~~ THEN REPLY #67629 /* ~"당신과 이 일에 대해 논쟁을 벌일 시간이 없소, 안나. 만약 훨-후럼-그레이스가 있는 게 싫다면 당신이 떠나시오."~ */ GOTO 455
  IF ~~ THEN REPLY #67630 /* ~"이 일에 대해서는 나중에 얘기하도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 455 // from: 453.0 453.4 454.2 457.1 457.2 460.2 461.3 462.1 463.4
  SAY #67631 /* ~"그럼 누가 당신 따위를 필요로 한다는 거지?!" 안나는 자기 배낭을 받아서는 내용물을 쏟고 거기에 침을 뱉는다. "다시는 내게 말을 걸지마, 이 더럽고, 추하고, 냄새나는 흉터투성이 쓰레기야. 너 같은 건 썩어버려!"~ */
  IF ~~ THEN REPLY #67632 /* ~"그럼 떠나시오. 다시는 당신을 보고 싶지 않소."~ */ DO ~LeaveParty()
DropInventory()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 456 // from: 453.1 454.0
  SAY #67633 /* ~"이 더러운 사기꾼 같으니. 날 어떻게 해야 할지 모르니까 날 그냥 데리고 다닌 거야? 그럼 왜 파로드가 날 딸려보냈을 때  나보고 꺼지라고 안 한 거지?"~ */
  IF ~~ THEN REPLY #67634 /* ~"왜냐하면--"~ */ GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #67635 /* ~"내가 당신과 함께 여행하는 걸 좋아한다고 생각해?! 그래?!" 안나의 얼굴이 역겨움으로 뒤틀린다. "당신 그 삶 같지도 않은 삶은 그야말로 엉망이야, 네 피부가 걸레나 마찬가지인 것처럼. 넌 자기가 무슨 운명이나 숙명과 대결이라도 벌일 거라고 생각하는 모양인데, 꿈 깨! 넌 그냥 쓰레기야!~ */
  IF ~~ THEN REPLY #67636 /* ~"안나, 난 당신이 떠나는 걸 원하지 않았기 때문에 당신에게 떠나라고 하지 않은 거요."~ */ GOTO 458
  IF ~~ THEN REPLY #67637 /* ~"다시는 그런 투로 내게 말하지 마시오. 조용히 하고 시키는 대로 하시오, 아니면 당신 삶도 내 것 만큼이나 엉망이 될 테니까."~ */ GOTO 455
  IF ~~ THEN REPLY #67638 /* ~"당신과 이 일에 대해 논쟁을 벌일 시간이 없소, 안나. 만약 훨-후럼-그레이스가 있는 게 싫다면 당신이 떠나시오."~ */ GOTO 455
END

IF ~~ THEN BEGIN 458 // from: 453.2 454.1 457.0
  SAY #67639 /* ~"오, 그래? 그럼 그건 무슨 뜻이었지?" 정말 멋지군. 넌 날 동정하는 거야? 내가 방해가 된다고 생각하는 거야? 말하라고!"~ */
  IF ~~ THEN REPLY #67640 /* ~"나는 당신을 동정하지 않소, 그리고 당신은 내게 짐이 되지 않소. 당신은 빠르고 능숙하오, 그리고 나는 내가 받을 수 있는 모든 도움을 필요로 하고 있소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse_Grace","GLOBAL",1)
~ GOTO 459
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #67641 /* ~안나는 눈살을 찌푸린다, 그리고 그녀의 꼬리는 앞뒤로 움직인다. "그래... 좋아... 그년이 우릴 식사로 먹으려고 이상한 눈치라도 보이면 내가 죽일 거야." 그녀는 당신을 노려본다. "당신이 원해서 내가 머무른다고는 착각하지는 마, 난 그냥 당신을 돕고 있을 뿐이니까."~ */
  IF ~~ THEN REPLY #67642 /* ~"좋소. 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67643 /* ~"그럼 갑시다."~ */ EXIT
END

IF WEIGHT #5 ~  !InParty("Annah")
GlobalGT("Annah","GLOBAL",0)
Global("Annah_Talked_Grace","GLOBAL",5)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 460 // from:
  SAY #67644 /* ~"뭘 원하는 거지"~ */
  IF ~  InParty("Grace")
~ THEN REPLY #67645 /* ~"안나, 내겐 당신 도움이 필요하오. 다시 나와 함께 여행을 하겠소?"~ */ GOTO 461
  IF ~  !InParty("Grace")
~ THEN REPLY #67646 /* ~"안나, 내겐 당신 도움이 필요하오. 다시 나와 함께 여행을 하겠소?"~ */ GOTO 469
  IF ~~ THEN REPLY #67647 /* ~"만약 당신이 우리와 더 이상 함께 여행을 하지 않을 거라면 내 물건들을 돌려주시오. 지금 당장."~ */ GOTO 455
  IF ~~ THEN REPLY #67914 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #67648 /* ~"어림없어! 저런 년하고는 싫어! 당신들 둘 다 어비스로 가서 함께 썩으라고!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67649 /* ~"안나, 내겐 당신이 필요하오. 다시 나와 함께 여행을 하겠소?"~ */ GOTO 462
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67650 /* ~진실: "안나, 훨-후럼-그레이스는 내게 있어 당신 만큼 소중하지 않소. 부디 우리와 함께 다시 여행을 해주겠소?"~ */ GOTO 463
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67651 /* ~거짓말: "안나, 훨-후럼-그레이스는 내게 있어 당신 만큼 소중하지 않소. 부디 우리와 함께 다시 여행을 해주겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_5","GLOBALLaw",-1)
~ GOTO 463
  IF ~~ THEN REPLY #67652 /* ~"만약 당신이 우리와 더 이상 함께 여행을 하지 않을 거라면 내 물건들을 돌려주시오. 지금 당장."~ */ GOTO 455
  IF ~~ THEN REPLY #67915 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 468
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #67653 /* ~"나는 영혼을 먹는 저런 화냥년하고는 여행 못해! 저년이 빠져야 한다고!"~ */
  IF ~~ THEN REPLY #67654 /* ~"좋소. 그녀를 떠나보내는 일을 고려하겠소. 나중에 다시 얘기합시다. ~ */ EXIT
  IF ~~ THEN REPLY #67655 /* ~"만약 당신이 우리와 더 이상 함께 여행을 하지 않을 거라면 내 물건들을 돌려주시오. 지금 당장."~ */ GOTO 455
  IF ~~ THEN REPLY #67916 /* ~"당신이 그렇게 느꼈다니 미안하오... 그럼 관두시오. 안녕히 계시오."~ */ GOTO 468
END

IF ~~ THEN BEGIN 463 // from: 461.1 461.2
  SAY #67656 /* ~"저년이 당신에게 별 의미가 없다면, 저년이 빠져야 해!! 나는 영혼을 먹는 저런 화냥년하고는 여행 못해! ~ */
  IF ~~ THEN REPLY #67657 /* ~진실: "안나, 보시오, 나는 그녀에게는 관심이 없소. 나는 당신을 필요로 하오, 하지만 당분간은 그녀 도움도 필요하오. 그 후에는 당신과 나만 있게 될 것이오." ~ */ GOTO 464
  IF ~~ THEN REPLY #67658 /* ~거짓말: "안나, 보시오, 나는 그녀에게는 관심이 없소. 나는 당신을 필요로 하오, 하지만 당분간은 그녀 도움도 필요하오. 그 후에는 당신과 나만 있게 될 것이오." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_6","GLOBALLaw",-1)
~ GOTO 464
  IF ~~ THEN REPLY #67659 /* ~"그럼 당신은 그 누구와도 함께 여행하지 못할 것이오. 난 당신을 이 곳에 남기겠소, 그러니 다시 시체나 찾아 헤매는 비참한 삶으로 돌아가든지, 아니면 우리와 함께 가는 길을 택하시오."~ */ GOTO 465
  IF ~~ THEN REPLY #67660 /* ~"좋소. 그녀를 떠나보내는 일을 고려하겠소. 나중에 다시 얘기합시다. ~ */ EXIT
  IF ~~ THEN REPLY #67661 /* ~"만약 당신이 우리와 더 이상 함께 여행을 하지 않을 거라면 내 물건들을 돌려주시오. 지금 당장."~ */ GOTO 455
  IF ~~ THEN REPLY #67917 /* ~"당신이 그렇게 느꼈다니 미안하오... 그럼 관두시오. 안녕히 계시오."~ */ GOTO 468
END

IF ~~ THEN BEGIN 464 // from: 463.0 463.1
  SAY #67662 /* ~안나는 당신을 쳐다보면서 당신의 표정을 읽으려고 한다. "진실을 말해야 해. 그래야 한다고!"~ */
  IF ~~ THEN REPLY #67663 /* ~"난 진심이오, 자 갑시다.~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 463.2
  SAY #67664 /* ~안나는 당신을 쳐다본다. 당신 이야기를 하자 그녀로부터 분노는 사라지고, 그녀의 이마에 주름이 잡힌다. "그래... 그러도록 할게... 지금까지 괜찮았으니까."~ */
  IF ~~ THEN REPLY #67665 /* ~"그거 참 멋진 생각이군. 다시 시체나 뒤지는 생활로 돌아가시오, 그러다 보면 언젠가는 당신도 파로드처럼 뒤틀리고, 병들고, 약해질지도 모르지. 아니면 우리와 함께 갑시다. 당신이 선택하시오."~ */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #67666 /* ~안나는 당신을 쳐다본다, 그리고 그녀의 꼬리는 전혀 움직이지 않는다.~ */
  IF ~~ THEN REPLY #67667 /* ~"당신이 선택하시오. 지금 당장."~ */ GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.0
  SAY #67668 /* ~"나... 당신과 함께 가겠어."~ */
  IF ~~ THEN REPLY #67669 /* ~"좋소. 이제 갑시다.~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 468 // from: 461.4 462.2 463.5
  SAY #67670 /* ~"그래, 날개 달린 창녀 품 안으로 돌아가라고 " 안나는 바닥에다 침을 뱉는다. "난 너희들 둘하고는 상종을 않겠어."~ */
  IF ~~ THEN REPLY #67671 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 469 // from: 460.1
  SAY #67672 /* ~안나의 눈이 실처럼 가늘어진다. "그럼 서큐버스는 어디 있지? 그녀가 당신 목을 물어서 어비스로 보내려고 시도라도 했어?"~ */
  IF ~~ THEN REPLY #67673 /* ~"그녀는 더 이상 우리와 함께 여행을 하지 않소, 안나. 난 당신이 다시 우리와 합류했으면 하오."~ */ GOTO 470
  IF ~~ THEN REPLY #67674 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 470 // from: 469.0
  SAY #67675 /* ~"그 상태가 유지될지 내가 어떻게 알지? 만약 그녀가 돌아오면 - 또는..." 안나는 낭패한 듯하다. "그녀와 비슷한 족속이 또 들어오면? 똑같은 일의 반복인가?"~ */
  IF ~~ THEN REPLY #67676 /* ~"안나, 그런 일은 다시는 일어나지 않을 것이오." ~ */ GOTO 471
  IF ~~ THEN REPLY #67677 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 471 // from: 470.0
  SAY #67678 /* ~"그래, 좋아... 앞으로는 조심해. 그래, 같이 여행을 할게."~ */
  IF ~~ THEN REPLY #67679 /* ~"좋소. 갑다오."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 187.6 477.6
  SAY #67697 /* ~당신이 얘기를 하자 안나의 꼬리가 멈춘다, 그리고 그녀는 당신을 노려본다. "진담이야? 농담할 때가 아니라고."~ */
  IF ~~ THEN REPLY #67698 /* ~"아니오, 안나. 나는 악풍의 궁정에서 그가 죽은 것을 발견했소. 누가 그를 죽였을지 혹시 아시오?"~ */ GOTO 476
END

IF ~~ THEN BEGIN 473 // from: 187.7 477.7
  SAY #67699 /* ~"나..." 그녀는 고개를 젓는다. "모르겠어. 정신이 반쯤이라도 있는 자라면 파로드와 대적하려고 하지는 않을 거야. 그는 만만치 않은 세력을 지녔으니까."~ */
  IF ~~ THEN REPLY #67700 /* ~"나와 더 이상 함께 갈 필요는 없소, 안나. 만약 당신이 매장된 마을에 남아있어야 한다면, 나는-"~ */ GOTO 474
  IF ~~ THEN REPLY #67701 /* ~"그럼 좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67702 /* ~"그럼 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 474 // from: 473.0
  SAY #67704 /* ~"아니..." 안나가 말을 중단시킨다. "난 마을에 있을 필요가 없어. 그렇지 않아도 난 파로드가 죽으면 무엇을 할까 생각하던 중이었어." 그녀는 냉소한다. "그는 지금쯤 지옥 어딘가에서 신음하고 있겠지."~ */
  IF ~~ THEN REPLY #67705 /* ~"하지만... 그는 당신 아버지요. 당신은-"~ */ DO ~SetGlobal("Annah_Discovers_Pharod","GLOBAL",3)
~ GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.0
  SAY #67706 /* ~"내 친 아빠도 아냐." 그녀의 눈빛이 냉혹해진다. "그는 탐욕스럽고, 어리석고, 이기적이며, 약했어." 그녀는 눈살을 찌푸린다. "이제 그는 죽었어, 그뿐이야."~ */
  IF ~~ THEN REPLY #67707 /* ~"좋소, 그럼. 당신에게 다른 것에 대해 물어보고 싶소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67708 /* ~"그럼 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 476 // from: 472.0
  SAY #67709 /* ~"아니, 하지만 난 그의 시체를 봐야겠어. 파로드는 속임수에 능하니까 당신을 기만하고 있는지도 몰라..."~ */
  IF ~~ THEN REPLY #67710 /* ~"곧 보여주도록 하겠소. 하지만 우선 물어볼 것들이 있소..."~ */ GOTO 477
  IF ~~ THEN REPLY #67711 /* ~"그럼 당신에게 보여주리다.~ */ EXIT
END

IF ~~ THEN BEGIN 477 // from: 316.1 317.1 318.0 319.1 320.1 321.0 322.5 324.0 326.3 345.0 347.0 348.5 362.0 363.4 371.0 372.1 373.1 374.1 376.0 377.1 378.1 379.1 380.0 387.0 389.1 390.0 393.1 394.1 401.0 402.0 403.2 404.4 405.1 406.1 407.2 411.1 419.2 420.0 421.0 422.0 423.0 424.3 425.1 426.0 428.0 430.1 431.1 435.1 436.0 438.0 439.1 440.2 441.2 459.0 473.1 475.0 476.0
  SAY #67712 /* ~"뭐야?"~ */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67714 /* ~"그래 당신이 내 시체를 발견한 장소는 어디요?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67716 /* ~"그래 당신이 내 시체를 발견한 장소는 어디요?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67717 /* ~"그래 당신이 내 시체를 발견한 장소는 어디요?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67719 /* ~"당신이 어떻게 내 시체를 찾았는가에 대해서 물어보고 싶은 것이 하나 있소..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67720 /* ~"안나... 내가 파로드를 만나기 전에 혹시 나와 벌통에서 만난 적이 있지 않소?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67721 /* ~"안나, 내 시체를 시체안치소로 가져오기 전에 혹시 내 몸에서 뭔가 발견했소?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67722 /* ~"안나, 나는 악풍의 궁정에서 파로드가 죽은 것을 발견했소."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67723 /* ~"안나, 당신은 파로드가 어떻게 죽었는지 아시오?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67724 /* ~"파로드에 대해 좀 얘기해주시오."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67725 /* ~"안나, 파로드가 내게 돌려주기 위해 내 몸에서 나온 공물을 찾으러 갔을 때 그는 잠시 동안 사라졌다가 다시 나타났소. 하지만 그는 악풍의 궁정을 떠나지 않았소. 그가 어디로 갔었는지 혹시 아시오?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67726 /* ~"안나, 내게 도둑 기술을 가르쳐 줄 수 있겠소?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68260 /* ~"안나, 내게 도둑 기술을 가르쳐 줄 수 있겠소?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67727 /* ~"당신도 알았으면 하오. 내가 미로에서 래벌에게 키스했을 때 나는..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67728 /* ~"당신도 알았으면 하오. 내가 미로에서 래벌에게 키스했을 때 나는..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67729 /* ~"미로에서 래벌은 당신이 고통을 받았다고 했소... 그게 무슨 뜻이오?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67730 /* ~"래벌 퍼즐웰이라는 나이트 해그에 대해 들은 적이 있소?"~ */ GOTO 316
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67731 /* ~"어디 가면 래벌의 '일부'를 찾을 수 있을지 혹시 아시오?"~ */ GOTO 319
  IF ~~ THEN REPLY #67732 /* ~"아무 것도 아니오, 안나. 당신이 아직도 나와 함께 있는지 확인했을 뿐이오."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Fortress_Annah","GLOBAL",3)
~ THEN BEGIN 478 // from:
  SAY #68184 /* ~당신은 힘을 가지고 손을 내민다, 그러자 공기가 요동하고 안나가 꿈틀거리기 시작한다 - 그녀는 천천히 고개를 든다, 그리고 어리둥절한 듯 고개를 젓는다.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68185 /* ~"나는 내 죽음을 찾았소, 그리고 그는 날 별로 달가워하지 않는 것 같소. 내겐 당신 도움이 필요하오."~ */ DO ~SetGlobal("Fortress_Annah","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 479
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68326 /* ~안나. 괜찮소?~ */ GOTO 481
END

IF ~~ THEN BEGIN 479 // from: 478.0
  SAY #68186 /* ~안나의 눈은 강철처럼 단호해진다, 그리고 그녀는 고개를 끄덕인다. "난 당신 곁에서 싸우겠어."~ [ANA205A] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68187 /* ~"그럼 해치웁시다..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68205 /* ~"그럼 해치웁시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68206 /* ~"그럼 해치웁시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68207 /* ~"그럼 해치웁시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68208 /* ~"그럼 해치웁시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68241 /* ~"그럼 해치웁시다...~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68431 /* ~"그럼 해치웁시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68432 /* ~"그럼 해치웁시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68443 /* ~"그럼 해치웁시다."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 480 // from: 187.11 477.11
  SAY #68258 /* ~안나는 눈살을 찌푸린다, 그리고 고개를 젓는다. "아니, 지금은 아냐 - 적이 바로 가까이에 있다고!"~ */
  IF ~~ THEN REPLY #68259 /* ~"관두시오, 그럼..."~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from: 478.1
  SAY #68327 /* ~당신 목소리를 듣자 안나의 눈이 휘둥그레진다. "어떻게 된 거야? 당신 목소리, 그건 메아리 같아..."~ */
  IF ~~ THEN REPLY #68328 /* ~나는 변했소. 이제 나는 다른 존재이며, 이 곳에 오래 머무를 수가 없소. 원한다면 당신을 시길로 돌려보내 주겠소.~ */ GOTO 482
END

IF ~~ THEN BEGIN 482 // from: 481.0
  SAY #68329 /* ~"뭐..." 안나는 입을 벌린다. "어-어디로 가는 거야?"~ */
  IF ~~ THEN REPLY #68330 /* ~나와 내 죽음이 분리되어 있는 동안 헤아릴 수조차 없는 범죄가 저질러졌소. 이러한 범죄들에는... 대가가 따르오. 나같은 자를 위한 장소가 마계에는 따로 마련되어 있소. 그것은... 일종의 형벌이오.~ */ GOTO 483
END

IF ~~ THEN BEGIN 483 // from: 482.0
  SAY #68331 /* ~"하지만 난... 당신이 떠나는 걸 원하지 않아."~ */
  IF ~~ THEN REPLY #68332 /* ~나는 당신이 날 위해 얼마나 많은 것을 희생할 각오를 했는지를 결코 잊지 않을 것이오, 안나.~ */ GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.0
  SAY #68333 /* ~안나는 고개를 끄덕인다. 그녀는 뭔가 다른 할 얘기가 있는 듯하다, 하지만 침묵을 지킨다 - 그러나 말하지 않은 생각은 그녀의 마음 속에 남아 머뭇거린다.~ */
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68334 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68335 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68336 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68337 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68338 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68339 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68493 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68494 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68495 /* ~아무 말을 하지 않아도 당신 마음을 알 수가 있소, 안나. 잘 가시오.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #9 ~  Global("Fortress_Annah","GLOBAL",4)
~ THEN BEGIN 485 // from:
  SAY #68410 /* ~안나의 눈은 강철처럼 단호해진다, 그리고 그녀는 고개를 끄덕인다. "난 당신 곁에서 싸우겠어."~ */
  IF ~~ THEN REPLY #68411 /* ~"그럼 해치웁시다..."~ */ EXIT
END
