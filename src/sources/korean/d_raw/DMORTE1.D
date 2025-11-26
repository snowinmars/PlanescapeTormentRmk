// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTE1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  !InParty("Morte")
Global("Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #39792 /* ~"이봐, 대장. 괜찮아? 시체흉내를 내고 있는 거야, 아니면 더스티들을 속이려는 거야? 난 대장이 정말로 죽은 줄 알았다고."~ [MRT001] */
  IF ~~ THEN REPLY #39793 /* ~"뭐...? 당신은 누구요?"~ */ DO ~SetGlobal("Morte","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39795 /* ~"어... 내가 누구냐고? *당신*부터 먼저 대답하는 게 어때? 당신은 누구지?"~ */
  IF ~~ THEN REPLY #39796 /* ~"모르겠네... 기억을 할 수가 없어."~ */ GOTO 2
  IF ~~ THEN REPLY #39797 /* ~"내가 먼저 질문했네, 해골."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #39798 /* ~"자기 *이름*도 기억을 못해? 헤, 다음 번에 거리에 나가 밤을 보낼 때는 술 좀 작작 마시라고. 내 이름은 모트야. 나도 여기 갇혔어. ~ */
  IF ~~ THEN REPLY #39799 /* ~"갇혀?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #39800 /* ~"그래, 내가 *나중에* 물었어. 당신 이름은 뭐지?"~ */
  IF ~~ THEN REPLY #39801 /* ~"모르겠네... 기억을 할 수가 없어."~ */ GOTO 2
  IF ~~ THEN REPLY #39802 /* ~"자네부터 말하게, 해골. 이건 내가 자네에게 주는 마지막 기회네."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #39803 /* ~"정말 당신은 젖은 로프만큼이나 빡빡하군. 좋아, 좋아... 여기선 내가 참지... 나는 모트야. 당신은 누구지?"~ */
  IF ~~ THEN REPLY #39804 /* ~"모르겠네... 기억을 할 수가 없어."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39805 /* ~"그래, 당신은 일어나 여길 돌아다닐 시간이 없었으니 내가 말해주지. 모든 문을 다 시험해봤지만 소용이 없었어. 이 방은 정조대만큼이나 단단히 잠겨 있어." ~ */
  IF ~~ THEN REPLY #39806 /* ~"우린 어디에... 갇힌 건가? 이 곳은 대체 어딘가?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #39807 /* ~"그것은 '시체안치소'라고 불리지... 임신한 거미만큼이나 매력적인 모양새의 커다란 검은 건물이라고."~ */
  IF ~~ THEN REPLY #39808 /* ~"'시체안치소?" 난... 죽었나?~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39809 /* ~"내 입장에서는 아니야. 하지만 당신 몸은 흉터투성이로군. 어떤 얼간이가 당신 몸에 나이프로 그림이라도 그린 모양이야. 놈이 당신을 끝장내려고 다시 올지도 모르니 그만큼 여기서 도망쳐야 할 이유가 는 셈이지."~ */
  IF ~~ THEN REPLY #39810 /* ~"흉터들? 얼마나 심한가?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #39811 /* ~"글쎄... 가슴의 상처는 과히 심하지 않군... 하지만 등은..." 모트는 잠시 멈춘다. "대장 등에는 아예 문신 갤러리가 있군. 무슨 글이 적혀 있는 것 같은데..."~ */
  IF ~~ THEN REPLY #39812 /* ~"내 등의 문신들? 뭐라고 새겨져 있나?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #39813 /* ~"헤! 당신 몸에는 지시 사항이 적혀 있군..." 모트는 헛기침을 한다. "어디 볼까..."

'네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다.'~ */
  IF ~~ THEN REPLY #39814 /* ~"파로드...? 그 밖에 다른 얘기는?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39815 /* ~"그래, 조금 더 있어..." 모트는 잠시 멈춘다. "어디 보자..."

'절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿어라 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안 된다. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해라: 일지를 읽은 후 파로드를 찾아라.'~ */
  IF ~~ THEN REPLY #39816 /* ~"등이 아픈 것도 무리는 아니군, 아예 소설 한 권이 통째로 쓰여져 있으니. 내가 가지고 있어야 할 일지 말인데... 내가 여기서 누워 있었을 때 내 곁에 없었나?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #39817 /* ~"아니... 여기 왔을 때 대장은 깨끗하게 털린 상태였어. 게다가 대장 몸에는 충분하고도 남을 정도의 일지가 적혀 있는 것 같군."~ */
  IF ~~ THEN REPLY #39818 /* ~"파로드는? 자네는 그를 아나?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39819 /* ~"내가 아는 사람은 아냐. 하지만 난 별로 아는 사람이 없으니까. 그래도 이 파로드란 자가 어디 있는지 아는 사람은 있을 거야... 물론 그건 우리가 이 곳에서 탈출한 후의 얘기지만."~ */
  IF ~~ THEN REPLY #39820 /* ~"어떻게 하면 여기서 나갈 수가 있겠나?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39821 /* ~"모든 문이 다 잠겼으니 열쇠를 찾아야 해. 이 방 안을 활보하고 있는 시체들 중 하나가 가지고 있을 가능성이 높아."~ */
  IF ~~ THEN REPLY #39822 /* ~"걸어다니는 시체들?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39823 /* ~"그래, 시체안치소의 관리인들은 시체들을 싸구려 노동력으로 활용하고 있어. 이 시체들은 돌처럼 멍청하지만 별로 위험하지는 않아. 그리고 먼저 공격하지 않는 한 공격을 하진 않아."~ */
  IF ~~ THEN REPLY #39824 /* ~"다른 방법은 없나? 단지 열쇠 하나 때문에 그들을 죽이고 싶지는 않네."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Morte_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #39825 /* ~"그럼 나는 이러한 시체들 중 하나를 공격해서 열쇠를 빼앗아야 하나?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39826 /* ~"그러면 그들의 기분이 상할 거라고 생각하는 거야? 그들은 이미 죽었어. 만약 당신이 긍정적인 측면에서 생각하고 싶다면 이렇게 생각하라고. 만약 당신이 그들을 죽이면 그들은 관리인들이 소생시킬 때까지는 휴식을 취할 수 있다고 말이야."~ */
  IF ~~ THEN REPLY #39827 /* ~"좋네... 그들 중 하나를 쓰러트려 열쇠를 빼앗도록 하겠네."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #39828 /* ~"그러기 전에 먼저 무장부터 하라고. 이 근처의 선반에 수술칼이 하나 있을 거야."

^NNOTE: 방안의 선반들을 뒤져 좀비를 공격할 무기를 찾아라. <SEARCH_WEAPON>^-~ */
  IF ~~ THEN REPLY #39829 /* ~"알았네. 찾아보도록 하지."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39830 /* ~"마지막으로 한가지 더: 이 시체들은 거북이처럼 느리지만 놈들에게 한 대 맞으면 마치 공성용 망치와 키스하는 기분이 들거야. 불리해지면 튀라고. 당신은 달릴 수 있지만 놈들은 그럴 수가 없으니까. 회복할 동안 놈들과는 일정 거리를 유지하라고."

^NNOTE: <도주> 만약 죽을 위험에 처하게 되면 달리기를 이용해 회복할 동안 좀비들로부터 일정 거리를 유지하라.^-~ */
  IF ~~ THEN REPLY #39831 /* ~"알았네. 충고를 해주어 고맙네."~ */ DO ~ShowFirstTimeHelp()
ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("Scalpel")
Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #39832 /* ~"이 근처의 선반에 수술칼이 하나 있을 거야. 나라면 이 주변의 시체들과 싸우기 전에 우선 그것부터 찾겠어."

^NNOTE: 방안의 선반들을 뒤져 좀비를 공격할 무기를 찾아라. <SEARCH_WEAPON>^-~ */
  IF ~~ THEN REPLY #39833 /* ~"알았네... 계속 찾아보겠네."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
PartyHasItem("Scalpel")
Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #39834 /* ~"좋아, 메스를 찾았군! 그럼 이제 가서 저 시체들을 처치하라고... 그리고 걱정하지마. 난 뒤에서 귀중한 전술적 조언을 해줄 테니까."~ */
  IF ~~ THEN REPLY #39835 /* ~"자네 *도움*이 필요하네, 모트."~ */ GOTO 20
  IF ~~ THEN REPLY #39836 /* ~"알았네."~ */ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #39837 /* ~"나는 물론 대장을 *도울* 거야. 좋은 충고는 얻기 힘든 거라고."~ */
  IF ~~ THEN REPLY #39838 /* ~"내 말뜻은 시체를 공격하는 걸 도와 달라는 거였네." ~ */ GOTO 21
  IF ~~ THEN REPLY #39839 /* ~"좋네, 그럼."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39840 /* ~"나? 나는 낭만주의자지 군인이 아니야. 난 방해만 될 거야."~ */
  IF ~~ THEN REPLY #39841 /* ~"내가 이 시체를 공격할 때 옆에서 도와주지 않으면, 자네는 이 메스의 그 다음 목표물이 될 걸세."~ */ GOTO 22
  IF ~~ THEN REPLY #39842 /* ~"좋네, 그럼."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39843 /* ~"에... 좋아. 대장을 돕겠어."

주: 만약 당신이 모트가 당신의 공격에 협조하기를 바란다면, 시체를 공격할 때 두 사람 모두를 선택하면 된다. 그러면 모트도 공격에 참가할 것이다.~ */
  IF ~~ THEN REPLY #39844 /* ~"우리가 서로를 이해한다니 반갑군."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 19.1 20.1 21.1 22.0
  SAY #39845 /* ~"그럼 이 시체들에게 두 번째 죽음이란 걸 가르쳐 줄 때로군..."

^NNOTE: <ATTACKNOTE>^-~ */
  IF ~~ THEN REPLY #39846 /* ~"가세."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #39847 /* ~"좋아, 방금 처치한 놈이 바로 우리가 찾고 있던 시체인 것 같군. 이제 열쇠를 찾아야 해 . 그건 틀림없이 그의 몸 어딘가에 있을 거야. 일단 그걸 찾기만 하면 우린 이 곳과 작별이라고."

^NNOTE: <DEADPILE>^-~ */
  IF ~~ THEN REPLY #39848 /* ~"알았네."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
PartyHasItem("KeyPr")
~ THEN BEGIN 25 // from:
  SAY #39849 /* ~"좋아, 그게 바로 우리가 원하는 열쇠야. 그건 이 방의 문들 중 하나를 열 수 있을 거야."~ */
  IF ~~ THEN REPLY #39850 /* ~"그럼 열쇠를 가지고 문을 열어 보겠네."~ */ EXIT
END

IF WEIGHT #0 ~  !InParty("Morte")
GlobalGT("Morte","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #39851 /* ~"난 대장이 돌아올 줄 알고 있었어! 드디어 대장에겐 내가 필요하다는 사실을 깨달은 거야?"~ [MRT516] */
  IF ~~ THEN REPLY #39852 /* ~"그래... 가세."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39853 /* ~"지금 당장은 안 되네, 모트."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #39854 /* ~"흠. 글쎄, 내가 여기서 얼마나 더 기다릴 수 있을 지는 나도 모르겠어. 그러니 난 대장에게 마지막으로 단 한 번의 기회를 주겠어. 정말 내 현명한 충고와 기민한 재치를 필요로 하지 않는 거야?"~ */
  IF ~~ THEN REPLY #39855 /* ~"모트, 자네에게 그 둘 다 없네."~ */ GOTO 28
  IF ~~ THEN REPLY #39856 /* ~"좋아, 난 마음을 바꿨네. 자, 가세."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39857 /* ~"지금 당장은 곤란하네, 모트. 아마 나중에."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.2
  SAY #39858 /* ~"일부러 내 감정을 상하게 하려는 거야, 대장? 내가 무슨 말이라도 잘못했어? 아니면 내게 팔이 없어서야? 뭐야?" ~ */
  IF ~~ THEN REPLY #39859 /* ~"좋아, 난 마음을 바꿨네. 자, 가세."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39860 /* ~"그건 아니네. 하지만 지금 당장은 자네가 파티에 필요없네. 잘 있게, 모트."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #39861 /* ~"좋아, 하지만 난 여기서 영원히 기다리진 않을 거니까 생각이 바뀌면 당장 돌아오라고."~ */
  IF ~~ THEN REPLY #39862 /* ~"그러겠네. 잘 있게, 모트."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #39863 /* ~"대체 뭘 그렇게 골똘히 생각하는 거야, 대장?"~ [MRT515] */
  IF ~~ THEN REPLY #39864 /* ~"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #42298 /* ~"어, 대장... 그들은 대장 말을 알아들을 수가 없다고, 알겠어? 그들은 죽었다고."~ */
  IF ~~ THEN REPLY #42299 /* ~"하지만 자네는 죽었네. 그리고 내게 얘기하고 있네."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #42300 /* ~"그래, 하지만 *나는* 특별해. 죽음도 삶에 대한 내 열정을 어떻게 할 수는 없었어. 여기 이 시체들은..." 모트는 눈알을 부라린다. "애당초 별 개성도 지니지 못했던 것 같아."~ */
  IF ~~ THEN REPLY #42301 /* ~"알겠네..."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42302 /* ~"이봐, 대장... 대장이 시체와 얘기를 하려는 걸 보는 건 내 사기에 악영향을 마친다고. 시체하고 말하는 건 미친 놈들이나 하라고 해, 알겠지?"~ */
  IF ~~ THEN REPLY #42303 /* ~"그럼 좋네. 가세."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #42306 /* ~"여기 있는 이 행운의 청원자 같아, 대장. 보라고... 그는 손에 열쇠를 쥐고 있어."~ */
  IF ~~ THEN EXTERN ~DZM782~ 2
END
