// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSGR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #43384 /* ~이 날씬한 청년은 다소 우려하는 표정으로 당신에게 다가온다. "정말 죄송하지만 저는 지금 어떤 사람을 찾고 있습니다, 그리고 제 생각엔 당신께서 절 도울 수 있을 것 같군요..."~ */
  IF ~~ THEN REPLY #43385 /* ~"오? 어떻게 말이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #43817 /* ~"그만한 가치가 있을 것 같지 않소. 안녕히 계시오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #43818 /* ~"하지만 잠깐만 시간을 내주신다면... 몇 초도 걸리지 않을 것입니다..."~ */
  IF ~~ THEN REPLY #43819 /* ~"좋소... 무슨 용건이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #43820 /* ~"날 그냥 내버려 두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #43821 /* ~"나는 심부름꾼으로 죽을 수가 없다는 남자를 찾고 있습니다... 그는 흉터투성이 사내로 그에게 있어 죽음은 약간 성가신 것 정도에 불과하다고 합니다. 당신은 내가 들은 그 사람의 다소 모호한 인상착의와 일치하는 것 같습니다, 그래서 나는 혹시 당신이 그는 아닌지 알고 싶었습니다. ~ */
  IF ~~ THEN REPLY #43822 /* ~"그렇소, 그건 나요."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43823 /* ~"아니, 내가 아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #43824 /* ~"대체 누가 알고 싶어하오?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0 7.0
  SAY #43825 /* ~그는 고개를 끄덕이더니 정중하게 인사한다. "그럼 메시지를 전하겠습니다. 고귀한 신분의 귀부인이신 시르마 가의 졸미 부인께서 저를 보내셨습니다. 졸미 부인은 시 공회당에서 당신을 만나 제안을 하나 하고자 하십니다. 그 제안의 내용에 대해서는 저는 아는 바가 없습니다. 만약 그녀를 찾아가시기로 결정하신다면, 그녀는 금으로 장식한 녹색 비단옷을 입었으며 머리색은 푸른 강철색입니다. 이게 제 메시지 전부입니다. 안녕히 계십시오."~ */
  IF ~~ THEN REPLY #43826 /* ~"기다리시오... 시 공회당은 어디 있소?"~ */ JOURNAL #39487 /* ~나는 시르마 가의 졸미라는 여인이 내게 제의를 하고 싶어한다는 내용의 메시지를 받았다. 나는 그녀를 시 공회당에서 찾아야 하는데, 그녀는 금으로 장식한 녹색 비단옷을 입었으며 머리색은 푸른 강철색이라고 한다. ~ */ GOTO 4
  IF ~~ THEN REPLY #43827 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ JOURNAL #39487 /* ~나는 시르마 가의 졸미라는 여인이 내게 제의를 하고 싶어한다는 내용의 메시지를 받았다. 나는 그녀를 시 공회당에서 찾아야 하는데, 그녀는 금으로 장식한 녹색 비단옷을 입었으며 머리색은 푸른 강철색이라고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43828 /* ~"사무구의 북동쪽 구석에 있습니다. 큰 건물이기 때문에 쉽게 발견할 수 있을 것입니다. 그럼 안녕히 계십시오."~ */
  IF ~~ THEN REPLY #43829 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 6.1
  SAY #43830 /* ~"애석하지만 어쩔 수 없군요. 귀찮게 해서 죄송합니다. 안녕히 계십시오."~ */
  IF ~~ THEN REPLY #43831 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #43832 /* ~"저는 졸미 시르마라는 부유한 귀인에게 고용되어 있습니다."~ */
  IF ~~ THEN REPLY #43833 /* ~"내가 당신이 찾는 사람이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43834 /* ~"사람을 잘못 본 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #43835 /* ~젊은 심부름꾼은 정중하게 인사한다. "다시 만나 반갑습니다."~ */
  IF ~~ THEN REPLY #43836 /* ~"난 당신에게 내가 바로 당신이 찾는 사람이라고 말해주려고 했소."~ */ DO ~SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43837 /* ~"그렇소... 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END
