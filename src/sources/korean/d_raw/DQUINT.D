// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUINT~

IF ~  Global("Quint_Item","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #2833 /* ~"헤. 고맙소. 무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #2834 /* ~"거래를 하고 싶소."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19039 /* ~"당신에게 질문할 것이 좀 있소."~ */ GOTO 1
  IF ~~ THEN REPLY #19040 /* ~"아무 것도 아니오. 안녕히 계시오, 퀸트."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1 3.5 4.1 6.1 7.1 8.1 9.0
  SAY #19041 /* ~"뭘 알고 싶지?"~ */
  IF ~~ THEN REPLY #19042 /* ~"당신 자신에 대해 다시 얘기해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #19043 /* ~"그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #19044 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #19045 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 그럼 잘 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19046 /* ~"퀸트. 물건을 사고 팔지. 이것저것 다 있다고. 원하는 거라도 있어?"~ */
  IF ~~ THEN REPLY #19047 /* ~"거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19048 /* ~"아직 아니오. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #19049 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.0 6.0 7.0 8.0
  SAY #19050 /* ~"누구처럼?"~ */
  IF ~~ THEN REPLY #19051 /* ~"파로드."~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #19052 /* ~"안나."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #19053 /* ~"안나."~ */ GOTO 6
  IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN REPLY #19054 /* ~"마타."~ */ GOTO 7
  IF ~  GlobalGT("Know_Ojo","GLOBAL",0)
~ THEN REPLY #19055 /* ~"오조."~ */ GOTO 8
  IF ~~ THEN REPLY #19056 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 1
  IF ~~ THEN REPLY #19057 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19058 /* ~"늙은 말 더듬는 절름발이 말이야? 그가 이 곳을 세웠어. 여기 왕초지. 그가 내게 이일을 맡겼어. 거래를 할래, 어때?"~ */
  IF ~~ THEN REPLY #19059 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #19060 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #19061 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #19062 /* ~그는 안나를 흘긋 보며 아래 턱을 약간 흔든다. "예쁘고 영리한 아이지, 안 그래? 하지만 그녀는 만만치 않다고." 그는 손을 들어 자신이 한 말에 악의는 없었음을 나타낸다. ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #19063 /* ~"파로드가 무척 아끼고 있지. 그녀는 위험한 일도 해내니까. 영리하지. 독설도 신랄하고." 그는 전에 입은 상처가 생각나는 듯 머리를 문지른다. "가까이 하지 말라고, 알았어?"~ */
  IF ~~ THEN REPLY #19064 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #19065 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #19066 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY #19067 /* ~"헤. 마타는 피하는 게 좋아. 미치광이 재봉사라고. 그녀는 시체로부터 이빨과 꿰맨 실을 다 뽑아낸 후 내게 넘겨, 그럼 나 그걸 뒤져 쓸만한 것들을 찾아내지.~ */
  IF ~~ THEN REPLY #19068 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #19069 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #19070 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY #19071 /* ~"돌았어. 별 쓸모가 없지, 안 그래?"~ */
  IF ~~ THEN REPLY #19072 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #19073 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #19074 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY #19075 /* ~"이 곳? 마을이야. 오래 전에 다버스가 이 마을 위에 길을 깔고 새까맣게 잊어버렸지. 수집자들이 돈이 될 만한 걸 찾느라고 쓰레기 더미를 뒤지다가 발견했지... 난 수집자들과 거래하다 이 곳에 오게 됐지." 그의 눈썹이 움직인다. "돈벌이에는 좋은 곳이야, 그렇지? 시체는 장사에 좋다고."~ */
  IF ~~ THEN REPLY #19076 /* ~"알겠소. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #19077 /* ~"그렇소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN BEGIN 10 // from:
  SAY #19078 /* ~"당신이? 당신이 내가 원하는 걸 가지고 있어?"~ */
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19079 /* ~"당신이 무엇을 찾고 있는지 다시 얘기해주겠소."~ */ GOTO 11
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19080 /* ~"그렇소. 여기 있소."~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ GOTO 12
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19081 /* ~거짓말: "아니, 아직 아니오. 찾는 중이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_One","GLOBALLaw",-1)
~ GOTO 13
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19082 /* ~"아니, 아직 아니오. 찾는 중이오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #19083 /* ~"부적이야, 알아? 속이 텅 빈 이빨들이 달린 목걸이라고. 그걸 찾아오면 대가는 지불하겠어, 좋아? 그럼 당장 가라고." 그는 자신의 물건들을 살피는 데 바빠서 당신을 무시한다. ~ */
  IF ~~ THEN REPLY #19084 /* ~"좋소. 착수하겠소."~ */ EXIT
  IF ~~ THEN REPLY #66306 /* ~"거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 23.1 24.1
  SAY #19085 /* ~당신이 그에게 그 물건을 넘기자 그는 그것을 소중히 어루만지며 흠이나 긁힌 곳은 없는지 세심히 살핀다. "당신 몫을 했군, 그렇지?" 그는 당신에게 동전이 짤랑거리는 소리가 나는 무거운 자루를 준다. "우리 거래는 완료됐군. 뭐 필요한 게 있으면 이 퀸트에게 말하라고, 알겠어?" 그는 목걸이를 되찾아 황홀해 하며 당신으로부터 고개를 돌린다. ~ */
  IF ~~ THEN REPLY #19086 /* ~"거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66304 /* ~"안녕히 계시오, 퀸트."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 10.3
  SAY #19087 /* ~그의 돼지 같은 얼굴이 축 늘어진다. "아, 가슴이 아프군. 찾으면 돌아오라고, 알겠어?" 그는 당신으로부터 고개를 돌린다, 그리고 자신의 물건들을 살피는 데 여념이 없다. ~ */
  IF ~~ THEN REPLY #19088 /* ~"날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #66305 /* ~"거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66307 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from: 13.0 15.2 16.5 17.1 19.1 20.1 21.1 22.0 23.2 24.0 35.1 40.0 41.1 43.1 44.1 46.3 47.2 48.0 49.1
  SAY #19089 /* ~퀸트는 당신을 쳐다본다. "뭘 원하지, 엣?"~ */
  IF ~  !Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #19090 /* ~"당신 자신에 대해 다시 얘기해주시오."~ */ GOTO 15
  IF ~~ THEN REPLY #19091 /* ~"뭘 하고 있는 거요?"~ */ GOTO 46
  IF ~~ THEN REPLY #19092 /* ~"그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #19093 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 22
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19094 /* ~"거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66308 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 그럼 잘 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19095 /* ~"퀸트. 물건을 사고 팔지. 이것저것 다 있다고. 뭘 원해? 아니면 날 위해 일할 생각이라도 있어, 그래?"~ */
  IF ~~ THEN REPLY #19096 /* ~"어떤 종류의 일 말이오?"~ */ GOTO 23
  IF ~  Global("Quint_Trade","GLOBAL",0)
~ THEN REPLY #19097 /* ~"거래합시다."~ */ GOTO 32
  IF ~~ THEN REPLY #19098 /* ~"아직 아니오. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 14
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19099 /* ~"거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66309 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 17.0 19.0 20.0 21.0
  SAY #19100 /* ~"누구처럼?"~ */
  IF ~~ THEN REPLY #19101 /* ~"파로드."~ */ GOTO 17
  IF ~  NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19102 /* ~"안나."~ */ GOTO 18
  IF ~  !NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19103 /* ~"안나."~ */ GOTO 19
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #19104 /* ~"마타."~ */ GOTO 20
  IF ~  Global("Know_Ojo","GLOBAL",1)
~ THEN REPLY #19105 /* ~"오조."~ */ GOTO 21
  IF ~~ THEN REPLY #19106 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19107 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 46.1
  SAY #19108 /* ~"늙은 말 더듬는 절름발이 말이야? 그가 이 곳을 세웠어. 여기 왕초지. 그가 내게 이일을 맡겼어. 거래를 할래, 어때?"~ */
  IF ~~ THEN REPLY #19109 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #19110 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19111 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #19112 /* ~그는 안나를 흘긋 보며 아래 턱을 약간 흔든다. "예쁘고 영리한 아이지, 안 그래? 하지만 그녀는 만만치 않다고." 그는 손을 들어 자신이 한 말에 악의는 없었음을 나타낸다~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #19113 /* ~"파로드가 무척 아끼고 있지. 그녀는 위험한 일도 해내니까. 영리하지. 독설도 신랄하고." 그는 전에 입은 상처가 생각나는 듯 머리를 문지른다. "가까이 하지 말라고, 알았어?"~ */
  IF ~~ THEN REPLY #19114 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #19115 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19116 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.3 46.0
  SAY #19117 /* ~"헤. 마타는 피하는 게 좋아. 미치광이 재봉사라고. 그녀는 시체로부터 이빨과 꿰맨 실을 다 뽑아낸 후 내게 넘겨, 그럼 나 그걸 뒤져 쓸만한 것들을 찾아내지.~ */
  IF ~~ THEN REPLY #19118 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #19119 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19120 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.4
  SAY #19121 /* ~"돌았어. 별 쓸모가 없지, 안 그래?"~ */
  IF ~~ THEN REPLY #19122 /* ~"좋소. 그 밖의 이 마을 사람들에 대해 얘기해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #19123 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19124 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.3
  SAY #19125 /* ~"이 곳? 마을이야. 오래 전에 다버스가 이 마을 위에 길을 깔고 새까맣게 잊어버렸지. 수집자들이 돈이 될 만한 걸 찾느라고 쓰레기 더미를 뒤지다가 발견했지... 난 수집자들과 거래하다 이 곳에 오게 됐지." 그의 눈썹이 움직인다. "돈벌이에는 좋은 곳이야, 그렇지? 시체는 장사에 좋다고."~ */
  IF ~~ THEN REPLY #19126 /* ~"알겠소. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19127 /* ~"그렇소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.0
  SAY #19128 /* ~"그리스 말이야? 에... 그는 대머리수리 그리스라고 불리지. 한 2주 전쯤 떠났어. 그 이후로 그를 보거나 그에 대한 소식을 들은 사람은 없지. 지하 묘지에서 죽었겠지, 지하 어두운 곳에는 위험한 것들이 많으니까. 헤... 그가 죽은 건 불행한 일이지... 우수한 수집자였는데.. 심보는 고약하지만 새 묘지를 찾아내는 데는 재주가 있었지. 게다가 그는 내 물건도 가지고 갔어. 그걸 되찾아 오면 돈을 주지, 알겠어? 폐물을 가져다 주는 대신 돈, 어때?"~ */
  IF ~~ THEN REPLY #19129 /* ~"좋소."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",1)
~ JOURNAL #66300 /* ~사체 행상인 퀸트라는 사내가 내게 얼마 전 지하 묘지에서 사라진 그리스라는 수집자로부터 어떤 아이템을 회수해 달라고 부탁했다.~ */ GOTO 24
  IF ~  PartyHasItem("PSCharm")
~ THEN REPLY #19130 /* ~그에게 마타의 집 근처에서 발견한 부적을 보여준다: "오, 이것 말이오?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~사체 행상인 퀸트라는 사내가 내게 얼마 전 지하 묘지에서 사라진 그리스라는 수집자로부터 어떤 아이템을 회수해 달라고 부탁했다. 내가 그에게 마타의 집 부근에서 찾은 부적을 보여주자 그는 그것이 자신의 것이라고 했다. ~ */ GOTO 12
  IF ~~ THEN REPLY #19131 /* ~"생각해 보겠소.다른 질문들에 대답해주시오..."~ */ GOTO 14
  IF ~~ THEN REPLY #66301 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #19132 /* ~그는 씩씩거리며 말하는데, 마치 행복한 것처럼 보인다. "그건 항독의 부적으로, 텅 빈 이빨로 만든 목걸이지. 아마 그리스가 있는 곳에 있을 거야. 찾으면 내게 알려 줘, 알겠어?"~ */
  IF ~~ THEN REPLY #19133 /* ~"물론이오. 몇 가지만 더 물어봅시다..."~ */ GOTO 14
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19134 /* ~그에게 마타의 집 근처에서 발견한 부적을 보여준다: "오, 이것 말이오?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~사체 행상인 퀸트라는 사내가 내게 얼마 전 지하 묘지에서 사라진 그리스라는 수집자로부터 어떤 아이템을 회수해 달라고 부탁했다. 내가 그에게 마타의 집 부근에서 찾은 부적을 보여주자 그는 그것이 자신의 것이라고 했다. ~ */ GOTO 12
  IF ~~ THEN REPLY #66303 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 25 // from:
  SAY #19135 /* ~얼굴이 뚱뚱하고 키가 작은 사내가 보인다. 그의 온몸은 오물과 때로 뒤덮여 있다. 그로부터는 악취가 나며, 그의 이빨은 모두 썩었다. 그는 당신을 아래위로 쳐다보며 씨근거린다. "난 퀸트야. 당신은 신참이야?"~ */
  IF ~~ THEN REPLY #19136 /* ~"누가 알고 싶어하오?"~ */ GOTO 26
  IF ~~ THEN REPLY #19137 /* ~"그렇소."~ */ GOTO 29
  IF ~~ THEN REPLY #19138 /* ~"아니오, 난 이 곳에 꽤 있었소."~ */ GOTO 42
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #19139 /* ~"나? 에? 당신 여기 신참이야?"~ */
  IF ~~ THEN REPLY #19140 /* ~"그렇소."~ */ GOTO 29
  IF ~~ THEN REPLY #19141 /* ~"아니오."~ */ GOTO 42
  IF ~~ THEN REPLY #19142 /* ~"당신과는 상관없는 일이오."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #19143 /* ~"상관 있어. 당신 여기 신참이야?"~ */
  IF ~~ THEN REPLY #19144 /* ~"그렇소."~ */ GOTO 29
  IF ~~ THEN REPLY #19145 /* ~"아니오."~ */ GOTO 42
  IF ~~ THEN REPLY #19146 /* ~"꺼지시오, 알겠소?~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY #19147 /* ~"흥, 너나 꺼져. 나가라고!"~ */
  IF ~~ THEN REPLY #19148 /* ~"뭐든 간에."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.1 26.0 27.0
  SAY #19149 /* ~그는 당신을 의심스럽다는 눈초리로 바라본다. "팔 거야, 아니면 거래할 거야? 뭐야?"~ */
  IF ~~ THEN REPLY #19150 /* ~"그렇소."~ */ GOTO 30
  IF ~~ THEN REPLY #19151 /* ~"매각."~ */ GOTO 30
  IF ~~ THEN REPLY #19152 /* ~"거래."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1 29.2
  SAY #19153 /* ~그는 눈을 더욱 가늘게 뜬다. "거래? 나하고만? 아니면 다른 사람들과도 할 거야? 어느 쪽이야? 에?"~ */
  IF ~~ THEN REPLY #19154 /* ~"당신과."~ */ GOTO 31
  IF ~~ THEN REPLY #19155 /* ~"모든 이들과."~ */ GOTO 39
  IF ~~ THEN REPLY #19156 /* ~"누구든 내가 원하는 사람과 한다, 이 얼간아."~ */ GOTO 39
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #19157 /* ~"나하고만, 그래?"~ */
  IF ~~ THEN REPLY #19158 /* ~"그래, 당신하고만.~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19159 /* ~"아니, 모든 사람들과."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 15.1 31.0 36.2 37.0
  SAY #19160 /* ~"그래? 그럼 거래를 하자고, 알았어?"~ */
  IF ~~ THEN REPLY #19161 /* ~"알겠소."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19162 /* ~"특별히 관심이 있는 거라도 있소?"~ */ GOTO 33
  IF ~~ THEN REPLY #19163 /* ~"당신은 주로 어떤 물건을 거래하오?"~ */ GOTO 36
  IF ~~ THEN REPLY #19164 /* ~"실은 관심이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #19165 /* ~"흥미 있는 거라도 있어, 에?" 그는 미소짓는다. "뭐 찾고 있는 거라도 있어 ?"~ */
  IF ~~ THEN REPLY #19166 /* ~"당신이 지닌 물건들을 보여주시오."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #19167 /* ~"일지."~ */ GOTO 34
  IF ~~ THEN REPLY #19168 /* ~"아니, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #19169 /* ~"일지? 금박이라도 입힌 거야?"~ */
  IF ~~ THEN REPLY #19170 /* ~"모르겠소."~ */ GOTO 35
  IF ~~ THEN REPLY #19171 /* ~"다른 거래에 대해 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #19172 /* ~"나도 몰러." 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #19173 /* ~"그럼 거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19174 /* ~"좋소. 그럼 내 질문에 좀 대답해주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #19175 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2
  SAY #19176 /* ~"꿰맨 실이나 이빨처럼 죽은 사람으로부터 나온 것들 말이야, 알겠어? 이 마을 밑의 지하 묘지에는 시체들이 잔뜩 있다고. 내 일은 그런 시체에서 나온 각종 잡동사니들을 처리하는 일이지. 이 마을 사람들, 즉 수집자들은 지하로 내려가 시체와 물건들을 모으지. 그리고 나서 그것들을 파로드에게 보고하면, 그는 자신의 몫을 챙긴 후 내게 보내."~ */
  IF ~~ THEN REPLY #19177 /* ~"파로드는 시체를 가지고 뭘 하는 거요?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #19178 /* ~"내가 당신과 직거래를 하는 건 어떻겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #19179 /* ~"나는 당신과 거래하고 싶소."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19180 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #19181 /* ~"그의 사업이지." 그는 미소짓는다. "시체들을 더스티에게 되파는 일 말이야, 알겠어? 더스티는 그들을 다시 매장하고, 우린 다시 파내고. 어때?" 그는 큰 소리로 씩씩거리는 데 아마 웃는 모양이다. ~ */
  IF ~~ THEN REPLY #19182 /* ~"알겠소. 나는 거래에 관심이 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #19183 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #19184 /* ~"그거라면 거절하기 힘들 곳 같군. 파로드의 허가를 일일이 받아야 하는 데는 지쳤어. 나도 시체에서 나온 물건들을 얼마든지 직거래 할 수 있다고, 안 그래? 어차피 당신이 파로드를 거쳐 왔다고 해도 내가 그게 사실인지 알 방법은 없잖아? 모든 것이 다 공정한 거친 거라고 가정해야지, 안 그래?"~ */
  IF ~~ THEN REPLY #19185 /* ~"그럼 거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19186 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.1 30.2 31.1
  SAY #19187 /* ~그의 얼굴이 새빨개진다. "꺼져, 얼간아! 나가! 이 가게는 내 꺼야! 내게 우선권이 있다고! 파로드에게 일러서 그가 널 생선처럼 토막내도록 할 거야."~ */
  IF ~~ THEN REPLY #19188 /* ~거짓말: "파로드는 내가 여기서 거래해도 괜찮다고 했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_Two","GLOBALLaw",-1)
SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #19189 /* ~"진정하시오. 나는 당신하고만 거래하겠소."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #19190 /* ~"난 놈을 죽일 거야! 놈은 이렇게 말했었지. '퀸트, 자네는 내 훌륭한 부하네. 그러니 이 가게를 맡도록 하게.' 그러고는 너 같은 쓰레기에게 거래를 허용해. 절름발이 개자식 같으니! 흥!"~ */
  IF ~~ THEN REPLY #19191 /* ~"정말 운도 좋군. 당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19192 /* ~"그래 거래를 할 거요 안 할 거요?"~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19193 /* ~"그는 정말 배신자요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #19194 /* ~그는 다소 진정한 듯하다. "좋아." 그는 이마에 난 땀을 닦는다. "거래를 하고 싶어? 그래?"~ */
  IF ~~ THEN REPLY #19195 /* ~"그렇소. 거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19196 /* ~"실은 질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19197 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 25.2 26.1 27.1
  SAY #19198 /* ~"그래? 당신을 본 건 처음인 걸." 그는 씩씩거리며 말한다. "난 여기 오래 있었어. 먼저 온 사람에게 우선권이 있다고, 알지? 알아?"~ */
  IF ~~ THEN REPLY #19199 /* ~"나는 이 곳에 오래 있었소. 날 모르다니 주변 사정에 어두운 모양이오."~ */ GOTO 43
  IF ~~ THEN REPLY #19200 /* ~"뭐?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19201 /* ~"넌 스스로 화를 자초하고 있어, 얼간아. 내 배후엔 파로드가 있다고. 너...? 넌 흉터밖에 없잖아."~ */
  IF ~~ THEN REPLY #19202 /* ~"당신은 싸움을 원하는 거요, 아니면 거래를 원하는 거요?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19203 /* ~"뭐든 간에. 몇 가지 질문에나 대답해주시오, 거물 양반."~ */ GOTO 14
  IF ~~ THEN REPLY #19204 /* ~"당신에게 할 말은 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY #19205 /* ~"너는 귀가 먹은 거야, 아니면 그냥 머리가 나쁜 거야? 이 곳에선 내게 우선권이 있다고 내가 말했잖아. 거래는 네가 아닌 내가 하는 거야... 넌 나하고만 거래해야 해. 알겠어?"~ */
  IF ~~ THEN REPLY #19206 /* ~"당신은 싸움을 원하는 거요, 아니면 거래를 원하는 거요?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19207 /* ~"뭐든 간에. 몇 가지 질문에나 대답해주시오, 거물 양반."~ */ GOTO 14
  IF ~~ THEN REPLY #19208 /* ~"당신에게 할 말은 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.0 44.0
  SAY #19209 /* ~"난 거래를 할 거야, 알겠어? 난 상인이지 싸움꾼이 아니야. ~ */
  IF ~~ THEN REPLY #19210 /* ~"그럼 거래합시다."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19211 /* ~"우선 내 질문에 좀 대답해주시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 14.1
  SAY #19212 /* ~"마타와 파로드가 내게 물건을 주길 기다리고 있어."~ */
  IF ~~ THEN REPLY #19213 /* ~"마타?"~ */ GOTO 20
  IF ~~ THEN REPLY #19214 /* ~"파로드?"~ */ GOTO 17
  IF ~~ THEN REPLY #19215 /* ~"어떤 물건 말이오?"~ */ GOTO 47
  IF ~~ THEN REPLY #19216 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19217 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.2
  SAY #19218 /* ~"지하 묘지에서 도굴을 해서 나온 물건들의 나머지지."~ */
  IF ~~ THEN REPLY #19219 /* ~"찌꺼기?"~ */ GOTO 48
  IF ~~ THEN REPLY #19220 /* ~"지하 묘지?"~ */ GOTO 49
  IF ~~ THEN REPLY #19221 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19222 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0 49.0
  SAY #19223 /* ~"이빨, 시체를 꿰맨 실, 시체 속에서 꺼낸 잡동사니, 붕대 사이에 감춰진 동전 등등이지. 그런 것들은 생각보다 비싸게 팔린다고, 알아?". ~ */
  IF ~~ THEN REPLY #19224 /* ~"알겠소. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19225 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #19226 /* ~"마을 아래야. 이 지역에는 우리 이전에 아무도 손대지 않았기 때문에 새로운 시체들과 오래된 묘지들이 많다고, 알아? 이 마을, 이 마을... 이 마을에 대해 아는 사람은 별로 없어. 이 곳에서는 지하 묘지와 그 곳에 널린 많은 시체들에 쉽게 접근할 수 있다는 사실을 아는 사람은 더욱 드물지..." 그는 탐욕스럽게 입맛을 다신다. "아직 개척되지 않은 땅이란 얘기지."~ */
  IF ~~ THEN REPLY #19227 /* ~"물론이오. 내게 '찌쩌기'에 대해 얘기해주시오..."~ */ GOTO 48
  IF ~~ THEN REPLY #19228 /* ~"물론이오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #19229 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END
