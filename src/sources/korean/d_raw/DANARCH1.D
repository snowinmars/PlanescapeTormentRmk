// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44239 /* ~중년 여성이 보인다. 그녀의 얼굴은 마음고생 때문에 생긴 주름이 많으나, 자비롭게 생겼다. 그녀는 매우 힘든 삶을 살아온 것 같다. "무슨 도움이 필요하세요?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44241 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44247 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #44248 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44249 /* ~"나는 빈정대며 떠다니는 해골을 찾고 있소. 그를 본 적이 있소?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44251 /* ~"아무 것도 필요하지 않을 것 같소. 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #44254 /* ~"내가 당신을 도울 수 있는 일은 없겠소?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44255 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44256 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #44257 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44258 /* ~"나는 빈정대며 떠다니는 해골을 찾고 있소. 그를 본 적이 있소?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44260 /* ~"아무 것도 필요하지 않을 것 같소. 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #44262 /* ~"왜 이렇게 빨리 돌아왔죠? 누군가의 계획은 망쳤나요?"~ */
  IF ~  GlobalGT("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #44263 /* ~"아직 아니오. 먼저 내 질문에 대답을 해주시오."~ */ GOTO 12
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44264 /* ~"그 하모니움 사관 말이오? 그는 죽었소."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~나는 하모니움 사관을 죽이는 데 성공했다고 리나에게 보고했다. ~ */ GOTO 11
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",2)
~ THEN REPLY #44265 /* ~"최근은 아니오. 질문을 좀 하고 싶을 뿐이오."~ */ GOTO 12
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
GlobalLT("Kill_Vorten","GLOBAL",3)
~ THEN REPLY #44266 /* ~"아직 아니오. 질문을 좀 하고 싶을 뿐이오."~ */ GOTO 7
  IF ~~ THEN REPLY #44267 /* ~"노력 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 4.2 5.0
  SAY #44268 /* ~그녀는 당신을 매우 조심스럽게 살핀다. 그녀는 혼자서 뭐라고 중얼거리는데 "그걸 곧 바꿔야 해..." 라고 하는 것 같다. 그녀는 마음을 가라앉히고 당신 눈을 직시한다. "당신의 우리의 일원인가요? 증명하세요."~ */
  IF ~~ THEN REPLY #44269 /* ~"어떻게?"~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44270 /* ~"내겐 당신에게 입증할 것이 아무 것도 없소."~ */ GOTO 15
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #44271 /* ~"내게 그 정보를 준 사람은 무법자 펜이오. 그는 당신이 자기를 알 거라고 했소."~ */ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #44272 /* ~"나는 리나예요. 나는 여기 이 두 사람을 지휘하고 있어요." 그녀는 손으로 동료들을 가리킨다.~ */
  IF ~~ THEN REPLY #44273 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #44274 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44275 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ GOTO 3
  IF ~~ THEN REPLY #44276 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 4.0 4.1
  SAY #44277 /* ~"이 곳은 창고이고, 나는 감독이에요. 사람들은 이 곳에 물건을 맡겼다가 찾아가죠..." 그녀는 어깨를 으쓱한다. "별로 할 말이 없군요."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44278 /* ~"어떤 친구가 이 곳에 아나키스트 세포가 있다고 말해주었소. 암호는 '일식'이오." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44279 /* ~"알겠소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.3
  SAY #44280 /* ~"떠다니며 빈정거리는 해골? 미안해요. 그런 건 이 근방에서 본 적이 없어요. 만약 당신이 해골을 찾고 있다면, 밤의 뼈들에 가보세요. 당신은 흉터를 좋아하는 것 같으니까, 로타가 발로가 핏 휜드를 싫어하는 것처럼 확실하게 상처를 몇 개 더 내줄 거예요."~ */
  IF ~~ THEN REPLY #44281 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #44282 /* ~"사업은... 성공했나요? 정직하게 대답해요."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44302 /* ~"그렇소, 그는 죽었소."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~나는 하모니움 사관을 죽이는 데 성공했다고 리나에게 보고했다. ~ */ GOTO 11
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44303 /* ~진실: "아직 아니오."~ */ GOTO 8
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44304 /* ~거짓말: "그렇소, 그는 죽었소."~ */ GOTO 10
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44305 /* ~"흠... 내가 뭘 해야 하는지 다시 말해주겠소?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.3
  SAY #44306 /* ~"당신은 그 잘난 체하는 하모니움 보텐을 죽이기로 했잖아요! 내 시간을 낭비하지 말고 빨리 가서 해치워요!"~ */
  IF ~~ THEN REPLY #44307 /* ~"난 몇 가지 질문을 하고 싶었을 뿐이오..."~ */ GOTO 9
  IF ~~ THEN REPLY #44308 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #44309 /* ~그녀는 당신을 무시하고 돌아서서 부하들에게 명령을 내리기 시작한다. ~ */
  IF ~~ THEN REPLY #44310 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #44311 /* ~"제발 내게 거짓말은 하지 마세요. 그건 당신이 내 정보력을 무시한다는 뜻이고, 그러면 내 눈에 당신만 더 얼간이처럼 보일 뿐이에요. 당장 가서 임무를 수행하세요."~ */
  IF ~~ THEN REPLY #44312 /* ~"난 질문을 좀 하고 싶었을 뿐이오!"~ */ GOTO 9
  IF ~~ THEN REPLY #44313 /* ~"그럼 좋소. Je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 7.0
  SAY #44314 /* ~"잘했어요... 그는 그 자신도 모르는 사이에 우리의 작전들 중 하나에 너무 가깝게 접근하고 있었어요. 이렇게 되었으니 빨간 갑옷을 입은 압제자들은 다른 목표를 쫓겠죠." 그녀의 눈이 번득인다. "당신은 스스로의 역할을 증명했어요. 어쨌든 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #44315 /* ~"나는 뭘 좀 물어보고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #44316 /* ~"머무를 장소."~ */ GOTO 13
  IF ~~ THEN REPLY #44317 /* ~"아이템을 좀 구입하고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #44318 /* ~"지금은 아무 것도 필요가 없소, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.0 2.2 11.0 13.0 14.0 18.1 19.0 20.0 21.1 22.1 23.0 24.0
  SAY #44319 /* ~"무엇을 알고 싶으시죠?"~ */
  IF ~~ THEN REPLY #44320 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ GOTO 13
  IF ~~ THEN REPLY #44321 /* ~"나는 아이템을 추가로 구입해야 하오."~ */ GOTO 13
  IF ~~ THEN REPLY #44322 /* ~"당신 세포에 대하여 좀 얘기해주시오."~ */ GOTO 18
  IF ~~ THEN REPLY #44323 /* ~"당시은 여기서 무엇을 달성하려 하고 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #44324 /* ~"당신은 왜 아나키스트가 되었소?"~ */ GOTO 20
  IF ~~ THEN REPLY #44325 /* ~"혁명가 연맹에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #44326 /* ~"그 외엔 아무 것도 없는 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2 12.0 12.1
  SAY #44327 /* ~"저기 있는 코낼과 얘기하세요. 그런 건 그의 관할이니까. ~ */
  IF ~~ THEN REPLY #44328 /* ~"좋소. 날 위해 몇 가지 질문에 대답해주시오..."~ */ GOTO 12
  IF ~~ THEN REPLY #44329 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2
  SAY #44330 /* ~그녀의 눈이 휘둥그레진다. "그는 상당히 지위가 높은 걸로 알고 있어요, 적어도 내 정보원이 내게 말해준 바에 의하면. 뭐가 필요하시죠?"~ */
  IF ~~ THEN REPLY #44331 /* ~"난 내 질문에 대한 답을 원할 뿐이오..."~ */ GOTO 12
  IF ~~ THEN REPLY #44332 /* ~"지금은 아무런 용건도 없소. 자기소개를 하는 것이 좋을 것 같아서 그냥 들렸소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.1
  SAY #44333 /* ~"실은 그래요. 그렇지 않으면 당신이 입이 가벼운 자로부터 암호를 산 건지 아니면 당신이 그냥 허풍쟁이인지 알 도리가 없으니까요. 충성심을 증명하든지 아니면 죽어 줘야겠어요." ~ */
  IF ~~ THEN REPLY #44334 /* ~"입증하겠소."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44335 /* ~"어디 날 한 번 죽여 보시지."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.1
  SAY #44336 /* ~"좋아요." 그녀가 동료들에게 휘파람을 불자 그들은 즉시 당신을 공격한다!~ */
  IF ~~ THEN REPLY #44337 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44338 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.0 15.0
  SAY #44339 /* ~"보텐이라는 하모니움 사관이 있어요. 그는 마계구의 벌통 쪽으로 향하는 출구 근처에 가면 있을 거예요. 그를 죽인 후에 성공했다는 소식을 가지고 여기로 돌아오세요." 그녀는 돌아서려다가 잠시 멈춘다. "사방에 내 눈들이 있으니 거짓말을 할 생각은 말아요.."~ */
  IF ~~ THEN REPLY #44340 /* ~"곧 착수하겠소."~ */ JOURNAL #39497 /* ~마계구의 창고에 있는 리나는 내게 하모니움 사관 보텐을 죽여 아나키스트에 대한 충성을 보이라고 말했다. ~ */ EXIT
  IF ~~ THEN REPLY #44341 /* ~"관두시오. 날 먼저 죽여야 헐 거요."~ */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #44342 /* ~"우리 셋이에요. 우리는 또 다른 한 사람에게 보고를 하지만, 그의 이름을 밝힐 수는 없고, 또 우리는 독자적으로 행동해요. 가끔씩 외부 사람이 우리에게 사람을 소개시켜 주기도 하지만, 그를 도와줄지 여부는 우리가 그에 대해 얼마나 아느냐에 따라 결정돼요. 코낼은 가게 담당, 오티스는 무력 담당, 그리고 나는 사상을 담당하고 있어요."~ */
  IF ~~ THEN REPLY #44343 /* ~"당신은 누구를 믿을 수 있는가를 어떻게 판단하오?"~ */ GOTO 22
  IF ~~ THEN REPLY #44344 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #44345 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY #44346 /* ~"우리는 현 체제를 전복시켜 타락한 사회 전체를 붕괴시키길 바라고 있어요. 우리는 그 후에는 온화한 자들이 계승하기를 바라고 있어요."~ */
  IF ~~ THEN REPLY #44347 /* ~"흠. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #44348 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.4
  SAY #44349 /* ~"하모니움의 군사 행동에 의해 가족들이 뿔뿔이 흩어지게 되는 것을 빼고 말인가요? 갓즈맨이 내뿜는 스모그 때문에 내 친구들이 쇠약해져 죽어가는 것을 제하고 말인가요? 억압적인 훼이티드의 요구나, 남들이 고통받을 때 흥청거리는 센세이트의 자아 도취적인 쾌락을 제외하고 말인가요? 오, 그래, 이유가 없겠군요. 현 체제에서 잘못된 걸 찾으려고 노력할 필요가 어디 있겠어요?"~ */
  IF ~~ THEN REPLY #44350 /* ~"좋소. 한두 가지만 더 대답해줄 수 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #44351 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5
  SAY #44352 /* ~"당신은 이미 너무 많이 알고 있어요, 특히 우리 세포의 일원이 아닌 사람치고는. 이것이 우리가 일하는 방식이에요: 우리는 한 집단이 다른 집단을 부주의나 불운 때문에 파괴시키는 일이 없도록 세포 단위로 나누어 활동하고 있어요. 때로는 우리들끼리 서로 대립할 때도 있지만, 대부분의 경우 우리는 현재 시길을 지배하고 있는 억압적인 당파들에게 있어 눈엣가시 같은 존재예요. 우리는 그들이 우리를 위협이라고 생각할 정도로 그들을 괴롭히죠."~ */
  IF ~~ THEN REPLY #44353 /* ~"그럼 당신들은 다른 동지들과 어떻게 연락을 하오? 어떤 조직 체계라도 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #44354 /* ~"보람은 있지만... 위험한 것 같소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #44355 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0
  SAY #44356 /* ~"없어요. 그것이 우리가 서로를 믿지 않는 이유죠. 그리고 우리는 우리들 사이에서도 매우 조심스럽게 행동해요. 우리는 절대로 누굴 완전히 신뢰하지 않아요. 매우 위험한 게임이지만, 자유를 얻기 위해서는 하지 않을 수가 없는 게임이에요."~ */
  IF ~~ THEN REPLY #44357 /* ~"만약 서로를 믿을 수가 없다면, 당신들이 무엇을 향해 나가고 있는지를 어떻게 알 수가 있소?"~ */ GOTO 23
  IF ~~ THEN REPLY #44358 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #44359 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44360 /* ~"지금으로서는 기존의 기생적인 질서를 붕괴시키는 것 말고는 없어요. 부패를 타도하는 것이 우선이에요. 치료는 이 사회에서 독소를 제거한 후에도 할 수 있어요."~ */
  IF ~~ THEN REPLY #44361 /* ~"좋소. 날 위해 몇 가지 질문에 대답해주시오..."~ */ GOTO 12
  IF ~~ THEN REPLY #44362 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #44363 /* ~"우리는 위대한 고리 전역에 걸쳐 안가를 보유하고 있어요. 하지만 가장 강력한 세포는 카케리의 관문 도시인 커스트에 있다고 하는군요. 하지만 그들은 대사건이 일어나기 전에는 모습을 드러내지 않을 거예요. 그 도시는 배신자들로 득실거려요. 주민들이 그토록 염탐하기 좋아하는 곳에서는 몸조심하는 것이 상책이에요."~ */
  IF ~~ THEN REPLY #44364 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #44365 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END
