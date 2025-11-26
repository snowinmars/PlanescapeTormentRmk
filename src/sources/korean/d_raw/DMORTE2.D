// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTE2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
InParty("Morte")
~ THEN BEGIN 0 // from:
  SAY #41144 /* ~"잠깐... 충고를 하겠어, 대장. 여기서부터는 조용히 움직이자고. 필요 이상으로 시체들을 훼손할 필요는 없어... 특히 여자 시체들은. 또한 그들을 '죽이면' 관리자들을 여기로 불러오는 결과를 야기할 수도 있어."~ */
  IF ~~ THEN REPLY #41145 /* ~"자네가 전에 얘기한 것 같지는 않네... 이 관리자들은 누군가?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41146 /* ~"이 곳에 있는 시체들... 그것들은 다 어디서 왔나?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #41147 /* ~"왜 자네는 여자 시체들에 대해서는 신경을 쓰나?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41148 /* ~"알았네... 기억하도록 노력하겠네."~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 7.0
  SAY #41149 /* ~"그들은 자신들을 '더스트맨'이라고 부르고 있어. 그들을 알아보는 건 쉽지. 예외없이 검은 법복을 입고 있는데다가 꼭 사후경직을 일으킨 것 같은 얼굴들을 하고 있으니까. 그들은 악귀같은 죽음 숭배자들이야. 그들은 모두 다 죽어야 한다고 믿고 있어... 그것도 빠르면 빠를수록 좋다고."~ */
  IF ~~ THEN REPLY #41150 /* ~"난 헷갈리네... 내가 탈출하는 것에 대해 더스트맨들이 왜 신경을 쓰지?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #41151 /* ~"내가 말할 때 뭘 하고 있었어?! 더스트맨은 모두가 다 죽어야 하며, 그것도 빠르면 빠를수록 좋다고 믿고 있다고 내가 이미 말했잖아. 대장이 보기엔 지금까지 우리가 본 시체들이 죽어서 더 행복해진 것 같아?"~ */
  IF ~~ THEN REPLY #41152 /* ~"내가 이 곳에서 본 시체들... 그것들은 다 어디서 온 건가?"~ */ GOTO 3
  IF ~~ THEN REPLY #41153 /* ~"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"~ */ GOTO 4
  IF ~~ THEN REPLY #41154 /* ~"알았네... 기억하도록 노력하겠네."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 7.1
  SAY #41155 /* ~"다원 우주에서는 매일 누군가 반드시 죽어, 대장. 이 비틀거리는 얼간이들은 이 곳의 관리자들에게 사후의 시체에 대한 권리를 판 한심한 작자들의 잔해라고."~ */
  IF ~~ THEN REPLY #41156 /* ~"가르쳐 주게... 이 관리자들이란 *누구*인가?"~ */ GOTO 1
  IF ~~ THEN REPLY #41157 /* ~"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"~ */ GOTO 4
  IF ~~ THEN REPLY #41158 /* ~"알았네... 기억하도록 노력하겠네."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 0.2 2.1 3.1
  SAY #41159 /* ~"뭐- *진담*이야? 이봐, 대장, 이 죽은 아가씨들은 우리들처럼 산전수전 다 겪은 친구들에게 주어진 마지막 기회라고. 우리는 *기사도* 정신을 발휘해야 해... 열쇠를 찾으려고 그녀들을 칼로 베거나 사지를 절단하는 짓 따위는 해서는 안돼."~ */
  IF ~~ THEN REPLY #41160 /* ~"마지막 기회? 대체 무슨 얘긴가?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #41161 /* ~"대장, 그들은 죽었어, 그리고 우리들도 죽었어... 내가 무슨 말을 하려는지 알겠어? 그래?"~ */
  IF ~~ THEN REPLY #41162 /* ~"아니... 그렇지 않네..."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #41163 /* ~"진담은 아니겠지."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #41164 /* ~"대장, 우린 이미 이 절뚝거리는 아가씨들과 대화를 시작할 화제거리도 가지고 있다고. 우리들은 *모두* 적어도 한 번씩은 죽어 봤어. 그러니 우린 공통의 화제가 있는 셈이지. 그들은 우리처럼 죽은 경험이 있는 사내들을 환영할 거라고."~ */
  IF ~~ THEN REPLY #41165 /* ~기다리게... 전에 자네는 내가 죽지 않았다고 하지 않았었나?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41166 /* ~"그래... 좋아. *대장*은 죽지 않았을지도 모르지만 *난* 죽었어. 그리고 나라면 여기 있는 체격 좋은 멋진 시체 아가씨들과 기꺼이 관을 함께 쓰겠어." 모트는 기대에 부푼 듯 이빨을 딱딱거리기 시작한다. "물론 그러기 위해서는 우선 관리인들이 그들을 포기해야 하는데 그럴 가능성은 희박하지..."~ */
  IF ~~ THEN REPLY #41167 /* ~"이 관리자들이 누군지 다시 얘기해주겠나?"~ */ GOTO 1
  IF ~~ THEN REPLY #41168 /* ~"하지만 이 시체들은 다 어디서 왔나?"~ */ GOTO 3
  IF ~~ THEN REPLY #41169 /* ~"알았네... 기억하도록 노력하겠네."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
  SAY #41170 /* ~"이봐, 대장. 대장은 죽음과 키스를 한 탓에 아직도 정신이 좀 오락가락한 것 같아. 그러니 내가 두 가지 충고를 하겠어. 첫째, 질문할 게 있으면 내게 *물어.* 알겠어?"


^NNOTE: <SPEAKTO>^-~ */
  IF ~~ THEN REPLY #41171 /* ~"알겠네... 질문할 것이 있으면 자네에게 물어보겠네."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41172 /* ~"둘째, 대장이 겉보기의 *반*만큼이라도 건망증이 심하다면, 뭐든지 기록을 하는 습관을 기르라고. 조금이라도 중요할 것 같은 얘기를 듣게 되면 잊지 않도록 즉각 기록을 해."~ */
  IF ~~ THEN REPLY #41173 /* ~"만약 내가 지니고 있어야 할 일지를 가지고 있다면 그렇게 하겠네."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41174 /* ~"그럼 새 일지를 쓰기 시작하라고. 그 따윈 별 문제도 아냐. 여긴 대장이 평생 쓰고 남을 정도의 양피지와 잉크가 있으니까."~ */
  IF ~~ THEN REPLY #41175 /* ~"흠... 좋네. 손해볼 건 없겠지... 그럼 새 일지를 만들도록 하지."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41176 /* ~"그것을 써서 대장의 여정을 파악하라고. 만약 대장이 중요한 사안들, 예들 들어 대장이 누구인가.,.. 또는 더 중요하게 *내*가 누구인가에 대해 가물가물하게 되면 일지를 읽어 기억을 상기시키라고. 알겠어?"

^NNOTE: 일지를 보려면 퀵 메뉴에 있는 일지 버튼을 누른다. 일지는 게임 진행 동안 자동으로 갱신된다.^-~ */
  IF ~~ THEN REPLY #41177 /* ~"좋아... 알았네. 가세."~ */ JOURNAL #39516 /* ~내 원래 일지를 잃어버렸기 때문에 난 새로운 일지를 쓰기 시작했다. 나는 "시체안치소"란 곳에서 깨어났다. 난 내가 누구인지, 내가 이 곳에서 무엇을 하고 있는 것인지, 그리고 어떻게 이 곳에 오게 되었는지도 모른다. 내가 만난 건 모트라는 이름의 말하는 해골뿐이다... 내 상처를 살피다 그는 내 등에 문신으로 새겨진 '지시 사항'을 발견했다. 

"네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다,

절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿게 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안돼. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해: 일지를 읽은 후 파로드를 찾도록 해.

내가 나에게 이 메시지를 남겼을까? 보아하니 난 이 '파로드'란 자와 내 일지를 찾아야만 할 것 같다. ~ */ EXIT
END

IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0)
!Global("Mortuary_Walkthrough","GLOBAL",1)
!Global("Mortuary_Walkthrough","GLOBAL",3)
InParty("Morte")
~ THEN BEGIN 12 // from: 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0
  SAY #41178 /* ~"대체 뭘 그렇게 골똘히 생각하는 거야, 대장?"~ */
  IF ~~ THEN REPLY #41179 /* ~"내 등에 새겨진 글을 다시 읽어 주겠나?"~ */ GOTO 13
  IF ~~ THEN REPLY #41180 /* ~"여기가 어떤 곳인지 다시 얘기해주겠나?"~ */ GOTO 18
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41181 /* ~"이 곳은 거대하군... 누가 관리하지?"~ */ GOTO 19
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41182 /* ~"이 곳의 관리인이 누군지 다시 말해주겠나?"~ */ GOTO 19
  IF ~~ THEN REPLY #41183 /* ~"이 곳에 있는 시체들... 그것들은 다 어디서 왔나?"~ */ GOTO 22
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41184 /* ~"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"~ */ GOTO 23
  IF ~  PartyHasItem("Bandage")
~ THEN REPLY #41185 /* ~"이 붕대들은 어떻게 사용하나?"~ */ GOTO 21
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41186 /* ~"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41187 /* ~"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #41188 /* ~"이봐, 대장. 설마 벌써 까먹은 건 아니겠지?"~ */
  IF ~~ THEN REPLY #41189 /* ~"난 단지 기억을 환기시키려 했을 뿐이네."~ */ GOTO 14
  IF ~~ THEN REPLY #41190 /* ~"그럼 관두게. 그 밖에도 다른 질문들이 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41191 /* ~"그럼 관두게. 가세."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41192 /* ~"그럼 관두게. 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #41193 /* ~"그 소리를 많이 듣게 될 것 같군." 모트는 헛기침을 한다. "어디 보자..."

'네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다.'~ */
  IF ~~ THEN REPLY #41194 /* ~"파로드... 흠... 계속하게."~ */ GOTO 15
  IF ~~ THEN REPLY #41195 /* ~"관두게. 다른 질문이 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41196 /* ~"관두게. 이미 충분히 들었네. 그만 가세."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41197 /* ~"관두게. 이미 충분히 들었네. 그만 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41198 /* ~"그래, 그래, 기다리라고." 모트는 잠시 멈춘다. "좋아, 이게 마지막이야..."

'절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿어라 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안 된다. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해라: 일지를 읽은 후 파로드를 찾아라.'~ */
  IF ~~ THEN REPLY #41199 /* ~"그리고 내가 깨어났을 때 내게 일지가 없었는가?"~ */ GOTO 16
  IF ~~ THEN REPLY #41200 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41201 /* ~"관두게. 이미 충분히 들었네. 그만 가세."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41203 /* ~"관두게. 이미 충분히 들었네. 그만 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41202 /* ~"아니... 여기 왔을 때 대장은 깨끗하게 털린 상태였어. 이미 말했듯이 대장 몸에는 충분하고도 남을 정도의 일지가 적혀 있다고."~ */
  IF ~~ THEN REPLY #41204 /* ~"파로드란 사람을 정말 모르나?"~ */ GOTO 17
  IF ~~ THEN REPLY #41205 /* ~"옳은 말이네. 그 밖에도 물어보고 싶은 것들이 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41206 /* ~"그럼 좋네. 가세."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41207 /* ~"그럼 좋네. 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41208 /* ~"아니. 그래도 이 파로드란 자가 어디 있는지 아는 사람은 있을 거야... 물론 그건 우리가 이 곳에서 탈출한 후의 얘기지만."~ */
  IF ~~ THEN REPLY #41209 /* ~"우리가 가기 전에 다른 질문들을 좀 하고 싶네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41210 /* ~"그럼 좋네. 가세."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41211 /* ~"그럼 좋네. 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1
  SAY #41212 /* ~"그것은 '시체안치소'라고 불리지... 임신한 거미만큼이나 매력적인 모양새의 커다란 검은 건물이라고."~ */
  IF ~~ THEN REPLY #41213 /* ~"알았네. 자네에게 물어볼 것들이 더 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41214 /* ~"내가 알고 싶었던 건 그게 전부네. 고맙네."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41215 /* ~"내가 알고 싶었던 건 그게 전부네. 고맙네."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2 12.3
  SAY #41216 /* ~"그들은 자신들을 '더스트맨'이라고 부르고 있어. 그들을 알아보는 건 쉽지. 예외없이 검은 법복을 입고 있는데다가 꼭 사후경직을 일으킨 것 같은 얼굴들을 하고 있으니까. 그들은 악귀같은 죽음 숭배자들이야. 그들은 모두 다 죽어야 한다고 믿고 있어... 그것도 빠르면 빠를수록 좋다고."~ */
  IF ~~ THEN REPLY #41217 /* ~"난 헷갈리네... 내가 탈출하는 것에 대해 더스트맨들이 왜 신경을 쓰지?"~ */ GOTO 20
  IF ~~ THEN REPLY #41218 /* ~"알았네. 자네에게 물어볼 것들이 더 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41219 /* ~"알았네. 그렇다면 조심하겠네."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41220 /* ~"알았네. 그렇다면 조심하겠네."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #41221 /* ~"내가 말할 때 뭘 하고 있었어?! 더스트맨은 모두가 다 죽어야 하며, 그것도 빠르면 빠를수록 좋다고 믿고 있다고 내가 이미 말했잖아. 대장이 보기엔 지금까지 우리가 본 시체들이 죽어서 더 행복해진 것 같아?"~ */
  IF ~~ THEN REPLY #41222 /* ~"알았네. 자네에게 물어볼 것들이 더 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41223 /* ~"알았네... 기억하도록 노력하겠네."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41224 /* ~"알았네... 기억하도록 노력하겠네."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6
  SAY #41225 /* ~"어... 그것들을 쓰라고. 지혈 등의 용도로 말이야."

^NNOTE: <BANDAGES2>^-~ */
  IF ~~ THEN REPLY #41226 /* ~"알았네. 자네에게 물어볼 것들이 더 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41227 /* ~"고맙네. 내가 할 수 있을 것 같네."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41228 /* ~"고맙네. 내가 할 수 있을 것 같네."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 12.4
  SAY #41229 /* ~"다원 우주에서는 매일 누군가 반드시 죽어, 대장. 이 얼간이들은 이 곳의 관리자들에게 사후의 시체에 대한 권리를 판 한심한 작자들의 잔해라고."~ */
  IF ~~ THEN REPLY #41230 /* ~"알았네. 자네에게 물어볼 것들이 더 있네..."~ */ GOTO 12
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",0)
~ THEN REPLY #41231 /* ~"알았네... 기억하도록 노력하겠네."~ */ GOTO 8
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #41232 /* ~"알았네... 기억하도록 노력하겠네."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.5
  SAY #41233 /* ~"뭐- *진담*이야? 이봐, 대장, 이 죽은 아가씨들은 우리들처럼 산전수전 다 겪은 친구들에게 주어진 마지막 기회라고. 우리는 *기사도* 정신을 발휘해야 해... 열쇠를 찾으려고 그녀들을 칼로 베거나 사지를 절단하는 짓 따위는 해서는 안돼."~ */
  IF ~~ THEN REPLY #41234 /* ~"마지막 기회? 대체 무슨 얘긴가?"~ */ GOTO 24
  IF ~~ THEN REPLY #41235 /* ~"관두게. 자네에게 할 다른 질문들이 있네."~ */ GOTO 12
  IF ~~ THEN REPLY #41236 /* ~"알았네... 기억하도록 노력하겠네."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #41237 /* ~"대장, 그들은 죽었어, 그리고 우리들도 죽었어... 내가 무슨 말을 하려는지 알겠어? 그래?"~ */
  IF ~~ THEN REPLY #41238 /* ~"아니... 그렇지 않네..."~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #41239 /* ~"진담은 아니겠지."~ */ GOTO 25
  IF ~~ THEN REPLY #41240 /* ~"관두게. 자네에게 할 다른 질문들이 있네."~ */ GOTO 12
  IF ~~ THEN REPLY #41241 /* ~"자네 얘기는 이미 충분히 들었네. 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #41242 /* ~"대장, 우린 이미 이 절뚝거리는 아가씨들과 대화를 시작할 화제거리도 가지고 있다고. 우리들은 *모두* 적어도 한 번씩은 죽어 봤어. 그러니 우린 공통의 화제가 있는 셈이지. 그들은 우리처럼 죽은 경험이 있는 사내들을 환영할 거라고."~ */
  IF ~~ THEN REPLY #41243 /* ~기다리게... 전에 자네는 내가 죽지 않았다고 하지 않았었나?"~ */ GOTO 26
  IF ~~ THEN REPLY #41244 /* ~"관두게. 자네에게 할 다른 질문들이 있네."~ */ GOTO 12
  IF ~~ THEN REPLY #41245 /* ~"자네 얘기는 이미 충분히 들었네. 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41246 /* ~"그래... 좋아. *대장*은 죽지 않았을지도 모르지만 *난* 죽었어. 그리고 나라면 여기 있는 체격 좋은 멋진 시체 아가씨들과 기꺼이 관을 함께 쓰겠어." 모트는 기대에 부푼 듯 이빨을 딱딱거리기 시작한다. "물론 그러기 위해서는 우선 관리인들이 그들을 포기해야 하는데 그럴 가능성은 희박하지..."~ */
  IF ~~ THEN REPLY #41247 /* ~"자네에게 할 다른 질문들이 있네, 모트..."~ */ GOTO 12
  IF ~~ THEN REPLY #41248 /* ~"자네 얘기는 이미 충분히 들었네. 가세."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */
~  !InParty("Morte")
~ THEN BEGIN 27 // from:
  SAY #41250 /* ~"난 대장이 돌아올 줄 알고 있었어! 드디어 대장에겐 내가 필요하다는 사실을 깨달은 거야?"~ */
  IF ~~ THEN REPLY #41251 /* ~"그래... 가세."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41252 /* ~"지금 당장은 안 되네, 모트."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #41253 /* ~"흠. 글쎄, 내가 여기서 얼마나 더 기다릴 수 있을 지는 나도 모르겠어. 그러니 난 대장에게 마지막으로 단 한 번의 기회를 주겠어. 정말 내 현명한 충고와 기민한 재치를 필요로 하지 않는 거야?"~ */
  IF ~~ THEN REPLY #41254 /* ~"모트, 자네에게 그 둘 다 없네."~ */ GOTO 29
  IF ~~ THEN REPLY #41255 /* ~"좋아, 난 마음을 바꿨네. 자, 가세."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41256 /* ~"지금 당장은 곤란하네, 모트. 아마 나중에."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #41257 /* ~"일부러 내 감정을 상하게 하려는 거야, 대장? 내가 무슨 말이라도 잘못했어? 아니면 내게 팔이 없어서야? 뭐야?" ~ */
  IF ~~ THEN REPLY #41258 /* ~"좋아, 난 마음을 바꿨네. 자, 가세."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #41259 /* ~"그건 아니네. 하지만 지금 당장은 자네가 파티에 필요없네. 잘 있게, 모트."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #41260 /* ~"좋아, 하지만 난 여기서 영원히 기다리진 않을 거니까 생각이 바뀌면 당장 돌아오라고."~ */
  IF ~~ THEN REPLY #41261 /* ~"그러겠네. 잘 있게, 모트."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3)
InParty("Morte")
~ THEN BEGIN 31 // from:
  SAY #41262 /* ~"신들이시여! 그건 정말 골때리는 책이군!"~ */
  IF ~~ THEN REPLY #41263 /* ~"그건 뭔가?"~ */ DO ~SetGlobal("Morte_Mortuary_Walkthrough_2","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #41264 /* ~"추측을 하자면 그 책은 이 곳에 실려오는 모든 불행한 작자들의 이름을 기록하는 책인 것 같아."~ */
  IF ~~ THEN REPLY #41265 /* ~"내 이름이 저 책에 있을 수도 있겠나?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41266 /* ~"어... 그럴 수도 있겠지. 알아보려면 저기 있는 저 떠다니는 더스티와 얘기를 해야 할 거야. 그게 좋은 생각인지는 모르겠지만."~ */
  IF ~~ THEN REPLY #41267 /* ~"내겐 답이 필요하네. 난 가서 그와 얘기를 하겠네."~ */ EXIT
END
