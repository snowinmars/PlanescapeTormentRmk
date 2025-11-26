// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUDGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUDGE~

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #54119 /* ~당신이 다가가자 이 찌무룩한 표정의 작은 사내는 한쪽 눈썹을 치켜 올린다. 그는 오만하고 살찐 귀족과 같은 어조로 말한다. "조심하시오. 당신은 공무 집행을 방해하고 있소, 그러니 말조심하시오. 나는 강력한 권한을 지닌 치안 판사요, 그리고 난 당신이 여기 있는 사내와 같은..." 그는 처형을 기다리고 있는 관료를 가리킨다. "...비참한 운명을 맞이하는 것을 보고 싶지는 않소."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54120 /* ~"만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #54121 /* ~"만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #54122 /* ~"만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #54123 /* ~"그 사나이를 처형해서는 안 되오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #54124 /* ~"그 사나이를 처형해서는 안 되오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ GOTO 4
  IF ~~ THEN REPLY #54125 /* ~"공식적인 절차? 의심스럽군. 당신은 이 사내를 처형하지 못할 거요."~ */ GOTO 1
  IF ~~ THEN REPLY #54126 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.5 4.3 6.5
  SAY #54127 /* ~"오?" 그는 치켜 올린 눈썹을 내리고 다른 쪽 눈썹을 치켜 올린다. "그럼 당신은 정의의 심판을 가로막겠다는 것이오? 그래, 대체 어떤 방법으로 처형을 중단시킬 생각이오?"~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN EXTERN ~DVHAIL~ 155
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54128 /* ~"만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57330 /* ~"그 사나이는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57333 /* ~"그 사나이는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57336 /* ~"그 사나이를 처형해서는 안 되오. 그는 희생양에 불과하오. 그건 옳은 일이 아니오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57339 /* ~"그 사나이를 처형해서는 안 되오. 그는 희생양에 불과하오. 그건 옳은 일이 아니오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ GOTO 4
  IF ~~ THEN REPLY #57341 /* ~"사형집행인과 당신을 죽임으로서, 만약 필요하다면."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Judge_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #57343 /* ~"관두시오. 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57345 /* ~판사의 얼굴에서 핏기가 싹 가신다. "아-아-마  우-리가 좀 너무 성급했던 것 같소, 머시킬러. 경비병! 이 사람을 풀어 주도록!" 그는 베일로에게 순한 양처럼 미소를 짓는다. "시기 적절한 도움에 감사를 드리오."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 156
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY #57347 /* ~판사의 양쪽 눈썹이 위로 올라간다. "뭐-? 감히?! 경비병! 이 자를 체포하라! 필요하면 죽여도 좋다!"~ */
  IF ~~ THEN REPLY #57348 /* ~재판관을 공격한다.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57350 /* ~경비병들을 공격한다.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"CrstGrd")
~ EXIT
  IF ~~ THEN REPLY #57352 /* ~사형집행인을 공격한다.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"Execute")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4 1.5 6.4
  SAY #57353 /* ~"*옳은 일이 아니다?* 당신은 내가 판사라는 것을 망각한 모양이군. 이 도시에서 무엇이 옳고 그른지 결정하는 건 내 권한이오!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57354 /* ~"하지만 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57357 /* ~"하지만 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57359 /* ~"하지만 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #57361 /* ~"그렇다 하더라도 이 사나이를 처형하게 할 수는 없소."~ */ GOTO 1
  IF ~~ THEN REPLY #57363 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.3 1.1 1.2 1.3 1.4 4.0 4.1 4.2 6.0 6.1 6.2 6.3
  SAY #57364 /* ~판사는 'V'자로 눈살을 찌푸린다. 그는 당신을 보고, 관료를 보더니, 다시 당신을 쳐다본다. "당신의 설득력 있는 말은 영리하고 현명하오... 당신의 시기 적절한 도움에 감사를 드리오. 이 도시와 피고 양쪽 모두가 당신에게 감사를 하고 있소. 더 이상의 성급한 처형은 없을 것이오. 경비병! 이 사람을 풀어 주도록!"~ */
  IF ~~ THEN REPLY #57365 /* ~"고맙소. 안녕히 계시오."~ */ DO ~AddexperienceParty(225000)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #57378 /* ~"또 왔소? 이번에는 무슨 용건이오?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57379 /* ~"그 사내는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57380 /* ~"그 사내는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57381 /* ~"그 사내는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57382 /* ~"그 사나이를 처형해서는 안 되오. 그는 희생양에 불과하오. 그것은 옳은 일이 아니오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57383 /* ~"그 사나이를 처형해서는 안 되오. 그는 희생양에 불과하오. 그것은 옳은 일이 아니오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ GOTO 4
  IF ~~ THEN REPLY #57384 /* ~"이러도록 방치할 순 없소. 당신은 그 사내를 처형할 수 없소."~ */ GOTO 1
  IF ~~ THEN REPLY #57385 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #57386 /* ~당신이 다가가자 이 찌무룩한 표정의 작은 사내는 한쪽 눈썹을 치켜 올린다. "날 화나게 만드는 일 말고 당신이 여기서 할 수 있는 일은 없소. 떠나는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #57387 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #57389 /* ~"또 왔소?" 판사는 짜증스럽게 한숨을 쉰다. "날 화나게 만드는 일 말고 당신이 여기서 할 수 있는 일은 없소. 떠나는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #57390 /* ~떠난다.~ */ EXIT
END
