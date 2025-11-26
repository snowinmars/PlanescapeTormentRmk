// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOET~

IF ~  !Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43386 /* ~이 친절하게 생긴 노인은 당신을 잠시 보더니 다시 낭독을 계속한다.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43387 /* ~시인을 질문으로 몰아세운다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43838 /* ~시인을 질문으로 몰아세운다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43839 /* ~시인을 질문으로 몰아세운다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43840 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #43841 /* ~"쓰레기 같은 시요!"라는 고함 말고는 별 내용이 없는 당신의 야유는 화난 몇 사람의 청중들의 시선을 끌기는 하나... 그 이상의 효과는 없다.~ */
  IF ~~ THEN REPLY #43842 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #43843 /* ~당신은 시인을 조롱하며, 그의 시구의 스타일, 용모, 그리고 가정 생활에 대해 놀려댄다. 화난 몇 사람의 청중들의 시선을 끌고, 시인 자신이 잠시 화난 얼굴로 당신을 노려보게 만드는 데는 성공하나... 그 이상의 효과는 없다.~ */
  IF ~~ THEN REPLY #43844 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #43845 /* ~당신은 시인을 조롱하며, 그의 시구의 스타일, 용모, 그리고 가정 생활에 대해 놀려댄다. 그리고 당신은 그의 시구 중 몇 개를 중단시키고 대신 그것들을 당신이 지은 추잡한 시로 끝맺는다. 구경꾼들 중 일부는 낄낄 웃는다, 그리고 당신을 무시하려고 애를 쓰던 시인도 결국 당신을 노려보며 이를 간다. ~ */
  IF ~~ THEN REPLY #43846 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #43847 /* ~늙은 시인은 당신을 잠시 훑어보며 눈살을 찌푸리더니 다시 낭독을 계속한다.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43848 /* ~시인을 한층 더 몰아세운다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43849 /* ~시인을 한층 더 몰아세운다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43850 /* ~시인을 한층 더 몰아세운다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43851 /* ~떠난다.~ */ EXIT
END
