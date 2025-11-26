// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33042 /* ~당신이 그 지역으로 들어가자 누더기를 걸친 중년의 수집자가 당신에게 다가온다. "난..." 그는 당신을 재빨리 살펴보더니 코웃음을 친다. "...당신을 모르오."~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33044 /* ~"안녕하시오."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33049 /* ~"난 우리가 아는 사이라고는 생각하지 않는데."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33050 /* ~"그냥 이 곳을 통과하는 중이오."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33051 /* ~수집자를 무시하고 가던 길을 간다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #33043 /* ~수집자는 계속 당신을 노려본다. ~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33053 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #33052 /* ~"혹시 이 근처에서 일지를 보지 못했소?"~ */ GOTO 2
  IF ~~ THEN REPLY #33054 /* ~"무슨 문제라도 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33055 /* ~수집자를 무시하고 가던 길을 간다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #33045 /* ~"당신이 뭘 찾든 내가 알 바가 아니오." 그는 침을 뱉는다. "문제는 당신이 아직도 내 앞에서 숨을 쉬고 있다는 사실이오."~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33058 /* ~"만약 날 통과시켜 주지 않으면 우리 둘 중 하나는 시체안치소로 가게될 거요, 그리고 그건 내가 아닐 거요."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33093 /* ~"만약 날 통과시켜 주지 않으면 우리 둘 중 하나는 시체안치소로 가게될 거요, 그리고 그건 내가 아닐 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33094 /* ~"아직 죽지도 않은 사람의 시체를 수거하려는 건 레이디를 만나는 아주 좋은 방법이오."~ */ GOTO 8
  IF ~~ THEN REPLY #33095 /* ~"그럼 당신 있는 곳에서 떠나 주지."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33096 /* ~수집자를 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32994 /* ~수집자를 무시하고 가던 길을 간다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #33046 /* ~당신이 다가가자 수집자는 역겹다는 표정을 짓는다. "더 이상 말하고 싶지 않소. 이 곳에서는 물물교환을 하기가 쉽지 않지." 수집자는 주머니에서 나이프를 꺼낸다. "미안하지만 당신이 지닌 유일한 경화는 당신 시체일 것 같군."~ */
  IF ~~ THEN REPLY #32995 /* ~"난 그렇게 생각하지 않소..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #33047 /* ~"문제는 말이야... 당신이 아직도 내 앞에서 숨을 쉬고 있다는 사실이지." 그는 침을 뱉는다.~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33097 /* ~"만약 날 통과시켜 주지 않으면 우리 둘 중 하나는 시체안치소로 가게될 거요, 그리고 그건 내가 아닐 거요."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33101 /* ~"만약 날 통과시켜 주지 않으면 우리 둘 중 하나는 시체안치소로 가게될 거요, 그리고 그건 내가 아닐 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33103 /* ~"아직 죽지도 않은 사람의 시체를 수거하려는 건 레이디를 만나는 아주 좋은 방법이오."~ */ GOTO 8
  IF ~~ THEN REPLY #33104 /* ~"그럼 당신 있는 곳에서 떠나 주지."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33105 /* ~수집자를 공격한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33106 /* ~수집자를 무시하고 가던 길을 간다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 2.5 4.3 4.5
  SAY #33048 /* ~돌아서서 떠나려고 하다가 당신은 수집자가 주머니에서 나이프를 꺼내고 있다는 사실을 눈치챈다. "무슨 생각으로 이 곳에 왔는지는 모르겠지만, 이제 당신이 갈 곳은 시체안치소밖에 없어."~ */
  IF ~~ THEN REPLY #33107 /* ~"난 그렇게 생각하지 않소..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0
  SAY #33090 /* ~당신 협박이 그의 태도를 다소 부드럽게 만든 것 같다. "여기서 나가시오." 그는 야유하는 투로 말한다. "그리고 내가 당신이라면 등 뒤를 조심할 거요."~ */
  IF ~~ THEN REPLY #33108 /* ~"피차일반이오..."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 4.1
  SAY #33091 /* ~수집자는 주머니에서 나이프를 꺼냄으로서 당신 협박에 응수한다. "동의할 수가 없군, 얼간이. 내 주머니 속의 돈이 될 건 바로 너라고!"~ */
  IF ~~ THEN REPLY #33109 /* ~"두고 보시오..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 4.2
  SAY #33092 /* ~그가 당신으로부터 돌아서는 걸 볼 때 당신이 한 말이 그로 하여금 다소나마 정신을 차리게 한 듯하다. "등 뒤를 조심하시오. 이 곳 사람들 대부분은 말을 하기보다는 칼로 당신을 상대하려고 테니까. 그리고 당신이 여기서 계속 서성거리면 나도 그렇게 할 거요."~ */
  IF ~~ THEN REPLY #33110 /* ~"뭐든 간에..."~ */ EXIT
END
