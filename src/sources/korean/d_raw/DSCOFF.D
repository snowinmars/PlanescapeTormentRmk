// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCOFF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3032 /* ~책상에 구부정하게 앉아 종이에 뭔가를 갈겨 쓰고 있는 마른 사내가 당신 시야에 들어온다. 그는 자신의 숱이 별로 없는 칙칙한 황갈색 머리를 포니테일로 묶고 있으며, 그의 매부리코에는 안경이 걸려 있다. 그의 연령은 20대 초반에서부터 40대 후반 사이인 듯하나, 그 정확한 연령을 파악하기가 힘들다. 그는 말을 하면서도 당신을 올려다 보지 않는다. "무엇을 원하시오? 용무가 있으면 어서 말하시오."~ */
  IF ~  Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #3033 /* ~"당신은 누구요?"~ */ GOTO 1
  IF ~~ THEN REPLY #61601 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #65168 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 3
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65169 /* ~"나는 어떤 해골을 찾고 있소."~ */ GOTO 4
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65170 /* ~"도시는 불타야만 하오."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~~ THEN REPLY #65172 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65203 /* ~"그렇소. 길츠퍼가 내게 이 전단을 당신에게 가져가 백 장만 인쇄해 오라고 부탁했소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~~ THEN REPLY #66220 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65181 /* ~"내 이름은 펜이오. 그리고 당신 질문은 내 질문에 대한 답이 되오: 당신은 이 곳에 들어오기 전에 여기가 인쇄소란 것을 전혀 모르고 있었으며, 그리고 이제 당신은 당신 시간뿐만 아니라 내 시간도 낭비하려고 아주 작심을 하였소."~ */
  IF ~~ THEN REPLY #65200 /* ~"당신은 어떤 것들을 인쇄하시오?"~ */ GOTO 2
  IF ~~ THEN REPLY #65201 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65202 /* ~"알겠소. 그 얘기는 잊어버리시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 12.1
  SAY #65182 /* ~"책. 팸플릿. 전단. 편지. 뭐든지." 그는 자신이 한 말을 정정한다. "하지만 외설물은 취급하지 않으니 괜히 엉뚱한 생각은 하지 마시오."~ */
  IF ~~ THEN REPLY #65236 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65237 /* ~"알겠소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.2 12.2
  SAY #65183 /* ~그는 글을 쓰다가 말고 당신을 노려본다. "당신은 골이 완전히 빈 거요? 여긴 인쇄소요. 나는 인쇄를 하오. 주위를 둘러보시오. 나는 인쇄를 한단 말이오."~ */
  IF ~~ THEN REPLY #65238 /* ~"당신은 어떤 것들을 인쇄하시오?"~ */ GOTO 2
  IF ~~ THEN REPLY #65239 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65240 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 12.4
  SAY #65184 /* ~그는 코방귀를 뀐다. "내 입장에서 볼 때도 그렇소."~ */
  IF ~~ THEN REPLY #65241 /* ~"내게 그런 태도를 취하지 마시오, 아니면 후회하게 될 테니."~ */ GOTO 14
  IF ~~ THEN REPLY #65242 /* ~"난 심각하오. 내 동료들 중 하나를 도둑맞았소."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65243 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65244 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6 12.5
  SAY #65185 /* ~그는 전단을 받아서 살펴본 후 말한다. "나중에 작업하도록 하겠소. 그에게 그렇게 전하시오." 그는 책상 쪽으로 시선을 돌린다.~ */
  IF ~~ THEN REPLY #65245 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65248 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #65186 /* ~"그렇다면 뼈들의 지배자인 로타에 대해 사람들에게 물어보시오. 소문에 의하면 그는 책 대신 해골들로 가득한 멋진 도서관을 가지고 있다고 하오. 하지만 나는 그가 어디 있는지 모르오, 그리고 설령 안다고 해도 얘기해주지 않겠소 - 그는 마법에 대해 대부분의 사람들이 상상할 수 있는 것보다 훨씬 더 많은 것을 알고 있소, 그러니 난 그의 비위를 거스를 생각은 없소. "이제 나가시오."~ */
  IF ~~ THEN REPLY #65246 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65249 /* ~"내게 그런 태도를 취하지 마시오, 친구."~ */ GOTO 14
  IF ~~ THEN REPLY #65250 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4 12.6
  SAY #65187 /* ~"뭐가 뭐라고? 뭐라고 말한 거요? 그건 내게는 아무런 의미도 없소."~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65251 /* ~"나는 도시가 불타야 한고 했소."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65252 /* ~"베다이-린이 날 보냈소."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65253 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65254 /* ~"나는 도시가 불타야 한고 했소."~ */ GOTO 21
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65255 /* ~"베다이-린이 날 보냈소."~ */ GOTO 22
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65256 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #65188 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65247 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65257 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 12.8
  SAY #65189 /* ~"연애 편지? 좋소. 하지만 비용이 좀 들 거요. 얼마를 받을까... 그래... 동전 백 닢이오. 보아하니 당신은 급한 사정이 있는 것 같소."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65258 /* ~"여기 있소."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #65259 /* ~"할인은 안 되겠소?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #65260 /* ~"할인은 안 되겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #65261 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 12.3
  SAY #65190 /* ~그는 당신에게서 쪽지를 받아서 살펴본 후 공 모양으로 구긴다. 그러자 그것은 순식간에 재가 되어 부스러진다. 그는 침착한 표정으로 당신을 바라본다. "누군가가 내 명예를 훼손하고 다니는 것 같소. 자, 뭔가 원하는 거라도 있소?" ~ */
  IF ~~ THEN REPLY #65262 /* ~"그 명예 훼손에 대해서 걱정이 되지 않소?"~ */ GOTO 17
  IF ~~ THEN REPLY #65263 /* ~"나는 당신 그룹에 참여하고 싶소."~ */ GOTO 18
  IF ~~ THEN REPLY #65264 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65265 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 15.0 16.0
  SAY #65191 /* ~그는 당신으로부터 돈을 받는다, 그리고 잠시 생각한 후 책상 서랍에서 향수를 뿌린 종이 한 장을 꺼낸다. 그는 그 위에 화려하고 우아한 글씨체로 사랑을 호소하는 공허한 글을 몇 줄 적는다. "이거면 충분할 거요."~ */
  IF ~~ THEN REPLY #65266 /* ~"그러리다. 물어보고 싶은 것들이 더 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65267 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.5 1.1 2.0 3.1 4.2 5.0 6.0 8.0 10.2 11.0 15.1 16.1 17.1 18.0 19.0 21.0 22.0 25.0 32.0 77.2 78.0 79.1
  SAY #65192 /* ~"일과 관련된 것들이오?"~ */
  IF ~~ THEN REPLY #65268 /* ~"아니오..."~ */ GOTO 13
  IF ~~ THEN REPLY #65269 /* ~"당신은 어떤 것들을 인쇄하시오?"~ */ GOTO 2
  IF ~~ THEN REPLY #65270 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 3
  IF ~  PartyHasItem("PenNote")
~ THEN REPLY #65271 /* ~"당신이 내가 시체안치소에서 발견한 이 쪽지를 쓴 사람이오?"~ */ DO ~DestroyPartyItem("PenNote",TRUE)
~ GOTO 10
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65272 /* ~"그렇소. 나는 어떤 해골을 찾고 있소."~ */ GOTO 4
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65273 /* ~"그렇소. 길츠퍼가 내게 이 전단을 당신에게 가져가 백 장만 인쇄해 오라고 부탁했소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65274 /* ~"그렇소. 도시는 불타야만 하오."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~  Global("Know_Penn","AR0509",1)
~ THEN REPLY #65275 /* ~"도시는 불타야만 하오."~ */ GOTO 23
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65276 /* ~"날 위해 연애 편지를 만들어 주었으면 하오."~ */ GOTO 9
  IF ~~ THEN REPLY #65300 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65193 /* ~"그렇다면 당신은 당신 시간과 내 시간을 낭비하고 있소. 안녕히 가시오." 그는 책상 쪽으로 시선을 돌린다.~ */
  IF ~~ THEN REPLY #65280 /* ~"날 무시하지 마시오."~ */ GOTO 14
  IF ~~ THEN REPLY #65281 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0 6.1 13.0 18.1 19.1 32.1 77.0 79.0
  SAY #65194 /* ~그는 손을 흔든다... 그리고 당신은 가게 밖에 있는 자신을 발견한다.~ */
  IF ~~ THEN REPLY #65282 /* ~"뭐...?"~ */ DO ~IncrementGlobal("Penn_Out","GLOBAL",1)
TeleportParty("AR0500",[3348.1081],10)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY #65195 /* ~"좋소. 동전 이른 다섯 닢. 그 가격에 하든지 아니면 마시오. "~ */
  IF ~  PartyGoldGT(74)
~ THEN REPLY #65283 /* ~"좋소."~ */ DO ~TakePartyGold(75)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65284 /* ~"관두겠소. 질문할 것들이 더 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65285 /* ~"관두겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY #65196 /* ~그는 짤막한 웃음을 터뜨린다. "난 그렇게 생각하지 않소. 동전 백 닢을 내든지 아니면 관두시오."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65286 /* ~"여기 있소."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65287 /* ~"그럼 관두시오. 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65288 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #65197 /* ~"그럴 이유가 어디 있소? 단지 경쟁업체의 모함일 뿐이오. 누구 짓인지도 대충 짐작은 가오, 그리고 나도 그에 상응하는 보복을 생각해 두고 있소."~ */
  IF ~~ THEN REPLY #65289 /* ~"내가 뭐 도와줄 일은 없겠소?"~ */ GOTO 19
  IF ~~ THEN REPLY #65290 /* ~"좋소. 그럼 몇 가지만 더 물어봅시다..."~ */ GOTO 12
  IF ~~ THEN REPLY #65291 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY #65198 /* ~그는 당신을 노려본다. "나를 다른 사람과 착각한 모양이군. 다른 용건이 있소, 아니면 내 가게에서 내쫓기는 걸 원하시오?"~ */
  IF ~~ THEN REPLY #65292 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65293 /* ~"날 강제로 내쫓아야 할 거요."~ */ GOTO 14
  IF ~~ THEN REPLY #65294 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #65199 /* ~"당신은 정말 생긴 것만큼 멍청하오? 물론 아니겠지."~ */
  IF ~~ THEN REPLY #65295 /* ~"그럼 좋소. 그런데 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65296 /* ~"내게 그런 태도로 말하지 마시오."~ */ GOTO 14
  IF ~~ THEN REPLY #65297 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.0 7.1 7.2
  SAY #65204 /* ~"당신에 대한 얘기는 들었소." 그는 당신을 뚫어지게 쳐다본다. "베다이-린이 당신을 보냈다면, 그건 당신이 우리와 행동을 함께 하겠다는 뜻이오, 그렇소?"~ */
  IF ~~ THEN REPLY #65298 /* ~"그렇소."~ */ GOTO 31
  IF ~~ THEN REPLY #65299 /* ~"별로."~ */ GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 7.3
  SAY #65205 /* ~"그건 내게 아무런 의미도 없소, 당신이 미치광이의 헛소리에 귀를 기울이고 있었다는 것 말고는. 자, 뭔가 필요하시오?"~ */
  IF ~~ THEN REPLY #65301 /* ~"그렇소. 물어볼 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65302 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.4
  SAY #65206 /* ~"누구? 베다이-린? 그 지긋지긋한 마녀가 요즘은 자신을 그렇게 부르오?" 그는 피곤한 듯 한숨을 쉰다. "그녀는 질투에 눈이 먼 옛 애인이오. 내가 체포되게 만들려고 온갖 발악을 다하고 있지만 아직껏 성공은 못했소." 그는 다시 똑바로 선다. "달리 필요한 거라도 있소?"~ */
  IF ~~ THEN REPLY #65303 /* ~"당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65304 /* ~"그렇소. 물어볼 것들이 좀 있소..."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7
  SAY #65207 /* ~"그래, 그래, 당신은 전에도 그 말을 했소. 대체 무슨 뜻이오 ?"~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65305 /* ~"왜 베다이-린은 내가 당신에게 가서 그것은 아무런 의미도 없다는 말만 들으라고 날 보낸 거요?"~ */ GOTO 25
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65306 /* ~"왜 베다이-린은 날 당신에게 보냈소?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #65208 /* ~"왜라고 생각하시오? 당신은 그녀가 갓즈맨을 몰락시키는 것을 도왔소. 그래서 그녀는 당신이 비슷한 일을 더 하는데 관심이 있을 거라고 생각한 거요. 제의는 아직도 유효하오. 할 거요, 안 할 거요?"~ */
  IF ~~ THEN REPLY #65307 /* ~"지금은 아니오."~ */ GOTO 32
  IF ~~ THEN REPLY #65308 /* ~"그렇소."~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #65209 /* ~"옛 원한과 보답받지 못한 사랑은 쉽게 사라지지 않는 법이오. 그리고 광기는 더더욱 끈질기오." 당신으로선 누군가가 이런 인간을 사랑한다는 것은 상상도 하기 힘들다. 광기가 더 현실적인 설명이 될 것 같다. "달리 원하는 것이라도 있소?"~ */
  IF ~~ THEN REPLY #65309 /* ~"그렇소. 그런데 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65310 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #65210 /* ~당신이 가게에 들어오자 펜이 당신을 올려다본다. "나가시오." 그가 손짓을 하자 당신은 가게로부터 사라진다. ~ */
  IF ~~ THEN REPLY #65311 /* ~"뭐..."~ */ DO ~TeleportParty("AR0500",[3348.1081],10)
SetGlobal("Penn_Out","GLOBAL",2)
~ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
Global("AR0902_Visited","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #65211 /* ~"잘 돌아왔소." 펜은 서류로부터 고개도 쳐들지 않는다. "엡과 그의 동지들이 커스트에서 당신을 도왔소?" 그는 당신 대답 따위에는 전혀 관심이 없는 듯하다.~ */
  IF ~~ THEN REPLY #65312 /* ~"그렇소. 그런데 당신에 물어볼 것들이 몇 가지 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65313 /* ~"그렇소. 내게 줄 임무는 더 없소?"~ */ GOTO 28
  IF ~~ THEN REPLY #65314 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #65212 /* ~"지금은 없소. 일이 생기면 알려 주리다. 지금 당장 필요한 게 있는 거요, 아니면 그냥 날 방해하는 거요?"~ */
  IF ~~ THEN REPLY #65315 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65316 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 29 // from:
  SAY #65213 /* ~늘 그렇듯이 펜은 뭔가를 쓰느라 바쁘다. "대필이나 인쇄가 필요하오? 그렇다면 내게 말해주시오, 당장 착수할 테니. 그렇지 않다면 아홉 번째 세계의 금고에 있는 세포와 접촉하시오, 그들이 당신을 돌봐 줄 테니."~ */
  IF ~~ THEN REPLY #65317 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65318 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 28.0 29.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.1 69.2 70.4 71.1 72.1 73.1 74.1 75.1 76.1
  SAY #65214 /* ~"빨리 하시오. 난 바쁘니까."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65319 /* ~"나는 어떤 해골을 찾고 있소."~ */ GOTO 33
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65320 /* ~"길츠퍼가 내게 이 전단을 당신에게 가져가 백 장만 인쇄해 오라고 부탁했소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 34
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65323 /* ~"날 위해 연애 편지를 만들어 주었으면 하오."~ */ GOTO 36
  IF ~~ THEN REPLY #65324 /* ~"우리 그룹의 암호를 다시 얘기해주겠소?"~ */ GOTO 37
  IF ~  Global("Penn_Task","AR0509",0)
~ THEN REPLY #65325 /* ~"지금 어떤 일을 하고 있소?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 38
  IF ~  Global("Penn_Task","AR0509",1)
~ THEN REPLY #65326 /* ~"지금 어떤 일을 하고 있소?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 39
  IF ~  Global("Penn_Task","AR0509",2)
~ THEN REPLY #65327 /* ~"지금 어떤 일을 하고 있소?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 40
  IF ~  Global("Penn_Task","AR0509",3)
~ THEN REPLY #65328 /* ~"지금 어떤 일을 하고 있소?"~ */ GOTO 41
  IF ~~ THEN REPLY #65329 /* ~"혁명에 대해 얘기하고 싶소..."~ */ GOTO 42
  IF ~~ THEN REPLY #65330 /* ~"조직에 대해 몇 가지만 물어보고 싶소..."~ */ GOTO 70
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #65429 /* ~"리나는 내가 스스로를 입증하기를 바라오."~ */ GOTO 71
  IF ~~ THEN REPLY #65430 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 20.0 24.1
  SAY #65215 /* ~"당신은 우리가 누군지 아시오?"~ */
  IF ~~ THEN REPLY #65331 /* ~"말해주시오."~ */ GOTO 43
  IF ~~ THEN REPLY #65332 /* ~"아니오. 난 단지 멤버가 되고 싶을 뿐이오. 당신이 파괴 행위를 하려 한다면 나도 동참하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Penn_1","GLOBALLaw",-1)
~ GOTO 43
  IF ~  Global("Good_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65333 /* ~"만약 당신이 백시즈와 관련이 있다면 그건 당신이 혁명가 연맹의 일원이란 뜻이오."~ */ GOTO 45
END

IF ~~ THEN BEGIN 32 // from: 20.1 24.0
  SAY #65216 /* ~"그럼 왜 애초에 내게 말을 건 거요? 뭘 원하시오? 내가 당신을 내쫓기를 기다리고 있는 거요?" ~ */
  IF ~~ THEN REPLY #65334 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65335 /* ~"그렇소. 날 내쫓으시오."~ */ GOTO 14
  IF ~~ THEN REPLY #65336 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.0
  SAY #65217 /* ~"내가 당신이라면 전당포 근처에 있는 흉가로 가겠소. 그 안에서 아래로 내려가는 사다리를 찾으시오. 그리고 기도를 한 후 사다리를 타고 내려가시오. 로타는 그 곳에 있소, 하지만 그는 결코 대적해서는 안 될 상대요. 그는 해골 수집가이며, 만약 당신 해골이 마음에 들면 주저하지 않고 자기 컬렉션에 추가할 거요. 그에게는 그럴 힘이 있소. 당신이 얼마나 강한가는 문제도 되지 않소. 조심하시오... 당신은 우리에게 귀중한 인재니까."  그는 서류에서 고개를 쳐들고 당신을 본다. "그 밖에 달리 원하는 거라도 있소?"~ */
  IF ~~ THEN REPLY #65337 /* ~"몇 가지 질문만 더 대답해주시오..."~ */ GOTO 30
  IF ~~ THEN REPLY #65338 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #65218 /* ~그는 전단을 받아서 살펴본 후 말한다. "나중에 작업하도록 하겠소. 그에게 그렇게 전하시오." 그는 책상 쪽으로 시선을 돌린다.~ */
  IF ~~ THEN REPLY #65339 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65340 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #65219 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65341 /* ~"몇 가지 질문만 더 대답해주시오..."~ */ GOTO 30
  IF ~~ THEN REPLY #65342 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY #65220 /* ~"연애 편지? 막연하고 열정적인? 좋소? 그는 잠시 생각한 후 책상 서랍에서 향수를 뿌린 종이 한 장을 꺼낸다. 그는 그 위에 화려하고 우아한 글씨체로 사랑을 호소하는 공허한 글을 몇 줄 적는다. "이거면 충분할 거요."~ */
  IF ~~ THEN REPLY #65343 /* ~"고맙소. 질문할 것들이 몇 개 더 있소..."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 30
  IF ~~ THEN REPLY #65344 /* ~"고맙소. 안녕히 계시오."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY #65221 /* ~그는 서류에서 잠시 눈을 떼고 당신을 흘겨본다. " 암호는 '일식'이오. 그들이 바꾸기 전에 어서 가서 사용하시오."~ */
  IF ~~ THEN REPLY #65345 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65346 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.4
  SAY #65222 /* ~"반-하모니움 팸플릿이오. 곧 마계구에서 배포될 거요." 그는 계속해서 갈겨 쓴다. "이 일이 곧 끝나면 다른 일을 시적할 거요. " 그의 펜은 종이 위에서 날아가듯 재빠르게 움직인다. ~ */
  IF ~~ THEN REPLY #65347 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65350 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.5
  SAY #65223 /* ~"법정에서 거버너의 법 같지도 않은 쓰레기가 아니라 진정한 법이 대변되기를 요구하는 무명의 탄원서요." 그는 당신이 짜증이 나기 시작하는 듯 이번에는 당신을 좀더 오래 쳐다본다. ~ */
  IF ~~ THEN REPLY #65348 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65351 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 30.6
  SAY #65224 /* ~"그건 시 교도소에 갇힌 특정한 정치범들의 석방을 요구하든 전단이오. 그들은 혁명가 연맹이 저지른 죄를 지었다는 누명을 쓰고 체포되었소. 대의를 위한 순교자라면 환영하지만.." 그는 잠시 멈추고 날카로운 눈초리로 당신을 흘겨본다. "순교자는 환영이지만, 나는 죄없는 사람들을 희생시키려고 이 일을 하는 것이 아니오. 나는 그들을 구하기 위해 이 일을 하는 거요."~ */
  IF ~~ THEN REPLY #65349 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65352 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 30.7
  SAY #65225 /* ~그는 쿵하고 펜을 내려놓고는 당신을 노려본다. "이런 쓸데없는 질문은 집어치우고 당신이 해야 할 일에 착수할 수는 없겠소?" 그는 크게 한숨을 쉰다. "당신이 할 수 일이라는 게 고작 나같은 바쁜 사람을 붙잡고 내가 뭘 하고 있는지 물어보는 것뿐이오. 어린애들도 당신보다는 낫소. 적어도 애들에게는 일단 내가 노려보기 시작하면 날 귀찮게 하는 걸 멈출 정도의 지각은 있으니까. 자, 무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #65353 /* ~"왜 밖에 나가서 더 가치 있는 일을 하지 않는 거요?"~ */ GOTO 46
  IF ~~ THEN REPLY #65354 /* ~"몇 가지 질문만 더 대답해주시오..."~ */ GOTO 30
  IF ~~ THEN REPLY #65355 /* ~"당신이 그런 식으로 계속 나온다면 더 이상 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.8
  SAY #65226 /* ~"혁명에 대해서 입만 놀리는 건 집어치우고 나가서 혁명을 위해 실제로 행동을 하는 게 어떻겠소? 가서 하모니움이나 더스트맨이라도 죽이시오... 구 질서를 말이 아니라 행동으로 붕괴시키시오."~ */
  IF ~~ THEN REPLY #65356 /* ~"*당신*이 나가서 직접 행동을 취하지 않고 여기서 글이나 쓰는 이유는 뭐요?"~ */ GOTO 46
  IF ~~ THEN REPLY #65357 /* ~"좋소, 좋아. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65358 /* ~"좋소. 그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 31.0 31.1
  SAY #65227 /* ~"우리는 혁명가 연맹이오. 당신은 우리의 목적이 무엇인지 아시오?"~ */
  IF ~~ THEN REPLY #65359 /* ~"그렇소."~ */ GOTO 44
  IF ~~ THEN REPLY #65360 /* ~"아니오."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1 45.0 45.1
  SAY #65228 /* ~"우리는 시길의 권력 체계를 전복시키기 위해 투쟁하고 있소. 우리는 다른 당파들과 적대하고 있소. 우리는 당파가 아닌 당파요. 우리는 무질서의 이름으로 조직되어 있소. 우리는 다른 사람들이 보다 큰 자유와 보다 나은 삶을 지탱할 수 있는 사회를 건설할 수 있도록 파괴하오. 구 질서는 이 목적에 방해가 되며, 낡은 당파들은 사람들의 눈을 가리고 있소."~ */
  IF ~~ THEN REPLY #65361 /* ~"난 그들이 진실을 추구하고 있다고 생각했는데."~ */ GOTO 48
  IF ~~ THEN REPLY #65362 /* ~"그들이 어떻게 방해가 된다는 말이오?"~ */ GOTO 47
  IF ~~ THEN REPLY #65363 /* ~"그래, 나도 아오. 그리고 당신 의견에 동의하오. 빨리 일을 시작합시다."~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from: 31.2
  SAY #65229 /* ~"맞았소. 그것도 한 번에 맞추다니. 당신은 우리의 목적이 무엇인지 아시오?"~ */
  IF ~~ THEN REPLY #65364 /* ~"그렇소."~ */ GOTO 44
  IF ~~ THEN REPLY #65365 /* ~"아니오."~ */ GOTO 44
END

IF ~~ THEN BEGIN 46 // from: 41.0 42.0
  SAY #65230 /* ~그가 글쓰던 손을 갑자기 멈춘다. 한 방울의 앙크가종이 위에 떨어진다. "뭐라고 했소?"~ */
  IF ~~ THEN REPLY #65378 /* ~"나는 당신에게 왜 직접 행동하지 않고 당신 가게에 숨어 있느냐고 물었소."~ */ GOTO 54
  IF ~~ THEN REPLY #65379 /* ~아무 것도 아니오. 관두시오."~ */ GOTO 54
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY #65231 /* ~간단하오: 구 질서는 존재하기 시작했을 때부터 온갖 수단을 동원해 사람들로부터 다원 우주의 비밀을 감추어 왔소. 생각해보시오, 만약 우리가 *실제로* 그 우주의 원리를 이해하게 된다면 어떻게 되겠소? 그들의 작은 세계가 붕괴할 수도 있소. 또한 어떤 자들은 자신들이 이미 우주의 비밀을 발견했다고 확신하고 있으며, 따라서 다른 이들은 모두 틀렸고 말살해야 할 대상이라고 생각하고 있소. 그건 인사치레로도 모든 믿음이 관용되는 환경이라고는 할 수가 없소."~ */
  IF ~~ THEN REPLY #65380 /* ~"그들이 나름대로 최선을 다하고 있다고는 생각하지 않소?"~ */ GOTO 49
  IF ~~ THEN REPLY #65381 /* ~"그들은 진실을 추구하고 있지 않소?"~ */ GOTO 48
  IF ~~ THEN REPLY #65382 /* ~"전적으로 동의하오. 빨리 일을 시작합시다. 나는 당신 그룹의 일원이 되고 싶소."~ */ GOTO 50
  IF ~~ THEN REPLY #65383 /* ~"이것 보시오, 당신 얘기는 내가 듣기에는 좀 지나치게 편집증적인 것 같소. 이 얘기는 없던 걸로 합시다."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 48 // from: 44.0 47.1
  SAY #65232 /* ~"아니, 그들은 자신들을 정당화시키고 스스로를 우월한 존재라고 느끼게 만들어 줄 것을 찾고 있을 뿐이오. 그들은 자신들이 이미 그것을 찾았다는 자기 기만에 빠져 있으며, 자신들과 동의하지 않는 자들을 가차없이 탄압하오."~ */
  IF ~~ THEN REPLY #65384 /* ~"그들이 위대한 진실을 발견하지 못했다는 것을 어떻게 아시오?"~ */ GOTO 51
  IF ~~ THEN REPLY #65385 /* ~"그들이 최선을 다하지 않는다는 것을 어떻게 아시오?"~ */ GOTO 49
  IF ~~ THEN REPLY #65386 /* ~"동의하오. 난 그들에게 해가 되는 일이라면 뭐든지 할 용의가 있소."~ */ GOTO 50
  IF ~~ THEN REPLY #65387 /* ~"내가 생각하기에 당신은 완전히 미친 것 같소. 이 혁명이라는 건 정말 나를 역겹게 만드오."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 47.0 48.1
  SAY #65233 /* ~"구 질서는 진실을 찾는 것보다는 자신들의 권역을 유지하고 호주머니를 채우는 일에 관심이 있소. 구 질서의 잔재가 사라지기 전에는 성장할 수도 배울 수도 없소.". ~ */
  IF ~~ THEN REPLY #65388 /* ~"그들이 위대한 진실을 발견하지 못했다는 것을 어떻게 아시오?"~ */ GOTO 51
  IF ~~ THEN REPLY #65389 /* ~"동의하오. 난 그들에게 해가 되는 일이라면 뭐든지 할 용의가 있소.~ */ GOTO 50
  IF ~~ THEN REPLY #65390 /* ~"내가 생각하기에 당신은 선과 악을 혼동하는 것 같소, 그리고 당신이 하는 일은 모두 잘못되었소."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 44.2 47.2 48.2 49.1 51.1
  SAY #65234 /* ~"당신이 그토록 열성적이라면 임무를 하나 주겠소. 그 일을 마치면 당신을 받아 주겠소."~ */
  IF ~~ THEN REPLY #65391 /* ~"우선 당신 그룹의 구성에 대해 몇 가지만 물어봅시다."~ */ GOTO 58
  IF ~~ THEN REPLY #65392 /* ~"어떤 임무요?"~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #65235 /* ~"왜냐하면 그들 중 대부분, 심지어는 가장 열성적인 멤버들조차 그것을 발견하지 못했기 때문이요. 그리고 그것을 찾은 자들도 자신들이 발견한 '진실'을 다른 이들이 믿게 하기에는 역부족이오. 더스트맨은 우리 모두 죽어야 한다고 생각하오. 센세이트는 쾌락만 즐기면 자연스럽게 비밀을 알게 될 거라고 생각하고 있소. 갓즈맨은 아직 아무 것도 찾지 못한 자들 중 하나요. 그들의 유일한 '진실'은 계속 노력하다 보면 언젠가는 제대로 할 수 있을 거라는 것이오. 그래서 그들은 주조소에서 죽을 때까지 뼈빠지게 노동하고 있소. 정말 눈물겨울 정도로 똑똑한 자들이오." ~ */
  IF ~~ THEN REPLY #65393 /* ~"그건 그들의 믿음에 대한 매우 삐뚤어진 시각이오."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #65394 /* ~"그들은 붕괴되어야만 하오. 빨리 일에 착수합시다."~ */ GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 47.3 48.3 49.2 51.0 54.3 55.2 56.3 57.0 59.1 60.2
  SAY #65366 /* ~"그럼 당신은 우리의 투쟁 방법에 동의하지 않소?" 당신은 그의 손이 미약하게 떨리고 있는 것을 눈치챈다.~ */
  IF ~~ THEN REPLY #65395 /* ~"농담이오."~ */ GOTO 53
  IF ~~ THEN REPLY #65396 /* ~"그렇소, 찬동하지 않소."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1
  SAY #65367 /* ~"그럼 당신은 나가서 자신의 입장을 다시 한 번 생각해보는 게 좋을 것 같소." 그는 자신의 떨리는 손을 흔든다, 그리고 당신은 그의 가게 밖에 서 있는 자신을 발견한다. ~ */
  IF ~~ THEN REPLY #65397 /* ~"뭐..."~ */ DO ~SetGlobal("Penn_Out","GLOBAL",2)
TeleportParty("AR0500",[3348.1081],10)
~ JOURNAL #65434 /* ~인쇄소의 주인이자 아나키스트인 무법자 펜은 내가 그의 방식에 반대한다고 해서 화가 난 것 같다. 그는 나를 인쇄소 밖으로 순간이동 시켰으며 이제 문은 내게는 열리지 않는다. ~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 46.0 46.1
  SAY #65368 /* ~"어떤 혁명에도 지도자는 필요하오. 모든 봉기에는 그것을 계획할 사람이 필요하오. 당신은 단순한 혼돈이 당파들을 붕괴시킬 거라고 생각하시오? 당파들에게 타격을 입히려면, 아무 생각 없이 닥치는 대로 공격하는 것으론 어림도 없소. 통일성 있는 계획이 필요하오. 현실을 직시하시오. 어떤 사람들은 '칼'이오, 그리고 또 다른 사람들은 그 칼을 인도하는 '손'이오, 그리고...  일부는 그 손을 인도하는 '머리'요."~ */
  IF ~~ THEN REPLY #65398 /* ~"그래 누가 당신을 우두머리로 임명한 거요?"~ */ GOTO 55
  IF ~~ THEN REPLY #65399 /* ~"왜 모두가 동등하지 않는 거요?"~ */ GOTO 56
  IF ~~ THEN REPLY #65400 /* ~"알겠소. 그렇게 흥분할 필요는 없지 않소."~ */ GOTO 57
  IF ~~ THEN REPLY #65401 /* ~"당신은 일을 완전히 그르치고 있소. 난 당신이 이 그룹의 우두머리 자격이 있다고 생각하지 않소."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 54.0 60.0
  SAY #65369 /* ~"바로 나요. 나 외에는 아무도 그 일을 하려고 하지 않았기 때문이오. 어떤 사람들은 누가 시켜야 일을 하오. 반면 자신이 솔선수범해서 나서는 사람도 있소. 내게는 과업을 완수하겠다는 의지가 있소, 그리고 실패의 책임을 질 각오도 되어 있소, 그리고 내 계획이 결실을 맺으면 물러날 용기도 있소. 나는 사람들을 보다 나은 삶으로 인도하기 위해 내게 소중한 것들을 모두 포기했소. 그래서 나는 스스로에게 자격이 있다고 생각하오."~ */
  IF ~~ THEN REPLY #65402 /* ~"왜 모두에게 동등한 지위를 부여하지 않는 거요?"~ */ GOTO 56
  IF ~~ THEN REPLY #65403 /* ~"알겠소. 그렇게 흥분할 필요는 없지 않소."~ */ GOTO 57
  IF ~~ THEN REPLY #65404 /* ~"만약 당신이 자신에게 지도자가 될 자질이 있다고 믿고 있다면 당신은 정말 타나리 똥만도 못한 놈이오."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 54.1 55.0 58.0 60.1
  SAY #65370 /* ~"이러한 혁명은 특성상 동지들도 속여야만 하오. 우리는 특별한 경우를 제외하고는 당파의 지도자로부터의 지시 없이 세포 단위로 활동하오. 이는 다른 당파들로 하여금 우리를 잡거나, 활동을 중단시키기 어렵게 만드오. 설령 그들이 한 세포를 습격하는 데 성공하더라도, 유별나게 운이 좋지 않는 한 다른 세포도 잡아내기는 어렵소. 우리가 우리의 사명을 완수하기 전까지는 스스로의 가치를 입증한 사람들만이 동등한 대우를 받을 수가 있소."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65405 /* ~"당신은 동문서답식 문자놀이를 꽤나 즐기는 모양이오."~ */ GOTO 61
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65406 /* ~"당신 그룹에는 어떤 사람들이 있소? 수는 몇이나 되오?"~ */ GOTO 62
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65407 /* ~"다른 그룹으로부터는 어떻게 도움을 받소?"~ */ GOTO 63
  IF ~~ THEN REPLY #65408 /* ~"그건 불합리하오. 그래서는 실패할 수밖에 없소. 이 당파는 실패할 운명이오."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65435 /* ~"조직에 대해 얘기합시다..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 57 // from: 54.2 55.1
  SAY #65371 /* ~"만약 당신도 다른 사람들을 위해 나처럼 많은 것을 희생했다면, 그렇게 속단을 내리지는 못할 거요. 이 일은 정열과 이상을 필요로 하는 일이오, 그리고 불행히도 당신으로부터는 이러한 것들이 다 소진된 것 같소." 그는 잠시 생각에 잠긴다. 당신은 그의 손이 미약하게 떨리고 있는 것을 눈치챈다."~ */
  IF ~~ THEN REPLY #65409 /* ~"당신은 희생에 대해서 아무 것도 알지 못하며 당신과 당신 똘만이들은 혁명 놀이나 하고 있기 때문에 내가 당신에 대한 판단을 내릴 수 있는 거요. 이 조직은 쓰레기요."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65410 /* ~"알겠소, 진정하시오. 당신 조직에 대해 얘기합시다..."~ */ GOTO 58
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65436 /* ~"알겠소, 진정하시오. 당신 조직에 대해 얘기합시다..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 58 // from: 50.0 57.1 61.0 62.1 63.1
  SAY #65372 /* ~"무엇을 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #65411 /* ~"이 조직은 어떻게 구성되어 있소?"~ */ GOTO 56
  IF ~~ THEN REPLY #65412 /* ~"내가 완수해야 할 임무는 무엇이오?"~ */ GOTO 59
  IF ~~ THEN REPLY #65413 /* ~"당신의 혼돈은 얼마나 조직적이오?"~ */ GOTO 60
  IF ~~ THEN REPLY #65414 /* ~"다른 그룹으로부터는 어떻게 도움을 받소?"~ */ GOTO 63
  IF ~~ THEN REPLY #65415 /* ~"당신 아지트는 어디 있소?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 50.1 58.1 61.1 62.0 63.0
  SAY #65373 /* ~"사무구, 또는 시 공회당에는 퀴-사이라는 스톤 지너시가 있소. 그 자신은 인식을 하지 못하고 있지만, 그는 우리에게 있어 위험한 존재요. 그를 찾아서 처치하시오. 이 일을 마치고 돌아오면 우리 아지트를 알려 주겠소."~ */
  IF ~~ THEN REPLY #65416 /* ~"다시 오리다."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",1)
~ JOURNAL #65431 /* ~무법자 펜은 내게 사무구의 시 공회당에 있는 스톤 지너시 퀴-사이를 죽여달라고 부탁했다. 나는 그러기로 했다.~ */ EXIT
  IF ~~ THEN REPLY #65417 /* ~"하지 않겠소. 사람을 죽이는 건 잘못된 일이오."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #65432 /* ~나는 펜에게 스톤 지너시 퀴-사이를 죽이지 않겠다고 말했다. 그러자 그는 흥분하여 나를 그의 가게에서 쫓아냈다.~ */ GOTO 52
END

IF ~~ THEN BEGIN 60 // from: 58.2
  SAY #65374 /* ~"어떤 혁명에도 지도자는 필요하오. 모든 봉기에는 그것을 계획할 사람이 필요하오. 당신은 단순한 혼돈이 당파들을 붕괴시킬 거라고 생각하시오? 당파들에게 타격을 입히려면, 아무 생각 없이 닥치는 대로 공격하는 것으론 어림도 없소. 통일성 있는 계획이 필요하오. 현실을 직시하시오. 어떤 사람들은 '칼'이오, 그리고 또 다른 사람들은 그 칼을 인도하는 '손'이오, 그리고...  일부는 그 손을 인도하는 '머리'요."~ */
  IF ~~ THEN REPLY #65418 /* ~"그래 누가 당신을 우두머리로 임명한 거요?"~ */ GOTO 55
  IF ~~ THEN REPLY #65419 /* ~"왜 모두가 동등하지 않는 거요?"~ */ GOTO 56
  IF ~~ THEN REPLY #65420 /* ~"만약 당신이 자신에게 지도자가 될 자질이 있다고 믿고 있다면 당신은 정말 타나리 똥만도 못한 놈이오."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 61 // from: 56.0
  SAY #65375 /* ~"불행히 그렇소. 하지만 조직 전체가 붕괴하는 꼴을 지켜보는 것보다는 낫소."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65421 /* ~"더 자세히 말해주시오."~ */ GOTO 58
  IF ~~ THEN REPLY #65422 /* ~"내가 어떤 임무를 수행하기를 바라시오?"~ */ GOTO 59
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65437 /* ~"더 자세히 말해주시오."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 56.1 58.4
  SAY #65376 /* ~"당신이 임무를 마치고 오면 말해주겠소."~ */
  IF ~~ THEN REPLY #65423 /* ~"어떤 임무요?"~ */ GOTO 59
  IF ~~ THEN REPLY #65424 /* ~"조직에 대해 더 얘기해주시오."~ */ GOTO 58
END

IF ~~ THEN BEGIN 63 // from: 56.2 58.3
  SAY #65377 /* ~"내가 소식을 전달하오. 우리는 광범위한 정보망을 지니고 있소. 우리는 언제 누가 도움을 필요로 하는지 아오, 그리고 만약 그들의 목적이 조직의 목적과 부합할 경우, 우리는 도움을 제공하오."~ */
  IF ~~ THEN REPLY #65425 /* ~"내가 어떤 임무를 수행하기를 바라시오?"~ */ GOTO 59
  IF ~~ THEN REPLY #65426 /* ~"조직에 대해 더 얘기해주시오."~ */ GOTO 58
END

IF ~  Global("Waste_Quisai","GLOBAL",1)
~ THEN BEGIN 64 // from:
  SAY #65438 /* ~"그래, 퀴-사이라는 지너시는 죽였소?"~ */
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #65454 /* ~"그는 죽었소."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~나는 퀴-사이를 죽이는 데 성공했다고 무법자 펜에게 보고했다. 늘 그렇듯이 그는 별로 기쁜 기색을 나타내지 않았으나, 그가 관장하는 혁명가 연맹의 하부 조직에 날 받아들여 주었다. 또한 그는 그의 동지들 중 일부를 만날 수 있는 장소도 알려주었다. 그 곳은 마계구에 있는 아홉 번째 세계의 금고이다. 그는 내게 그들이 날 식별할 암호를 알려주었다. 그것은 '일식'이다. ~ */ GOTO 69
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65455 /* ~거짓말: "그는 죽었소."~ */ GOTO 65
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65456 /* ~"아직 아니오."~ */ GOTO 66
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #66565 /* ~"그는 죽었소."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~나는 퀴-사이를 죽이는 데 성공했다고 무법자 펜에게 보고했다. 늘 그렇듯이 그는 별로 기쁜 기색을 나타내지 않았으나, 그가 관장하는 혁명가 연맹의 하부 조직에 날 받아들여 주었다. 또한 그는 그의 동지들 중 일부를 만날 수 있는 장소도 알려주었다. 그 곳은 마계구에 있는 아홉 번째 세계의 금고이다. 그는 내게 그들이 날 식별할 암호를 알려주었다. 그것은 '일식'이다. ~ */ GOTO 69
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66566 /* ~"그는 죽었소."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~나는 퀴-사이를 죽이는 데 성공했다고 무법자 펜에게 보고했다. 늘 그렇듯이 그는 별로 기쁜 기색을 나타내지 않았으나, 그가 관장하는 혁명가 연맹의 하부 조직에 날 받아들여 주었다. 또한 그는 그의 동지들 중 일부를 만날 수 있는 장소도 알려주었다. 그 곳은 마계구에 있는 아홉 번째 세계의 금고이다. 그는 내게 그들이 날 식별할 암호를 알려주었다. 그것은 '일식'이다. ~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #65439 /* ~펜은 당신을 냉소하는 표정으로 바라본다, 그리고 다시 테이블 쪽으로 시선을 돌린다. "내겐 당신 거짓말이 통하지 않소... 하지만 당신이 그런 시도를 하다니 재미있군. 돌아가서 일을 끝내시오. 그 전에는 돌아올 생각을 하지 마시오."~ */
  IF ~~ THEN REPLY #65457 /* ~"만약 내가 당신을 고발하기로 마음을 먹으면 어떻게 하겠소?"~ */ GOTO 67
  IF ~~ THEN REPLY #65458 /* ~"좋소. 날 위해 문서들을 좀 인쇄해 줄 수 있겠소?"~ */ GOTO 68
  IF ~~ THEN REPLY #65459 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.2
  SAY #65440 /* ~"그렇다면 빨리 시작하시오. 당신 때문에 늦어지고 있는 계획들이 있소."~ */
  IF ~~ THEN REPLY #65460 /* ~"만약 내가 당신을 고발하기로 마음을 먹으면 어떻게 하겠소?"~ */ GOTO 67
  IF ~~ THEN REPLY #65461 /* ~"좋소. 날 위해 문서들을 좀 인쇄해 줄 수 있겠소?"~ */ GOTO 68
  IF ~~ THEN REPLY #65462 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0 68.0
  SAY #65441 /* ~"그래서 뭐라고 말할 거요? '경관 나리, 나는 갓즈맨의 간부 한 명을 죽이고 그들의 죽음의 기계를 날려보냈소, 그리고 나는 아나키스트의 멤버가 되려고 했는데, 그들은 내게 한 사람을 더 죽이라고 했고 난 도저히 그럴 수가 없었소. 가서 그들은 체포하시오. 나는 아무 죄도 없소!' 미안하지만 당신은 그 정도로 바보는 아니오. 머리에 금이 몇 개 더 가면 그렇게 될지도 모르지;만. 그만 가보시오."~ */
  IF ~~ THEN REPLY #65463 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #65464 /* ~나는 펜에게 만약 내가 그를 고발하려 한다면 어떻게 하겠냐고 물었다. 그는 그래서는 안될 그럴듯한 이유들을 늘어놓았다. 이번에는 그냥 눈감아주도록 해야겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.1 66.1
  SAY #65442 /* ~그는 당신을 노려본다 "당신이 그 지너시를 해치우고 돌아오면 뭐든지 인쇄를 해주겠소. 하지만 그 때까지는 날 귀찮게 하지 마시오."~ */
  IF ~~ THEN REPLY #65465 /* ~"만약 내가 당신을 고발하기로 마음을 먹으면 어떻게 하겠소?"~ */ GOTO 67
  IF ~~ THEN REPLY #65466 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 64.0 64.3 64.4
  SAY #65443 /* ~"그럼 당신은 스스로를 입증했소." 그는 손을 내민다, 그리고 당신은 그와 악수를 한다. "내 세포의 일원이 된 것을 환영하오. 만약 휴식, 주문. 또는 다른 물건들이 필요하면, 내 가게 바로 옆에 있는 아홉 번째 세계의 금고라는 이름의 창고에 가서 리나나 코날하고 얘기하시오. 암호는 '일식'이오. 그 밖에 알고 싶은 거라도 있소?"~ */
  IF ~~ THEN REPLY #65467 /* ~"조직에 대해 얘기해주시오..."~ */ GOTO 70
  IF ~~ THEN REPLY #65468 /* ~"어떤 계획을 가지고 있소?"~ */ GOTO 72
  IF ~~ THEN REPLY #65469 /* ~"그렇소. 질문할 것들이 몇 가지 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65470 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 30.9 56.4 57.2 61.2 69.0 71.0 72.0 73.0 74.0 75.0 75.2 76.0
  SAY #65444 /* ~"무엇을 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #65471 /* ~"이 조직은 어떻게 구성되어 있소?"~ */ GOTO 73
  IF ~~ THEN REPLY #65472 /* ~"다른 그룹으로부터는 어떻게 도움을 받소?"~ */ GOTO 74
  IF ~~ THEN REPLY #65473 /* ~"당신 아지트는 어디 있소?"~ */ GOTO 75
  IF ~~ THEN REPLY #65474 /* ~"만약 도움이 필요하면 어떻게 해야 하오?"~ */ GOTO 76
  IF ~~ THEN REPLY #65475 /* ~"그 밖에도 질문할 것들이 몇 개 더 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65476 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 30.10
  SAY #65445 /* ~"나도 그러길 바라오. 그리고 그녀가 당신에게 보텐을 처치해 달라고 하는 것이길 바라오. 그녀는 오래 전부터 내게 그를 처치해야 한다고 끈질기게 조르고 있었소."~ */
  IF ~~ THEN REPLY #65477 /* ~"어... 그렇소. 조직에 대해서 물어보고 싶은 것들이 있소..."~ */ GOTO 70
  IF ~~ THEN REPLY #65478 /* ~"그렇소. 그 밖에도 다른 질문들이 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65479 /* ~"오, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.1
  SAY #65446 /* ~"곧 알게 될 거요. 그라고 바라건대 조만간 절정에 이르게 될 거요. 아직 그것에 대해 신경 쓸 필요는 없소."~ */
  IF ~~ THEN REPLY #65480 /* ~"좋소. 내게 조직에 대해 말해주시오."~ */ GOTO 70
  IF ~~ THEN REPLY #65481 /* ~"좋소. 날 위해 다른 질문들에 대답을 해주시오..."~ */ GOTO 30
  IF ~~ THEN REPLY #65482 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #65447 /* ~"이러한 혁명은 특성상 동지들도 속여야만 하오. 우리는 특별한 경우를 제외하고는 당파의 지도자로부터의 지시 없이 세포 단위로 활동하오. 이는 다른 당파들로 하여금 우리를 잡거나, 활동을 중단시키기 어렵게 만드오. 설령 그들이 한 세포를 습격하는 데 성공하더라도, 유별나게 운이 좋지 않는 한 다른 세포도 잡아내기는 어렵소. 우리가 우리의 사명을 완수하기 전까지는 스스로의 가치를 입증한 사람들만이 동등한 대우를 받을 수가 있소."~ */
  IF ~~ THEN REPLY #65483 /* ~"그 밖에도 조직에 대해 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 70
  IF ~~ THEN REPLY #65484 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65485 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 70.1
  SAY #65448 /* ~"우리는 망상 조직을 지니고 있소. 우리 당파는 각 구성원이 몇 명의 기본적인 접선 상대밖에 모르는 점조직 구조를 지니고 있소, 그리고 만약 누군가가 도움을 필요로 할 경우에는 이 망을 타고 소식이 단계 별로 전달되오. 물론 도움을 주기 전에는 철저한 사전 검증을 하오. 서로 떨어질 있을 때는 미약해 보일지도 모르나, 우리들의 수는 다른 당파들이 상상하는 것보다 더 많소."~ */
  IF ~~ THEN REPLY #65486 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 70
  IF ~~ THEN REPLY #65487 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65488 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 70.2
  SAY #65449 /* ~"우리의 현재 아지트는 내가 이미 말했듯이 아홉 번째 세계의 금고요. 내 동지들은 지금 그 곳에서 창고 노동자로 위장하고 있소. 리나에게 암호를 말하면 그녀가 당신을 도와줄 거요.~ */
  IF ~~ THEN REPLY #65489 /* ~"그 밖에도 조직에 대해 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 70
  IF ~~ THEN REPLY #65490 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65491 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 70.3
  SAY #65450 /* ~"당신이 도움을 필요로 하면 우리들도 그 일에 대해 알게 될 거요. 그리고 가능하다면 즉석에서 도움의 손길을 뻗칠 것이오. 도움을 구하려고 하지 마시오, 그것이 알아서 당신을 찾아갈 테니. 걱정하지 마시오. 멤버들에게는 나름대로의 혜택이 있소."~ */
  IF ~~ THEN REPLY #65492 /* ~"그 밖에도 조직에 대해 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 70
  IF ~~ THEN REPLY #65493 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 30
  IF ~~ THEN REPLY #65494 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Penn_Out","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #65451 /* ~"이런. 또 날 협박하려고 오셨소?" 그는 눈곱만큼의 관심도 없는 듯하다. ~ */
  IF ~~ THEN REPLY #65495 /* ~"만약 다시 한 번 날 그렇게 이동시키면 당신을 죽이겠소."~ */ GOTO 14
  IF ~~ THEN REPLY #65496 /* ~"어떻게 날 순간 이동시켰소?"~ */ GOTO 79
  IF ~~ THEN REPLY #65497 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65498 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 78 // from:
  SAY #65452 /* ~"아나, 이건 시간 먹는 하마가 아닌가. 이번에는 무슨 용건이 있기는 한 거요?" ~ */
  IF ~~ THEN REPLY #65499 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65500 /* ~"별 용건은 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #65453 /* ~"기업 비밀이오. 당신은 무슨 용건이 있어 온 거요, 아니면 또 소란을 피우려고 온 거요?"~ */
  IF ~~ THEN REPLY #65501 /* ~"다시는 그런 짓을 하지 말라고 경고하러 왔소."~ */ GOTO 14
  IF ~~ THEN REPLY #65502 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #65503 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END
