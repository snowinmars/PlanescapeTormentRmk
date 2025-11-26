// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEGUARDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEGUARDS~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57421 /* ~당신이 다가가자 이 경비병은 고개를 돌린다, 그러나 아무 말도 하지는 않는다. 그의 투구의 틈새 사이로 흐리멍덩하고 무관심한 한 쌍의 눈이 보인다. ~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57422 /* ~"그 사내는 희생양에 불과하오. 만약 그가 처형되면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57423 /* ~"그 사내는 희생양에 불과하오. 그가 처형되면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57424 /* ~"그 사내는 희생양에 불과하오. 만약 그가 처형되면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ GOTO 1
  IF ~~ THEN REPLY #57425 /* ~"그 사나이가 처형되도록 해서는 안 되오. 그는 희생양에 불과하오. 그것은 옳은 일이 아니오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ GOTO 1
  IF ~~ THEN REPLY #57426 /* ~"그 사나이가 처형되도록 해서는 안 되오."~ */ GOTO 1
  IF ~~ THEN REPLY #57427 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.4
  SAY #57428 /* ~경비병은 어깨를 으쓱할 뿐이다.~ */
  IF ~~ THEN REPLY #57429 /* ~"당신은 신경이 쓰이지 않소? 이 곳에서 어떤 일이 벌어지고 있는지 모르겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #57430 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57431 /* ~경비병은 대답 대신 느리게 코방귀를 뀔 뿐이다.~ */
  IF ~~ THEN REPLY #57432 /* ~"좋소... 다른 사람을 찾아보도록 하겠소."~ */ EXIT
  IF ~~ THEN REPLY #57433 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57434 /* ~이 무관심한 경비병은 당신을 완전히 무시하기로 작심을 한 모양이다.~ */
  IF ~~ THEN REPLY #57435 /* ~떠난다.~ */ EXIT
END
