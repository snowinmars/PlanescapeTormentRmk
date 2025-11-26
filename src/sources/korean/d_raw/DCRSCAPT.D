// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSCAPT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSCAPT~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #60328 /* ~훌륭한 갑옷을 입었으나, 얼굴이 근심으로 가득한 사내가 보인다. 그는 다른 경비병들을 지휘해 시를 지키고 있다. "난 얘기할 시간이 없소." 그가 고함친다. "만약 쓸모 있는 사람이 되고 싶으면 그 염병할 디바를 죽이던지, 이 ㅁㅁ들을 좀 처치하시오! 내 시간을 낭비하지 마시오!" 그는 다시 동료들 쪽으로 돌아선다. ~ */
  IF ~~ THEN REPLY #60329 /* ~"무슨 일이 벌어지고 있는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #60330 /* ~"좋소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60331 /* ~"무슨 일이냐고? 당신은 대체 어디서 온 거요? 그 염병할 디바가 땅에서 솟아 나와서는 우리를 카케리로 끌어 왔소! 이제 우리는 우리를 스낵으로 먹으려는 ㅁㅁ들과 싸워야 할 신세요. 우리는 지금 위기의 한 가운데에 있소, 그러니 날 방해하지 마시오!" 그는 당신을 거칠게 밀고 지나간다, 그리고 질문에 더 이상 대답할 것을 거부한다.~ */
  IF ~~ THEN REPLY #60332 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 2 // from: 0.1
  SAY #60333 /* ~"당신은 날 방해하고 있소... 시를 위할 생각이 있으면 디바가 뿌려 놓은 쓰레기나 치우시오! 하지만 날 더 이상 귀찮게 하지 마시오!"~ */
  IF ~~ THEN REPLY #60334 /* ~"좋소, 좋아..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 3 // from:
  SAY #60335 /* ~커스트 경비병의 복장을 입은, 날카로운 인상의 남자가 보인다 - 하지만 그는 다른 경비병들보다는 더 권위가 있는 것처럼 보인다. 그는 경멸하는 눈초리로 당신을 본다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #60336 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #60337 /* ~"책임자를 만나고 싶소."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60338 /* ~"로버타 부인이라는 여자가 그녀의 남편인 칼을 죽이려는 음모에 연관되어 있소. 내가 알기로 그는 시장의 조수들 중 하나요."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60340 /* ~"나는 칼 파휘도를 죽인 일에 대해 자수하려 하오."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60341 /* ~"이 도시의 관료들 중 하나가 내게 다른 관료를 죽여달라고 부탁했소. 난 이 일을 당신에게 알려야 한다고 생각했소."~ */ GOTO 9
  IF ~~ THEN REPLY #60342 /* ~"난 당신이 날 체포하기를 바라오."~ */ GOTO 10
  IF ~~ THEN REPLY #60343 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #60344 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 4 // from: 5.0 7.0 11.0 12.0 13.0 14.0
  SAY #60345 /* ~"뭐요?"~ */
  IF ~~ THEN REPLY #60346 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #60347 /* ~"책임자를 만나고 싶소."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60348 /* ~"로버타 부인이라는 여자가 그녀의 남편인 칼을 죽이려는 음모에 연관되어 있소. 내가 알기로 그는 시장의 조수들 중 하나요."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60349 /* ~"나는 칼 파휘도를 죽인 일에 대해 자수하려 하오."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60350 /* ~"이 도시의 관료들 중 하나가 내게 다른 관료를 죽여달라고 부탁했소. 난 이 일을 당신에게 알려야 한다고 생각했소."~ */ GOTO 9
  IF ~~ THEN REPLY #60351 /* ~"난 당신이 날 체포하기를 바라오."~ */ GOTO 10
  IF ~~ THEN REPLY #60352 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #60353 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #60354 /* ~"여긴 커스트요. 뭘 알고 싶은 거요? 이 곳이 광인이 지배하고, 배신이 일상다반사이며, 카케리에 사는 게흐렐레스의 수(9999)보다 많은 음모가 진행되고, 가족을 믿느니 차라리  전혀 모르는 사람을 믿는 편이 나은 그런 도시라는 사실? 여기가 기만과 복수가 실체화한 것 같은 도시라는 것? 주위를 둘러보고 당신이 직접 판단하시오."~ */
  IF ~~ THEN REPLY #60355 /* ~"알겠소. 그럼 날 위해 다른 질문들에 좀 대답해주시오..."~ */ GOTO 4
  IF ~~ THEN REPLY #60356 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1
  SAY #60357 /* ~"책임자? 무슨 용건이오?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60358 /* ~"로버타 부인이라는 여자가 그녀의 남편인 칼을 죽이려는 음모에 연관되어 있소. 내가 알기로 그는 시장의 조수들 중 하나요."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60359 /* ~"나는 칼 파휘도를 죽인 일에 대해 자수하려 하오."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60360 /* ~"이 도시의 관료들 중 하나가 내게 다른 관료를 죽여달라고 부탁했소. 난 이 일을 당신에게 알려야 한다고 생각했소."~ */ GOTO 9
  IF ~~ THEN REPLY #60361 /* ~"난 당신이 날 체포하기를 바라오."~ */ GOTO 10
  IF ~~ THEN REPLY #60362 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #60363 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 4.2 6.0
  SAY #60364 /* ~"정말 그녀가 그랬단 말이오? 우리가 알아서 처리하겠소, 친구. 커스트의 시민들을 대신해 감사하리다."~ */
  IF ~~ THEN REPLY #60365 /* ~"참으로 잘됐소. 그런데 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #60366 /* ~"참으로 잘됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 6.1
  SAY #60367 /* ~"그런가? 말을 하시오. 아니, 생각해보니 당신이 들어가게 될 감방에다 대고 하는 것도 나쁘지 않겠군. 협력할 거요, 말 거요?"~ */
  IF ~~ THEN REPLY #60368 /* ~"얌전히 따라가겠소."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #60369 /* ~"농담하는 거요? 그럴 순 없지."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.4 6.2
  SAY #60370 /* ~투구 안의 그의 눈이 날카로워진다. "이름을 대시오. 누가 뭘 하려고 한다고?"~ */
  IF ~~ THEN REPLY #60371 /* ~"샤바는 안'이지우스를 죽이려고 하고 있소."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~나는 커스트 경비대 대장에게 샤바가 안'이지우스를 죽이려 한다고 말했다. 그는 그 얘기를 듣고 기뻐했으며, 그녀를 체포하겠다고 맹세했다. 난 내가 옳은 일을 했기를 바란다...~ */ GOTO 12
  IF ~~ THEN REPLY #60372 /* ~"안'이지우스는 내게 샤바에게 누명을 씌워 달라고 부탁했고 그녀 역시 안'이지우스에게 누명을 씌워 달라고 부탁했소. 그들은 두 사람 모두 부패했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60373 /* ~"안'이지우스는 샤바를 죽이려고 하고 있소."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~나는 커스트 경비대 대장에게 안'이지우스가 샤바 를 죽이려 한다고 말했다. 그는 그 얘기를 듣고 기뻐했으며, 그 기스양키를 체포하겠다고 맹세했다. 난 내가 옳은 일을 했기를 바란다...~ */ GOTO 14
  IF ~~ THEN REPLY #60374 /* ~"내가 한 말은 잊으시오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.5 4.5 6.3
  SAY #60375 /* ~"무슨 혐의로? 여기서 나가시오. 나는 바쁜 사람이오." 그는 당신을 노골적으로 무시하고 주변를 둘러본다."~ */
  IF ~~ THEN REPLY #60376 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.6 4.6 6.4
  SAY #60377 /* ~그는 당신 쪽으로 고개를 기울인다. "대체 왜 여기서 디바를 찾는 거요? 내가 아는 한 디바는 커스트에 매우 오랫동안 온 적이 없소. 온다고 해도 이 곳 공기에 충만한 배신과 악의 냄새 때문에 질식사할 테니까." 그는 웃는다. ~ */
  IF ~~ THEN REPLY #60378 /* ~"그럼 좋소. 몇 가지 질문에 좀 대답해주시오..."~ */ GOTO 4
  IF ~~ THEN REPLY #60379 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 15.0
  SAY #60380 /* ~그는 눈을 실처럼 가늘게 뜬다. "나는 그녀를 내 감옥에 넣을 날을 학수고대하고 있었소. 나는 그녀를 위한 특별한 형벌도 마련해 두었소. 곧 체포 부대를 보내도록 하겠소. 고맙소, 이방인."~ */
  IF ~~ THEN REPLY #60381 /* ~"천만의 말씀이오. 질문하고 싶은 것이 더 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #60382 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 15.1
  SAY #60383 /* ~"양쪽 다? 좋소. 이번 일로 시에서의 내 권력을 확고히 할 수 있겠군. 그들은 당신이 눈치채기도 전에 사라지게 될 거요. 고맙소, 이방인."~ */
  IF ~~ THEN REPLY #60384 /* ~"천만의 말씀이오. 질문하고 싶은 것이 더 있소..."~ */ JOURNAL #60386 /* ~나는 커스트 경비대 대장에게 샤바와 안'이지우스가 서로 상대방을 날조된 범죄에 연루 시키려고 한다고 알려주었다. 그는 그 얘기를 듣고 몹시 기뻐했다. 나는 내가 올바른 선택을 했기를 바란다...~ */ GOTO 4
  IF ~~ THEN REPLY #60385 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ JOURNAL #60386 /* ~나는 커스트 경비대 대장에게 샤바와 안'이지우스가 서로 상대방을 날조된 범죄에 연루 시키려고 한다고 알려주었다. 그는 그 얘기를 듣고 몹시 기뻐했다. 나는 내가 올바른 선택을 했기를 바란다...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 15.2
  SAY #60390 /* ~"그 기스양키 개새끼가 마침내 꼬리를 드러낸 거요? 나는 기쁜 마음으로 그를 죄수 명단에 올리겠소. 곧 체포 부대를 보내도록 하겠소. 고맙소, 이방인."~ */
  IF ~~ THEN REPLY #60391 /* ~"천만의 말씀이오. 질문하고 싶은 것이 더 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #60392 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #60394 /* ~그는 당신을 노려본다. "아니, 그럴 수 없소. 내게 정보를 주지 않으면, 당신의 흉터투성이 목을 졸라서라도 짜내겠소."~ */
  IF ~~ THEN REPLY #60395 /* ~"샤바는 안'이지우스를 죽이려고 하고 있소."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~나는 커스트 경비대 대장에게 샤바가 안'이지우스를 죽이려 한다고 말했다. 그는 그 얘기를 듣고 기뻐했으며, 그녀를 체포하겠다고 맹세했다. 난 내가 옳은 일을 했기를 바란다...~ */ GOTO 12
  IF ~~ THEN REPLY #60396 /* ~"안'이지우스는 내게 샤바에게 누명을 씌워 달라고 부탁했고 그녀 역시 안'이지우스에게 누명을 씌워 달라고 부탁했소. 그들은 두 사람 모두 부패했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60397 /* ~"안'이지우스는 샤바를 죽이려고 하고 있소."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~나는 커스트 경비대 대장에게 안'이지우스가 샤바 를 죽이려 한다고 말했다. 그는 그 얘기를 듣고 기뻐했으며, 그 기스양키를 체포하겠다고 맹세했다. 난 내가 옳은 일을 했기를 바란다...~ */ GOTO 14
  IF ~~ THEN REPLY #60398 /* ~"정보를 얻으려면 강제적인 수단을 동원해야만 할 거요."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
