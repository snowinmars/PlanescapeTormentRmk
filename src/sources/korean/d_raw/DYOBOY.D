// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYOBOY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYOBOY~

IF ~  Global("YoBoy","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #46037 /* ~이 젊지만 근육이 발달한 '깡패'는 무장을 하고 있는데다가 덩치도 커서 위험해 보이기는 하지만, 일반적인 거리의 불량배치고는 지나치게 깨끗하다. 그는 한 손에는 거대한 도끼를, 다른 한 손에는 강철 상자를 들고 있다. 당신이 다가가자 그는 득의양양 하게 당신을 쏘아본다. "뭘 보고 있지, 얼간아? 내가 네 '모가지를 따기' 전에 어서 '꺼져!'"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 216
  IF ~  !NearbyDialog("DAnnah")
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46097 /* ~"당신은 깡패치고는 몸차림이 괜찮은 것 같소."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46098 /* ~"진정하시오... 물어볼 것들이 좀 있소."~ */ GOTO 2
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #46099 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46042 /* ~그는 안나를 노려보나 아무런 말은 하지 않는다. ~ */
  IF ~~ THEN REPLY #46043 /* ~"당신은 깡패치고는 몸차림이 괜찮은 것 같소."~ */ GOTO 2
  IF ~~ THEN REPLY #46044 /* ~"진정하시오... 물어볼 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #46045 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 1.0 1.1 12.0 12.1 14.0
  SAY #46046 /* ~"'골통'을 그만 흔들어, 멍청아! 여긴 *내* 영토니까 빨리 떠나라고, 아니면 내 '친구들'이 널 요절낼 테니까."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 217
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DAnnah")
!Global("YoBoy","AR0600",3)
~ THEN REPLY #46100 /* ~"나는 그냥 당신이 가진 그 상자 안에 무엇이 들었나 궁굼할 뿐이오."~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46101 /* ~"아니, 난 계속 머무를 생각이오."~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46102 /* ~"좋소, 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 6.2 7.2 8.3
  SAY #46051 /* ~그는 분노로 얼굴을 붉히며 이를 간다. "좋아, 이건 네가 자초한 일이야! 얘들아, 놈을 죽여!" 그는 도끼를 들고 달려든다!~ */
  IF ~~ THEN REPLY #46052 /* ~싸운다.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #46053 /* ~도망친다.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46054 /* ~그는 한쪽 눈썹을 치켜 올리고 상자를 보면서 어깨를 으쓱한다. "몰라, 아무리 해봐도 이 '염병할' 물건을 열 수가 없어... '염병할' 말하는 대가리가 들은 것 같은데, 떨구니까 조용해졌어. 나는 이걸 골동품 가게에 팔 생각이었지만 브리스가 원하지 않더라고. 관심 있어? 백 닢만 내면 넘겨주지."~ */
  IF ~~ THEN REPLY #46055 /* ~"기다라시오. 그걸 어떻게 손에 넣었소?"~ */ GOTO 5
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46056 /* ~"그건 공회당에 있는 그 몸통의 머리요, 그렇지 않소?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46057 /* ~"좋소. 사겠소."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46058 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46059 /* ~젊은 깡패는 잠시 빙충맞은 표정을 짓는데, 그의 거구를 생각할 때 그 꼴은 보기만 해도 우습다. "내가... 발견했어. 그건 네가 상관할 바가 아냐, '얼간아!' 원하는 거야, 아니야? 동전 백 닢을 내지 않겠다면 난 이 '염병할' 것을 그냥 가지고 있을 수밖에."~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46060 /* ~"그건 공회당에 있는 그 몸통의 머리요, 그렇지 않소?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46061 /* ~"좋소. 사겠소."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46062 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #46063 /* ~"그는 당신에게 으르렁댄다, 그리고 그가 고함을 지르자 침이 마구 튀어나온다. "'염병할,' 난 몰라! 무슨 상관이야?! 난 그 '빌어먹을' 걸 발견했고, 내가 발견한 건 내 꺼라고. 그건 이제 정당하게 내 소유야! 넌 사야 해. 동전 백 '냥'이야, '얼간아.' ~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46064 /* ~"좋소. 사겠소."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46065 /* ~"그걸 차지하기 위한 콘테스트를 갖는 건 어떻겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #46066 /* ~"내가 당신을 의식을 잃을 정도로 두들겨 팬 다음 그걸 그냥 가져가는 건 어떻겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #46067 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #46068 /* ~"에?"~ */
  IF ~~ THEN REPLY #46069 /* ~"문자 그대로 콘테스트요. 당신이 가지고 있는 도끼로 어느 부위라도 좋으니 나를 내려치시오. 만약 내가 일어나서 그 상자를 집는다면 그건 내거요... 아니라면 내 소지품은 모두 당신 것이 되는 거요,"~ */ GOTO 8
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46070 /* ~"관두시오. 그냥 사겠소."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46071 /* ~"관두시오. 당신을 의식을 잃을 정도로 두들겨 팬 다음 그냥 가져가겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #46072 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #46073 /* ~그는 자신의 도끼를 쳐다본 후 당신을 매우 회의적인 눈으로 쳐다본다.~ */
  IF ~  HPGT(Protagonist,15)
~ THEN REPLY #46074 /* ~"당신은 내가 당신 도끼로 해칠 수 없는 무슨 불사신일 까봐 두려워 하는 거요? 자, 나를 한 번 보시오."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
AddexperienceParty(1000)
~ GOTO 10
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #46075 /* ~"당신은 내가 당신 도끼로 해칠 수 없는 무슨 불사신일까 봐 두려워 하는 거요? 자, 나를 한 번 보시오."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46076 /* ~"관두시오. 그냥 사겠소."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46077 /* ~"관두시오. 당신을 의식을 잃을 정도로 두들겨 팬 다음 그냥 가져가겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #46078 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #46079 /* ~깡패는 자신의 무거운 도끼로 당신을 내려친다. 그 칼날은 당신의 살과 뼈를 일도양단하여 당신 숨통을 끊는다.~ */
  IF ~~ THEN REPLY #46080 /* ~어둠 속으로 빠져든다...~ */ DO ~SetGlobal("YoBoy","AR0600",2)
TakePartyGold(10000)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #46081 /* ~깡패는 자신의 무거운 도끼로 당신을 내려친다. 그 칼날은 당신의 살과 뼈를 일도양단한다. 당신은 엄청난 양의 피를 토하며 비틀거린다, 그리고 거구의 청년을 보며 싱긋 웃는다. 당신이 강철 상자를 내놓으라고 손짓하자 그는 충격에 질린 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #46082 /* ~"이제 난 그 상자를 가져가겠소. 내가 당신 도끼로는 해칠 수 없는 일종의 불사신이라는 걸 몰랐었다니 안됐소. 안녕히 계시오."~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
  IF ~~ THEN REPLY #46083 /* ~어쩔 줄 모르고 서 있는 그를 뒤로 한채 상자를 가지고 떠난다. ~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 5.1 6.0 7.1 8.2
  SAY #46084 /* ~거구의 젊은 깡패는 동전을 낚아채더니 강철 상자를 던져 준다. "당장 여기서 꺼져! 나는 너와는 다시는 얘기하고 싶지 않아, '얼간아.'"~ */
  IF ~~ THEN REPLY #46085 /* ~"그래, 그래, 뭐든 간에... 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #46086 /* ~떠난다.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",1)
~ THEN BEGIN 12 // from:
  SAY #46087 /* ~당신이 다가가자 거구의 젊은 깡패는 경멸하는 눈초리로 당신을 쳐다본다. "또 너야?! '꺼져,' '얼간아!'"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46088 /* ~"당신은 깡패치고는 몸차림이 괜찮은 것 같소."~ */ GOTO 2
  IF ~~ THEN REPLY #46089 /* ~"진정하시오... 물어볼 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #46090 /* ~떠난다.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",3)
~ THEN BEGIN 13 // from:
  SAY #46091 /* ~당신이 다가가자 거구의 젊은 깡패는 경멸하는 눈초리로 당신을 쳐다본다. "원하는 대로 네 '염병할' '골통'을 흔들어 보라고, 나는 너하고 '영창'하지 않을 테니."~ */
  IF ~~ THEN REPLY #46092 /* ~"뭐든 간에. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #46093 /* ~떠난다.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",2)
~ THEN BEGIN 14 // from:
  SAY #61592 /* ~당신이 다가가자 거구의 젊은 깡패는 냉소한다. "또 당신이군?! 염병-" 그는 가늘게 눈을 뜨고 당신을 바라보더니, 머리를 긁는다. "그런데... 내가..."~ */
  IF ~~ THEN REPLY #61593 /* ~"그래, 그래, 알겠소. 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ GOTO 2
  IF ~~ THEN REPLY #61594 /* ~"그렇다, 그리고 넌 이제 그 대가를 치루게 될 것이다."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61595 /* ~떠난다.~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ EXIT
END
