// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9710 /* ~이 남자는 만취했다. 그는 말하기는커녕 서 있기도 어려운 지경이다. 그로부터는 술, 구토, 그리고 오줌 냄새가 난다. ~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #9807 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #9809 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #9811 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9792 /* ~취객은 당신이 자신에게 얘기를 하고 있다는 사실을 간신히 아는 듯하다. 그는 혼란스러운 듯 주변을 둘러보며 목소리의 출처를 찾으려고 애를 쓴다. 당신은 안나가 그의 뒤로 몰래 가서 그의 돈지갑을 노리려고 한다는 것을 눈치챈다. ~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #9813 /* ~"안나... 그러지 마시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 75
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #9816 /* ~"안나... 그러지 마시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 76
  IF ~~ THEN REPLY #9819 /* ~그의 관심을 끌기 위해 그를 흔든다.~ */ GOTO 4
  IF ~~ THEN REPLY #9824 /* ~그를 그냥 내버려 둔다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 77
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #9793 /* ~취객은 당신이 자신에게 얘기를 하고 있다는 사실을 간신히 아는 듯하다. 그는 혼란스러운 듯 주변을 둘러보며 목소리의 출처를 찾으려고 애를 쓴다. ~ */
  IF ~~ THEN REPLY #9828 /* ~그의 관심을 끌기 위해 그를 흔든다.~ */ GOTO 3
  IF ~~ THEN REPLY #9830 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9795 /* ~"허? 뭐? 꺼억!" 그는 갑자기 마구 토하기 시작하고, 당신은 그것이 몸에 튀는 것을 피하려고 뒤로 물러선다. 이 인간 쓰레기로부터 당신이 얻을 건 별로 없을 것 같다. ~ */
  IF ~~ THEN REPLY #9832 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #9796 /* ~"허? 뭐? 꺼억!" 그는 갑자기 마구 토하기 시작하고, 당신과 안나는 그것이 몸에 튀는 것을 피하려고 뒤로 물러선다. 이 인간 쓰레기로부터 당신이 얻을 건 별로 없을 것 같다. ~ */
  IF ~~ THEN REPLY #9834 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END
