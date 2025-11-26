// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFLEECE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFLEECE~

IF ~  Global("Fleece","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1754 /* ~어떤 남자가 다소 혼란스러운 듯 건물들을 두리번거리고 있다. 그는 길을 잃은 듯하며 스스로에게 뭐라고 중얼거리고 있다. ~ */
  IF ~~ THEN REPLY #1755 /* ~"안녕하시오."~ */ DO ~SetGlobal("Fleece","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #1756 /* ~그냥 지나간다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1757 /* ~남자는 안도한 듯하다. "마침내! 날 좀 도와주시오, 신사 양반. 난 이 미로와도 같은 거리에서 길을 잃은 것 같소..." 그는 거북하게 웃는다. "아무래도 이 지역은..." 그는 걱정스러운 표정으로 주위를 둘러본다. "...내게 낯선 것 같소. 그리고 여기 사람들은 방문자를 도울 생각이 없는 것 같소..." 그는 기대에 찬 표정으로 당신을 바라본다. "혹시 당신에게 도움을 청해도 괜찮겠소?"~ */
  IF ~~ THEN REPLY #1758 /* ~"당신이 필요로 하는 도움의 종류에 달렸소."~ */ GOTO 2
  IF ~~ THEN REPLY #1759 /* ~"물론이오. 어딜 가려고 하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fleece_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #1760 /* ~"당신 혼자 힘으로 해결하시오. 내가 당신이라면 이 구역에서 가능한 한 빨리 벗어나겠소."~ */ GOTO 9
  IF ~~ THEN REPLY #1761 /* ~"지금 난 당신을 도울 시간이 없소...안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 27.0
  SAY #1762 /* ~나는 내 숙모인 마구에리트의 집을 찾고 있소. 내가 알기로 그녀는 시체안치소 부근에 살고 있으나, 내가 지난번 방문한 이래 거리의 배치가 바뀐 것 같소. 혹시 당신은 내가 말하는 집이 어디 있는지 아시오?"~ */
  IF ~~ THEN REPLY #1763 /* ~거짓말: "알고 있소. 대가를 지불한다면 그 곳으로 안내해 줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1764 /* ~진실: "미안하지만 그런 곳은 들은 적도 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Fleece_2","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #1765 /* ~"난 당신을 도울 수가 없소. 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1766 /* ~"아, 그건 정말 타당하오. 내가 들은 마지막 소식으로는 그녀의 집은 시체안치소 근처에 있다고 했소." 그는 당신을 관찰하려는 듯 눈을 가늘게 뜬다. "그녀의 집이 정확히 어디 위치하고 있는지 아시오?"~ */
  IF ~~ THEN REPLY #2246 /* ~거짓말: "그녀는 시체안치소 남동쪽의 영묘 부근에 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_3","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #2247 /* ~"실례지만 '마구에리트 아줌마'라고 했소? 내가 당신 말을 잘못 이해하고 딴 사람으로 착각했소."~ */ GOTO 6
  IF ~~ THEN REPLY #2248 /* ~"오, 기다리시오. 나는 당신이 이 주변의 매음굴에 대해서 묻는 줄 알았소. 신경 쓰지 마시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_3","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2249 /* ~그는 고개를 젓는다. "아. 아니오... 그녀는 *그렇게* 가까운 곳에 있지는 않소. 아마 당신이 다른 사람과 착각한 모양이오." 남자는 주변을 돌아본 후 다시 당신에게로 고개를 돌린다. "다른 사람에게 물어보도록 하리다. 시간을 내주어 고맙소."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2250 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2251 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2252 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2253 /* ~"안녕히 계시오."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2254 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #2255 /* ~사내는 실망한 듯 눈살을 찌푸린다. "당신이 그 장소를 알고 있으리라고 기대한 건 욕심이 너무 과했던 것 같소" 그는 감사의 표시로 가볍게 고개를 끄덕인다. "어쨌든 시간을 내주어 고맙소. 이런 곳에서 그런 친절은 참으로 반가웠소."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2256 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2257 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2258 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2259 /* ~"안녕히 계시오."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2260 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2261 /* ~"흔히 있을 수 있는 실수요. 어쨌든 시간을 내주어 고맙소."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2262 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2263 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2264 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2265 /* ~"안녕히 계시오."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2266 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #2267 /* ~남자는 놀란 듯 눈을 깜박인다. "에... 아니, 아니오." 그는 거북한 미소를 짓는다. "내 숙모는 그런 일과는 관계가 없소."~ */
  IF ~~ THEN REPLY #2268 /* ~"내가 들은 것과는 다르군."~ */ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2269 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2270 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2271 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2272 /* ~"안녕히 계시오."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2273 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #2274 /* ~남자는 혼란스러워하는 것 같다. "이만... 실례하겠소."~ */
  IF ~~ THEN REPLY #2275 /* ~"당신 아줌마에게 안부를 전해주시오. 내가 곧 찾아갈 거라고 말이오."~ */ EXIT
  IF ~~ THEN REPLY #2540 /* ~이번에는 그를 그냥 보내준다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 2.2 27.1
  SAY #2541 /* ~그는 실망한 듯 눈살을 찌푸린다. "아... 어쨌든 시간을 내주어서 고맙소. 안녕히 계시오."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2542 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #7614 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #7615 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #7616 /* ~"안녕히 계시오."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #7617 /* ~"안녕히 계시오."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 5.1 6.1 7.2 9.1
  SAY #7618 /* ~돌아서서 떠나려다 당신은 뭔가 잘못되었다는 느낌을 받는다. 수상쩍게 생각한 당신은 그 남자를 다시 본다, 그리고 바로 그 때 그가 당신 지갑으로부터 손을 빼내는 장면을 목격한다... 확신할 수는 없으나 그가 당신으로부터 뭔가를 훔친 것 같다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7619 /* ~그의 손을 잡는다.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7620 /* ~그의 손을 잡는다.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7621 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7622 /* ~그가 다시 당신을 소매치기 하도록 유도한 후 그의 기술을 관찰한다.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7624 /* ~그가 다시 당신을 소매치기 하도록 유도한 후 그의 기술을 관찰한다.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7625 /* ~그가 다시 당신을 소매치기 하도록 유도한 후 그의 기술을 관찰한다.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7626 /* ~그를 공격한다. ~ */ DO ~SetGlobal("Remove_Fleece","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7627 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 15.1 16.1
  SAY #7628 /* ~당신은 손을 재빨리 내밀어 그의 손을 부서질 듯 억세게 쥔다. 남자는 비명을 지르고, 당신 손아귀에서 벗어나려고 발악을 한다.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7629 /* ~조용하게: "저항하지 마시오, 아니면 당신 손이 떨어져 나갈 테니."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7630 /* ~"빌어먹을, 몸무림치지 마!"~ */ GOTO 14
  IF ~~ THEN REPLY #7631 /* ~그를 공격한다. ~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7632 /* ~그를 그냥 보내준다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 15.0 16.0
  SAY #7633 /* ~당신 동작은 너무 느렸다. 그는 당신이 미처 잡기 전에 자신의 손을 잡아당긴다. 그는 비명을 지르면서 도망을 친다. ~ */
  IF ~~ THEN REPLY #7634 /* ~"그럼 좋소..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 15.2 16.2
  SAY #7635 /* ~남자는 놀란 듯 펄쩍 뛴 후 도망치기 시작한다.~ */
  IF ~~ THEN REPLY #7636 /* ~"그럼 좋소..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #7637 /* ~그는 당신 손아귀에서 계속 발악을 한다. 그를 붙잡고 있는 것이 것이 점점 힘들어지고 있다.~ */
  IF ~~ THEN REPLY #7638 /* ~그를 공격한다. ~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7639 /* ~빈 손으로 그를 쳐서 그의 관심을 끈다.~ */ GOTO 23
  IF ~~ THEN REPLY #7640 /* ~그를 그냥 보내준다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2 5.2 6.2 7.3 9.2
  SAY #7641 /* ~당신으로 하여금 경계를 늦추지 않도록 한 것은 당신 자신의 소매치기 기술인지도 모른다. 하지만 당신은 돌아서서 떠나려다 본능적으로 지갑을 확인해 본다... 그리고 그 남자가 그것으로부터 손을 빼내는 것을 눈치챈다. 그러나 그는 당신이 그가 하는 일을 보았다는 걸 눈치채지 못한 듯하다. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7642 /* ~그의 손을 잡는다.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7643 /* ~그의 손을 잡는다.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7644 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7645 /* ~그가 다시 당신을 소매치기 하도록 유도한 후 그의 기술을 관찰한다.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7647 /* ~그가 다시 당신을 소매치기 하도록 유도한 후 그의 기술을 관찰한다.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7648 /* ~그가 다시 당신을 소매치기 하도록 유도한 후 그의 기술을 관찰한다.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7649 /* ~그를 공격한다. ~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7650 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3 10.4 10.5 15.3 15.4 15.5
  SAY #7651 /* ~당신은 남자와 가벼운 대화를 나누면서 몰래 그의 동작을 살펴본다. 이 남자는 두 가지 수법을 사용하고 있다. 첫째는 상류층 사람인 듯 행세하여 표적이 경계를 늦추도록 만드는 것이고, 둘째는 길을 가르쳐 달라고 부탁함으로서 표적의 주의를 다른 곳으로 돌리는 것이다... 표적이 일단 거리나 경계표를 가리키려고 몸을 돌리면, 그는 표적의 지갑을 슬쩍 열어 내용물을 자신의 (편리하게도 긴) 소매 속에 쑤셔 넣는다. 그가 또다시 손을 당신 지갑에 뻗치는 동안에도 당신은 그의 수법을 마음 속으로 기억해 둔다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7652 /* ~그의 손을 잡는다.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7653 /* ~그의 손을 잡는다.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7654 /* ~"이봐! 대체 무슨 짓을 하고 있는 거지?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #7655 /* ~그를 공격한다. ~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7656 /* ~사건을 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY #7657 /* ~당신의 어조에는 *뭔가* 특별한 것이 있는 듯하다. 왜냐하면 그가 즉시 발악하는 것을 멈추었기 때문이다. 그는 당신 시선 앞에서 기가 완전히 죽은 듯하다.~ */
  IF ~~ THEN REPLY #7658 /* ~"내게서 훔친 물건을 돌려주시오. 지금 당장."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7659 /* ~그를 그냥 보내준 후 떠난다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #7660 /* ~그는 고개를 끄덕이고 자기 지갑을 비우기 시작한다. 그는 당신에게 한 줌의 동전을 주는데, 그건 그가 당신으로부터 훔친 액수보다 많다... 동전은 적어도 수십 닢은 되는 것 같다.~ */
  IF ~~ THEN REPLY #7661 /* ~"아니, 나머지는 당신이 그대로 가지시오... 난 당신이 내게서 훔친 것만을 원할 뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_2","GLOBALLaw",1)
TakePartyGold(25)
~ GOTO 19
  IF ~~ THEN REPLY #7662 /* ~"우린 이제 비긴 거요. 자, 당신 꼴은 다시는 보고 싶지 않소. 알겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #7663 /* ~허풍: "당신이 가진 모든 것을 내놓으면 죽이지는 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_4","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7664 /* ~진실: "당신이 가진 모든 것을 내놓으면 죽이지는 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_4","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7665 /* ~고개를 끄덕여 감사의 표시를 한 후 그를 공격한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7666 /* ~그를 그냥 보내준 후 떠난다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7667 /* ~그는 당신을 놀란 듯 바라본다. 아마 당신이 자길 속이려는 건 아닌가 생각하는 듯 하다. 그러다가 그는 어깨를 으쓱하고 여분의 동전을 다시 주머니 속에 넣는다.~ */
  IF ~~ THEN REPLY #7668 /* ~"우린 이제 비긴 거요. 자, 당신 꼴은 다시는 보고 싶지 않소. 알겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #7669 /* ~그를 공격한다. ~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7671 /* ~그를 그냥 보내준 후 떠난다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.3
  SAY #7670 /* ~"에..." 그는 침을 삼킨다. "그것뿐이오. 더 이상은 없소."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7672 /* ~"나는 *전부*라고 했소, 그러니 *전부* 다 내놓으시오."~ */ GOTO 28
  IF ~~ THEN REPLY #7673 /* ~"좋소. 다시는 당신 꼴을 보기 싫소. 알겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #7674 /* ~"그럼 당신 생명은 이제 끝났소. 죽을 준비를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7675 /* ~그를 그냥 보내준 후 떠난다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1 28.0
  SAY #7676 /* ~그는 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #7677 /* ~그를 주먹으로 쳐서 확실히 이해하도록 만든다.~ */ GOTO 22
  IF ~~ THEN REPLY #7678 /* ~그를 공격한다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7679 /* ~그를 그냥 보내준 후 떠난다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 25.0
  SAY #7680 /* ~당신은 펀치는 그의 턱에 강렬한 일격을 가해 그가 자갈 위에 나가자빠지도록 만든다. 그는 턱을 손으로 감싼 채, 신음을 하며 비틀거리며 일어난다. 당신 주먹이 그의 이빨을 몇 개 부러트린 모양이다. ~ */
  IF ~~ THEN REPLY #7681 /* ~"여기서 당장 꺼지시오."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #7682 /* ~당신의 왼쪽 훅은 그의 목을 옆으로 뒤틀리게 만든다. 그리고 그는 다시 비명을 지른다. 이제 균형을 잃고 비틀거리는 그는 빈 손으로 얼굴 한쪽을 감싸고 있다.~ */
  IF ~~ THEN REPLY #7683 /* ~"이제 날 좀 주목하겠소?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7684 /* ~그는 묵묵히 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #7685 /* ~"당신이 내게서 훔친 것들을 모두 돌려주시오."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7686 /* ~"난 당신이 내 돈을 훔쳤던 아니던 상관하지 않겠소... 내가 당신 꼴을 다시는 보지 않아도 된다면. 다시는. 알겠소?" ~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #7687 /* ~그는 다시 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #7688 /* ~그를 주먹으로 쳐서 확실히 이해하도록 만든다.~ */ GOTO 22
  IF ~~ THEN REPLY #7689 /* ~그를 공격한다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7690 /* ~그를 그냥 보내준 후 떠난다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~  Global("Fleece","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #7691 /* ~그 남자는 전과 마찬가지이다... 아직도 길을 잃고 건물들을 쳐다보면서 중얼거리고 있다.~ */
  IF ~~ THEN REPLY #7692 /* ~"안녕하시오."~ */ GOTO 27
  IF ~~ THEN REPLY #7693 /* ~그를 그냥 지나친다.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #7694 /* ~그는 당신이 말을 걸자 깜짝 놀란다. 그는 몹시 초조한 듯 보인다. "에... 다시 만나 반갑소." 그는 기대하는 눈치다. "당신에게 길 안내를 부탁해도 괜찮겠소?"~ */
  IF ~~ THEN REPLY #7695 /* ~"어디로 가는 길을 알려달라는 건지 다시 말하겠소?" ~ */ GOTO 2
  IF ~~ THEN REPLY #7696 /* ~"아니, 오늘은 아니오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 20.0
  SAY #7697 /* ~"정말이오! 더 이상은 없소!"~ */
  IF ~~ THEN REPLY #7698 /* ~"좋소. 다시는 당신 꼴을 보기 싫소. 알겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #7699 /* ~"그럼 당신 생명은 이제 끝났소. 죽을 준비를 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7700 /* ~그를 그냥 보내준 후 떠난다.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END
