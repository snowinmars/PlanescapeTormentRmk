// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHEZOBOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHEZOBOL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50917 /* ~흐르는 듯한 법복을 입은 날씬한 사내가 보인다. 그의 얼굴은 분노로 어두워져 있으며, 활발하게 움직이고 있는 자신의 부하들에게 고함을 지르고 있다. "서둘러, 병신들아! 우리에겐 제물을 바칠 때까지 시간이 별로 없어!" 그는 당신을 눈치채지 못한 듯하다. ~ */
  IF ~~ THEN REPLY #50918 /* ~"뭘 하고 있는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #50919 /* ~"난 당신을 멈추러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #50920 /* ~조용히 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #50921 /* ~그는 화난 표정으로 당신을 노려본다. "나는 이 혼란을 이용해 이득을 취하려 하고 있소. 모든 사람이 도시의 질서를 회복하는 데 여념이 없는 지금이야말로 노예들을 확보하기에 가장 좋은 때요. 난 할 일이 있어 이만 실례하겠소." 그는 다시 부하들 쪽으로 돌아선다. ~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50922 /* ~"시의 붕괴는 이 사태를 이용하려는 사람들 때문에 일어난 것이오. 그 일을 그만두면 시가 원위치로 복귀하는 데 일조할 수 있을지도 모르오. 당신 장사는 그 후에 재개해도 늦지는 않소."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #50923 /* ~"너무나도 많은 사람들이 이 곳의 혼돈과 악을 한층 심화시키고 있소. 만약 당신과 당신 부하들이 시를 방어하는 일을 돕는다면 그 균형을 역전시킬 수 있을지도 모르오."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #50924 /* ~"시를 지금의 곤경에 빠뜨린 것은 바로 그런 행동이오. 이와 싸우는 데 나와 동참하면 우리는 이 위기에서 한층 빨리 벗어날 수 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #50925 /* ~"난 당신을 멈추러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #50926 /* ~그를 공격한다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Slaver_1","GLOBALGood",-1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 5.1
  SAY #50927 /* ~그는 당신을 조소한다. "어디 날 멈춰 보시지. 얘들아! 노예들은 놔두고 이 훼방꾼부터 죽여라!"~ */
  IF ~~ THEN REPLY #50928 /* ~싸운다.~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.2
  SAY #50930 /* ~그는 부하들에게 소리를 지른다. "하던 일 멈춰!" 그는 사려 깊게 당신을 쳐다본다. "그래, 당신은 우리가 게흐렐레스들에게 제물을 바칠 필요가 없고 말하고 있는 거요?"~ */
  IF ~~ THEN REPLY #50931 /* ~"아니. 만약 당신이 다른 시민들과 협조하지 않으면 시 전체가 제물이 될 거요."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(150000)
~ JOURNAL #50932 /* ~나는 노예 상인들이 노예 거래를 중지하고 게흐렐레스에 대항하여 싸우도록 설득하는 데 성공했다. ~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50933 /* ~그는 악담을 한다. "난 운도 없군. 수확이 꽤 괜찮았는데. 좋아, 얘들아, 놈들을 풀어 줘! 우리는 도시를 구해야 하니까!" 그는 읽기 어려운 표정으로 당신을 본 후 부하들을 이끌고 떠난다. "충고를 해주어 고맙소, 이방인."~ */
  IF ~~ THEN REPLY #50934 /* ~"좋소. 행운을 빌겠소."~ */ DO ~SetGlobal("Slaver_Gone","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #50935 /* ~이 노예 상인은 작업을 아주 매끄럽게 진행하고 있다, 하지만 그는 언제 닥칠지 모르는 게흐렐레스의 내습에 대한 대비를 게을리하지 않고 있다. "뭘 원하는 거요?"~ */
  IF ~~ THEN REPLY #50936 /* ~"뭘 하고 있는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #50937 /* ~"난 당신을 멈추러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #50938 /* ~조용히 떠난다.~ */ EXIT
END
