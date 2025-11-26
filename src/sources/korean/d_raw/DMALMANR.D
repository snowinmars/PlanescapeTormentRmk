// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMALMANR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMALMANR~

IF ~  Global("Malmaner","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #27976 /* ~이 마르고 준수한 용모의 남자는 급하게 다가와 당신을 부른다. "아, 실례하오! 잠깐만 시간을 내주시겠소? 혹시 당신은 양장점에 가려고 이 곳에 오셨소?"~ */
  IF ~~ THEN REPLY #28027 /* ~"나는-.."~ */ GOTO 1
  IF ~~ THEN REPLY #28028 /* ~그를 무시하고 계속 걷는다.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27977 /* ~남자는 당신 말이 미처 끝나기도 전에 끼어든다. "내가 부탁을 하려는 건 내가 재단사를 화나게 만든 것 같기 때문이오. 나는 그 성미 급한 얼간이에게 의상을 하나 만들어 달라고 부탁했었소, 하지만 그는 나를 가게에서 내쫓았고 나와 다시는 말도 하려고 하지 않소. ~ */
  IF ~~ THEN REPLY #28029 /* ~"그래, 뭐-"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27978 /* ~그는 갑자기 두 주먹을 불끈 쥐고 하늘을 향해 휘둘러 댄다. "내가 대체 무슨 짓을 했다고 그런 대우를 받아야 하는 거요? 난 아무 짓도 하지 않았소! 나는 *손님*이였소. 날 위해 봉사하는 건 그의 의무요! 무례한 어릿광대 같으니."~ */
  IF ~~ THEN REPLY #28030 /* ~"당신은 나로부터 뭘 원했소?"~ */ GOTO 4
  IF ~~ THEN REPLY #28031 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 4.0 5.0
  SAY #27979 /* ~"그 가게에 들어가서 날 위해 내 의상을 가져다 달라고 부탁할 수 있겠소? 나는 가장무도회에 참석해야 하오, 그리고 내겐 다른 재단사에게 다시 주문할 시간은 없소."~ */
  IF ~~ THEN REPLY #28032 /* ~"그렇소. 당장 가서 가져오겠소."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~나는 곤캘브즈라는 재단사로부터 맬매너를 위해 가장무도회용 의상을 가져다 주기로 했다. ~ */ GOTO 6
  IF ~~ THEN REPLY #28033 /* ~"하겠소. 하지만 공짜는 안 되오."~ */ GOTO 8
  IF ~~ THEN REPLY #28034 /* ~"왜 당신이 직접 가서 찾아오지 않소?"~ */ GOTO 7
  IF ~~ THEN REPLY #28035 /* ~"아니, 이런 일을 할 시간이 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #27980 /* ~"에? 그는 다시 당신에게 주의를 집중한다. "오! 그렇군, 당신...""~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #27981 /* ~"기다리시오, 제발 기다리시오!"~ */
  IF ~~ THEN REPLY #28050 /* ~그의 얘기를 듣는다.~ */ GOTO 3
  IF ~~ THEN REPLY #28051 /* ~떠난다.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 7.0 8.0 16.0
  SAY #27982 /* ~"아, 정말 잘됐소! 그 곳은 여기 있는 바로 이 건물이오..." 그는 자신의 바로 북쪽에 있는 길고 낮은 건물을 가리킨다. "정말 고맙소!"~ */
  IF ~~ THEN REPLY #28052 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #27983 /* ~그는 코웃음치며 눈을 부라린다. "돼지같은 촌뜨기 녀석! 그 경위는 모르겠으나 아무래도 내가 그 건방진 뚱보를 '화나게' 한 모양이오! 그는 내가 그의 가게의 들어오는 것을 금지시켰으며, 나와는 일절 말을 하려고 하지 않소."~ */
  IF ~~ THEN REPLY #28053 /* ~"당장 가서 가져오겠소."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~나는 곤캘브즈라는 재단사로부터 맬매너를 위해 가장무도회용 의상을 가져다 주기로 했다. ~ */ GOTO 6
  IF ~~ THEN REPLY #28054 /* ~"당신 의상을 가져오겠소, 하지만 공짜는 안 되오."~ */ GOTO 8
  IF ~~ THEN REPLY #28055 /* ~"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 7.1 16.1
  SAY #27984 /* ~"*뭐*라고? 아런 젠장, 당신은 고작 *의상* 하나를 가져다 줄 뿐이오! 시간도 거의 걸리지 않소! 난 그런 하찮은 일을 부탁하는 데 수고비를 주어야 한다고는 생각하지 않소!"~ */
  IF ~~ THEN REPLY #28056 /* ~"좋소. 그럼 가서 가져오겠소."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~나는 곤캘브즈라는 재단사로부터 맬매너를 위해 가장무도회용 의상을 가져다 주기로 했다. ~ */ GOTO 6
  IF ~~ THEN REPLY #28057 /* ~"그럼 내 시간을 허비할 가치가 없소. 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #27985 /* ~"기다리시오..." 그는 크게 한숨을 쉰다. "그럼 몇 분밖에 걸리지 않을 이 하찮은 심부름의 대가로 동전 열 닢을 주겠소. 만족하시오.. '나으리?'"~ */
  IF ~~ THEN REPLY #28058 /* ~"그렇소. 내게 돈을 주면 가서 의상을 가져오겠소."~ */ DO ~GivePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #28059 /* ~"난 당신 말투가 마음에 들지 않소, '나으리.' 나는 왜 재단사가 당신을 그렇게 싫어하는지 이해할 것 같소. 안녕히 계시오."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #28060 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27986 /* ~그는 투덜거리며 당신에게 동전을 준다. "그 곳은 바로 저기 있는 길쭉한 건물이오." 그는 길고 낮은 건물을 가리킨다. "부디 서둘러 주시오."~ */
  IF ~~ THEN REPLY #28061 /* ~"가서 가져오겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~나는 곤캘브즈라는 재단사로부터 맬매너를 위해 가장무도회용 의상을 가져다 주기로 했다. ~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28062 /* ~"서두르라고? 어디로? 아, 그리고 돈을 거저 주어 고맙소. 안녕히 계시오... '나으리.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28063 /* ~"서두르라고? 어디로? 아, 그리고 돈을 거저 주어 고맙소. 안녕히 계시오... '나으리.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #27987 /* ~그는 등 뒤에서 당신을 부른다. "이... 이 흉터투성이 인간 쓰레기 같으니! 쭈글쭈글한데다가 머리는 옴투성이인 똥통같은 놈! 돌아와, 이 염병할 역병신아! 아무도 맬매너를 그렇게 대할 순 없어! 경비병을 부르기 전에 당장 돌아와!"~ */
  IF ~~ THEN REPLY #28064 /* ~"좋소... 당신 돈을 도로 가져가시오."~ */ DO ~TakePartyGold(10)
~ GOTO 13
  IF ~~ THEN REPLY #28065 /* ~그에게 동전 열 닢을 던진다.~ */ DO ~TakePartyGold(10)
~ GOTO 14
  IF ~~ THEN REPLY #28066 /* ~그를 무시하고 떠난다.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #27988 /* ~그는 등 뒤에서 당신을 부른다. "이... 이 흉터투성이 인간 쓰레기 같으니! 쭈글쭈글한데다가 머리는 옴투성이인 똥통같은 놈! 돌아와, 이 염병할 역병신아! 아무도 맬매너를 그렇게 대할 순 없어! 경비병을 부르기 전에 당장 돌아와!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 273
END

IF ~~ THEN BEGIN 13 // from: 11.0 21.0 21.2 21.4 21.6
  SAY #27989 /* ~"흥!" 그는 당신 손에서 동전을 낚아챈다, 그리고 돈을 지갑에 넣은 다음 쿵쿵거리며 떠난다.~ */
  IF ~~ THEN REPLY #28067 /* ~떠난다.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1 21.1 21.3 21.5 21.7
  SAY #27990 /* ~사내는 놀라서 당신을 빤히 쳐다본다. "이... 무례한..."~ */
  IF ~~ THEN REPLY #28068 /* ~"그 주둥아리 때문에 목숨을 잃기 전에 조용히 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #28069 /* ~그를 무시하고 떠난다.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2 14.0 21.8
  SAY #27991 /* ~"어디 보여주지! 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #28070 /* ~그를 공격한다. ~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #28072 /* ~누가 도착하기 전에 떠난다.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~  Global("Malmaner","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #27992 /* ~"시길의 가장 친절한 시민이시여..." 그는 신랄하게 비꼬는 어조로 말한다. "도와주셔서 *정말* 감사합니다. 아... 잠깐... 당신은 날 전혀 도와주지 않았군, 그렇지 않소? 흠."~ */
  IF ~~ THEN REPLY #28073 /* ~"마음을 바꿨소. 가서 당신 의상을 가져오겠소."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~나는 곤캘브즈라는 재단사로부터 맬매너를 위해 가장무도회용 의상을 가져다 주기로 했다. ~ */ GOTO 6
  IF ~~ THEN REPLY #28075 /* ~"이것 보시오... 당신 의상을 가져오겠소, 하지만 공짜는 안 되오."~ */ GOTO 8
  IF ~~ THEN REPLY #28076 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",2)
~ THEN BEGIN 17 // from:
  SAY #27993 /* ~남자는 기대에 부풀어 당신을 바라본다. "그래, 곤캘브즈로부터 의상을 구해 왔소?"~ */
  IF ~~ THEN REPLY #28077 /* ~"아니, 아직 아니오."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.4 32.2 33.2 38.0 39.2
  SAY #27994 /* ~"그럼 가서 구해 오시오! 난 가장무도회에 참석해야 하니까!"~ */
  IF ~~ THEN REPLY #28078 /* ~"그것을 입수하면 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",3)
!PartyHasItem("Costume1")
~ THEN BEGIN 19 // from:
  SAY #27995 /* ~남자는 기대에 부풀어 당신을 바라본다. "그래, 곤캘브즈로부터 의상을 구해 왔소?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28079 /* ~"아니, 아직 아니오. 그는 당신이 옷값으로 동전 서른 닢을 지불해야 한다고 말하고 있소."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28083 /* ~거짓말: "아니, 아직 아니오. 그는 옷값으로, 어, 동전 쉰 닢을 요구하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28084 /* ~"아니, 아직 아니오... 하지만 이러한 진짜 더스트맨 법복은 어떻겠소?"~ */ GOTO 32
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28085 /* ~거짓말: "어... 그렇소. 여기 더스트맨 법복이 있소. 내 말은 의상 말이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_2","GLOBALLaw",-1)
~ GOTO 33
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28086 /* ~"아니, 아직 아니오."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 23.2 27.0 32.0 33.0
  SAY #27996 /* ~"*뭐?!* 흥! 좋아, 좋아... 이 돈을 가지고 그 염병할 의상을 당장 구해 오시오!" 그는 당신에게 동전 서른 닢을 던져 준다. ~ */
  IF ~~ THEN REPLY #28087 /* ~"그것을 입수하면 돌아오겠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28088 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28089 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 24.1 40.1 42.1
  SAY #27997 /* ~그는 등 뒤에서 당신을 부른다. "이... 이 흉터투성이 인간 쓰레기 같으니! 쭈글쭈글한데다가 머리는 옴투성이인 똥통같은 놈! 돌아와, 이 염병할 역병신아! 아무도 맬매너를 그렇게 대할 순 없어! 경비병을 부르기 전에 당장 돌아와!"~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28090 /* ~"좋소... 당신 돈을 도로 가져가시오."~ */ DO ~TakePartyGold(30)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28091 /* ~그에게 동전 서른 닢을 던진다.~ */ DO ~TakePartyGold(30)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28092 /* ~"좋소... 당신 돈을 도로 가져가시오."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28093 /* ~그에게 동전 쉰 닢을 던진다.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28094 /* ~"좋소... 당신 돈을 도로 가져가시오."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28095 /* ~그에게 동전 쉰 닢을 던진다.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28096 /* ~"좋소... 당신 돈을 도로 가져가시오."~ */ DO ~TakePartyGold(80)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28097 /* ~그에게 동전 여든 닢을 던진다.~ */ DO ~TakePartyGold(80)
~ GOTO 14
  IF ~~ THEN REPLY #28098 /* ~그를 무시하고 그냥 떠난다.~ */ GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 40.2 42.2
  SAY #27998 /* ~그는 등 뒤에서 당신을 부른다. "이... 이 흉터투성이 인간 쓰레기 같으니! 쭈글쭈글한데다가 머리는 옴투성이인 똥통같은 놈! 돌아와, 이 염병할 역병신아! 아무도 맬매너를 그렇게 대할 순 없어! 경비병을 부르기 전에 당장 돌아와!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 274
END

IF ~~ THEN BEGIN 23 // from: 19.1 32.1 33.1
  SAY #27999 /* ~그는 소스라치게 놀란 것 같다. "말도 안돼! 터무니없군! 의상을 발주했을 때 우리는 동전 서른 닢에 합의를 보았소."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28099 /* ~거짓말: "그는 화가 났소, 맬매너. 당신은 그의 기분을 상하게 했고, 그래서 그는 가격을 올렸소."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28100 /* ~거짓말: "그는 화가 나서 가격을 올렸소."~ */ GOTO 27
  IF ~~ THEN REPLY #28101 /* ~"미안하오, 내가 잘못 말했소. 비용은 서른 닢밖에 들지 않았소."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28000 /* ~그는 당신을 의심쩍은 눈초리로 바라본다, 그러나 곧 태도를 누그러뜨린다. "좋소! 여기 있으니 가져가시오. 그 염병할 의상이나 당장 구해 오시오!" 그는 당신에게 동전 쉰 닢을 던져 준다. ~ */
  IF ~~ THEN REPLY #28102 /* ~"그것을 입수하면 돌아오겠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28103 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28104 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~  Global("Malmaner","GLOBAL",3)
PartyHasItem("Costume1")
~ THEN BEGIN 25 // from:
  SAY #28001 /* ~남자는 기대에 부풀어 당신을 바라본다. "그래, 곤캘브즈로부터 의상을 구해 왔소?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28105 /* ~"여기 있소. 그걸 위해 난 동전 서른 닢을 지불했소."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 가장무도회용 의상을 받아가지고 그에게로 돌아왔다. ~ */ GOTO 26
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28106 /* ~거짓말: "그래, 여기 있소. 그걸 위해 난 동전 쉰 닢을 지불했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28107 /* ~"그래, 여기 있소."~ */ DO ~TakePartyItemNum("Costume1",1)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 가장무도회용 의상을 받아가지고 그에게로 돌아왔다. ~ */ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.2 30.0
  SAY #28002 /* ~"좋소, 좋아! 여기 있소." 그는 당신에게 동전 서른 닢을 던져 준다. "그럼 이제 나는..."~ */
  IF ~~ THEN REPLY #28108 /* ~"기다리시오... 곤캘브는 이미 많은 사람들이 이 가장무도회에 더스트맨 의상을 입고 갈 예정이라고 했소."~ */ GOTO 34
  IF ~~ THEN REPLY #28109 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY #28003 /* ~그는 입을 오므리고 당신을 의심쩍은 눈초리로 바라본다.~ */
  IF ~~ THEN REPLY #28110 /* ~"미안하오, 내가 잘못 말했소. 비용은 서른 닢밖에 들지 않았소."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #28004 /* ~그는 소스라치게 놀란 것 같다. "말도 안돼! 터무니없군! 의상을 발주했을 때 우리는 동전 서른 닢에 합의를 보았소."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28111 /* ~거짓말: "그는 화가 났소, 맬매너. 당신은 그의 기분을 상하게 했고, 그래서 그는 가격을 올렸소."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(50)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 가장무도회용 의상을 받아가지고 그에게로 돌아왔다. ~ */ GOTO 29
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28112 /* ~거짓말: "그는 화가 나서 가격을 올렸소."~ */ GOTO 30
  IF ~~ THEN REPLY #28113 /* ~"미안하오, 내가 잘못 말했소. 비용은 서른 닢밖에 들지 않았소."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 가장무도회용 의상을 받아가지고 그에게로 돌아왔다. ~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #28005 /* ~그는 당신을 의심쩍은 눈초리로 바라본다, 그러나 곧 태도를 누그러뜨린다. "좋소, 좋아! 여기 있소." 그는 당신에게 동전 쉰 닢을 던져 준다. "그럼 이제 나는..."~ */
  IF ~~ THEN REPLY #28114 /* ~"기다리시오... 곤캘브는 이미 많은 사람들이 이 가장무도회에 더스트맨 의상을 입고 갈 예정이라고 했소."~ */ GOTO 34
  IF ~~ THEN REPLY #28115 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #28006 /* ~그는 입을 오므리고 당신을 의심쩍은 눈초리로 바라본다.~ */
  IF ~~ THEN REPLY #28116 /* ~"미안하오, 내가 잘못 말했소. 비용은 서른 닢밖에 들지 않았소."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY #28008 /* ~"마침내!" 그는 당신 손으로부터 의상을 낚아챈다. "그럼 이제 나는..." ~ */
  IF ~~ THEN REPLY #28117 /* ~"기다리시오... 곤캘브는 이미 많은 사람들이 이 가장무도회에 더스트맨 의상을 입고 갈 예정이라고 했소."~ */ GOTO 34
  IF ~~ THEN REPLY #28118 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.2
  SAY #28009 /* ~그는 역겨움에 뒤로 물러선다. "우! 너무 더럽군... 이걸 좀 보시오! 더럽고, 나방이 뜯어먹은 것 같은 꼴을... 그리고 감은 또 왜 이렇게 거친 거야! 난 이런 쓰레기는 절대 입을 수가 없소."~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28119 /* ~"그는 당신이 옷값으로 동전 서른 닢을 내야 한다고 말하고 있소."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28120 /* ~거짓말: "그는 진짜 의상에 대한 옷값으로 동전 쉰 닢을 요구하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28121 /* ~"실은 아직 실제 의상을 입수하지 못했소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 19.3
  SAY #28010 /* ~그는 역겨움에 뒤로 물러선다. "우! 너무 더럽군... 이걸 좀 보시오! 더럽고, 나방이 뜯어먹은 것 같은 꼴을... 그리고 감은 또 왜 이렇게 거친 거야! 난 이런 쓰레기는 절대 입을 수가 없소." 그는 당신을 의심쩍은 눈초리로 바라본다. "대체 이건 뭐요?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28122 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 그는 당신이 옷값으로 동전 서른 닢을 내야 한다고 말하고 있소."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28123 /* ~거짓말: "아무 것도 아니오. 신경 쓰지 마시오. 그는 진짜 의상에 대한 옷값으로 동전 쉰 닢을 요구하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28124 /* ~"관두시오. 아직 실제 의상을 입수하지 못했소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 34 // from: 26.0 29.0 31.0
  SAY #28007 /* ~"그가 그랬소? 젠장! 나는 그런 *평범한* 의상을 입고 무도회에 가기는 싫소... 흠..."~ */
  IF ~~ THEN REPLY #28125 /* ~"그에게 준비된 다른 의상이 있는지 가서 알아보겠소."~ */ GOTO 36
  IF ~~ THEN REPLY #28126 /* ~"당신을 위해 다른 의상을 가져다 줄 수도 있소... 하지만 비용이 들 거요."~ */ GOTO 37
  IF ~~ THEN REPLY #28127 /* ~"안됐군. 안녕히 계시오."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2 36.2 37.1
  SAY #28011 /* ~"흥!" 그는 조용히 뭐라고 중얼거리면서 떠난다. ~ */
  IF ~~ THEN REPLY #28128 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #28012 /* ~"괜찮은 생각이군, 아니 정말 좋은 생각이야! 빨리 가서 그 얼간이에게 다른 의상은 없는지 알아봐 주겠소?"~ */
  IF ~~ THEN REPLY #28129 /* ~"다른 의상을 가지고 돌아오리다."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALGood_Malmaner_1","GLOBALGood",1)
~ JOURNAL #27454 /* ~나는 곤캘브즈라는 재단사로부터 맬매너를 위해 두 번째 의상을 가져다 주기로 합의했다. ~ */ EXIT
  IF ~~ THEN REPLY #28130 /* ~"그러리다. 하지만 비용이 들 거요."~ */ GOTO 37
  IF ~~ THEN REPLY #28131 /* ~"내가 했던 제의는 없던 일로 해주시오. 안녕히 계시오."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.1 36.1
  SAY #28013 /* ~그는 눈알을 부라리며 당신을 경멸하는 표정으로 쳐다본다. "그럴 줄 알았어야 했어! 여기 있소, *용병.* 이거면 충분하겠지?" 그는 당신에게 동전 스무 닢을 준다. ~ */
  IF ~~ THEN REPLY #28132 /* ~"그거면 되겠소. 다른 의상을 가지고 돌아오리다."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
GivePartyGold(20)
~ JOURNAL #27454 /* ~나는 곤캘브즈라는 재단사로부터 맬매너를 위해 두 번째 의상을 가져다 주기로 합의했다. ~ */ EXIT
  IF ~~ THEN REPLY #28133 /* ~"내가 했던 제의는 없던 일로 해주시오. 안녕히 계시오."~ */ GOTO 35
END

IF ~  Global("Malmaner","GLOBAL",4)
~ THEN BEGIN 38 // from:
  SAY #28014 /* ~남자는 기대에 부풀어 당신을 바라본다. "그래, 그로부터 다른 의상을 구해 왔소?"~ */
  IF ~~ THEN REPLY #28134 /* ~"아니, 아직 아니오."~ */ GOTO 18
END

IF ~  Global("Malmaner","GLOBAL",5)
!PartyHasItem("Costume2")
~ THEN BEGIN 39 // from:
  SAY #28015 /* ~남자는 기대에 부풀어 당신을 바라본다. "그래, 그로부터 다른 의상을 구해 왔소?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28135 /* ~"아니, 아직 아니오. 그에게 다른 의상이 있기는 하나, 그는 그 값으로 동전 쉰 닢을 요구하고 있소."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28136 /* ~거짓말: "아니, 아직 아니오. 그에게 다른 의상이 있기는 하나 그는 동전 여든 닢을 요구하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_3","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28137 /* ~"아니, 아직 아니오."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 41.2 43.0
  SAY #28016 /* ~그는 머리를 쥐어뜯으며 고함을 지른다. "아, 신들은 이 불행하고 고귀한 맬매너를 왜 이토록 학대는 것인가! 이게 다 빌어먹을 가장무도회와, 저주를 받고 또 받아도 시원치 않을 그 추악한 재단사 녀석 때문이야!" 그는 당신에게 동전 쉰 닢을 던져 준다. "가라고!"~ */
  IF ~~ THEN REPLY #28138 /* ~"그것을 입수하면 돌아오겠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28139 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28140 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #28017 /* ~"그건... 상상할 수도 없소! 너무나 터무니없소! 대체 그는 자신이 누구라고 생각하고 있는 거지?" 그는 갑자기 눈살을 찌푸린다. "생각을 해보니 그건 곤캘브즈의 기준으로도 너무 비싼 것 같군." 그는 의심쩍은 눈으로 당신을 쳐다본다.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28141 /* ~거짓말: "그는 당신을 싫어하는 모양이오, 맬매너. 당신은 전에 그에게 말을 험하게 한 대가를 치르고 있소."~ */ DO ~GivePartyGold(80)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 42
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28142 /* ~거짓말: "당신은 정말 그를 열받게 한 모양이오."~ */ GOTO 43
  IF ~~ THEN REPLY #28143 /* ~"미안하오, 내가 잘못 말했소. 비용은 쉰 닢밖에 들지 않았소."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #28018 /* ~그는 당신을 의심쩍은 눈초리로 바라본다, 그러나 곧 태도를 누그러뜨린다. "좋소, 좋아. 가져가시오! 빨리 다른 의상이나 구해 오시오!" 그는 당신에게 동전 여든 닢을 던져 준다.~ */
  IF ~~ THEN REPLY #28144 /* ~"그것을 입수하면 돌아오겠소. 안녕히 계시오."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28145 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28146 /* ~"흠... 무슨 의상 말이오? 아, 그리고 돈을 주어 고맙소... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #28019 /* ~그는 입을 오므리고 당신을 의심쩍은 눈초리로 바라본다. 그가 당신이 하는 말이라면 콩으로 메주를 쑨다고 믿지 않을 건 명백하다. ~ */
  IF ~~ THEN REPLY #28147 /* ~"미안하오, 내가 잘못 말했소. 비용은 쉰 닢밖에 들지 않았소."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 44 // from:
  SAY #28020 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Malmaner","GLOBAL",5)
PartyHasItem("Costume2")
~ THEN BEGIN 45 // from:
  SAY #28021 /* ~남자는 기대에 부풀어 당신을 바라본다. "그래, 곤캘브즈로부터 의상을 구해 왔소?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28148 /* ~"여기 있소. 그걸 위해 난 동전 쉰 닢을 지불했소."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 두 번째 의상을 받아서 그에게 주었다.~ */ GOTO 46
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28149 /* ~거짓말: "그래, 여기 있소. 난 그걸 위해 동전 여든 닢을 지불했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 48
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28150 /* ~"그래, 여기 있소."~ */ DO ~TakePartyItemNum("Costume2",1)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 두 번째 의상을 받아서 그에게 주었다.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.2 49.0
  SAY #28022 /* ~그는 역겹다면서 당신에게서 의상을 낚아챈다, 그리고 당신 손에 동전 쉰 닢을 밀어 넣는다. "그럼 이제 나는..."~ */
  IF ~~ THEN REPLY #28151 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #28023 /* ~"시간이 다 됐소!" 그는 당신 손에서 의상을 낚아챈다. "그럼 이제 나는..."~ */
  IF ~~ THEN REPLY #28152 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #28024 /* ~"그건... 상상할 수도 없소! 너무나 터무니없소! 대체에 그는 자신이 누구라고 생각하고 있는 거지?" 그는 갑자기 눈살을 찌푸린다. "생각을 해보니 그건 곤캘브즈의 기준으로도 너무 비싼 것 같군." 그는 의심쩍은 눈으로 당신을 쳐다본다.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28153 /* ~거짓말: "그는 당신을 싫어하는 모양이오, 맬매너. 당신은 전에 그에게 말을 험하게 한 대가를 치르고 있소."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(80)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 두 번째 의상을 받아서 그에게 주었다.~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28154 /* ~거짓말: "당신은 정말 그를 열받게 한 모양이오."~ */ GOTO 49
  IF ~~ THEN REPLY #28155 /* ~"미안하오, 내가 잘못 말했소. 비용은 쉰 닢밖에 들지 않았소."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~나는 곤캘브즈라는 재단사로부터 맬매너의 두 번째 의상을 받아서 그에게 주었다.~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #28025 /* ~그는 입을 오므리고 당신을 의심쩍은 눈초리로 바라본다.~ */
  IF ~~ THEN REPLY #28156 /* ~"미안하오, 내가 잘못 말했소. 비용은 쉰 닢밖에 들지 않았소."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #28026 /* ~그는 당신을 의심쩍은 눈초리로 바라본다, 그러나 곧 태도를 누그러뜨린다. 그는 역겹다면서 당신에게서 의상을 낚아챈다, 그리고 당신 손에 동전 여든 닢을 밀어 넣는다. "그럼 이제 나는..."~ */
  IF ~~ THEN REPLY #28157 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END
