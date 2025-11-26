// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEXEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEXEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57394 /* ~이 거한은 주변에서 일어나는 일에 대해 아무런 관심이 없는 듯하다. 당신이 다가가자 그는 하품을 하며 자신의 더러운 손톱을 판다. ~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57395 /* ~"그 사내는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57396 /* ~"그 사내는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57397 /* ~"그 사내는 희생양에 불과하오. 만약 당신이 그를 처형하면 애초에 커스트가 카케리에 떨어지도록 만든 혼돈을 한층 더 증강시킬 것이오. 이 광기에 종지부를 찍어 커스트를 원래 장소로 되돌립시다... 우리가 몰살당하기 전에."~ */ GOTO 1
  IF ~~ THEN REPLY #57398 /* ~"그 사나이를 처형해서는 안 되오. 그는 희생양에 불과하오. 그것은 옳은 일이 아니오. 커스트가 카케리에 떨어지게 된 것은 바로 그런 짓들 때문이오... 그리고 이 관문 도시를 다시 아웃랜즈로 되돌려 놓기 위해서는 바로 그런 짓들을 멈추어야만 하오."~ */ GOTO 1
  IF ~~ THEN REPLY #57399 /* ~"멈추시오. 당신이 이 사나이를 처형하도록 내벼려둘 순 없소."~ */ GOTO 2
  IF ~~ THEN REPLY #57400 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #57401 /* ~그는 당신이 제대로 말을 하기도 전에 당신 말을 끊는다. "판사와 말하시오. 판사와." 그는 다시 자신의 더러운 손톱을 살피는 일로 돌아간다.~ */
  IF ~~ THEN REPLY #57402 /* ~"아니, 난 당신에게 이야기하고 있는 거요. 당신은 이 사나이를 처형해선 안 되오."~ */ GOTO 2
  IF ~~ THEN REPLY #57403 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.0
  SAY #57404 /* ~그는 잠시 손톱에서 눈을 떼고 당신을 쳐다본다. "판사가 이 사람을 죽이라고 하면 난 죽일 거요... 내가 당신부터 죽이고 그 일을 해야 할지 여부는 당신에게 달렸소. 나라면 가서 판사와 얘기를 하겠소."~ */
  IF ~~ THEN REPLY #57405 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57406 /* ~신선한 피로 손이 피투성이가 된 사형집행인은 지루한 표정으로 당신을 흘긋 본다. "일단 일이 시작된 이상 당신이 뭐라고 해도 상황은 변하지 않을 거요."~ */
  IF ~~ THEN REPLY #57407 /* ~떠난다.~ */ EXIT
END
