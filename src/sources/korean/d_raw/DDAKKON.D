// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAKKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAKKON~

IF ~~ THEN BEGIN 0 // from:
  SAY #2844 /* ~나는 다콘이오. 기스저라이로 파티 멤버들 중 하나요. 난 지금은 할 말이 없소. 하지만 내 멋진 전투 애니메이션을 한 번 보시오. 내가 몬스터를 죽여도 사무라이 영화 같은 애니메이션이 흐르지 않는다는 건 애석한 일이오...
다콘: "내 칼을 보라: 죽여 버리겠다!"
벌통 깡패: "그아악... 원통하다..." *스스스스* <--- 피가 튄다. *쿵*
다콘: "흥." *씽* <--- 카락 칼을 칼집에 넣는다.
(화면 상단으로부터 벚꽃이 떨어진다.)~ */
  IF ~~ THEN REPLY #2845 /* ~나중에, 다콘. 당신이 그룹의 일원이 될 때가 가다려지는군.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0
  SAY #6855 /* ~다콘은 고개를 끄덕인다.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7000 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7001 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7002 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7003 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7004 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7005 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7006 /* ~"그보고 우리에게 레이디 오브 페인에 대해 얘기해 달라고 부탁하시오." ~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7007 /* ~"그보고 우리에게 휄에 대해 얘기해 달라고 부탁하시오." ~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7008 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6856 /* ~"그는 자신이 다버스라고 말하고 있소."~ */
  IF ~~ THEN REPLY #7009 /* ~"그에게 질문을 더 해줄 수 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #7010 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6857 /* ~"그는 자신의 직무를 수행하고 있다고 말하고 있소."~ */
  IF ~~ THEN REPLY #7011 /* ~"그에게 질문을 더 해줄 수 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #7012 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6471 /* ~"내 동료는 그대와 이 기계의 작용에 대해 얘기하고 싶어하오. 그가 우리 두 사람을 대변해서 얘기해도 괜찮겠소?"~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 35
END

IF ~~ THEN BEGIN 5 // from:
  SAY #6473 /* ~"그녀는 사람들 중 하나요. 그녀의 몸에 새겨진 표식은 그녀가 림보를 떠나 조상 대대로의 고향을 *알지* 못하게 된 사람임을 말해주고 있소. 또한 그녀의 표식은 모든 기스저라이에게 그녀는 아직도 사람들 중 하나이며, 그녀에게 도움을 주라고 말하고 있소. 그녀의 나에 대한 경의는 모든 *저스*에 대한 경의요."~ */
  IF ~~ THEN REPLY #7999 /* ~"좋소. 켈'레라, 당신에 물어보고 싶은 것들이 있소."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 6 // from:
  SAY #5688 /* ~"다른 방랑자를 만나게 되어 반갑소. 우리가 서로의 수치를 나누면 그 고통을 조금이나마 덜 수 있을지도 모르오."~ */
  IF ~~ THEN REPLY #5689 /* ~"잘된 일이군. 난 당신에게 부탁한 적이 없는데. 나는 여기 있는 이 친구에게 물어볼 것이 더 있소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~GFWEAPS~ 14
  IF ~~ THEN REPLY #5690 /* ~"우리는 곧 그녀와 얘기를 나눌 것이오. 하지만 지금은 여기 있는 이 친구에게 물어볼 것들이 있소."~ */ EXTERN ~GFWEAPS~ 14
END

IF ~~ THEN BEGIN 7 // from:
  SAY #8694 /* ~다콘은 그 기스를 진정시키려는 듯 천천히 얘기한다. "그의 말은 아나크들의 성가가 아니오. 그리고 그에게 무슨 악의가 있어 그런 험한 말을 한 것은 아니오."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8994 /* ~"아니, 그래야 할 걸. 당신 위치를 잊지 마시오, 다콘. 당신은 내 노예이고 당신은 내게 복종할 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_4","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8995 /* ~"나는 기스 개들이 서로 짖어대고 있는 꼴을 더 이상 보고 있을 수가 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_4","GLOBALLaw",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8996 /* ~"만약 내가 당신을 화나게 했다면 사과하리다. 날 용서하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Githzerai_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Githzerai_1","GLOBALGood",1)
~ EXTERN ~DGITH~ 9
  IF ~~ THEN REPLY #8997 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8695 /* ~"그의 말은 내게 있어 아나크의 진실과 권위를 지니고 있소. 이 일에 있어 내 정신이 분열되는 것은... 용납될 수가 없소."~ */
  IF ~~ THEN REPLY #8998 /* ~기스가 어떤 행동을 취하는지 기다리며 지켜본다.~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #8999 /* ~"우린 한 편이오, 기스. 항복하는 게 좋을 거요."~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9000 /* ~"만약 당신이 날 향해 한 걸음만 더 다가오면 그가 당신을 공격할 거요, 기스. 만약 당신이 그를 통과하면 내가 기필코 당신을 죽일 거요. 이제 항복하시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9001 /* ~"그만 집어치우시오. 당신이 죽을 때가 됐소, 기스."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #8696 /* ~"공격하지 마시오. 나는 그의 명령에 복종해야만 하오."~ */
  IF ~~ THEN REPLY #9002 /* ~기스가 어떤 행동을 취하는지 기다리며 지켜본다.~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9003 /* ~"우린 한 편이오, 기스. 항복하는 게 좋을 거요. 이것이 당신에게 하는 마지막 항복권고요"~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9004 /* ~"만약 당신이 날 향해 한 걸음만 더 다가오면 그가 당신을 공격할 거요, 기스. 만약 당신이 그를 통과하면 내가 기필코 당신을 죽일 거요. 이제 항복하시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9005 /* ~"그만 집어치우시오. 당신이 죽을 때가 됐소, 기스."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #8697 /* ~다콘은 다시 천천히 얘기한다. "트'카의 선택은 내 것이오." 얘기를 하면서 그의 피부는 창백해진다... 마치 그가 내뱉는 단어 하나하나가 그를 천천히 죽이는 듯하다. "사슬은 내가 자신에게 부과한 것이오. 백 년에 걸친 아나크로서, 이 이야기를 잴 수 있는 모래시계는 존재하지 않소. 이 일은 후리'히의 뿌리만큼이나 꼬여 있소. 그 해법은 결코 있을 수 없는 일인지도 모르오." 다콘은 눈살을 찌푸린다. "공격하지 마시오, 아니면 나는 동족을 살해한 자가 되고 말 것이오."~ */
  IF ~~ THEN REPLY #9006 /* ~기다린다...~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9007 /* ~"당신에게 달렸소, 기스. 오늘 이 곳에서 당신 피를 흘리고 싶소?"~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9008 /* ~"그만 집어치우시오. 당신이 죽을 때가 됐소, 기스."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #8698 /* ~다콘은 같은 언어로 대답한다. 문장 구조는 기묘하나, 당신 생각에 다콘은 다음과 같은 말을 한 듯하다. "이 사람은 충성스러운 자들 중 하나요."~ */
  IF ~~ THEN REPLY #9009 /* ~"그가 뭐라고 하는 거요, 다콘?"~ */ EXTERN ~DGITH~ 56
  IF ~~ THEN REPLY #9010 /* ~"다콘, 관두시오. 갑시다."~ */ EXTERN ~DGITH~ 56
END

IF ~~ THEN BEGIN 12 // from:
  SAY #8699 /* ~다콘은 전과 같은 대답을 하나 어조는 약간 달라졌다, 하지만 그 의미는 마찬가지인 것 같다. "이 사람은 충성스러운 자들 중 하나요." 다콘은 말의 여운이 사라지기를 기다리듯 침묵한다. "내 옆에 있는 사람이 얘기를 할 것이오. 그가 하는 말을 들어 주겠소?"~ */
  IF ~~ THEN REPLY #9011 /* ~귀를 기울인다.~ */ EXTERN ~DGITH~ 58
  IF ~~ THEN REPLY #9012 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #8700 /* ~다콘은 대답은 짧다, 하지만 마치 목구멍에서 말을 억지로 밀어내는 것처럼 매우 느린게 말한다. "트'카의 선택은 내 것이 되었소."~ */
  IF ~~ THEN REPLY #9013 /* ~귀를 기울인다.~ */ EXTERN ~DGITH~ 59
  IF ~~ THEN REPLY #9014 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #8701 /* ~다콘은 다시 천천히 얘기한다. "사슬은 내가 자신에게 부과한 것이오." 얘기를 하면서 그의 피부는 창백해진다... 마치 그가 내뱉는 단어 하나하나가 그를 천천히 죽이는 듯하다. "백 년에 걸친 아나크로서, 이 이야기를 잴 수 있는 모래시계는 존재하지 않소. 이 일은 후리'히의 뿌리만큼이나 꼬여 있소. 그 해법은 결코 있을 수 없는 일인지도 모르오." 다콘은 눈살을 찌푸린다, 그리고 나서 다시 그의 목소리에 힘이 실린다. "내 옆에 있는 사람이 얘기를 할 것이오. 그가 하는 말을 들어 주겠소?"~ */
  IF ~~ THEN REPLY #9015 /* ~기다린다.~ */ EXTERN ~DGITH~ 60
  IF ~~ THEN REPLY #9016 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #8702 /* ~다콘은 당신을 향한다. "그는 그대 말에 귀를 기울일 것이오."~ */
  IF ~~ THEN REPLY #9017 /* ~"그에게 물어볼 수 있겠소..."~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9018 /* ~"다콘, 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #8703 /* ~다콘은 고개를 끄덕인다, 하지만 그 행위가 고통스러운 듯 매우 천천히 고개를 끄덕인다. "그대가... 잘못 알았소. 이 사나이는 우리 동족을 죽인 적이 없소."~ */
  IF ~~ THEN REPLY #9019 /* ~"봤소? 이제 그 칼을 내려놓겠소?"~ */ EXTERN ~DGITH~ 72
END

IF ~~ THEN BEGIN 17 // from:
  SAY #8704 /* ~다콘은 기스저라이 쪽으로 고개를 돌려 말을 하는데, 이번에는 전보다 느리고 규칙적인 페이스로 얘기를 한다. 기스저라이는 이에 대해 짧게 응답한다. ~ */
  IF ~~ THEN REPLY #9021 /* ~"그가 뭐라고 했소?"~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9022 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~  Global("Dakkon","GLOBAL",0)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #14980 /* ~당신 앞에 서 있는 남자는 매우 늙었다. 그의 건조하고 누런 피부에 난 상처들은 그가 오랫동안 여행을 했으며, 결코 한 장소에서 오래 머무르지 않았다는 사실을 말해주고 있다. 그의 가는 얼굴은 비인간적일 정도로 모났으며, 그의 귀는 길고 뾰족하다. 그는 오렌지색의 헐렁한 튜닉을 입고 있으며, 등에 기묘한 빛나는 칼을 매고 있다. 그의 칼은 날이 두 갈래로 갈라진 글레이브(날이 넓은 칼의 일종)처럼 보이며, 표면이 연못에 떨어진 기름처럼 소용돌이치는 금속으로 만들어진 것 같다. ~ */
  IF ~~ THEN REPLY #15055 /* ~"안녕하시오."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #15056 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #14982 /* ~그는 당신을 향해 고개를 돌린다. 그의 눈은 광택이 있는 석탄과도 같다. 그는 잠시 당신을 뚫어지듯 응시하고, 당신은 그가 혹시 장님은 아닐까 생각한다. 그의 칼은 그의 눈을 반영하듯 갑자기 칠흑과도 같은 색으로 변한다. ~ */
  IF ~~ THEN REPLY #15058 /* ~"괜찮소?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #14984 /* ~그는 잠시 아무 말도 하지 않고 그냥 당신을 살펴본다. "안녕하시오... 여행자." 그의 목소리는 거목의 가지들 사이를 지나며 속삭이는 바람처럼 조용하고 침울하다.~ [DAK001B] */
  IF ~~ THEN REPLY #15060 /* ~"안녕하시오."~ */ GOTO 21
  IF ~~ THEN REPLY #15061 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #14985 /* ~그는 당신을 마주본다. 그의 눈은 당신을 뚫어보려는 듯하다. 그의 칼에서 검은 빛깔이 사라지고, 당신이 그와 얘기하기 전에 보았던 광채를 되찾는다. "그대의 눈에는 이 곳에 오기 위해 오랫동안 여행한 사람만이 지닐 수 있는 중후함이 있소."~ [DAK001C] */
  IF ~~ THEN REPLY #15062 /* ~"그렇다고 할 수 있소.~ */ GOTO 24
  IF ~~ THEN REPLY #15063 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #14986 /* ~"기다리시오." 그의 목소리는 거목의 가지들 사이를 지나며 속삭이는 바람처럼 조용하고 침울하다. 어째서인지 그의 목소리는 당신을 편안하세 한다. 당신이 고개를 돌리자 그그는 당신 얼굴을 세심히 살핀다."그대의 눈에는 이 곳에 오기 위해 오랫동안 여행한 사람만이 지닐 수 있는 중후함이 있소."~ */
  IF ~~ THEN REPLY #15064 /* ~"그렇다고 할 수 있소.~ */ GOTO 24
  IF ~~ THEN REPLY #15065 /* ~"난 당신을 방해할 생각은 없었소. 안녕히 계시오."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY #14987 /* ~"그대는 나를 방해하지 않았소. 내 생각은 유지될 것이오." 그의 시선은 흔들리지 않는다, 그리고 당신은 그가 당신을 주시하고 있는 한 그로부터 눈을 돌리기는 어렵다는 사실을 깨닫게 된다. "나는 다콘으로 *알려져* 있소." 그는 단어 *알려져*를 유별나게 강조한다. 묘하다는 생각이 드나, 동시에 왠지 친숙하게 느껴진다. "나는... 그대를 *알지* 못하오."~ */
  IF ~~ THEN REPLY #15066 /* ~"나는 내 자신을 모르오."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15067 /* ~"난 당신을 방해할 생각은 없었소. 안녕히 계시오."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 24 // from: 21.0 22.0
  SAY #14989 /* ~그의 시선은 흔들리지 않는다. "나는 다콘으로 *알려져* 있소." 그는 단어 *알려져*를 유별나게 강조한다. 묘하다는 생각이 드나, 동시에 왠지 친숙하게 느껴진다. "나는... 그대를 *알지* 못하오."~ */
  IF ~~ THEN REPLY #15068 /* ~"나는 내 자신을 모르오."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15069 /* ~"난 이 도시의 방문객이오."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #15070 /* ~"난 당신을 알지 못하오."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #14990 /* ~다콘은 잠시 침묵하며, 당신의 얼굴을 자신의 칠흑같은 눈으로 계속 살펴본다. "다원 우주는 무한하오, 하지만 그대는 이 곳에 왔소. 나는 그대가 왜 이 도시에 왔는지 *알고* 싶소."~ */
  IF ~~ THEN REPLY #15071 /* ~"나는 답을 구하고 있소... 내게는 질문할 것들이 너무나 많소."~ */ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14991 /* ~다콘은 잠시 침묵하며, 당신의 얼굴을 자신의 칠흑같은 눈으로 계속 살펴본다. "다원 우주는 무한하오, 하지만 그대는 이 곳에 왔소. 나는 그대가 왜 이 도시에 왔는지 *알고* 싶소."~ */
  IF ~~ THEN REPLY #15072 /* ~"나는 답을 구하고 있소... 내게는 질문할 것들이 너무나 많소."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #14993 /* ~"그럼 우리는 이 문제에 관한 한 하나의 하늘 아래에 있소." 다콘은 잠시 침묵하며, 당신의 얼굴을 자신의 칠흑같은 눈으로 계속 살펴본다. "다원 우주는 무한하오, 하지만 그대는 이 곳에 왔소. 나는 그대가 왜 이 도시에 왔는지 *알고* 싶소."~ */
  IF ~~ THEN REPLY #15073 /* ~"나는 답을 구하고 있소... 내게는 질문할 것들이 너무나 많소."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.0 26.0 27.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.1 38.7 39.3 40.2 41.1 42.0 43.2 44.2 45.2 46.2 47.2 48.2 49.2 50.2 51.1 52.1 53.1 54.1 55.1 56.1 57.0 58.3 59.2 60.1 61.2 62.3 63.2 64.0 65.0 66.0 73.0
  SAY #14995 /* ~"질문을 하시오. 그대 얘기를 듣도록 하겠소."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15074 /* ~"당신의 얼굴 생김새는... 내게는 생소하오. 당신은 어떤 존재요?"~ */ GOTO 29
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15075 /* ~"기스저라이 민족에 대해 다시 얘기해줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #15076 /* ~"이 도시에 대해 얘기해줄 수 있겠소?"~ */ GOTO 35
  IF ~~ THEN REPLY #15077 /* ~"당신은 '앎'에 특별한 의미를 부여하는 것 같소. 그것은 어떤 의미요?"~ */ GOTO 52
  IF ~~ THEN REPLY #15078 /* ~"당신이 지니고 있는 그 칼은 무엇이오?"~ */ GOTO 58
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15079 /* ~"당신은 파로드란 사람을 아시오? 나는 그가 나에 대해 뭔가를 알고 있다는 얘기를 들었소."~ */ GOTO 65
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15080 /* ~"나는 일지를 하나 잃어버렸소. 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 66
  IF ~~ THEN REPLY #15081 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14997 /* ~"기스저라이요."~ */
  IF ~~ THEN REPLY #15082 /* ~"기스저라이?"~ */ GOTO 30
  IF ~~ THEN REPLY #15083 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15084 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 30 // from: 29.0 62.0
  SAY #14998 /* ~"기스저라이는 '사람들' 중 하나요."~ */
  IF ~~ THEN REPLY #15125 /* ~"사람들 중 하나?"~ */ GOTO 31
  IF ~~ THEN REPLY #15126 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15127 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #14999 /* ~"기스저라이요."~ */
  IF ~~ THEN REPLY #15128 /* ~"그래, 하지만 기스저라이란 정확하게 무엇이오?"~ */ GOTO 32
  IF ~~ THEN REPLY #15129 /* ~"설명해 주어 고맙소. 덕분에 많은 의문이 풀렸소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15130 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15000 /* ~다콘을 잠시 침묵을 지킨 후 다시 얘기를 한다. "그대가 우리 역사에 대해 *알* 필요는 없소. 내가 그대에게 우리 민족의 역사의 극히 일부분에 대해 말하기도 전에 우리는 시간의 칼날 아래서 피를 흘리며 죽을 것이오."~ */
  IF ~~ THEN REPLY #15131 /* ~"나는 당신들의 역사에 대해 알고자 하는 것이 아니오... 하지만 당신 민족의 현재에 대해 알고 싶소."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 33
  IF ~~ THEN REPLY #15132 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15133 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 33 // from: 28.1 32.0 62.1
  SAY #15002 /* ~다콘은 잠시 침묵한다. "이것을 *알고* 답으로 받아들이시오. 우리는 항상 변화하는 차원인 림보를 고향으로 하는 사람들이오." 다콘은 기민한 동작으로 등에 맨 칼을 뽑아서 치켜든다.~ */
  IF ~~ THEN REPLY #15134 /* ~기다리며 어떤 일이 일어나는지 지켜본다. ~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 34
  IF ~~ THEN REPLY #15135 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15136 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #15004 /* ~"그 곳에서 우리는 정신력으로 림보의 물질에 형태를 부여하오. 우리는 생각으로 도시를 만들어 내오." 당신이 보니 칼의 중심으로부터 금속이 물결치듯 움직이기 시작한다. 물결의 높낮이는 다콘의 목소리의 억양에 비례한다. "우리는 혼돈 속에서 살며 우리는 오직 *앎*을 통해 자신을 보전할 수 있소. 우리는 기스저라이요."~ */
  IF ~~ THEN REPLY #15137 /* ~"당신이 지닌 그 칼은 대체 뭐요...? 그것은 당신 목소리에 반응하여 움직이고 모습을 바꾸었소..."~ */ GOTO 58
  IF ~~ THEN REPLY #15138 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15139 /* ~"좋소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY #15005 /* ~"그것은 '시길'이라는 이름으로 불리고 있소. '사람들' 사이에서는 이 도시는 자신을 *알지* 못하는 도시라고 불리고 있소."~ */
  IF ~~ THEN REPLY #15140 /* ~"자신을 모른다? 그게 무슨 뜻이오?~ */ GOTO 36
  IF ~~ THEN REPLY #15141 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15142 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #15006 /* ~"이 도시는 존재하나 자신을 *알지* 못하오. 자신을 *알지* 못하기 때문에 그 존재는 잘못된 것이오."~ */
  IF ~~ THEN REPLY #15143 /* ~"그것은 어떻게 잘못되었소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15144 /* ~"당신은 마치 이 도시가 살아있기라도 한 것처럼 말을 하는구려."~ */ GOTO 37
  IF ~~ THEN REPLY #15145 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15146 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 37 // from: 36.1 38.6
  SAY #15007 /* ~"그것은 나나 내가 자신을 *아는* 것과 같은 방식으로 자신에 대해 *알고* 있지는 않을 것이오, 하지만 그것은 살아 있소. 그것은 자라고 변화하며, 그 안에 있는 모든 자의 정신에 영향을 마치오."~ */
  IF ~~ THEN REPLY #15147 /* ~"왜 당신은 이 도시가 자신을 모른다고 한 것이오?"~ */ GOTO 38
  IF ~~ THEN REPLY #15148 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15149 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 38 // from: 36.0 37.0 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.0
  SAY #15008 /* ~"이 도시의 존재 그 자체가 모순이오. 그것은 다른 차원들로부터 격리되어 있소, 그럼에도 그것은 모든 곳에 동시에 존재하려고 하고 있소. 그것의 벽들은 문이오, 하지만 그것은 이러한 문들에 자물쇠를 채워 두고 있소. 그러한 존재 방식은 그것이 자신이 *알지* 못한다는 것을 말해주고 있소. 그것은 자신을 *알지* 못하기 때문에 잘못된 것이오."~ */
  IF ~~ THEN REPLY #15150 /* ~"당신이 이 도시가 동시에 모든 곳이라고 한 말의 뜻은 무엇이오?"~ */ GOTO 43
  IF ~~ THEN REPLY #15151 /* ~"그 벽들은 문들이다?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15152 /* ~진실: "만약 이 도시가 잘못되지 않았다면? 사물이 그 자신을 알기 위하여 질서정연하며 목적을 지닐 필요는 없소. 만약 이러한 모순들이 당신이 인식할 수 없는 힘이라면 어떻게 하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15153 /* ~진실: "만약 이 도시가 잘못되지 않았다면? 사물이 그 자신을 알기 위하여 질서정연하며 목적을 지닐 필요는 없소. 만약 이러한 모순들이 당신이 인식할 수 없는 힘이라면 어떻게 하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15154 /* ~진실: "만약 이 도시는 잘못되지 않았으며 단지 당신이 그것이 안고 있는 모순들의 존재 이유를 모를 뿐이라면? 모든 것에는 법칙이 있소. 당신이 인지할 수 없는 근원적인 패턴이 있는지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15155 /* ~진실: "만약 이 도시는 잘못되지 않았으며 단지 당신이 그것이 안고 있는 모순들의 존재 이유를 모를 뿐이라면? 모든 것에는 법칙이 있소. 당신이 인지할 수 없는 근원적인 패턴이 있는지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #15156 /* ~"당신은 마치 이 도시가 살아있기라도 한 것처럼 말을 하는구려."~ */ GOTO 37
  IF ~~ THEN REPLY #15157 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15158 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 39 // from: 38.2 38.3 38.4 38.5
  SAY #15010 /* ~"그대 질문에 대해 나도 질문을 하리다: 만약 이 도시가 잘못되었고, 그대가 자신의 주변에서 그 모순들을 보고 느낄 수 있다면?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #15159 /* ~진실: "당신의 질문에 대해 반문하겠소. 당신은 이 도시의 존재가 잘못되었다고 주장하오. 당신은 이것을 그냥 받아들였소, 보다 위대한 뭔가가 존재할지도 모른다는 가능성을 탐구할 생각은 하지 않고서. 그것은 당신이 잘못되었다는 것을 말해주고 있소... 당신은 지식을 추구하기보다는 손쉬운 답만을 얻고자 하고 있소."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #15160 /* ~진실: "당신의 질문에 대해 반문하겠소. 당신은 이 도시의 존재가 잘못되었다고 주장하오. 당신은 이것을 그냥 받아들였소, 보다 위대한 뭔가가 존재할지도 모른다는 가능성을 탐구할 생각은 하지 않고서. 그것은 당신이 잘못되었다는 것을 말해주고 있소... 당신은 지식을 추구하기보다는 손쉬운 답만을 얻고자 하고 있소."~ */ GOTO 40
  IF ~~ THEN REPLY #15161 /* ~"당신이 이 도시가 동시에 모든 곳이라고 한 말의 뜻은 무엇이오?"~ */ GOTO 43
  IF ~~ THEN REPLY #15162 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15163 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15012 /* ~다콘은 침묵한다. "우리가 한 질문들에 대한 답은 없소. 그러나 그럼에도 이 도시는 존재하오. 그뿐이오."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #15164 /* ~"하지만 나는 우리는 우리가 하는 질문과 하지 않는 질문에 의해 자신을 안다는 입장을 견지하오. 만약 우리가 질문하는 것을 멈추고 자신이 인식할 수 있는 것만을 받아들인다면..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 41
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #15165 /* ~"하지만 나는 우리는 우리가 하는 질문과 하지 않는 질문에 의해 자신을 안다는 입장을 견지하오. 만약 우리가 질문하는 것을 멈추고 자신이 인식할 수 있는 것만을 받아들인다면..."~ */ GOTO 41
  IF ~~ THEN REPLY #15166 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 28
  IF ~~ THEN REPLY #15167 /* ~"난 당신을 방해할 생각은 없었소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #15014 /* ~"그렇다면 우리는 더 이상 자신을 *알지* 못하게 될 것이오." 다콘의 목소리가 약간 변했다. 그것은 한층 더 무거워진 듯하다. "전에 누군가 그런 말들을 한 적이 있소. 나는 그 말들을 들었으며, 또 그 말들을 *알고* 있었소."~ */
  IF ~~ THEN REPLY #15168 /* ~"그 말을 어디서 들었소?"~ */ GOTO 42
  IF ~~ THEN REPLY #15169 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 28
  IF ~~ THEN REPLY #15170 /* ~"난 당신을 방해할 생각은 없었소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15016 /* ~"그 말들은 나의 것이오. 한때 나는 그 말들을 알고 또 이해하고 있었소. 하지만 나는 그대가 말할 때까지 그것들에 대해서 잊고 있었소." 다콘은 시선을 움직이며 당신을 살펴본다. 그의 칼을 빛을 내는 것을 멈추고 모든 색을 잃기 시작해 결국에는 투명하게 된다. 잠시 동안 정적이 흐른 후 다콘은 당신을 쳐다본다. "나는 그대와 함께 여행을 하고자 하오."~ */
  IF ~~ THEN REPLY #15171 /* ~"생각해 보겠소. 우선 다른 질문들을 좀 하고 싶소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15172 /* ~"당신을 받아들이겠소. 전사가 한 명 더 합류하는 건 대환영이오."~ */ GOTO 72
  IF ~~ THEN REPLY #15173 /* ~"당신은 늙었소. 당신이 내게 무슨 쓸모가 있겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15175 /* ~"오늘은 아니오. 안녕히 계시오."~ */ GOTO 68
END

IF ~~ THEN BEGIN 43 // from: 38.0 38.1 39.2
  SAY #15018 /* ~"이 도시 자체가 문들로 만들어져 있소. 이러한 문들은 모든 곳으로 통하오."~ */
  IF ~~ THEN REPLY #15174 /* ~"이 문들은 어디 있소?"~ */ GOTO 44
  IF ~~ THEN REPLY #15176 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15177 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15178 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15020 /* ~"그것들은 사방에 있소..." 다콘은 잠시 침묵한다. "이 도시 안에서 테두리가 있는 모든 공간은 다른 곳으로 통하는 문이라고 하오."~ */
  IF ~~ THEN REPLY #15179 /* ~"이해할 수가 없소."~ */ GOTO 45
  IF ~~ THEN REPLY #15180 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15181 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15182 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #15021 /* ~"불타는 시체 바에 문이 하나 있다고 상상해 보시오. 그리고 그 문을 제거하시오. 문이 제거된 후에도 문틀은 남아있소. 그 틀 안의 공간은 여전히 문이오."~ */
  IF ~~ THEN REPLY #15183 /* ~"하지만 난 저 문을 통해 서 이 곳으로 걸어들어왔소. 그건 그냥... 빈 공간이오."~ */ GOTO 46
  IF ~~ THEN REPLY #15184 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15185 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15186 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #15022 /* ~"그대는 대부분의 문들을 평생 보지 못할 것이오. 문을 통해 지나가고서도 그것이 문이었다는 사실을 *알지* 못할 수도 있소. 그런 문들은 그대의 오감에 대해 닫혀 있소."~ */
  IF ~~ THEN REPLY #15187 /* ~"그리고 이러한 투명한 문들은 시길의 *모든 곳*에 있소?"~ */ GOTO 47
  IF ~~ THEN REPLY #15188 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15189 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15190 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #15023 /* ~"시길에서 테두리가 있는 모든 공간은 다른 곳으로 통하는 문이라고 하오. 하지만 정확하게 *알* 수가 없소. 문들은 움직이고 변화하며, 때로는 사라지기도 하오. 그리고 모든 문은 잠겨 있소."~ */
  IF ~~ THEN REPLY #15192 /* ~"잠겨 있다?"~ */ GOTO 48
  IF ~~ THEN REPLY #15191 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15193 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15194 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #15024 /* ~"문을 열 수 있는 열쇠를 지니고 있지 않는 한 문의 소재를 파악하려는 것은 뜬 구름을 잡으려는 것과 같소. 열쇠가 있으면 문은 그대에게 자신의 존재를 *알릴* 것이오."~ */
  IF ~~ THEN REPLY #15195 /* ~"무엇이 열쇠인지는 어떻게 알 수가 있소?"~ */ GOTO 49
  IF ~~ THEN REPLY #15196 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15197 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15198 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #15025 /* ~"각 문에 대응되는 열쇠는 제각기 다르오. 어떤 열쇠들은 *알려져* 있으나, 다른 열쇠들은 그렇지 못하오."~ */
  IF ~~ THEN REPLY #15199 /* ~"이러한 열쇠들은 어떤 것들이오?"~ */ GOTO 50
  IF ~~ THEN REPLY #15200 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15201 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15202 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15026 /* ~"열쇠의 수는 문의 수와 같소. 모든 열쇠가 금속으로 만들어진 것은 아니오. 열쇠는 두 개의 칼이 부딪치는 것일 수도 있고, 죽어가는 자의 혀에서 나오는 피일 수도 있으며, 지나간 사랑의 기억이나 하늘에다 대고 하는 분노에 찬 저주일 수도 있소. 열쇠와 문이 서로 짝이 맞으면 문을 스스로를 드러내 보일 것이오."~ */
  IF ~~ THEN REPLY #15204 /* ~"모든 문들과 열쇠들을 찾는 것은 어려울 것 같소."~ */ GOTO 51
  IF ~~ THEN REPLY #15208 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15215 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15218 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #15027 /* ~"그러한 일은 시도는 되었으나 완료되지는 못했소. 시가 변함에 따라 문도 변하오. *알려진* 것은 그 어떠한 것도 오래 *알려진* 채로 남아있지 않소."~ */
  IF ~~ THEN REPLY #15220 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 38
  IF ~~ THEN REPLY #15222 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15224 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 52 // from: 28.3
  SAY #15028 /* ~"생물이든 무생물이든, 이 세상에 존재하는 모든 것들의 존재는 스스로에 대한 '앎'에 의해 정의되오."~ */
  IF ~~ THEN REPLY #15226 /* ~"그리고 만약 어떤 사람이 자신에 대해 알지 못한다면?"~ */ GOTO 53
  IF ~~ THEN REPLY #15228 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15231 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #15030 /* ~"정신이 스스로에 대해 *알지* 못하면 그것은 잘못된 것이오. 정신이 잘못되면 사람도 잘못되기 마련이오. 사람이 잘못되면 그가 관여한 것들도 잘못되게 되오." 다콘은 잠시 멈춘다. "잘못된 사람은 눈으로 보는 것을 손으로 망가트린 다고 하오."~ */
  IF ~~ THEN REPLY #15234 /* ~"당신은 당신 자신을 아시오?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #15236 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15237 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #15032 /* ~다콘은 침묵한다. 그의 칠흑같은 눈으로부터는 당신이 처음 그와 얘기했을 때와 같은 거리감이 느껴진다. ~ */
  IF ~~ THEN REPLY #15238 /* ~"다시 묻겠소: 당신은 당신 자신을 아시오?"~ */ GOTO 55
  IF ~~ THEN REPLY #15240 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 28
  IF ~~ THEN REPLY #15241 /* ~"난 당신을 방해할 생각은 없었소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #15034 /* ~다콘이 다시 얘기하기 시작했을 때 그의 목소리는 이전과 다르다. 마치 거대한 돌을 땅이 깊숙하게 갈라진 곳에 던진 듯 메아리친다. 그는 말을 가슴으로부터 억지로 밀어내는 듯하다. "나는 당신이 이 일에 대해 *아는* 것을 *원하지* 않소."~ */
  IF ~~ THEN REPLY #15242 /* ~"질문 형식으로 한 건 아무래도 인정이 지나쳤던 것 같군: 말하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #15243 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 28
  IF ~~ THEN REPLY #15244 /* ~"미안하오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #15036 /* ~다콘은 단어를 하나씩 발음하듯 천천히 말한다. "나는... 내 자신을 *알지* 못하게 되었소." ~ */
  IF ~~ THEN REPLY #15245 /* ~"왜?"~ */ GOTO 57
  IF ~~ THEN REPLY #15246 /* ~"신경 쓰지 마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 28
  IF ~~ THEN REPLY #15247 /* ~"미안하오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15038 /* ~다콘의 목소리는 마치 속삭이는 것처럼 작아진다. "나도 *알지* 못하오. 나는 그런 일이 일어났다는 사실은 *알고* 있소. 하지만 언제, 그리고 왜 그런 일어났으며, 어떻게 하면 다시 내 자신을 *알* 수 있게 될 수 있는지는 *알지* 못하오."~ */
  IF ~~ THEN REPLY #15248 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 28
  IF ~~ THEN REPLY #15249 /* ~"미안하오. 신경 쓰지 마시오. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 58 // from: 28.4 34.0
  SAY #15039 /* ~"그것은 *카락* 칼이오. 그것은 다른 사람으로 하여금 소유주의 계급을 *알* 수 있게 하오."~ */
  IF ~~ THEN REPLY #15250 /* ~"*카락*? 그건 무슨 뜻이오?"~ */ GOTO 61
  IF ~~ THEN REPLY #15251 /* ~"그것은 기묘한 금속으로 만들어졌소... 그것이 앞뒤로 변형하는 방식에는 마치 최면 효과가 있는 듯하오..."~ */ GOTO 61
  IF ~~ THEN REPLY #15252 /* ~"그것은 어떤 계급을 나타내오?"~ */ GOTO 59
  IF ~~ THEN REPLY #15253 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15254 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 59 // from: 58.2 63.1
  SAY #15040 /* ~"그 칼은 *저스*가 상징으로서 가지고 다니는 것이오. *저스*는 저서몬의 말씀을 *아는* 자요. 그들은 저서몬의 말씀을 *앎*으로서 자신들을 *아오."~ */
  IF ~~ THEN REPLY #15255 /* ~"저서몬?"~ */ GOTO 60
  IF ~~ THEN REPLY #15256 /* ~"그 칼이 무엇으로 만들어졌는지 다시 얘기해주겠소?"~ */ GOTO 61
  IF ~~ THEN REPLY #15257 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15259 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #15041 /* ~"저서몬께서는 우리 종족의 시조이시오. 그분은 기스저라이가 자신들에 대해 미처 *알기도* 전에 그들에 대해 알고 계셨소. 그분은 '사람들'을 정의하셨소. 그분은 그들에게 통일된 정신을 주셨소."~ */
  IF ~~ THEN REPLY #15258 /* ~"그 칼이 무엇으로 만들어졌는지 다시 얘기해주겠소?"~ */ GOTO 61
  IF ~~ THEN REPLY #15260 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15261 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 59.1 60.0
  SAY #15042 /* ~다콘은 적절한 표현을 찾으려고 하는 듯 잠시 침묵한다. "그대들 언어로는 '혼돈의 물질'로 번역하는 것이 가장 적절할 것이오. '사람들'은 생각의 힘으로 그것의 형체를 바꿀 수가 있소." ~ */
  IF ~~ THEN REPLY #15262 /* ~"사람들?"~ */ GOTO 62
  IF ~~ THEN REPLY #15263 /* ~"생각의 힘으로 형체를 바꾼다고?"~ */ GOTO 63
  IF ~~ THEN REPLY #15264 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15265 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #15043 /* ~"기스저라이요."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15266 /* ~"기스저라이란 무엇이오?"~ */ GOTO 30
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15267 /* ~"기스저라이가 무엇인지 다시 말해줄 수 있겠소?"~ */ GOTO 33
  IF ~~ THEN REPLY #15268 /* ~"당신 말은 기스자라이는 생각만으로... 이 *카락*이란 물질의 형태를 바꿀 수가 있다는 거요?"~ */ GOTO 63
  IF ~~ THEN REPLY #15269 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15270 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 63 // from: 61.1 62.2
  SAY #15044 /* ~"*카락의 형체는 담금질을 통해 만들어지는 것이 아니라 자신을 이해함으로서 형성되는 것이오. 그것은 사용자의 의지를 그 표면과 칼날에 그대로 비추는 거울이오. 사람이 자신을 알 때 칼은 강해져 강철보다 더 강하고 단단해지오. 그러나 사람이 자신을 모를 때는 마치 물처럼 형체가 없으며 약한 존재가 되버리오. "~ */
  IF ~~ THEN REPLY #15271 /* ~"당신은 그것을 팔 생각이 있소?"~ */ GOTO 64
  IF ~~ THEN REPLY #15272 /* ~"그 칼은 어떤 계급을 나타내오?"~ */ GOTO 59
  IF ~~ THEN REPLY #15273 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15274 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #15045 /* ~"그것은 다른 자의 손에서는 소멸할 것이오. 칼은 내 정신을 *알고,* 나는 그것의 마음을 *아오.* 우리는 죽음을 함께 맞이할 것이오."~ */
  IF ~~ THEN REPLY #15275 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15276 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 65 // from: 28.5
  SAY #15046 /* ~"나는 그를 *알지* 못하오."~ */
  IF ~~ THEN REPLY #15277 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15278 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 28.6
  SAY #15047 /* ~"나는 그런 것이 어디 있는지 *알지* 못하오."~ */
  IF ~~ THEN REPLY #15279 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15280 /* ~"더 이상 할 말이 없소. 안녕히 계시오."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 23.1 28.7 29.2 30.2 31.2 32.2 33.2 34.2 35.2 36.3 37.2 38.8 39.4 40.3 41.2 43.3 44.3 45.3 46.3 47.3 48.3 49.3 50.3 51.2 52.2 53.2 54.2 55.2 56.2 57.1 58.4 59.3 60.2 61.3 62.4 63.3 64.1 65.1 66.1
  SAY #15048 /* ~당신이 떠나려 하자 그가 날카롭게 말한다. 대화를 시작한 후 그의 어조가 변하는 것은 이번이 처음이다. "기다리시오." 그의 목소리가 고르게 된다. "그대는 이 도시에 대해 *알지* 못하오. 내가 그대와 함께 여행을 하겠소."~ */
  IF ~~ THEN REPLY #15281 /* ~"당신을 받아들이겠소. 전사가 한 명 더 합류하는 건 대환영이오."~ */ GOTO 72
  IF ~~ THEN REPLY #15282 /* ~"당신은 늙었소. 당신이 내게 무슨 쓸모가 있겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15283 /* ~"오늘은 아니오. 안녕히 계시오."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 42.3 67.2 70.1 71.1
  SAY #15049 /* ~"내 말을 들으시오." 당신이 미처 돌아서서 떠나기 전에 그가 말을 하기 시작한다. 그가 당신을 주시하고 있는 한 그로부터 고개를 돌리는 것은 쉽지 않다. "그대는 이 도시에서는 이방인이오. 그대는 이 도시를 *알지* 못하기 때문에 이 곳은 당신에게 위험한 곳이 될 수 있소. 설령 칼집에 그냥 넣어 둔 채라 하더라도 한 칼보다는 두 칼이 더 안심이 되는 법이오." 당신은 그가 얘기를 하는 동안 그의 칼이 당신이 그를 처음 만났을 때의 색인 칠흑으로 돌아가는 것을 눈치챈다. ~ */
  IF ~~ THEN REPLY #15284 /* ~"좋소. 전사가 한 명 더 합류하는 건 대환영이오, 다콘."~ */ GOTO 72
  IF ~~ THEN REPLY #15285 /* ~"당신은 내게 당신 말을 들으라고 하나 당신은 내 말을 들으려 하지 않소. 나는 당신이 나와 함께 있는 것을 원하지 않소. 내가 들어왔을 때 있던 장소에 그대로 있으시오. 그럼 안녕히 계시오."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY #15050 /* ~"그대가 돌아올 때까지 나는 여기서 기다리고 있겠소. 내가 그대를 *알리시오,* 그러면 그대의 길이 내 길이 될 것이오."~ */
  IF ~~ THEN REPLY #15286 /* ~"기억해 두리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 42.2 67.1
  SAY #15051 /* ~다콘의 시선이 변한다. 그가 당신과 처음으로 얘기했을 때 처럼 당신 너머를 바라보는 바라보는 것 같다. "나는 늙었소, 하지만 나는 멀리까지 여행을 했소. 나는 병법과 무술을 *알고* 있소. 또한 이 도시의 사정도 *알고* 있소."~ */
  IF ~~ THEN REPLY #15287 /* ~"하지만..."~ */ GOTO 71
  IF ~~ THEN REPLY #15288 /* ~"오늘은 아니오. 안녕히 계시오."~ */ GOTO 68
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #15052 /* ~"그대가 어둠 속에서 무턱대고 칼을 휘두를 때 내 칼은 적을 정확하게 벨 것이오. 그대에게는 닫힌 문도 내게는 회랑과 마찬가지일 것이오. 나를 통해 이러한 것들을 *앎*으로서 그대는 강해질 수 있소. 나는 그대와 함께 그대의 길을 걷고 싶소."~ */
  IF ~~ THEN REPLY #15289 /* ~"좋소. 당신을 받아들이겠소."~ */ GOTO 72
  IF ~~ THEN REPLY #15290 /* ~"난 그렇게 생각하지 않소. 안녕히 계시오."~ */ GOTO 68
END

IF ~~ THEN BEGIN 72 // from: 42.1 67.0 68.0 71.0 73.1
  SAY #15053 /* ~"나는 그대와 운명을 같이하리다." 기묘하게도 그의 목소리는 마치 그가 멀리 떨어진 곳에서 말하는 것처럼 들린다.~ [DAK206] */
  IF ~  GlobalLT("Dakkon","GLOBAL",2)
~ THEN REPLY #15291 /* ~"좋소. 갑시다."~ */ DO ~SetGlobal("Dakkon","GLOBAL",2)
AddexperienceParty(1000)
ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalGT("Dakkon","GLOBAL",1)
~ THEN REPLY #66762 /* ~"좋소. 갑시다."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  Global("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY #15054 /* ~당신이 다가가자 그는 당신을 향해 고개를 돌린다. 그의 눈은 광택이 있는 석탄과도 같다. 그는 잠시 당신을 뚫어지듯 응시하고, 당신은 그가 혹시 장님은 아닐까 생각한다. ~ */
  IF ~~ THEN REPLY #15292 /* ~"다시 만나 반갑소, 다콘.당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 28
  IF ~~ THEN REPLY #15293 /* ~"나는 당신을 환영하오, 다콘."~ */ GOTO 72
  IF ~~ THEN REPLY #15294 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #16628 /* ~"그대의 요청은 매우 흥미롭소. 벌통에서 나무라... 림보에서의 도시와 같소. 림보에서 도시는 자신들을 에워싸고 삼키려는 것에 굴복하지 않으며, 자신들에게 닥친 일을 받아들이거나 남아서 재건을 하려는 사람들의 의지를 나타내는 상징과도 같소. 나도 이 나무들에게 관심을 기울이겠소. ~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16936 /* ~"고맙소. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16937 /* ~"고맙소. 안나? 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16938 /* ~"고맙소. 이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16939 /* ~"고맙소. 그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16940 /* ~"고맙소. 노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16941 /* ~"고맙소. 베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16942 /* ~"고맙소. 질문할 것들이 좀 있소, 통곡자..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16943 /* ~"고맙소, 다콘. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #16629 /* ~다콘은 고개를 끄덕인다. "물론... 이오."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16944 /* ~"좋소. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16945 /* ~"좋소.안나? 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16946 /* ~"좋소. 이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16947 /* ~"좋소. 그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16948 /* ~"좋소. 노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16949 /* ~"좋소. 베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16950 /* ~"당신은 거기 있었군, 통곡자. 질문할 것들이 좀 있소."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16951 /* ~"다소 도움이 될 거요. 나무를-위해-통곡하는-자여." 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #17626 /* ~"향신료의 맛은 맛보는 사람이 워하는 바에 따라 달라지오. 자신의 원하는 맛을 얻기 위해 필요한 것은 집중력과 의지요."~ */
  IF ~~ THEN REPLY #17725 /* ~시식한다.~ */ DO ~TakePartyGold(5)
~ EXTERN ~D300MER6~ 20
  IF ~~ THEN REPLY #17726 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ EXTERN ~D300MER6~ 6
  IF ~~ THEN REPLY #17727 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ EXTERN ~D300MER6~ 2
  IF ~~ THEN REPLY #17728 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 78.0 79.1 80.3 81.3 82.0 83.12 84.12 85.12 86.9 87.9 88.0 89.2 90.5 91.5 92.4 93.8 94.3 95.3 96.3 97.1 98.3 99.5 100.3 101.1 102.3 103.0 104.3 105.0 106.3 107.3 108.3 109.3 110.3 111.12 112.5 113.0
  SAY #22541 /* ~다콘은 고개를 끄덕인다.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25004 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25005 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25006 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25007 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25008 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25009 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25010 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25011 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25012 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25013 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25014 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25015 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64400 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64401 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64402 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64403 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64404 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64405 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25016 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25017 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25018 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25019 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25020 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25021 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25022 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25023 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25024 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25025 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25026 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25027 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25028 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25029 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25030 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25031 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #22542 /* ~"그는 휄이라고 *알려져* 있소."~ */
  IF ~~ THEN REPLY #25032 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25033 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #22543 /* ~"그는 살에 그림, 즉 '문신'을 새기오."~ */
  IF ~~ THEN REPLY #25034 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25035 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25036 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #22544 /* ~"그의 말은 모순되어 있소." 다콘은 잠시 말을 멈추고 심벌들을 훑어본다. "그는 당신이 자신을 찾아온 것은 이번이 처음이라고 말하고 있소. 동시에 그는 당신이 그를 찾아온 건 이번이 처음이 아니라고 말하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25037 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25038 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25039 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25040 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25041 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #22545 /* ~"그는 당신을 *알고* 있소. 하지만 그는 당신이 *알고자* 하는 것을 말해줄 수가 없소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25042 /* ~"그건 왜요?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25043 /* ~"그건 왜요?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25044 /* ~"그건 왜요?"~ */ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25045 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25046 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #22546 /* ~"그는 대답을 하는 대신 사과를 하고 있소." 다콘은 잠시 말을 멈춘다, 그리고 다시 이야기를 시작할 때의 그의 어조는 마치 얼음처럼 차갑다. "그는 자신이 *인간의 본성*을 바꿀 수는 없다고 말하고 있소." 다콘이 이 문장을 반복하자 당신은 머릿속에서 엄청난 압력을 느낀다... 그리고 그 느낌은 그가 말을 마치자 사라진다. ~ */
  IF ~~ THEN REPLY #25047 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25048 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #22547 /* ~"그녀는 실존하오."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25049 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25050 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25051 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25052 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25053 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25054 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25055 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25056 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25057 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25058 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25059 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25060 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25061 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25062 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #22548 /* ~"그녀는 레이디의 미로들 중 한 곳에 감금되었소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25063 /* ~"미로?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25064 /* ~"미로?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25065 /* ~"미로?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25066 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25067 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25068 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25069 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25070 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25071 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25072 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25073 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25074 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25075 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25076 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #22549 /* ~"래벌의 생각은 레이디의 생각과 달랐소. 그래서 레이디는 그녀를 처벌했소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25077 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25078 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25079 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25080 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25081 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25082 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25083 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25084 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25085 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25086 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25087 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25088 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25089 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25090 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #22550 /* ~"그녀는 시길의 벽을 부수려고 했소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25091 /* ~"그는 래벌이 있는 곳까지 갈 수 있는 방법을 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25092 /* ~"그는 래벌이 있는 곳까지 갈 수 있는 방법을 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25093 /* ~"그는 래벌이 있는 곳까지 갈 수 있는 방법을 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25094 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25095 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25096 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25097 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25098 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25099 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25100 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25101 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #22551 /* ~"그는 그녀를 만날 수 있는 방법을 *알지* 못하오."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25102 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25103 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25104 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25105 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25106 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25107 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25108 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25109 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25110 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25111 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25112 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #22552 /* ~"그는 우리에게 그 나이트 해그를 찾을 생각을 하지 말라고 경고하고 있소. 그는 그녀의 마음은 사악하며 그녀가 우리를 해치려 할 것이라고 말하고 있소."~ */
  IF ~~ THEN REPLY #25113 /* ~"염두에 두도록 하리다. 그에게 묻고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25114 /* ~"우리는 다시 만나게 될 것이라는 생각이 드오. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #22553 /* ~다콘은 심벌들을 살펴본다, 하지만 그는 아무 말도 하지 않는다. ~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25115 /* ~"다콘? 그가 뭐라고 말하고 있소?"~ */ GOTO 90
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25116 /* ~"다콘?"~ */ GOTO 96
  IF ~~ THEN REPLY #25117 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25118 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #22554 /* ~"그 팔은 당신 것이오. 그리고 문신들은 그가 새긴 것이오."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #25119 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ JOURNAL #25126 /* ~나는 다콘에게 휄이 내가 찾아낸 문신 있는 팔에 대해서 하는 얘기를 번역해달라고 부탁했으나, 그는 모른다고 거짓말을 했다. 어떤 이유에선지 그는 잘린 팔에 있는 문신에 대해 설명하고 싶어하지 않았다. ~ */ GOTO 91
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #25120 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ GOTO 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25121 /* ~"그는 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25122 /* ~"그는 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25123 /* ~"그는 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25124 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25125 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #22555 /* ~다콘은 잠시 침묵한다... 그리고 당신은 갑자기 본능적으로 그가 *거짓말*을 하고 있다는 사실을 깨닫는다. 그는 단조로운 목소리로 말을 계속한다. "나는 나머지 심벌들을 *알지* 못하오." ~ */
  IF ~~ THEN REPLY #25127 /* ~"왜 당신은 내게 거짓말을 하는 거요?"~ */ GOTO 93
  IF ~~ THEN REPLY #25128 /* ~"나는 당신이 그가 말한 것이 무엇인지 *알고* 있다고 생각하오. 지금 당장 번역하시오."~ */ DO ~SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25129 /* ~"어... 좋소. 그는 그 팔에 새겨진 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25130 /* ~"어... 좋소. 그는 그 팔에 새겨진 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25131 /* ~"어... 좋소. 그는 그 팔에 새겨진 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25132 /* ~"좋소. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25133 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #22556 /* ~다콘은 잠시 침묵한다. "나는 나머지 심벌들을 *알지* 못하오." ~ */
  IF ~~ THEN REPLY #25134 /* ~"틀림없소?"~ */ GOTO 95
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25135 /* ~"어... 좋소. 그는 그 팔에 새겨진 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25136 /* ~"어... 좋소. 그는 그 팔에 새겨진 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25137 /* ~"어... 좋소. 그는 그 팔에 새겨진 문신들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25138 /* ~"좋소. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25139 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.0
  SAY #22557 /* ~다콘은 다시 침묵한다. 그는 당신 쪽으로 고개를 돌리지 않는다. 그는 머나먼 곳을 바라보고 있는 듯하다. "그 심벌들... 당신이 원하는 답을 *알아서* 좋을 것은 아무 것도 없소."~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25140 /* ~"내 인내심은 한계에 도달하려 하고 있소. 나는 답을 원하오, 그리고 당신은 내가 폭발하기 전에 아는 것을 모두 털어놓는 게 좋을 거요."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~나는 내 잘린 팔에 있는 문신의 의미를 번역하도록 다콘을 설득하는 데 성공했다, 하지만 그는 내키지 않는 듯 했다. 그는 문신이 '과거에 나와 함께 여행한 네 사람'에 대한 것이라고 말했다. ~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25141 /* ~"언제부터 진실을 모르는 것이 사람에게 도움이 되기 시작했소, 다콘? 조언자가 무지를 권하면 그것은 자신의 직무를 유기하는 일이오."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~나는 내 잘린 팔에 있는 문신의 의미를 번역하도록 다콘을 설득하는 데 성공했다, 하지만 그는 내키지 않는 듯 했다. 그는 문신이 '과거에 나와 함께 여행한 네 사람'에 대한 것이라고 말했다. ~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25142 /* ~"언제부터 진실을 모르는 것이 사람에게 도움이 되기 시작했소, 다콘? 조언자가 무지를 권하면 그것은 자신의 직무를 유기하는 일이오."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~나는 내 잘린 팔에 있는 문신의 의미를 번역하도록 다콘을 설득하는 데 성공했다, 하지만 그는 내키지 않는 듯 했다. 그는 문신이 '과거에 나와 함께 여행한 네 사람'에 대한 것이라고 말했다. ~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25143 /* ~"언제부터 진실을 *모르는* 것이 사람에게 도움이 되기 시작했소, 다콘? 조언자가 무지를 권하면 그것은 자신의 직무를 유기하는 일이오."~ */ DO ~GiveExperience(Protagonist,750)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~나는 내 잘린 팔에 있는 문신의 의미를 번역하도록 다콘을 설득하는 데 성공했다, 하지만 그는 내키지 않는 듯 했다. 그는 문신이 '과거에 나와 함께 여행한 네 사람'에 대한 것이라고 말했다. ~ */ GOTO 94
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25144 /* ~"계속하시오, 다콘. 당신은 이전에 그들에 대해 얘기한 적이 있소."~ */ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25145 /* ~"그럼 관두시오. 휄은 그 팔에 새겨진 문신들에 대해 뭐라고 얘기하고 있소?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25146 /* ~"그럼 관두시오. 휄은 그 팔에 새겨진 문신들에 대해 뭐라고 얘기하고 있소?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25147 /* ~"그럼 관두시오. 휄은 그 팔에 새겨진 문신들에 대해 뭐라고 얘기하고 있소?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25148 /* ~"그럼 관두시오. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25149 /* ~"좋소, 말하기 싫으면 하지 마시오, 다콘. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.1 93.2 93.3
  SAY #22558 /* ~"당신 한 말에는 진실이 담겨져 있소. 나는 그 진실을... *알아야만* 하오." 다콘은 잠시 침묵한다, 그리고 굳은 표정으로 당신을 향해 고개를 돌린다. "그 심벌들은 과거에 당신과 함께 여행한 사람들 넷에 대해 말하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25151 /* ~"계속하시오... 이 넷이란 대체 무엇이오?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25152 /* ~"계속하시오... 이 넷이란 대체 무엇이오?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25153 /* ~"계속하시오... 이 넷이란 대체 무엇이오?"~ */ JOURNAL #24274 /* ~휄은 나를 위해 내 옛 팔에 새겨진 룬을 번역해주었다... 그는 나와 동행했던 네 사람에 대하여 말했다. 그 네 사람은 '사랑하지 않는 자를 사랑한  자를 사랑하지 않은 자', '남이 보는 것을 보지 못하고 남이 보지 못하는 것을 보는 자', '친숙하며 의무에 의해 묶인 자', 그리고 '노예이며 그를 묶는 사슬은 말인 자'이다. 그들 역시 모두 나처럼 고통받고 있으며, 내 고통이 동료들을 불러들인다고 한다.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25154 /* ~"좋소. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25155 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.0
  SAY #22559 /* ~다콘은 굳은 표정으로 당신을 향해 고개를 돌린다. "그렇소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25156 /* ~"그럼 관두시오. 휄은 그 팔에 새겨진 문신들에 대해 뭐라고 얘기하고 있소?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25157 /* ~"그럼 관두시오. 휄은 그 팔에 새겨진 문신들에 대해 뭐라고 얘기하고 있소?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25158 /* ~"그럼 관두시오. 휄은 그 팔에 새겨진 문신들에 대해 뭐라고 얘기하고 있소?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25159 /* ~"좋소. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25160 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 89.1 91.1 93.0 93.4
  SAY #22560 /* ~다콘은 굳은 표정으로 당신을 향해 고개를 돌린다. "그 심벌들은 과거에 당신과 함께 여행한 사람들 넷에 대해 말하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25161 /* ~"계속하시오... 이 넷이란 대체 무엇이오?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25162 /* ~"계속하시오... 이 넷이란 대체 무엇이오?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25163 /* ~"계속하시오... 이 넷이란 대체 무엇이오?"~ */ JOURNAL #24274 /* ~휄은 나를 위해 내 옛 팔에 새겨진 룬을 번역해주었다... 그는 나와 동행했던 네 사람에 대하여 말했다. 그 네 사람은 '사랑하지 않는 자를 사랑한  자를 사랑하지 않은 자', '남이 보는 것을 보지 못하고 남이 보지 못하는 것을 보는 자', '친숙하며 의무에 의해 묶인 자', 그리고 '노예이며 그를 묶는 사슬은 말인 자'이다. 그들 역시 모두 나처럼 고통받고 있으며, 내 고통이 동료들을 불러들인다고 한다.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25164 /* ~"좋소. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25165 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #22561 /* ~다콘은 심벌들을 쳐다보지도 않는다. "그 문신은 네 사람에 대해 얘기하고 있소. "그들 중 하나는 여자로, 그녀를 *알고* 그녀를 사랑하지 않는다는 것을 *안* 남자를 사랑했소. 또 한 사람은 장님으로, 인간의 눈으로 볼 수 없는 것들을 보았소. 세 번째는 메이지의 애완동물이자 종복 같은 존재로 돈에 팔려 예속된 자였소. 그리고 마지막 한 명은 노예였소."~ */
  IF ~~ THEN REPLY #25166 /* ~"왜 당신은 내게 이 이야기를 하려고 하지 않은 거요?"~ */ GOTO 98
  IF ~  False()
~ THEN REPLY #25167 /* ~"좋소. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25168 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #22562 /* ~"그 네 명은 내가 *아는* 심벌에 의해 묶여 있었소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25169 /* ~"무슨 심벌 말이오?"~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25170 /* ~"무슨 심벌 말이오?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25171 /* ~"무슨 심벌 말이오?"~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25172 /* ~"좋소. 그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25173 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22563 /* ~"그 심벌은 고통이오. 당신은 늘 그것을 지니고 있었으며, 당신의 정신은 모르고 있더라도 당신의 육신은 고통받고 있다는 사실을 *알고* 있었다고 그는 말하고 있소."~ */
  IF ~~ THEN REPLY #25174 /* ~"심벌 얘기는 이제 그만하시오. 문신에 새겨진 넷에 대해 당신이 아는 것을 모두 얘기해주시오."~ */ GOTO 100
  IF ~~ THEN REPLY #25175 /* ~"알겠소. 문신에 새겨진 넷에 대해서 더 얘기해줄 수 있겠소?"~ */ GOTO 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25176 /* ~"휄이 그 팔에 새겨진 다른 문신들에 대해 무슨 언급을 했소?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25177 /* ~"휄이 그 팔에 새겨진 다른 문신들에 대해 무슨 언급을 했소?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25178 /* ~"휄이 그 팔에 새겨진 다른 문신들에 대해 무슨 언급을 했소?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25179 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25180 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1
  SAY #22564 /* ~다콘은 다시 침묵한다. "나는 이 곳에서는 얘기하지 않겠소. 당신과 같은 길을 걸을 자들만 있을 때 다시 질문하시오."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25181 /* ~"좋소. 휄은 그 팔에 새겨진 다른 문신들에 대해서도 얘기를 했소?" ~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25182 /* ~"좋소. 휄은 그 팔에 새겨진 다른 문신들에 대해서도 얘기를 했소?" ~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25183 /* ~"좋소. 휄은 그 팔에 새겨진 다른 문신들에 대해서도 얘기를 했소?" ~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25184 /* ~"좋소... 하지만 우선 휄에게 물어봐야 할 것이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25185 /* ~"좋소, 다콘. 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #22565 /* ~"그는 그 팔에는 잊혀진 문신들이 새겨져 있다고 하오. 하지만 이제 그는 그것들을 기억해냈소. 원한다면 그는 그것들을 당신 몸에 다시 새겨줄 것이오."~ */
  IF ~~ THEN REPLY #25186 /* ~"좋소.. 그가 어떤 문신들을 판매하고 있는지 보고 싶소."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25187 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25188 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22566 /* ~"그는 그 문신이 자신의 것이 아니라고 말하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"그가 내게 그것들에 대해 말해줄 수 있겠소?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"그가 내게 그것들에 대해 말해줄 수 있겠소?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"그가 내게 그것들에 대해 말해줄 수 있겠소?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25189 /* ~"알겠소. 그에게 물어보고 싶은 것이 더 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25190 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #22567 /* ~"당신 등 뒤에 있는 심벌들은 당신이 스스로에게 남긴 지시 사항이오. 당신 어깨의 낙인은 고통의 낙인이오. 그는 당신의 정신은 모르고 있더라도 당신의 육신은 고통받고 있다는 사실을 *알고* 있기 때문에 그 낙인이 당신 몸에 존재한다고 말하고 있소."~ */
  IF ~~ THEN REPLY #25191 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25192 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #22568 /* ~"그림자들."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25193 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25194 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25195 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25196 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25197 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #22569 /* ~"그는 여러 그림자들이 당신을 덮쳤다고 말하고 있소. 그는 그들이 당신을 죽인 이유까지는 *알지* 못하오."~ */
  IF ~~ THEN REPLY #25198 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25199 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #22570 /* ~"이 곳은 그의 갤러리요. 그는 당신을 자신의 캔버스로 생각하고 있소. 그는 당신의 강인함에 경의를 표하고 있소." 다콘은 잠시 침묵한다. "하지만 동시에 그는 당신을 동정함으로서 당신을 모욕하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25200 /* ~"동정한다?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25201 /* ~"동정한다?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25202 /* ~"동정한다?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25203 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25204 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #22571 /* ~"그는 고통이 당신 몸에 남긴 흉터들에 대해 동정하고 있소. 그는 당신이 인내했다고 말하고 있소. 인내함으로서 당신은 더욱 강해졌소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25205 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25206 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25207 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25208 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25209 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #22572 /* ~"그는 당신이 상실과 고통을 견뎌낸 것에 경의를 표하고 있소. 상실과 고통이 당신을 마치 사슬처럼 묶고 있지만, 그럼에도 불구하고 당신은 일어서서 걷고 있다고 그는 말하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25210 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25211 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25212 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25213 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25214 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #22573 /* ~"그는 상실과 고통이 당신의 현재의 삶과 그 전의 삶들을 뒤덮고 있다고 말하고 있소. 그는 당신이 인생의 모든 갈림길을 걸으며 이러한 삶들을 마치 뱀이 허물을 벗듯이 벗어 던진다고 말하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25215 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25216 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25217 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25218 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25219 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #22574 /* ~"그는 당신에게 다음과 같은 경고를 해주길 원하오: 당신의 각 삶은 존재에 그림자를 드리우고 있소. 당신의 길은 당신을 그림자들이 스스로를 *알지* 못하며 벽은 후회로 만들어진 곳으로 인도할 것이오."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25220 /* ~"알겠소... 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25221 /* ~"나...vois. 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25222 /* ~"알겠…소. 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25223 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25224 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #22575 /* ~"그는 그 어떠한 것에도 서명하지 말라고 충고하고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25225 /* ~"알겠소."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25226 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25227 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25228 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25229 /* ~"알겠소."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25230 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25231 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25232 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25233 /* ~"알겠소."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25234 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25235 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25236 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25237 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25238 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #22576 /* ~"그는 당신이 스스로를 *온전*하다고 생각하는지 물어보고 있소."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25239 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25240 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25241 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25242 /* ~"당신과는 상관없는 일이오."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25243 /* ~거짓말: "나는 온전하오. 그건 왜 물으시오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25244 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25245 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #22577 /* ~"그는 당신의 강인함에 경의를 표하고 있소. 그는 당신에게 믿음을 가지라고 말하고 있소, 그리고 그러면 스스로를 다시 *알게* 될 것이라고."~ */
  IF ~~ THEN REPLY #25246 /* ~"시도해보리다. 그에게 물어보고 싶은 것이 더 있소..."~ */ GOTO 77
  IF ~~ THEN REPLY #25247 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #32703 /* ~다콘은 그 젊은 여자의 존재 자체를 인식하고 있지 않는 듯하다. 그는 전방을 빤히 보고 있을 뿐이다. ~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 33
END

IF ~~ THEN BEGIN 115 // from:
  SAY #32704 /* ~그래도 다콘은 아무런 응답도 하지 않는다. 마치 그는 그녀의 존재 자체를 무시하는 것 같다.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 35
END

IF ~~ THEN BEGIN 116 // from:
  SAY #32705 /* ~다콘은 갑자기 굵직한 바리톤의 목소리로, 마치 어린아이를 가르치는 듯한 어조로 말을 한다. "저서몬께서 쉐일의 평원에 도달하시어 기스저라이가 인간과 만났을 때, 그분께서는 인간들에게는 존경할 점들이 적지 않으나, 그들이 스스로의 무지에서 벗어나려면 힘들고 험한 길을 가야 할 것이라고 말씀하셨소."~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #32706 /* ~다콘은 그의 '농담'을 계속한다. "저서몬께서는 많은 인간들은 말은 거창하게 하나 실제로 행동에 옮기는 일은 드물며, 따라서 그들의 존재 양식에는 위험이 내재하고 있다고 경고하셨소. 인간은 악몽이 실체화한 존재로, 과거로부터 교훈을 얻을 수 있는 능력과 진정한 역사를 지니지 못한 종족이 얼마나 위태로운지를 보여주고 있소."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 36
END

IF ~  GlobalGT("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 118 // from:
  SAY #33972 /* ~당신이 다가가자 다콘은 고개를 돌려 마치 광택이 있는 석탄과도 같은 눈으로 당신을 쳐다본다. "나는 당신이 돌아오리라는 사실을 *알고* 있었소. 당신은 우리 두 사람이 걷는 길이 하나가 되기를 원하오?"~ [DAK207] */
  IF ~~ THEN REPLY #33973 /* ~"그렇소. 난 당신 도움이 필요하오, 다콘."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 119
  IF ~~ THEN REPLY #33974 /* ~"지금은 아니오, 다콘."~ */ GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #33975 /* ~"나는 그대와 운명을 같이하리다."~ [DAK206] */
  IF ~~ THEN REPLY #33976 /* ~"갑시다, 그럼."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY #33977 /* ~"그렇다면 우리는 서로 다른 길을 걷게 될 것이오."~ */
  IF ~~ THEN REPLY #33978 /* ~"안녕히 계시오, 다콘."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #33979 /* ~"당신이 뜻하는 바는 무엇이오?"~ [DAK205] */
  IF ~~ THEN REPLY #33980 /* ~"지금은 아무 용건도 없소. 난 당신이 아직도 나와 있는지 확인했을 뿐이오."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #39583 /* ~다콘은 엄숙하게 고개를 끄덕인다. "아크알리의 익사를 들려주도록 하리다."
다콘은 아크알리의 이야기를 하기 시작한다. 그녀는 전설 속에 나오는 어리석은 기스저라이로, 어느 날 림보의 혼돈의 바다에서 길을 잃었다. 보통 각 기스저라이는 자신의 집중력과 정신적 수양을 이용하여 주위의 혼돈을 생존이 가능한 작은 환경으로 변환시킨다. 하지만 아크알리는 집으로 돌아가려는 시도를 하면서 많은 수의 산만한 질문들을 한 탓에 혼돈의 물질로 만들어진 섬은 사라져버렸고, 그녀는 익사했다." ~ */
  IF ~~ THEN EXTERN ~DYVES~ 61
END

IF ~~ THEN BEGIN 123 // from:
  SAY #39584 /* ~다콘은 귀를 기울인다, 그리고 다소 놀란 듯하다.~ */
  IF ~~ THEN REPLY #39761 /* ~"계속하시오, 이브즈..."~ */ DO ~SetGlobal("Yves_Story_10","GLOBAL",1)
AddexperienceParty(500)
~ EXTERN ~DYVES~ 62
  IF ~~ THEN REPLY #39762 /* ~"기다리시오, 이브즈... 질문할 것이 하나 있소..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39763 /* ~"나머지는 다음 기회에 듣겠소. 안녕히 계시오. 이브스."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #42437 /* ~다콘은 당신을 쳐다보면서 말한다. "그녀는 당신이 하는 말을 이해할 수가 없소. 그녀는 자신이 죽어가고 있다고 말하고 있소."~ */
  IF ~~ THEN REPLY #42438 /* ~"그녀는 왜 죽어가고 있소?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ GOTO 125
  IF ~~ THEN REPLY #42439 /* ~"그럼 당신이 그녀를 죽이는 게 좋을 것 같소. 단, 고통스럽게 죽이시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42440 /* ~"우리가 그녀를 위해 해줄 수 있는 일은 없소?"~ */ GOTO 127
  IF ~~ THEN REPLY #42441 /* ~"좋소. 갑시다."~ */ GOTO 128
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #42442 /* ~"그녀의 이름은 언'아지요. 그녀는 반 달 전까지는 육류가공 공장에서 일했으나 병이 견딜 수 없을 정도로 심해져 더 이상 일을 할 수 없게 되었다고 하오. 그녀는 일자리를 잃고, 집에서 쫓겨났으며, 죽어가도록 버려졌소. 그녀에게는 말하는 것조차 힘들며, 병 때문에 정신도 온전하지 않소. 그녀는 당신에게 도움이 될 만한 건 아무 것도 모른다고 말하고 있소."~ */
  IF ~~ THEN REPLY #42443 /* ~"그래서?"~ */ GOTO 127
  IF ~~ THEN REPLY #42444 /* ~"그럼 그녀를 그냥 내버려 둡시다. 회복할지도 모르니까."~ */ GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 124.1 127.0 132.0
  SAY #42445 /* ~다콘의 눈빛이 싸늘해진다. 그러나 그럼에도 그는 당신에게 고개를 숙인다. 그는 언'아지 쪽으로 돌아서서 그녀에게 저서몬의 깨어지지 않은 원을 보여준 다음, 발음을 생략한 채 몇 음절을 지껄인다. 그녀는 당신을 역겹다는 표정으로 노려본다, 그러나 이내 다콘 쪽으로 시선을 돌린다. 그는 칼을 뽑는다; 그녀는 그의 앞에 서서 그의 눈을 쳐다보고 있다. 그는 칼을 다시 칼집에 넣는다...~ */
  IF ~~ THEN REPLY #42446 /* ~"멈추시오, 다콘. 우리는 그녀를 그냥 내버려 둘 거요. 갑시다."~ */ GOTO 128
  IF ~~ THEN REPLY #42447 /* ~"대신 드녀를 찌르시오, 다콘. 고통스럽게 하라고 내가 이미 말했소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ JOURNAL #67287 /* ~나는 다콘이 병든 여자 기스저라이를 고통스럽게 죽이도록 했다. 내 의도가 어떠했던 간에 그녀는 그 행위 자체에 대해서는 감사했다. ~ */ GOTO 129
  IF ~~ THEN REPLY #42448 /* ~그가 그녀를 내리치도록 한다.~ */ JOURNAL #67287 /* ~나는 다콘이 병든 여자 기스저라이를 고통스럽게 죽이도록 했다. 내 의도가 어떠했던 간에 그녀는 그 행위 자체에 대해서는 감사했다. ~ */ GOTO 131
END

IF ~~ THEN BEGIN 127 // from: 124.2 125.0 125.1
  SAY #42449 /* ~"그녀가 회복할 수 없다는 사실을 *알도록* 하시오. 나는 그녀의 고통을 종식시켜 줄 수가 있소. 그게 전부요. 대안을 제공하는 것은 사람들'의 *저스*로서의 내 의무요." ~ */
  IF ~~ THEN REPLY #42450 /* ~"그럼 하시오, 하지만 가급적 고통스럽게 죽이시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42451 /* ~"그럼 자비를 베푸시오, 다콘."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42452 /* ~"하지 마시오, 우린 다른 할 일들이 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 124.3 126.0 127.2 132.2
  SAY #42453 /* ~다콘을 당신을 싸늘한 눈으로 본다, 그리고 당신이 떠나려 하자 그는 돌아서서 기스저라이 여인에게 고개를 숙인다. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.1
  SAY #42454 /* ~다콘은 당신을 쳐다보지 않고 자신의 *카락* 칼로 그녀의 몸을 찌른다. 그녀는 약간 숨을 헐떡인다, 그리고 그녀 입에서는 촉촉한 피가 흘러나온다. 그녀의 눈빛은 흐려지고, 그녀의 두 다리는 힘을 잃는다. 그녀는 뒤로 넘어짐에 따라 칼이 그녀의 몸으로부터 미끄러져 나온다, 그리고 그녀의 육신은 쭈글쭈글한 시체가 되어 바닥에서 뒹군다. ~ */
  IF ~~ THEN REPLY #42455 /* ~"여기서 나갑시다."~ */ DO ~AddexperienceParty(4000)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 127.1 132.1
  SAY #42456 /* ~다콘은 칼을 뽑고 여자가 죽을 준비를 마치기를 기다린다. 그녀는 다콘이 지닌 저서몬의 깨어지지 않은 원을 잠시 만진다, 그러자 그녀의 얼굴은 평정을 되찾는다. 다콘은 눈에 보이지 않을 정도로 빠른 속도로 칼을 휘두른다, 그리고 다음 순간 그녀는 시길 거리의 차가운 돌바닥 위에 피를 흘리며 쓰러진다.~ */
  IF ~~ THEN REPLY #42457 /* ~"잘했소, 다콘. 갑시다."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ JOURNAL #67288 /* ~나는 다콘이 그의 동포인 한 여인을 돕는 것을 허락했다. 그 기스저라이 여인은 마계구의 오염된 공기를 너무 많이 마셔 병들어 있었다. 다콘은 그녀를 내리쳤다, 그럼에도 불구하고 그녀는 감사하는 듯했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.2
  SAY #42458 /* ~ 그녀는 다콘이 지닌 저서몬의 깨어지지 않은 원을 잠시 만진다, 그러자 그녀의 얼굴은 평정을 되찾는다. 다콘은 눈에 보이지 않을 정도로 빠른 속도로 칼을 휘두른다, 그리고 다음 순간 그녀는 시길 거리의 차가운 돌바닥 위에 피를 흘리며 쓰러진다.~ */
  IF ~~ THEN REPLY #42459 /* ~"갑시다, 다콘."~ */ DO ~AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #42460 /* ~"그녀의 이름은 언'아지요. 그녀의 병은 이미 치명적인 상태에 이르렀소. 그것은 그녀에게 고통을 주고 있소. '사람들'의 이 구역의 사악한 공기에 대한 저항력은 당신들 인간의 그것보다 훨씬 약하오. 나는 *저스*요. 대안을 제공하는 것은 내 의무요. '사람들'이 그녀에게 접근하려고 하지 않기 때문에 그녀는 내게 죽여 달라고 애원했소."~ */
  IF ~~ THEN REPLY #42461 /* ~"그럼 하시오, 하지만 가급적 고통스럽게 죽이시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42462 /* ~"그럼 자비를 베푸시오, 다콘."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42463 /* ~"하지 마시오, 우린 다른 할 일들이 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 133 // from:
  SAY #43544 /* ~당신이 그녀에게 다가가기 전에 다콘이 제지한다. "내 말을 들어주시오."~ */
  IF ~~ THEN REPLY #43545 /* ~"무슨 일이오, 다콘?"~ */ GOTO 134
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"그럴 수는 없소. 그러니 조용히 하시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"그럴 수는 없소. 그러니 조용히 하시오."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #43547 /* ~"나는 당신이 이 여자와 얘기하는 것을 원하지 않소."~ */
  IF ~~ THEN REPLY #43548 /* ~"그건 왜요?"~ */ GOTO 136
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43549 /* ~"이해하오. 하지만 그래도 그녀와 얘기를 해야겠소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43550 /* ~"이해하오. 하지만 그래도 그녀와 얘기를 해야겠소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"그럼 그녀와 얘기하지 마시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43552 /* ~"그럼 그녀와 얘기하지 마시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43553 /* ~"그럼 좋소. 그녀와 얘기를 하지 않겠소."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43553 /* ~"그럼 좋소. 그녀와 얘기를 하지 않겠소."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.5 134.6 136.2 136.3
  SAY #43554 /* ~"고맙소."~ */
  IF ~~ THEN REPLY #43555 /* ~"천만의 말씀이오."~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.0
  SAY #43556 /* ~"그녀도 *저스*요. 하지만 우리는 대립하고 있으며, 우리들 사이에 공통의 견해는 존재하지 않소."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"당신 뜻은 알겠소. 하지만 그래도 그녀와 얘기를 해야겠소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43558 /* ~"그럼 그녀와 얘기하지 마시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43559 /* ~"그럼 좋소. 그녀와 얘기를 하지 않겠소."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43559 /* ~"그럼 좋소. 그녀와 얘기를 하지 않겠소."~ */ GOTO 135
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"그럼 그녀와 얘기하지 마시오."~ */ EXTERN ~DKIINA~ 30
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"당신 뜻은 알겠소. 하지만 그래도 그녀와 얘기를 해야겠소."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 137 // from:
  SAY #43560 /* ~"이 일..." 다콘의 목소리가 떨린다. "내가 이 일은 하는 것은 내가 *원하는* 바가 아니오."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #43561 /* ~"다콘, 그건 명령이었고 당신은 내 노예요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43562 /* ~"하시오, 다콘."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43563 /* ~"좋소. 하지만 그녀가 아슬아슬한 곡예를 하고 있다는 건 기억해 두시오."~ */ EXTERN ~DKIINA~ 34
END

IF ~~ THEN BEGIN 138 // from:
  SAY #43564 /* ~다콘의 칼이 그녀를 베자 그녀는 피를 흘리며 바닥에 쓰러진다. 피가 그의 칼 가장자리에서 부글부글 끓더니 증기가 되어 사라진다, 그리고 칼 표면에는 검은색 얼룩이 남는다.~ */
  IF ~~ THEN REPLY #43565 /* ~"갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #43566 /* ~다콘은 한숨을 쉰다. "백 년에 걸친 아나크로서, 이 이야기를 잴 수 있는 모래시계는 존재하지 않소. 이 일은 후리'히의 뿌리만큼이나 꼬여 있소. 그 해법은 결코 있을 수 없는 일인지도 모르오. 나를 너무 가혹하게 평가하지는 마시오."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 140 // from:
  SAY #43567 /* ~다콘은 불안한 듯 한 자리에서 가만히 있지를 못한다. "나는 그에게 말을 하라고 강요할 수 없소. 그가 말을 하기를 진심으로 바라나... 그의 삶은 그의 것이오."~ */
  IF ~~ THEN REPLY #43568 /* ~"한 무리의 기스양키들이 7일 내에 그 요새를 습격할 계획을 세우고 있소. 지금 이 순간에도 그들은 그 곳으로 가고 있소."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
~ EXTERN ~DKIINA~ 37
  IF ~~ THEN REPLY #43569 /* ~"말하지 않겠소."~ */ EXTERN ~DKIINA~ 40
END

IF ~~ THEN BEGIN 141 // from:
  SAY #43570 /* ~"저서몬의 말씀에 대한 확신이 결여된 것이 아니오. 그 메아리가 왜곡되었을 뿐이오."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 44
END

IF ~~ THEN BEGIN 142 // from:
  SAY #43571 /* ~"당신의 말에는 저서몬의 마음이 반영되어 있지 않소. 그것은 마치 '기스'의 마음을 그 틀로 한 듯 음모와 증오로 그 향태를 이루고 있소." ~ */
  IF ~~ THEN EXTERN ~DKIINA~ 45
END

IF ~~ THEN BEGIN 143 // from:
  SAY #43572 /* ~당신의 의도를 눈치챈 듯 다콘은 키이'나를 계속 노려보면서 당신에게 말한다. "가만히 계시오, 그리고 우리들의 칼 사이에 끼어들지 마시오." ~ */
  IF ~~ THEN REPLY #43573 /* ~"다콘, 난 당신에게 당장 멈추라고 명령하오."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43574 /* ~"그만두시오, 다콘."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43575 /* ~어쨌든 저스를 공격한다.~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 46
  IF ~~ THEN REPLY #43576 /* ~그들이 싸우도록 내버려 둔다.~ */ EXTERN ~DKIINA~ 47
END

IF ~~ THEN BEGIN 144 // from:
  SAY #43577 /* ~"당신의 마음은 '기스'와 다를 바가 없소, 키이'나."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43578 /* ~"갑시다, 다콘."~ */ EXTERN ~DMORTE~ 466
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43579 /* ~"갑시다, 다콘."~ */ EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY #43580 /* ~"이 인간이 말울 하면 들어주겠소?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 49
END

IF ~~ THEN BEGIN 146 // from:
  SAY #43581 /* ~"그는 나와 함께 여행을 하고 있소. 저서몬의 사도 키이'나여. 그는 저서몬의 말씀을 들으러 당신을 찾아왔소. *저스*로서 당신은 이 요구에 응해야만 하오. 그의 말을 들어주겠소?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 50
END

IF ~~ THEN BEGIN 147 // from:
  SAY #43582 /* ~"당신은 그에게 마음의 문을 닫을 것이오? 당신의 마음을 말하기 전에 당신이 하는 말을 *알도록* 하시오, 키이'나, 저서몬의 *저스*여."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 51
END

IF ~~ THEN BEGIN 148 // from:
  SAY #43583 /* ~"그걸로 충분하오." 다콘은 돌아서서 당신의 언어로 말한다. "그녀가 당신을 가르칠 것이오."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",1)
~ EXTERN ~DKIINA~ 52
END

IF ~~ THEN BEGIN 149 // from:
  SAY #44651 /* ~"이 기스양키와는 얘기하지 말라고 충고하고 싶소."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44652 /* ~"기스양키란 무엇이오?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ JOURNAL #39453 /* ~다콘은 내게 기스양키와 기스저라이의 차이를 설명해주었다. 둘은 원래 잔혹한 마인드 훌레이어(다콘은 그들을 일리티드라 부른다)의 노예로 신음하던 하나의 종족이었으나, 잔인한 지배자들의 멍에로부터 벗어난 후 두 진영은 각기 다른 지도자를 따르기로 선택했다. 그 이래 그들의 관계는 험악하기 그지없다. ~ */ GOTO 150
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44653 /* ~"왜?"~ */ GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #44654 /* ~"기스양키와 기스저라이는 한때는 동족이었소. 우리는 *일리티드* - 즉, 마인드 훌레이어의 노예이자 먹이였소. 우리의 선조들 중 한 사람인 전사 여왕 기스의 영도 아래 우리는 *일리티드*에게 승리하여 자유를 얻을 수가 있었소. 그 이래로 우리들은 마인드 훌레이어와 끊임없는 전쟁을 벌여 왔소. 하지만, '사람들'의 미래에 대해 견해의 차이가 있었소. 저주받은 평원에서 우리의 지도자이셨던 저서몬께서는 두 하늘의 선언을 하셨소, 그리고 양자 사이에는 칼이 오갔소. 한 민족이 둘로 갈라졌소. 그것은 평화적으로 해결될 수 없는 불화요."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44655 /* ~"그래도 우리는 그와 얘기를 할 거요."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44656 /* ~"그래도 우리는 그와 얘기를 할 거요."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 153
  IF ~~ THEN REPLY #44657 /* ~"그렇다면 관둡시다. 갑시다."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 149.1
  SAY #44658 /* ~"그들이 '사람들'의 숙적이란 사실을 *알도록* 하시오. 우리가 이야기를 나누면 그것은 피를 부르게 될 뿐이오."~ */
  IF ~~ THEN REPLY #44659 /* ~"그래도 우리는 그와 얘기를 할 거요."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~~ THEN REPLY #44660 /* ~"그렇다면 관둡시다. 갑시다."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 48
END

IF ~~ THEN BEGIN 152 // from: 150.0 151.0
  SAY #44661 /* ~다콘은 고개를 끄덕인다.~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 47
END

IF ~~ THEN BEGIN 153 // from: 150.1
  SAY #44662 /* ~다콘은 고개를 끄덕인다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 474
END

IF ~~ THEN BEGIN 154 // from:
  SAY #44663 /* ~다콘도 칼을 뽑는다. "이'민, 당신의 피는 거리의 판석을 부식시키게 될 것이요."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44664 /* ~그들 사이에 선다: "멈추시오!"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44665 /* ~그들 사이에 선다: "멈추시오!"~ */ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44666 /* ~기스양키를 공격한다.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44667 /* ~기스양키를 공격한다.~ */ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44668 /* ~그들이 싸우도록 내버려 둔다.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44669 /* ~그들이 싸우도록 내버려 둔다.~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 155 // from: 154.0 154.1
  SAY #44670 /* ~다콘은 당신에게 말한다, 하지만 적으로부터 잠시도 눈을 떼지 않는다. "가만히 서 계시오, 그리고 우리들의 싸움에 개입하지 마시오."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #44671 /* ~"내게 명령하지 마시오, 다콘, 아니면 내가 당신에게 자살하라고 명령을 내릴 테니." ~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DYI'MINN~ 50
  IF ~~ THEN REPLY #44672 /* ~"그만두시오, 다콘."~ */ GOTO 156
  IF ~~ THEN REPLY #44673 /* ~"그럼 마음대로 하시오."~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 156 // from: 155.1
  SAY #44674 /* ~다콘이 기스양키에게 말한다: "이'민 이 곳은 전장이 아니오."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 54
END

IF ~~ THEN BEGIN 157 // from:
  SAY #44675 /* ~"나는 *기스저라이*의 음흉함에 대해 아오. 나는 이 문제에 있어 그의 그림자가 될 것이오."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 57
END

IF ~~ THEN BEGIN 158 // from:
  SAY #44676 /* ~"그림자는 그것을 투영하는 자가 죽기 전에는 죽일 수 없소. 따라서 나는 아무런 두려움도 없이 여행하오."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 58
END

IF ~~ THEN BEGIN 159 // from:
  SAY #44692 /* ~다콘의 손에 칼이 나타난다. "당신은 오늘 선조들을 만나게 될 것이오, 기스양키."~ */
  IF ~~ THEN REPLY #44693 /* ~"멈추시오!"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 9
  IF ~~ THEN REPLY #44694 /* ~그들이 싸우도록 내버려 둔다.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 10
END

IF ~~ THEN BEGIN 160 // from:
  SAY #45362 /* ~"이 인간은 신뢰할 수 있는 자요." 그는 머리를 숙인다. "나는 당신이 내가 이 인간과 함께 여행한다는 것을 *알았으면* 하오. 그가 하는 말을 들어 주겠소?"~ */
  IF ~  GlobalLT("Vristigor","GLOBAL",2)
~ THEN REPLY #45363 /* ~"난 단지 몇 가지 질문을 하고 싶을 뿐이오..."~ */ EXTERN ~DHAILCII~ 28
  IF ~  Global("Vristigor","GLOBAL",2)
~ THEN REPLY #45364 /* ~"난 단지 몇 가지 질문을 하고 싶을 뿐이오..."~ */ EXTERN ~DHAILCII~ 44
END

IF ~~ THEN BEGIN 161 // from:
  SAY #45365 /* ~"당신의 질문은 당연한 것이오. 나는 당신이 우리가 하나의 길을 걷는다는 것을 *알았으면* 하오. 그가 하는 말을 들어 주겠소?"~ */
  IF ~~ THEN EXTERN ~DHAILCII~ 29
END

IF ~~ THEN BEGIN 162 // from:
  SAY #45366 /* ~"다른 이의 흉터에 대해 묻는 것은 경의의 표시요. 그 행위는 당신의 역사에 대한 경의를 나타내오."~ */
  IF ~~ THEN REPLY #45367 /* ~"나는 대부분의 흉터들을 어떻게 얻었는지 모르오."~ */ EXTERN ~DHAILCII~ 33
  IF ~~ THEN REPLY #45368 /* ~"그들은 내가 참가한 무수한 전투들에서 얻은 것으로, 이야기를 하자면 너무나도 길 것이오." ~ */ EXTERN ~DHAILCII~ 36
  IF ~~ THEN REPLY #45369 /* ~"그들은 그냥 흉터들이오. 그 밖에도 물어보고 싶은 것들이 있소..."~ */ EXTERN ~DHAILCII~ 34
END

IF ~~ THEN BEGIN 163 // from:
  SAY #45730 /* ~다콘을 입을 더욱 굳게 다물고 아무 말도 하지 않는다.~ */
  IF ~~ THEN REPLY #45731 /* ~"관두게, 모트. 난 여기서 질문을 좀 해야겠네."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45733 /* ~"그냥 떠납시다."~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #50168 /* ~"그는 자신이 다버스라고 말하고 있소."~ */
  IF ~~ THEN REPLY #50169 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 165
  IF ~~ THEN REPLY #50211 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 165 // from: 164.0 166.0
  SAY #50170 /* ~다콘은 고개를 끄덕인다.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50171 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50172 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50173 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50182 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50196 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50201 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50206 /* ~"그보고 우리에게 레이디 오브 페인에 대해 얘기해 달라고 부탁하시오." ~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50207 /* ~"그보고 우리에게 휄에 대해 얘기해 달라고 부탁하시오." ~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50210 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #50189 /* ~"그는 자신의 직무를 수행하고 있다고 말하고 있소."~ */
  IF ~~ THEN REPLY #50190 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 165
  IF ~~ THEN REPLY #50191 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 167 // from:
  SAY #50706 /* ~다콘은 조용히 있다가 마치 칼날처럼 날카롭게 말을 내뱉는다. "이 여자의 노예가 되는 것은 내가 원하는 바가 아니오."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #50707 /* ~"당신에겐 선택할 여지가 별로 없소, 당신은 내 노예니까. 그를 사겠소, 브리스치카?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50708 /* ~"안됐군, 다콘. 그를 사겠소, 브리스치카?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50709 /* ~"그럼 팔지 않으리다. 다른 질문이 있소, 브리스치카."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50710 /* ~"좋소... 그냥 갑시다, 다콘."~ */ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #50711 /* ~"나는 미처 생각하지 못했소..." 그의 칠흑처럼 검은 눈은 잠시 당신의 얼굴을 살펴본다, 그리고 그는 고개를 저으며 눈을 내리깐다. "내 성급한 말이 나를 너무나도 험한 길로 인도했소. 나의 길... 다콘의 길..." 그는 조용히 당신으로부터 돌아선다."~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 56
END

IF ~~ THEN BEGIN 169 // from:
  SAY #52538 /* ~"다른 길에 더 큰 고통이 기다리고 있다면."~ */
  IF ~~ THEN REPLY #52539 /* ~"래벌, 이 일은 매우 중요하오. 왜 내가 당신에게 그런 일을 부탁했는지 짐작이라도 가오?"~ */ EXTERN ~DRAVEL~ 109
END

IF ~~ THEN BEGIN 170 // from:
  SAY #52540 /* ~다콘은 아무 말도 하지 않는다, 그러나 그의 칼은 래벌의 말에 반응하여 모습을 바꾼다... 칼의 색은 더 어두워지고, 칼날은 더욱 날카로워져 *카락* 그 자체로부터 강렬한 악의가 느껴질 정도가 된다.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52541 /* ~"말조심하시오, 래벌..."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ EXTERN ~DRAVEL~ 33
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52542 /* ~"말조심하시오, 래벌..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ EXTERN ~DRAVEL~ 34
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52543 /* ~"말조심하시오, 래벌..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52544 /* ~"말조심하시오, 래벌..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52545 /* ~"말조심하시오, 래벌..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52546 /* ~"말조심하시오, 래벌..."~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 171 // from:
  SAY #52547 /* ~다콘의 칼은 그의 눈의 색과 같은 칠흑색으로 변한다... 그리고 놀랍게도 *카락*의 칼날은 조용히 갈라져 톱니 모양이 된다. ~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52548 /* ~"래벌... 그를 그냥 내버려두시오. 당신 질문에 답할 사람은 그들이 아니라 나요."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ EXTERN ~DRAVEL~ 63
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52549 /* ~"래벌... 그를 그냥 내버려두시오. 당신 질문에 답할 사람은 그들이 아니라 나요."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52550 /* ~"래벌... 그를 그냥 내버려두시오. 당신 질문에 답할 사람은 그들이 아니라 나요."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52551 /* ~"래벌... 그를 그냥 내버려두시오. 당신 질문에 답할 사람은 그들이 아니라 나요."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52552 /* ~"래벌... 그를 그냥 내버려두시오. 당신 질문에 답할 사람은 그들이 아니라 나요."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52553 /* ~"래벌... 그를 그냥 내버려두시오. 당신 질문에 답할 사람은 그들이 아니라 나요."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 172 // from:
  SAY #53990 /* ~"나는 그대와 운명을 같이하리다."~ */
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53991 /* ~"모트? 준비 됐나?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53992 /* ~"모트? 준비 됐나?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53993 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53994 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53995 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #53997 /* ~다콘은 비탄에 잠긴 듯 하다. 그의 신체 모든 부위가 당신 명령을 거부하고 있으나, 그럼에도 그는 고개를 끄덕인다. "나는 그대와 운명을 같이하리다..." 그의 얼굴은 절망감으로 가득 차 있다. "나는 단지 죽기 위해 당신을 따를 뿐이오."~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53999 /* ~"내가 요구하는 것은 그것뿐이오... 당신 소원은 곧 이루어질 것이오. 모트?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("DMorte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54000 /* ~"내가 요구하는 것은 그것뿐이오... 당신 소원은 곧 이루어질 것이오. 모트?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54001 /* ~"당신 소원은 곧 이루어질 것이오. 그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54002 /* ~"당신 소원은 곧 이루어질 것이오. 그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다..."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54003 /* ~"당신 소원은 곧 이루어질 것이오. 그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #54004 /* ~다콘의 칼이 명멸하며 그 날카로움을 잃는다. 그 변화는 너무나도 미묘해 눈치채지 못할 뻔했다. 당신이 그를 흘긋 보자, 그는 전투에 대비하는 것처럼 양손을 허리 있는 데까지 내린다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 540
END

IF ~~ THEN BEGIN 175 // from:
  SAY #54007 /* ~"내가 당신의 길을 여러 번 걸었다는 사실을 *알도록* 하시오." 다콘은 말 한 마디 한 마디를 일일이 재듯이 천천히 얘기를 한다. 그리고 그의 칼은 마치 다콘의 정신이 표류하고 있는 것처럼 흐릿한 회색이 되었다. "나는 당신의 길의 일부를 *알고* 있소. 다섯이 요새를 향해 걸어갔으나, 각기 다른 죽음을 죽었소."~ */
  IF ~~ THEN REPLY #54008 /* ~"하지만... 그들은 어떤 사람들이었소? 그들은 어떻게 죽었소?"~ */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #54009 /* ~"나는 믿음의 죽음을 죽었소. 해골은 용기의 죽음을 죽었소. 여자는 비애의 죽음을 죽었소. 궁수는 최종적이고 가장 편안한 죽음인 육신의 죽음을 죽었소. 당신... 당신은 기억의 죽음을 죽었소."~ */
  IF ~~ THEN REPLY #54010 /* ~"하지만... 이 사람들은 누구였소?~ */ EXTERN ~DMORTE~ 566
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54011 /* ~"그는 표적을 보지도 않고 그것을 *알* 수 있는 자였소. 많은 그림자들이 빗발치듯 쏟아지는 그의 화살 앞에 쓰러졌소."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 567
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54012 /* ~"그 곳에는 암흑이 있었소, 그리고 모든 그림자는 슈라'크트'로였소." 다콘은 속삭이듯 말한다, 그리고 그의 흐릿한 눈은 당신을 지나서 있는 뭔가를 바라보고 있는 듯하다. "그들은 고통받는 존재들이오. 그들은 당신 영혼의 상처를 *알고* 있소. 그들은 그것을 통해 당신을 공격할 것이오."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 568
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54013 /* ~"그림자들은 *고통받고* 있소. 그들은 고통에 대해 아오. 그들은 당신의 가슴에 상처를 입힌 것을 가지고 당신을 공격할 줄을 *아오.* 그들과 대적할 때는 당신을 이미 한 번 죽인 것과 대적하고 있다는 사실을 *알도록* 아시오."~ */
  IF ~~ THEN REPLY #54014 /* ~"다콘... 모트, 당신, 그리고 나는 살아남았소. 궁수와 데이오나라는 어떻게 되었소?"~ */ GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #54015 /* ~"궁수는 육신의 죽음을 죽었소. 여자는 영혼의 죽음을 죽었소. 그녀를 구하는 것이 당신의 뜻이 아니었기 때문에 나는 그녀를 구할 수가 없었소. 그녀의 무덤에 눈물은 말라 있었소. 그녀가 죽은 것을 *알고* 통곡할 사람은 아무도 없었소."~ */
  IF ~~ THEN REPLY #54016 /* ~"하지만... 왜 나는 그녀를 구하는 것을 원하지 않았소?"~ */ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #54018 /* ~"오직 당신만이 당신의 의중을 *알고* 있었소."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54019 /* ~"좋소. 보시오, 당신들 두 사람, 나는 이 요새에 대해 당신들이 내게 말해줄 수 있는 것들을 모두 알아야만 하겠소."~ */ EXTERN ~DMORTE~ 569
  IF ~  !InParty("Morte")
~ THEN REPLY #54020 /* ~"좋소. 보시오, 당신들 두 사람, 나는 이 요새에 대해 당신들이 내게 말해줄 수 있는 것들을 모두 알아야만 하겠소."~ */ EXTERN ~DMORTE~ 570
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54021 /* ~"그 곳에는 아무도 살지 않소. 그 곳의 벽은 암흑이오."~ */
  IF ~~ THEN REPLY #54022 /* ~"좋소 - 당신이 아는 것들 중에 내가 전이문으로 들어가기 전에 미리 알아두어야 한다고 생각되는 건 없소?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2)
~ EXTERN ~DMORTE~ 553
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54084 /* ~다콘은 먼 곳을 바라보며 조용히 말한다. "그것은 손으로 물을 뜨려는 것과 같소."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 519
END

IF ~~ THEN BEGIN 184 // from:
  SAY #54085 /* ~다콘은 당신에게 조용히 말한다. "해골들의 기둥은 자신들이 거짓말이 타인을 죽음에 빠뜨릴 것이라는 것을 *알면서도* 거짓말을 한 자들의 머리들로 구성된 기둥이오. 많은 것을 알고 있기 때문에 상당한 수의 질문에 대답해줄 수는 있으나, 그 대가로 엄청난 보수를 요구하오. 그것에게 그런 질문은 하지 않는 게 좋소."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 185 // from:
  SAY #54773 /* ~"사슬이 그를 구속하고 있는 것이 아니오. 믿음이 그를 구속하고 있소."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"디바, 당신에게 질문할 것들이 있소..."~ */ EXTERN ~DTRIAS~ 8
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"디바, 당신에게 질문할 것들이 있소..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 186 // from:
  SAY #57128 /* ~"그는 기스저라이의 진정한 배신자요. 그는 우리 민족을 저주했소." 다콘은 칼을 뽑는다. "그는 그것만으로도 죽어 마땅하오."~ */
  IF ~~ THEN REPLY #57129 /* ~"칼을 치우시오, 다콘."~ */ EXTERN ~DBURGHER~ 2
  IF ~~ THEN REPLY #57130 /* ~"그럼 그를 죽이시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 3
END

IF ~~ THEN BEGIN 187 // from:
  SAY #57131 /* ~"그는 신뢰할 수 없는 자요. 그가 마차 아래서 죽도록 내버려 두시오."~ */
  IF ~~ THEN REPLY #57132 /* ~"그러지 마시오, 다콘, 우린 그를 빼낼 거요."~ */ EXTERN ~DBURGHER~ 5
  IF ~~ THEN REPLY #57133 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #57134 /* ~"그는 기스저라이의 진정한 배신자요. 그는 우리 민족을 저주했소." 다콘은 칼을 뽑는다. "그는 그것만으로도 죽어 마땅하오."~ */
  IF ~~ THEN REPLY #57135 /* ~"칼을 치우시오, 다콘."~ */ EXTERN ~DBURGHER~ 13
  IF ~~ THEN REPLY #57136 /* ~"그럼 그를 죽이시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 14
END

IF ~~ THEN BEGIN 189 // from:
  SAY #57137 /* ~"그는 신뢰할 수 없는 자요. 그가 마차 아래서 죽도록 내버려 두시오."~ */
  IF ~~ THEN REPLY #57138 /* ~"그러지 마시오, 다콘, 우린 그를 빼낼 거요."~ */ EXTERN ~DBURGHER~ 16
  IF ~~ THEN REPLY #57139 /* ~"좋소. 갑시다."~ */ EXTERN ~DBURGHER~ 17
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",14)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 190 // from:
  SAY #59167 /* ~그는 당신을 향해 고개를 돌린다. 그의 눈은 광택이 있는 석탄과도 같다. 그의 칼은 빛나고 있으며, 그 금속은 연못 위에 떨어진 기름의 막처럼 움직인다. 다콘이 입을 열자 그의 목소리는 침착하며 강건하다...이전에 들은 것과 같은 껄끄러움은 찾아볼 수가 없다. "무엇을 원하시오?"~ [DAK205] */
  IF ~~ THEN REPLY #59168 /* ~"내겐 *알고* 싶은 것들이 있소, 다콘."~ */ GOTO 193
  IF ~~ THEN REPLY #59169 /* ~"지금은 아무런 용무도 없소, 다콘. 갑시다."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
GlobalLT("BD_DAKKON_MORALE","GLOBAL",15)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 191 // from:
  SAY #59170 /* ~그는 당신을 향해 고개를 돌린다. 그의 눈은 광택이 있는 석탄과도 같다. 당신이 그에게 인사를 하자 그의 칼은 잠시 그의 눈빛을 그대로 반영한다, 그리고 그는 고개를 끄덕인다. "무엇을 원하시오?"~ [DAK205] */
  IF ~~ THEN REPLY #59171 /* ~"내겐 *알고* 싶은 것들이 있소, 다콘."~ */ GOTO 193
  IF ~~ THEN REPLY #59172 /* ~"지금은 아무런 용무도 없소, 다콘. 갑시다."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 192 // from:
  SAY #59173 /* ~다콘은 천천히 고개를 돌린다, 그리고 그의 두 눈은 마치 두 개의 광택 없는 돌과도 같다. 그의 얼굴은 잿빛이며, 그의 칼의 색은 마른 피의 색이다. 그가 입을 열자, 왠지 그가 몹시 늙고 낙담한 것처럼 느껴진다... "무엇을 원하시오?"~ [DAK205] */
  IF ~~ THEN REPLY #59174 /* ~"내겐 *알고* 싶은 것들이 있소, 다콘."~ */ GOTO 193
  IF ~~ THEN REPLY #59175 /* ~"지금은 아무런 용무도 없소, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 193 // from: 190.0 191.0 192.0 194.1 195.1 196.1 197.2 198.2 199.2 200.1 201.2 202.1 203.7 204.3 205.2 206.1 207.2 208.0 209.1 210.1 211.1 212.1 213.1 214.1 215.1 216.3 217.5 218.1 219.1 220.1 221.1 222.2 223.1 224.2 225.1 226.1 227.1 228.1 230.1 231.4 232.5 233.1 234.1 235.0 236.3 237.3 238.3 239.3 240.3 241.3 242.3 243.3 244.2 245.2 246.2 247.2 248.2 250.1 251.4 252.3 253.2 254.3 255.4 256.2 258.1 259.1 260.1 261.1 262.1 268.2 269.0 270.6 271.3 272.3 273.4 274.3 275.3 278.3 279.3 281.2 282.3 285.2 287.0 289.0 290.1 291.2 292.1 293.0 294.14 295.0 296.0 298.0 318.7 319.2 320.1 322.0 323.2 324.1 328.2 329.5 330.3 331.3 332.5 333.6 334.7 335.7 337.6 338.3 339.4 340.3 341.3 343.1 351.1 352.1 353.1 356.1 363.0
  SAY #59176 /* ~"부탁이 뭔지 말하시오."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59177 /* ~"당신의 생김새는... 내게는 낯익지 않소. 당신은 어째 존재요?"~ */ GOTO 194
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59178 /* ~"기스저라이에 대해 질문하고 싶은 것들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59179 /* ~"우리들의 여행에 대해 당신에게 묻고 싶소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #59180 /* ~"당신의 가르침에 대해 이야기를 나눌 수 있겠소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68257 /* ~"당신의 가르침에 대해 얘기할 수 있겠소?"~ */ GOTO 366
  IF ~  GlobalGT("Ravel_Dakkon","GLOBAL",0)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59181 /* ~"다콘... 래벌은 당신을 노예라고 불렀소. 그녀가 한 말의 의미는 무엇이오?"~ */ GOTO 352
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #59182 /* ~"다콘, 슈라'크트'로란 무엇이오?"~ */ GOTO 260
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59183 /* ~"다콘, 내가 슈라'크트'로에서 당신을 어떻게 구했는지 다시 얘기해주시오."~ */ GOTO 223
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59184 /* ~"*내*가 당신에게 저서몬의 원을 주었다고 말했소, 다콘?"~ */ GOTO 226
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59185 /* ~"다른 '나'에 대해 말해주시오... 당신이 아는 내 전신에 대해. 그는 어떤 인물이었소?"~ */ GOTO 210
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59186 /* ~"당신은 어떻게 해서 내게 빛을 지게 되었소, 다콘?"~ */ GOTO 217
  IF ~~ THEN REPLY #59187 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #59188 /* ~"기스저라이."~ */
  IF ~~ THEN REPLY #59189 /* ~"기스저라이?"~ */ GOTO 195
  IF ~~ THEN REPLY #59190 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59191 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 195 // from: 194.0 255.0
  SAY #59192 /* ~"기스저라이는 '사람들' 중 하나요."~ */
  IF ~~ THEN REPLY #59193 /* ~"사람들 중 하나?"~ */ GOTO 196
  IF ~~ THEN REPLY #59194 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59195 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #59196 /* ~"기스저라이."~ */
  IF ~~ THEN REPLY #59197 /* ~"그래, 하지만 기스저라이란 정확히 뭐요?"~ */ GOTO 197
  IF ~~ THEN REPLY #59198 /* ~"그럼... 좋소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59199 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #59200 /* ~다콘을 잠시 침묵을 지킨 후 다시 얘기를 한다. "그대가 우리 역사에 대해 *알* 필요는 없소. 내가 그대에게 우리 민족의 역사의 극히 일부분에 대해 말하기도 전에 우리는 시간의 칼날 아래서 피를 흘리며 죽을 것이오."~ */
  IF ~~ THEN REPLY #59201 /* ~"나는 당신들의 역사에 대해 알고자 하는 것이 아니오... 하지만 당신 민족의 현재에 대해 알고 싶소."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 198
  IF ~~ THEN REPLY #59202 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59203 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59204 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0 231.0 255.1
  SAY #59205 /* ~다콘은 잠시 침묵한다. "이것을 *알고* 답으로 받아들이시오. 우리는 항상 변화하는 차원인 림보를 고향으로 하는 사람들이오." 다콘은 기민한 동작으로 등에 맨 칼을 뽑아서 치켜든다.~ */
  IF ~~ THEN REPLY #59206 /* ~기다리며 어떤 일이 일어나는지 지켜본다. ~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 199
  IF ~~ THEN REPLY #59207 /* ~"관두시오. 기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59208 /* ~"실은 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59209 /* ~"좋소, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #59210 /* ~"그 곳에서 우리는 정신력으로 림보의 물질에 형태를 부여하오. 우리는 생각으로 도시를 만들어 내오." 당신이 보니 칼의 중심으로부터 금속이 물결치듯 움직이기 시작한다. 물결의 높낮이는 다콘의 목소리의 억양에 비례한다. "우리는 혼돈 속에서 살며 우리는 오직 *앎*을 통해 자신을 보전할 수 있소. 우리는 기스저라이요."~ */
  IF ~~ THEN REPLY #59211 /* ~"당신이 지닌 그 칼은 대체 뭐요...? 그것은 당신 목소리에 반응하여 움직이고 모습을 바꾸었소..."~ */ GOTO 251
  IF ~~ THEN REPLY #59212 /* ~"관두시오. 기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59213 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59214 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 232.0
  SAY #59215 /* ~"그것은 '시길'이라는 이름으로 불리고 있소. '사람들' 사이에서는 이 도시는 자신을 *알지* 못하는 도시라고 불리고 있소."~ */
  IF ~~ THEN REPLY #59216 /* ~"자신을 모른다? 그게 무슨 뜻이오?~ */ GOTO 201
  IF ~~ THEN REPLY #59217 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59218 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #59219 /* ~"이 도시는 존재하나 자신을 *알지* 못하오. 자신을 *알지* 못하기 때문에 그 존재는 잘못된 것이오."~ */
  IF ~~ THEN REPLY #59220 /* ~"그것은 어떻게 잘못되었소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59221 /* ~"당신은 마치 이 도시가 살아있기라도 한 것처럼 말을 하는구려."~ */ GOTO 202
  IF ~~ THEN REPLY #59222 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59223 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.1 203.6
  SAY #59224 /* ~"그것은 나나 내가 자신을 *아는* 것과 같은 방식으로 자신에 대해 *알고* 있지는 않을 것이오, 하지만 그것은 살아 있소. 그것은 자라고 변화하며, 그 안에 있는 모든 자의 정신에 영향을 마치오."~ */
  IF ~~ THEN REPLY #59225 /* ~"왜 당신은 이 도시가 자신을 모른다고 한 것이오?"~ */ GOTO 203
  IF ~~ THEN REPLY #59226 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59227 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 201.0 202.0 236.1 237.1 238.1 239.1 240.1 241.1 242.1 243.1 244.0
  SAY #59228 /* ~"이 도시의 존재 그 자체가 모순이오. 그것은 다른 차원들로부터 격리되어 있소, 그럼에도 그것은 모든 곳에 동시에 존재하려고 하고 있소. 그것의 벽들은 문이오, 하지만 그것은 이러한 문들에 자물쇠를 채워 두고 있소. 그러한 존재 방식은 그것이 자신이 *알지* 못한다는 것을 말해주고 있소. 그것은 자신을 *알지* 못하기 때문에 잘못된 것이오."~ */
  IF ~~ THEN REPLY #59229 /* ~"당신이 이 도시가 동시에 모든 곳이라고 한 말의 뜻은 무엇이오?"~ */ GOTO 236
  IF ~~ THEN REPLY #59230 /* ~"그 벽들은 문들이다?"~ */ GOTO 236
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59231 /* ~진실: "만약 이 도시가 잘못되지 않았다면? 사물이 그 자신을 알기 위하여 질서정연하며 목적을 지닐 필요는 없소. 만약 이러한 모순들이 당신이 인식할 수 없는 힘이라면 어떻게 하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59232 /* ~진실: "만약 이 도시가 잘못되지 않았다면? 사물이 그 자신을 알기 위하여 질서정연하며 목적을 지닐 필요는 없소. 만약 이러한 모순들이 당신이 인식할 수 없는 힘이라면 어떻게 하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59233 /* ~진실: "만약 이 도시는 잘못되지 않았으며 단지 당신이 그것이 안고 있는 모순들의 존재 이유를 모를 뿐이라면? 모든 것에는 법칙이 있소. 당신이 인지할 수 없는 근원적인 패턴이 있는지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59234 /* ~진실: "만약 이 도시는 잘못되지 않았으며 단지 당신이 그것이 안고 있는 모순들의 존재 이유를 모를 뿐이라면? 모든 것에는 법칙이 있소. 당신이 인지할 수 없는 근원적인 패턴이 있는지도 모르오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~~ THEN REPLY #59235 /* ~"당신은 마치 이 도시가 살아있기라도 한 것처럼 말을 하는구려."~ */ GOTO 202
  IF ~~ THEN REPLY #59236 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59237 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.2 203.3 203.4 203.5
  SAY #59238 /* ~"그대 질문에 대해 나도 질문을 하리다: 만약 이 도시가 잘못되었고, 그대가 자신의 주변에서 그 모순들을 보고 느낄 수 있다면?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #59239 /* ~진실: "당신의 질문에 대해 반문하겠소. 당신은 이 도시의 존재가 잘못되었다고 주장하오. 당신은 이것을 그냥 받아들였소, 보다 위대한 뭔가가 존재할지도 모른다는 가능성을 탐구할 생각은 하지 않고서. 그것은 당신이 잘못되었다는 것을 말해주고 있소... 당신은 지식을 추구하기보다는 손쉬운 답만을 얻고자 하고 있소."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #59240 /* ~진실: "당신의 질문에 대해 반문하겠소. 당신은 이 도시의 존재가 잘못되었다고 주장하오. 당신은 이것을 그냥 받아들였소, 보다 위대한 뭔가가 존재할지도 모른다는 가능성을 탐구할 생각은 하지 않고서. 그것은 당신이 잘못되었다는 것을 말해주고 있소... 당신은 지식을 추구하기보다는 손쉬운 답만을 얻고자 하고 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #59241 /* ~"당신이 이 도시가 동시에 모든 곳이라고 한 말의 뜻은 무엇이오?"~ */ GOTO 236
  IF ~~ THEN REPLY #59242 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59243 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0 204.1
  SAY #59244 /* ~다콘은 침묵한다. "우리가 한 질문들에 대한 답은 없소. 그러나 그럼에도 이 도시는 존재하오. 그뿐이오."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #59245 /* ~"하지만 나는 우리는 우리가 하는 질문과 하지 않는 질문에 의해 자신을 안다는 입장을 견지하오. 만약 우리가 질문하는 것을 멈추고 자신이 인식할 수 있는 것만을 받아들인다면..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 206
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #59246 /* ~"하지만 나는 우리는 우리가 하는 질문과 하지 않는 질문에 의해 자신을 안다는 입장을 견지하오. 만약 우리가 질문하는 것을 멈추고 자신이 인식할 수 있는 것만을 받아들인다면..."~ */ GOTO 206
  IF ~~ THEN REPLY #59247 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59248 /* ~"그럼 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 205.0 205.1
  SAY #59249 /* ~"그렇다면 우리는 더 이상 자신을 *알지* 못하게 될 것이오." 다콘의 목소리가 약간 변했다. 그것은 한층 더 무거워진 듯하다. "전에 누군가 그런 말들을 한 적이 있소. 나는 그 말들을 들었으며, 또 그 말들을 *알고* 있었소."~ */
  IF ~~ THEN REPLY #59250 /* ~"그 말을 어디서 들었소?"~ */ GOTO 207
  IF ~~ THEN REPLY #59251 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59252 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #59253 /* ~"그 말들은 나의 것이오. 한때 나는 그 말들을 알고 또 이해하고 있었소. 하지만 나는 그대가 말할 때까지 그것들에 대해서 잊고 있었소." 다콘은 시선을 움직이며 당신을 살펴본다. 그의 칼을 빛을 내는 것을 멈추고 모든 색을 잃기 시작해 결국에는 투명하게 된다. 잠시 동안 정적이 흐른 후 다콘은 당신을 쳐다본다. "나는 그대와 함께 여행을 하고자 하오."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59254 /* ~"다콘, 어떻게 해서 내가 당신의 말들을 아는 것이오?"~ */ GOTO 208
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59255 /* ~"다콘, 내가 당신과 여행을 했을 때 당신으로부터 그 말들을 들은 것이오?"~ */ GOTO 209
  IF ~~ THEN REPLY #59256 /* ~"알겠소... 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59257 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #59258 /* ~"내가 말을 했으나, 그 말들은 내 것이 아니오. 다른 사람들도 그것들을 *알* 수가 있는데, 이는 그 *앎*이 만물 안에 존재하고 있기 때문이오. 인간들은 그것을 *지혜*라 부르오."~ */
  IF ~~ THEN REPLY #59259 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59260 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #59261 /* ~"우리는 그러한 말들의 뜻에 대해 여러 차례 토론했소. 세월의 무게가 지금처럼 무겁지 않았을 때. 나는 이 길을 걸으면서 많은 것을 잊었소."~ */
  IF ~~ THEN REPLY #59262 /* ~"다콘, 나는... 내 전신은 어떤 인물이었소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 210
  IF ~~ THEN REPLY #59263 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59264 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 193.9 209.0
  SAY #59265 /* ~다콘의 시선은 당신을 훑어본다, 그리고 그는 침묵한다.~ */
  IF ~~ THEN REPLY #59266 /* ~"다콘?"~ */ JOURNAL #59269 /* ~다콘은 그가 내 전신들 중 하나를 알고 있다고 했다... 그리고 그에 대해서는 호의적으로 얘기할 만한 것이 없는 듯했다. 그는 그가 능력은 있었으나, 자기중심적이며 신의가 없었다고 했다. 나는 내 다른 화신들이 다원 우주 전역에 걸쳐 대체 얼마나 많은 피해를 입혔는지 궁금해지기 시작했다. ~ */ GOTO 211
  IF ~~ THEN REPLY #59267 /* ~"그럼 관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59268 /* ~"그것에 대해서는 이야기하지 않는 편이 좋을 듯하오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59270 /* ~"그가 다른 사람이었다는 것을 *알도록* 하시오. 그 차이가 외면적으로 드러나는 것이 아니었다는 것을 *알도록* 하시오. 진정한 차이는 그가 생각하는 방식과 그 생각을 실현하는 방식에 있었음을 *알도록* 하시오. 그의 의지는 곧 현실이 되었소. 그가 타인을 보면서도 그들을 보지 않았다는 사실을 *알도록* 하시오. 그는 자신이 그들을 어떻게 이용할 수 있는가만 *알고* 있었소. 그의 마음은 음흉하고 냉혹했으나, 그는 개의치 않았소."~ */
  IF ~~ THEN REPLY #59271 /* ~"그것의 마수가 당신에게도 뻗친 적이 있소, 다콘? 그가 당신을 배신했소?"~ */ GOTO 212
  IF ~~ THEN REPLY #59272 /* ~"알겠소... 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59273 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #59274 /* ~다콘의 칼은 색을 잃어 단조롭고 무딘 흑색으로 변한다, 그리고 당신이 지켜보고 있는 가운데 칼날로부터 이빨과 흡사한 톱니들이 자라 나온다. 그는 이를 악문 채로 얘기를 한다, "나는 당신이 이 일에 대해 아는 것을 원하지 않소~ */
  IF ~~ THEN REPLY #59275 /* ~"내게 *말해주시오*, 다콘. 그가 당신을 배신한 적이 있소?"~ */ GOTO 213
  IF ~~ THEN REPLY #59276 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59277 /* ~"그럼 그 일에 대해선 더 이상 이야기하지 않도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #59278 /* ~"많은 배신들이 있었다는 것을 *알도록* 하시오. 그러나 내가 당한 배신은 다른 사람이 아닌 내 자신의 손에 의한 것이었소."~ */
  IF ~~ THEN REPLY #59279 /* ~"내게 *말해주시오*, 다콘. 어떤 배신이었소?"~ */ GOTO 214
  IF ~~ THEN REPLY #59280 /* ~"관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59281 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #59282 /* ~"나는 그에게 내 언질을 주었소. 나는 그에게 내 자신을 넘겨주었소."~ */
  IF ~~ THEN REPLY #59283 /* ~"무슨 얘기를 하는 거요?"~ */ JOURNAL #59286 /* ~다콘은 내게 그의 예속의 본질에 대해 말해주었다... 내가 그의 생명을 구해주었을 때 그는 내가 죽을 때까지 나를 섬기겠다고 약속했다. 하지만 그는 내가 불사신이란 사실을 알지 못했다. 그 약속을 함으로서 그는 그의 여생을 나에게 바치게 된 셈이다.~ */ GOTO 215
  IF ~~ THEN REPLY #59284 /* ~"관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59285 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 214.0 278.0 356.0
  SAY #59287 /* ~"'사람들'은 자신들이 사슬 또는 행위에 의해 다른 자의 노예가 되는 것을 결코 용납하지 않소. 만약 그러한 상황에 처하게 되면 우리는 스스로를 해방하기 위해 행동하오, 설령 그 과정에서 일시적으로 또 다른 형태의 속박을 당할지라도 말이오. 당신은 내게 큰 은혜를 입혔소. 당신은 그 행위를 통해 나를 노예로 만들었소. 나는 나 자신을 해방하기 위해 행동했소. 내가 당신이 죽을 때까지 당신의 이름 아래 *행동*하기로 당신에게 언질을 주고 내 자신을 맡겼다는 사실을 *알도록* 하시오." ~ */
  IF ~~ THEN REPLY #59288 /* ~"하지만... 난 죽을 수가 없소."~ */ GOTO 216
  IF ~~ THEN REPLY #59289 /* ~"알겠소... 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59290 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59291 /* ~"이 사람은 그 사실을 *알지* 못했소. 나는 그에게 내 *언질*을 주었소, 그에게 내 *자신*을 맡겼소. 이제 내게 목숨 말고는 넘겨 줄 것이 없다는 사실을 *알도록* 하시오. 이제 내가 단지 죽기 위해 당신을 따른다는 사실을 *알도록* 하시오." ~ */
  IF ~~ THEN REPLY #59292 /* ~"내가 한 어떤 일이 당신을... 예속시켰소?"~ */ GOTO 217
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59293 /* ~"다콘, 그럴 필요는 없소... 나는 당신을 해방시킬 수 있소. 나는 더 이상 당신이 노예로 있는 것을 원하지 않소. 빛은 청산된 것으로 생각하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59294 /* ~"다콘, 그럴 필요는 없소... 나는 당신을 해방시킬 수 있소. 나는 더 이상 당신이 노예로 있는 것을 원하지 않소. 빛은 청산된 것으로 생각하시오."~ */ GOTO 233
  IF ~~ THEN REPLY #59295 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59296 /* ~"그래 이 다른 내가 당신으로부터 그가 죽을 때까지 봉사하겠다는 약속을 받았고, 당신은 그가 *불사신*이란 걸 몰랐소? 멋지군. 갑시다... 노예."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59297 /* ~"그래 이 다른 내가 당신으로부터 그가 죽을 때까지 봉사하겠다는 약속을 받았고, 당신은 그가 *불사신*이란 걸 몰랐소? 멋지군. 갑시다... 노예."~ */ EXIT
  IF ~~ THEN REPLY #59298 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 193.10 216.0
  SAY #59299 /* ~"당신은 이 사람의 목숨을 구했소. 그 대신 당신 목숨은 내 목숨이 되었소."~ */
  IF ~~ THEN REPLY #59300 /* ~"내가 어떻게 당신 목숨을 구했소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 218
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59301 /* ~"다콘, 그럴 필요는 없소... 나는 당신을 해방시킬 수 있소. 나는 더 이상 당신이 노예로 있는 것을 원하지 않소. 빛은 청산된 것으로 생각하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59302 /* ~"다콘, 그럴 필요는 없소... 나는 당신을 해방시킬 수 있소. 나는 더 이상 당신이 노예로 있는 것을 원하지 않소. 빛은 청산된 것으로 생각하시오."~ */ GOTO 233
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59303 /* ~"그래 이 다른 내가 당신으로부터 그가 죽을 때까지 봉사하겠다는 약속을 받았고, 당신은 그가 *불사신*이란 걸 몰랐소? 멋지군. 갑시다... 노예."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59304 /* ~"그래 이 다른 내가 당신으로부터 그가 죽을 때까지 봉사하겠다는 약속을 받았고, 당신은 그가 *불사신*이란 걸 몰랐소? 멋지군. 갑시다... 노예."~ */ EXIT
  IF ~~ THEN REPLY #59305 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59306 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0 262.0 331.0
  SAY #59307 /* ~"소용돌이치는 차원 림보에서, '사람들'은 생각의 힘으로 혼돈으로부터 도시를 만들어 내오. 그 곳에서는 분열된 정신이 설 자리가 사실을 *알도록* 하시오." 다콘은 칼을 뽑아서 자신의 앞에서 치켜 든다. 그가 칼을 응시하자, 칼은 마치 종이처럼 얇아질 때까지 계속 날카로워진다.~ */
  IF ~~ THEN REPLY #59308 /* ~"계속하시오..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 219
  IF ~~ THEN REPLY #59309 /* ~"그 건에 대해서 충분히 들은 것 같소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59310 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #59311 /* ~"분열된 정신은 집중되지 않은 정신이오. 분열된 정신은 벽에 금이 가게 하고 돌을 약화시킬 수 있소." 다콘이 말을 하는 동안 칼날이 약간 부식하여. 금속이 칼날을 따라 안개처럼 녹는다. "여러 명의 분열된 정신은 도시조차 파멸시킬 수 있소."~ */
  IF ~~ THEN REPLY #59312 /* ~"이해하오. 계속하시오..."~ */ GOTO 220
  IF ~~ THEN REPLY #59313 /* ~"그 얘기는 그만 됐소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59315 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #59316 /* ~"나는 오래도록 저서몬의 말씀을 *알고* 있었소. 그리고 많은 이들이 내 목소리를 통하여 저서몬의 말씀을 *알게* 되었소. *저스*는 자신이 속한 공동체를 물리적인 것과 정신적인 것의 구별 없이 모든 위협으로부터 보호하오. 그들은 혼돈 속에서의 이정표와 같소. 그리고 나는 저서몬의 말씀을 *알지* 못하면서 저서몬의 말씀을 입에 담게 되었소. 나는 내 자신을 더 이상 *알지* 못하게 되었소."~ */
  IF ~~ THEN REPLY #59318 /* ~"그래... 당신은 그 말들을 의심했소?"~ */ GOTO 221
  IF ~~ THEN REPLY #59319 /* ~"그 얘기는 그만 됐소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59320 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59322 /* ~"아니오." 다콘의 목소리에는 날이 서 있다, 그리고 이에 반응하듯 그의 칼도 *날카로워진다.* "나는 말씀을 *알고* 있었소. 하지만 나는 다른 이들이 저서몬의 말씀을 저서몬께서 의도하신 것과는 다르게 알고 있지는 않을까 의심하게 되었소. 그리하여 내 정신은 나뉘어졌소. 내 정신이 나뉘어져 둘이 되자, 나를 이정표로서 따르던 사람들의 정신 역시 나뉘어졌소. 수십, 수백, 수천, 수만의 기스저라이들이... 의심을 하게 되었소. 슈라'크트'로는 그 날 최후를 맞이하였소."~ */
  IF ~~ THEN REPLY #59324 /* ~"당신을 따르던 이들도 그 말들을 의심하게 되었고 결과로서 도시는 약화되었던 거군."~ */ GOTO 222
  IF ~~ THEN REPLY #59325 /* ~"그 얘기는 그만 됐소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59326 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #59330 /* ~"저서몬의 적들이 왔소. 그들의 칼에 힘을 실어 준 건 저서몬의 말씀과 '사람들'에 대한 증오였다는 사실을 *알도록* 하시오. 그들이 약해진 도시를 감지했고, 전쟁을 일으켰다는 사실을 *알도록* 하시오. 많은 기스저라이들의 혼돈의 바다에 빠지고 적들의 칼 아래 쓰러졌소." 칼의 표면에 마치 불에 데어 생기는 수포를 연상시키는 금속 구슬들이 나타난다. "이 일이 오래 전에 일어났다는 사실을 *알도록* 하시오."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59332 /* ~"당신에게 대체 어떤 일이 일어났던 거요?"~ */ GOTO 268
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59337 /* ~"당신에게 대체 어떤 일이 일어났던 거요?"~ */ GOTO 223
  IF ~~ THEN REPLY #59342 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59344 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 193.7 222.1
  SAY #59347 /* ~"내가 슈라'크트'로의 벽에서 추락했을 때, 내가 자신을 상실했다는 사실을 *알도록* 하시오. 내 칼은 안개와 같고, 내 정신은 나뉘어 있었소. 나는 림보의 바다에서 표류하며 죽기를 원했소. 나는 여러 날에 걸쳐 죽어갔으며, 내 정신은 여전히 나뉘어 있었소. 마침내 죽음이 날 찾아왔을 때, 그는 당신의 모습을 하고 당신 목소리로 말했소."~ */
  IF ~~ THEN REPLY #59348 /* ~"내?"~ */ GOTO 224
  IF ~~ THEN REPLY #59349 /* ~"그 얘기는 그만 됐소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59351 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59353 /* ~"그는 내게 당신 이야기에 귀를 기울이라고 했소."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 344
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59355 /* ~"내가 뭐라고 말했었소?"~ */ GOTO 227
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59357 /* ~"관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59359 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 344.1 345.1 346.1 347.1 348.1 349.2 350.0
  SAY #59360 /* ~다콘은 아무 말도 하지 않는다. "나는 당신 이야기에 귀를 기울였소. 내 정신 속의 혼돈은 가라앉았고, 나는 다시 자신을 *알게* 되었소."~ */
  IF ~~ THEN REPLY #59361 /* ~"그래 당신은 나로부터 원을 얻은 거요?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~알고 보니  저서몬의 깨어지지 않은 원을 다콘에게 준 사람은 바로 *나*였다.~ */ GOTO 226
  IF ~~ THEN REPLY #59362 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59363 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 193.8 225.0 227.0
  SAY #59364 /* ~"그렇소. 그 말을 *앎*으로서 나는 내 자신을 *알게* 되었소."~ */
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59365 /* ~"하지만 정말로 그것이 당신의 목숨을 구했소., 다콘? 아니면 당신이 원을 연구한 후 당신을 한층 혼란스럽게 만들었을 뿐이오?~ */ GOTO 228
  IF ~~ THEN REPLY #59366 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59367 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 224.1
  SAY #59368 /* ~"다콘, 혼돈의 바다에 빠진 슈라'크트'로의 *저스*여, *카락* 칼의 마지막 사용자여, 내가 당신에게 혼돈이 아닌 깨어지지 않은 원에 새겨진 저서몬의 말씀을 가지고 왔다는 사실을 *알도록* 하시오. 그것이 진실이며, 당신의 정신이 더 이상 나뉘어 있을 필요가 없다는 사실을 *알도록* 하시오. 당신은 이 돌을 받고 당신 자신을 다시 알기만 하면 되오."~ */
  IF ~~ THEN REPLY #59369 /* ~"그래 당신은 *나*로부터 원을 얻은 거요?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~알고 보니  저서몬의 깨어지지 않은 원을 다콘에게 준 사람은 바로 *나*였다.~ */ GOTO 226
  IF ~~ THEN REPLY #59370 /* ~"알겠소... 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59371 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 226.0
  SAY #59373 /* ~다콘은 잠시 침묵한다, 하지만 그의 칼은 고통스러운 듯 꿈틀거린다. 그는 한참이 지난 다음에야 입을 연다, 그리고 그 때 그의 목소리는 음울하다. "그것은 날 나누었소."~ */
  IF ~~ THEN REPLY #59374 /* ~"그럼 내가 당신의 목숨을 구했소, 다콘? 아니면 내가 한 일은 당신이 이미 느끼고 있던 고통을 한층 심화시킨 것에 불과하오? 그 말들... 저서몬의 말들을 당신을 더 혼란스럽게 만드는 것 같소. 당신이 그 가르침의 연구에 몰두하고 있을 때 옆에서 지켜보면 그것을 느낄 수가 있소."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 229
  IF ~~ THEN REPLY #59375 /* ~"내가 생각했던 대로요. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59376 /* ~"이 일에 대해서는 더 이상 이야기하지 않겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #59377 /* ~다콘은 아무 말도 하지 않는다.~ */
  IF ~~ THEN REPLY #59378 /* ~"나는 당신을 구한 적이 없소, 다콘... 당신이 또다시 죽도록 빈사 상태에서 당신을 깨웠을 뿐이오. 만약 당신이 슈라'크트'로에서 죽었더라면 당신은 안식을 얻을 수 있었을 것이오."~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #59379 /* ~"당신의 말에는 진실미가 있소. 내가 슈라'크트'로에서 죽었다면, 그것은 내게 있어 마지막 죽음이 되었을 것이오. 하지만 그 이래로 하루하루가 내게는 새로운 죽음이었소."~ */
  IF ~~ THEN REPLY #59380 /* ~"당신은 더 이상 날 섬길 필요가 없소, 다콘. 난 당신을 구한 적이 없소. 난 당신을 두 번 죽였을 뿐이오. 당신은 내게 빛진 것이 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_2","GLOBALGood",3)
~ GOTO 233
  IF ~~ THEN REPLY #59381 /* ~"세상 일이란 그런 것이오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59382 /* ~"이 일에 대해서는 나중에 얘기합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 193.1 197.1 198.1 199.1 245.1 246.1 247.1 248.1 250.0 251.3 252.2 253.1 254.2 255.3 256.1 270.5 271.2 272.2 273.3 274.2 275.2 278.2 279.2 281.1 282.2 285.1 343.0
  SAY #59383 /* ~다콘은 기다린다.~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59384 /* ~"기스저라이 민족에 대해 다시 얘기해줄 수 있겠소?"~ */ GOTO 198
  IF ~~ THEN REPLY #59385 /* ~"당신은 '앎'에 큰 의미를 부여하는 것 같소. 무엇 때문이오?"~ */ GOTO 245
  IF ~~ THEN REPLY #59386 /* ~"당신이 지니고 있는 그 칼은 무엇이오?"~ */ GOTO 251
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59387 /* ~"기스저라이의 언어에 대해 질문한 것들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59388 /* ~"대신 다른 질문을 하겠소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59389 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 193.2 236.2 237.2 238.2 239.2 240.2 241.2 242.2 243.2 244.1 258.0 259.0 328.1
  SAY #59390 /* ~다콘은 기다린다.~ */
  IF ~~ THEN REPLY #59391 /* ~"시길에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 200
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #59392 /* ~"파로드란 사람을 아시오?"~ */ GOTO 258
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #59393 /* ~"나는 일지를 하나 잃어버렸소. 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 259
  IF ~  GlobalGT("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #59394 /* ~"휄이 내 팔의 문신에 대해 설명할 때 당신은 그 심벌들을 안다고 했소." ~ */ GOTO 328
  IF ~  GlobalGT("Dakkon_Old_Companions","GLOBAL",0)
~ THEN REPLY #59395 /* ~"당신은 내가 한때 다른 네 사람들과 여행했다고 했소. 그들은 누구요?~ */ GOTO 329
  IF ~~ THEN REPLY #59396 /* ~"대신 다른 질문을 하겠소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59397 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 216.1 216.2 217.1 217.2 230.0
  SAY #59398 /* ~"아니..." 다콘은 고통으로 이마를 찌푸린다, 그리고 그의 눈은 당신을 뚫어지게 바라본다. "무게를 지니고 있는 곳은 당신 말이 아니오, 따라서 당신 말은 나를 해방시킬 수 없소. 나를 사슬로 묶고 있는 것은 다음 아닌 내가 한 말이오. 고통은 내 것이오. 나는 아직도 사슬이 남아 있다는 것을 마음 속에서 느낄 수가 있소. 말로는 그 사슬을 끊을 수가 없소."~ */
  IF ~~ THEN REPLY #59399 /* ~"당신을 해방시킬 방법은 없소?"~ */ GOTO 234
  IF ~~ THEN REPLY #59400 /* ~"그럼 관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59403 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다 - 이 문제는 아직 끝나지 않았소. 갑시다."~ */ JOURNAL #59404 /* ~다콘은 그가 자유로워질 수 있는 방법은 내가 최종적인 죽음을 맞이하는 것뿐이라고 한다. 나는 내가 어떻게 해야  그런 일을 해낼 수 있을지 모르겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #59406 /* ~"당신은 최종적인 죽음을 맞이해야 하오. 하지만 당신의 길은 죽음의 길이 아니오. 따라서 이 문제에 해답은 *없소.*"~ */
  IF ~~ THEN REPLY #59409 /* ~맹세: "다콘, 나는 당신을 해방시킬 방법을 찾겠다고 맹세하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_2","GLOBALLaw",3)
~ JOURNAL #59416 /* ~나는 다콘에게 그를 예속으로부터 해방할 방법을 찾겠다고 맹세했다. 하지만 맹세는 그의 영혼에 활기를 불어넣어 주기는커녕 오히려 그를 짓누르고 있는 것 같다. ~ */ GOTO 235
  IF ~~ THEN REPLY #59412 /* ~"알겠소... 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59414 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다 - 이 문제는 아직 끝나지 않았소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #59425 /* ~갑자기 병에라도 걸린 듯 다콘의 목소리에는 힘이 하나도 없다. "당신이 내 말에 다른 말을 다시 더했다는 사실을 *알도록* 하시오." 그는 고통스러운 표정으로 당신을 마주본다. "이제 당신은 우리들 두 사람 모두를 사슬로 묶었소."~ */
  IF ~~ THEN REPLY #59426 /* ~"알겠소... 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59428 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다 - 이 문제는 아직 끝나지 않았소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 203.0 203.1 204.2
  SAY #59430 /* ~"이 도시 자체가 문들로 만들어져 있소. 이러한 문들은 모든 곳으로 통하오."~ */
  IF ~~ THEN REPLY #59432 /* ~"이 문들은 어디 있소?"~ */ GOTO 237
  IF ~~ THEN REPLY #59433 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59435 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59437 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59439 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #59442 /* ~"그것들은 시의 모든 곳에 존재하오." 다콘은 잠시 침묵한다. "시길이라는 도시 안에서 테두리가 있는 모든 공간은 다른 곳으로 통하는 문이라고 하오."~ */
  IF ~~ THEN REPLY #59445 /* ~"이해할 수가 없소."~ */ GOTO 238
  IF ~~ THEN REPLY #59447 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59450 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59452 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59455 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #59456 /* ~"집에 문이 하나 있다고 상상해 보시오. 그리고 그 문을 제거하시오. 문이 제거된 후에도 문틀은 남아있소. 그 틀 안의 공간은 여전히 문이오."~ */
  IF ~~ THEN REPLY #59457 /* ~"하지만 그건... 그냥 열린 공간이오."~ */ GOTO 239
  IF ~~ THEN REPLY #59459 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59463 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59465 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #59466 /* ~"그대는 대부분의 문들을 평생 보지 못할 것이오. 문을 통해 지나가고서도 그것이 문이었다는 사실을 *알지* 못할 수도 있소. 그런 문들은 그대의 오감에 대해 닫혀 있소."~ */
  IF ~~ THEN REPLY #59467 /* ~"그리고 이러한 투명한 문들은 시길의 *모든 곳*에 있소?"~ */ GOTO 240
  IF ~~ THEN REPLY #59469 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59472 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59474 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #59475 /* ~"시길이라는 도시 안에서 테두리가 있는 모든 공간은 다른 곳으로 통하는 문이라고 하오. 하지만 정확하게 *알* 수가 없소. 문들은 움직이고 변화하며, 때로는 사라지기도 하오. 그리고 모든 문은 잠겨 있소."~ */
  IF ~~ THEN REPLY #59476 /* ~"잠겨 있다?"~ */ GOTO 241
  IF ~~ THEN REPLY #59477 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59478 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59479 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59480 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #59481 /* ~"문을 열 수 있는 열쇠를 지니고 있지 않는 한 문의 소재를 파악하려는 것은 뜬 구름을 잡으려는 것과 같소. 열쇠가 있으면 문은 그대에게 자신의 존재를 *알릴* 것이오."~ */
  IF ~~ THEN REPLY #59482 /* ~"무엇이 열쇠인지는 어떻게 알 수가 있소?"~ */ GOTO 242
  IF ~~ THEN REPLY #59483 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59484 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59487 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59488 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 242 // from: 241.0
  SAY #59489 /* ~"각 문에 대응되는 열쇠는 제각기 다르오. 어떤 열쇠들은 *알려져* 있으나, 다른 열쇠들은 그렇지 못하오."~ */
  IF ~~ THEN REPLY #59491 /* ~"이 열쇠들이란 어떤 것들이오?"~ */ GOTO 243
  IF ~~ THEN REPLY #59492 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59494 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59495 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59497 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #59498 /* ~"열쇠의 수는 문의 수와 같소. 모든 열쇠가 금속으로 만들어진 것은 아니오. 열쇠는 두 개의 칼이 부딪치는 것일 수도 있고, 죽어가는 자의 혀에서 나오는 피일 수도 있으며, 지나간 사랑의 기억이나 하늘에다 대고 하는 분노에 찬 저주일 수도 있소. 열쇠와 문이 서로 짝이 맞으면 문을 스스로를 드러내 보일 것이오."~ */
  IF ~~ THEN REPLY #59500 /* ~"모든 문들과 열쇠들을 찾는 것은 어려울 것 같소."~ */ GOTO 244
  IF ~~ THEN REPLY #59501 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59503 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59504 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59506 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #59507 /* ~"그러한 일은 시도는 되었으나 완료되지는 못했소. 시가 변함에 따라 문도 변하오. *알려진* 것은 그 어떠한 것도 오래 *알려진* 채로 남아있지 않소."~ */
  IF ~~ THEN REPLY #59508 /* ~"왜 이 도시가 잘못되었다고 했는지 다시 말해주겠소?"~ */ GOTO 203
  IF ~~ THEN REPLY #59509 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59510 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59511 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 245 // from: 231.1
  SAY #59512 /* ~"생물이든 무생물이든, 이 세상에 존재하는 모든 것들의 존재는 스스로에 대한 '앎'에 의해 정의되오."~ */
  IF ~~ THEN REPLY #59513 /* ~"그리고 만약 어떤 사람이 자신에 대해 알지 못한다면?"~ */ GOTO 246
  IF ~~ THEN REPLY #59514 /* ~"알겠소. 기스저라이에 대해 질문할 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59517 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59518 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #59520 /* ~"정신이 스스로에 대해 *알지* 못하면 그것은 잘못된 것이오. 정신이 잘못되면 사람도 잘못되기 마련이오. 사람이 잘못되면 그가 관여한 것들도 잘못되게 되오." 다콘은 잠시 멈춘다. "잘못된 사람은 눈으로 보는 것을 손으로 망가트린다고 하오."~ */
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #59521 /* ~"당신은 당신 자신을 아시오?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 247
  IF ~~ THEN REPLY #59522 /* ~"알겠소. 기스저라이에 대해 질문할 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59523 /* ~"나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59524 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #59525 /* ~다콘은 침묵한다. 그의 칠흑같은 눈으로부터는 당신이 처음 그와 얘기했을 때와 같은 거리감이 느껴진다. ~ */
  IF ~~ THEN REPLY #59528 /* ~"다시 묻겠소: 당신은 당신 자신을 아시오?"~ */ GOTO 248
  IF ~~ THEN REPLY #59529 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59531 /* ~"관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59532 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 248 // from: 247.0
  SAY #59534 /* ~다콘이 다시 얘기하기 시작했을 때 그의 목소리는 이전과 다르다. 마치 거대한 돌을 땅이 깊숙하게 갈라진 곳에 던진 듯 메아리친다. 그는 말을 가슴으로부터 억지로 밀어내는 듯하다. "나는 당신이 이 일에 대해 *아는* 것을 *원하지* 않소."~ */
  IF ~~ THEN REPLY #59535 /* ~"질문 형식으로 한 건 아무래도 인정이 지나쳤던 것 같군: 말하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 249
  IF ~~ THEN REPLY #59536 /* ~"좋소. 기스저라이에 대해 물어볼 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59538 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59539 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #59541 /* ~다콘은 단어를 하나씩 발음하듯 천천히 말한다. "나는... 내 자신을 *알지* 못하게 되었소." ~ */
  IF ~~ THEN REPLY #59543 /* ~"왜?"~ */ GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #59545 /* ~다콘의 목소리는 마치 속삭이는 것처럼 작아진다. "나도 *알지* 못하오. 나는 그런 일이 일어났다는 사실은 *알고* 있소. 하지만 언제, 그리고 왜 그런 일어났으며, 어떻게 하면 다시 내 자신을 *알* 수 있게 될 수 있는지는 *알지* 못하오."~ */
  IF ~~ THEN REPLY #59546 /* ~"알겠소... 기스저라이에 대해 물어볼 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59548 /* ~"그럼 관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59550 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 199.0 231.2
  SAY #59551 /* ~"그것은 *카락* 칼이오. 그것은 다른 사람으로 하여금 소유주의 계급을 *알* 수 있게 하오."~ */
  IF ~~ THEN REPLY #59552 /* ~"*카락*? 그건 무슨 뜻이오?"~ */ GOTO 254
  IF ~~ THEN REPLY #59554 /* ~"그것은 기묘한 금속으로 만들어졌소... 그것이 앞뒤로 변형하는 방식에는 마치 최면 효과가 있는 듯하오..."~ */ GOTO 254
  IF ~~ THEN REPLY #59555 /* ~"그것은 어떤 계급을 나타내오?"~ */ GOTO 252
  IF ~~ THEN REPLY #59556 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59557 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59559 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 251.2 256.0
  SAY #59561 /* ~"그 칼은 *저스*가 상징으로서 가지고 다니는 것이오. *저스*는 저서몬의 말씀을 *아는* 자요. 그들은 저서몬의 말씀을 *앎*으로서 자신들을 *아오."~ */
  IF ~~ THEN REPLY #59563 /* ~"저서몬?"~ */ GOTO 253
  IF ~~ THEN REPLY #59564 /* ~"그 칼이 무엇으로 만들어졌는지 다시 얘기해주겠소?"~ */ GOTO 254
  IF ~~ THEN REPLY #59565 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59566 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59567 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #59569 /* ~"저서몬께서는 우리 종족의 시조이시오. 그분은 기스저라이가 자신들에 대해 미처 *알기도* 전에 그들에 대해 알고 계셨소. 그분은 '사람들'을 정의하셨소. 그분은 그들에게 통일된 정신을 주셨소."~ */
  IF ~~ THEN REPLY #59570 /* ~"그 칼이 무엇으로 만들어졌는지 다시 얘기해주겠소?"~ */ GOTO 254
  IF ~~ THEN REPLY #59571 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59572 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59573 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 251.0 251.1 252.1 253.0
  SAY #59575 /* ~다콘은 적절한 표현을 찾으려고 하는 듯 잠시 침묵한다. "당신들 언어로는 '혼돈의 물질'로 번역하는 것이 가장 적절할 것이오. '사람들'은 생각의 힘으로 그것의 형체를 바꿀 수가 있소." ~ */
  IF ~~ THEN REPLY #59576 /* ~"'사람들'?"~ */ GOTO 255
  IF ~~ THEN REPLY #59577 /* ~"그들의 생각만으로 형체를 만들어 낸다고?"~ */ GOTO 256
  IF ~~ THEN REPLY #59579 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59580 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59581 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #59583 /* ~"기스저라이."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59584 /* ~"기스저라이란 무엇이오?"~ */ GOTO 195
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59586 /* ~"기스저라이가 무엇인지 다시 말해줄 수 있겠소?"~ */ GOTO 198
  IF ~~ THEN REPLY #59587 /* ~"당신 말은 기스자라이는 생각만으로... 이 *카락*이란 물질의 형태를 바꿀 수가 있다는 거요?"~ */ GOTO 256
  IF ~~ THEN REPLY #59589 /* ~"당신 민족에 대해 질문할 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59591 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59593 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 254.1 255.2
  SAY #59594 /* ~"*카락의 형체는 담금질을 통해 만들어지는 것이 아니라 자신을 이해함으로서 형성되는 것이오. 그것은 사용자의 의지를 그 표면과 칼날에 그대로 비추는 거울이오. 사람이 자신을 알 때 칼은 강해져 강철보다 더 강하고 단단해지오. 그러나 사람이 자신을 모를 때는 마치 물처럼 형체가 없으며 약한 존재가 되어버리오. "~ */
  IF ~~ THEN REPLY #59596 /* ~"그 칼은 어떤 계급을 나타내오?"~ */ GOTO 252
  IF ~~ THEN REPLY #59597 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59598 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59600 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 318.2
  SAY #59602 /* ~"인간들이 마법을 이해하는 방식에 대한 내 *앎*은 한정되어 있소." 다콘의 칼은 그의 손아귀에서 미끄러지듯 빠져 나온다, 그리고 그는 원형의 동작으로 그것을 자신의 앞으로 가져온다. "하지만 필요한 만큼은 *아오.* 내가 당신에게 그 길에 대해 가르쳐 주겠소."~ */
  IF ~~ THEN REPLY #59604 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 258 // from: 232.1
  SAY #59607 /* ~"나는 그를 *알지* 못하오."~ */
  IF ~~ THEN REPLY #59608 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59613 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59614 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 232.2
  SAY #59615 /* ~"나는 그런 것이 어디 있는지 *알지* 못하오."~ */
  IF ~~ THEN REPLY #59616 /* ~"우리들의 여행에 대한 다른 질문들이 좀 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59617 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59618 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 193.6
  SAY #59619 /* ~마치 머리라도 얻어맞은 듯 다콘은 이마를 찌푸린다. "그 곳에 대해 이야기하는 것은 내가 *원하는* 바가 아니오."~ */
  IF ~~ THEN REPLY #59620 /* ~"다콘, 말해주시오. 슈라'크트'로란 무엇이오?"~ */ GOTO 261
  IF ~~ THEN REPLY #59621 /* ~"그럼 관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59622 /* ~"그럼 그 일에 대해선 더 이상 이야기하지 않도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #59623 /* ~다콘은 잠시 침묵한다. "그 곳이 내가 첫 번째 죽음을 죽은 곳이라는 사실을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #59624 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 262
  IF ~~ THEN REPLY #59625 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59626 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #59627 /* ~"그 곳 '사람들'의 위대한 도시들 중 하나요. 그 곳은 오랜 세월 동안 많은 상처를 입었소. 그 상처들 중 하나는 다름 아닌 나에 의한 것이오."~ */
  IF ~~ THEN REPLY #59628 /* ~"무슨 뜻이오?"~ */ GOTO 218
  IF ~~ THEN REPLY #59629 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59630 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #59631 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #59632 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #59633 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #59634 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from: 268.0
  SAY #59636 /* ~당신이 말을 하자, 기묘한 근질거림이 당신 후두부를 침식하는 것이 느껴진다. 그리고 당신의 시야가 흐릿해진다... 당신은 심호흡을 하고 마음을 가다듬는다. 주변의 풍경이 마치 회전이라도 하듯 당신은 메스꺼움을 느낀다. ~ */
  IF ~~ THEN REPLY #59638 /* ~"당신은 어떻게... 살아남았소, 다콘?"~ */ GOTO 269
END

IF ~~ THEN BEGIN 268 // from: 222.0
  SAY #59640 /* ~"내가 슈라'크트'로의 벽에서 추락했을 때, 내가 자신을 상실했다는 사실을 *알도록* 하시오. 내 칼은 안개와 같고, 내 정신은 나뉘어 있었소. 나는 림보의 바다에서 표류하며 죽기를 원했소. 나는 여러 날에 걸쳐 죽어갔으며, 내 정신은 여전히 나뉘어 있었소."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59642 /* ~"당신은 어떻게 살아남았소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #59654 /* ~다콘이 내게 슈라'크트'로에 대해 얘기해주자 난 갑자기 현기증이 일었다. 어떤 이유에선가 나는 그 곳에 대해 뭔가를 안다는 생각이 든다... 하지만 무엇인지를 알 수가 없다.~ */ GOTO 267
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59647 /* ~"당신은 어떻게 살아남았소?"~ */ GOTO 269
  IF ~~ THEN REPLY #59650 /* ~"그 건에 대해서 충분히 들은 것 같소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59652 /* ~"이 일에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 267.0 268.1
  SAY #59656 /* ~"나는 고통을 받았소. 다 죽어가다가 나는 내 자신을 *알게* 되었소. 나는 살아 남았소. 그게 전부요.""~ */
  IF ~~ THEN REPLY #59658 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59660 /* ~"그럼 그 일에 대해선 더 이상 이야기하지 않도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 270 // from: 231.3 271.1 272.1 273.2 274.1 275.1 278.1 279.1 281.0 282.1 285.0
  SAY #59664 /* ~다콘은 기다린다.~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #59666 /* ~"내게 당신 민족이 말하는 법을 가르쳐 줄 수 있겠소?"~ */ GOTO 342
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ THEN REPLY #59667 /* ~"'트'카의 선택'이란 무엇이오?"~ */ GOTO 271
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ THEN REPLY #59668 /* ~"트'카의 선택이란 무엇인지 다시 말해주겠소?"~ */ GOTO 273
  IF ~  GlobalGT("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #59669 /* ~"'정문의 '크'앗즌'이이'란 무엇이오?"~ */ GOTO 279
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #59672 /* ~"'아크'알리의 익사'란 무엇이오?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 282
  IF ~~ THEN REPLY #59675 /* ~"실은 기스저라이에 대해 질문할 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59676 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59677 /* ~"언어에 대해서는 다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.1
  SAY #59678 /* ~다콘눈 이마를 찌푸리고 눈을 가늘게 뜬다. "나는 당신이 어떻게 그 표현을 *알게* 되었는지 *알고* 싶소."~ */
  IF ~~ THEN REPLY #59679 /* ~"당신은 우리가 그 기스저라이와 마났을 때 그 표현을 썼소. 나는 당신이 그것을 무슨 뜻으로 썼는지 알고 싶소."~ */ GOTO 272
  IF ~~ THEN REPLY #59680 /* ~"관두시오. 언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59681 /* ~"상관없소. 기스저라이에 대해 질문할 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59682 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59683 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 271.0
  SAY #59684 /* ~"그것은 *여러* 의미를 지님 표현이오."~ */
  IF ~~ THEN REPLY #59685 /* ~"그럼 그것들 중 하나를 내게 얘기해주시오."~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ GOTO 273
  IF ~~ THEN REPLY #59686 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59687 /* ~"그건 별 중요한 문제가 아니오. 기스저라이에 대해 질문할 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59688 /* ~"그럼 관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59689 /* ~"다른 기회에 얘기하도록 합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.2 272.0
  SAY #59690 /* ~"'트'카의 선택'은 행동하는 데 있어 선택의 여지가 없는 자를 가리키오"~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59691 /* ~"그래 내가 당신에게 그 기스저라이와 얘기해 달라고 부탁했을 때 당신은 그렇게 수밖에 없었소? 왜?"~ */ GOTO 274
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59692 /* ~"그래 내가 당신에게 그 기스저라이와 얘기해 달라고 부탁했을 때 당신은 그렇게 수밖에 없었소? 당신이 내 노예이기 때문에?~ */ GOTO 275
  IF ~~ THEN REPLY #59693 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59694 /* ~"상관없소. 기스저라이에 대해 질문할 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59695 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59696 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #59697 /* ~다콘의 칼이 물결친다, 그리고 당신이 지켜보는 가운데 칼날은 무디어지고 회색으로 변색된다. 그는 이를 악문 채로 얘기한다. "나는 이 일에 대해 이야기하는 것을 *원하지* 않소."~ */
  IF ~~ THEN REPLY #59698 /* ~"나는 당신이 그걸 말하는 걸 들고 싶소... 사실 그 대화에서 당신이 한 말들 중에는 내 관심을 끈 것들이 적지 않았소."~ */ GOTO 275
  IF ~~ THEN REPLY #59699 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59700 /* ~"그럼 상관없소. 기스저라이에 대해 질문할 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59701 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59702 /* ~"그럼 그 일에 대해서는 더 이상 얘기하지 않겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 273.1 274.0
  SAY #59703 /* ~"당신의 의지가 곧 내 *의지*라는 사실을 *알도록* 하시오. 당신이 말을 하면 나는 반드시 들어야만 한다는 사실을 *알도록* 하시오. 당신의 말이 내 칼을 다른 자의 목으로 안내하거나 그 곳에서 치울 수 있다는 사실을 *알도록* 하시오."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59704 /* ~"뭐라고? 하지만 왜?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 276
  IF ~~ THEN REPLY #59708 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59709 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59713 /* ~"이 일에 대해선 더 이상 얘기하지 않도록 하겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59714 /* ~"더 이상 듣고 싶지 않소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 276 // from: 275.0
  SAY #59716 /* ~다콘은 당신을 마주 보는 것이 견딜 수 없는 듯 당신을 그냥 지나치고 그 너머를 바라보고 있는 것 같다. "그대의 길이 내 길이오. 나는 당신에게 사슬로 묶여 있소.."~ */
  IF ~~ THEN REPLY #59718 /* ~"당신이 내 노예라고?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #59720 /* ~'노예'란 말을 듣자 다콘의 얼굴이 고통으로 일그러진다... 마치 그 말이 그의 고통의 핵을 찌르는 대거인 것처럼.~ */
  IF ~~ THEN REPLY #59721 /* ~"하지만...왜, 다콘?"~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #59723 /* ~"그것이... 긴 이야기라는 것을 *알도록* 하시오, 그리고 그 이야기를 통해 얻을 것은 아무 것도 없다는 것을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #59725 /* ~"듣고 싶소."~ */ JOURNAL #59286 /* ~다콘은 내게 그의 예속의 본질에 대해 말해주었다... 내가 그의 생명을 구해주었을 때 그는 내가 죽을 때까지 나를 섬기겠다고 약속했다. 하지만 그는 내가 불사신이란 사실을 알지 못했다. 그 약속을 함으로서 그는 그의 여생을 나에게 바치게 된 셈이다.~ */ GOTO 215
  IF ~~ THEN REPLY #59727 /* ~"그럼 됐소. 언어에 관련된 다른 질문들을 하고 싶소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59728 /* ~"그럼 좋소. 기스저라이에 대한 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59731 /* ~"그럼 관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59732 /* ~"그럼 그 일에 대해서는 더 이상 얘기하지 않겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 270.3
  SAY #59755 /* ~"이것을 *알도록* 하시오: '정문의 크'앗즌'이이'라는 말은, 당신이 어떤 사람에게 질문을 하면, 당신이 그 질문을 통해 당신 자신과 그의 질문에 대답하게 된다는 뜻이오."~ */
  IF ~~ THEN REPLY #59756 /* ~"무슨 뜻이오? '크'앗즌'이이'가 누구요?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 280
  IF ~~ THEN REPLY #59758 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59759 /* ~"알겠소. 기스저라이에 대해 질문할 것들이 더 있소..."~ */ GOTO 231
  IF ~~ THEN REPLY #59760 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59763 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #59912 /* ~"크'앗즌'이이는  '사람들'들 중 하나였소. 그녀는 '사람들' 중에 하나임에도 불구하고 스스로를 *알지* 못했다고 하오. 그녀는 스스로에 대한 *앎*을 추구하기 보다는, '사람들'을 시험하기로 마음을 먹었소. 그녀는 '사람들'의 도시의 정문에 나타나 그 곳 사람들에게 그들의 의지를 시험할 질문들을 하곤 했소. '사람들'이 한 대답은 그녀로 하여금 그 도시 안에 사는 '사람들'의 본질을 알 수 있도록 해주었소."~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #59914 /* ~"하지만 크'앗즌'이이가 *알지* 못했던 것은 다른 '사람들' 역시 그녀가 하는 질문을 통해 그녀의 본질을 파악할 수 있었다는 사실이었소. 그들은 그녀의 마음을 보았고, 그녀가 그들과 함께 사는 것을 허용하는 것은 아무런 득이 될 것이 없다는 사실을 *알았소.* 따라서 그녀는 늘 정문에만 머무르게 되었소. 이 이야기는 우리가 하는 질문을 통해 타인이 우리의 의지를 *알* 수도 있다는 교훈이오."~ */
  IF ~~ THEN REPLY #59915 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59916 /* ~"알겠소. 기스저라이에 대해 질문할 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59917 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59918 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 270.4
  SAY #59919 /* ~"이것을 *알도록* 하시오: '아크'알리의 익사'란 화자가 당신의 질문에 대한 대답은 아무런 의미가 없다고 할 때 쓰는 말이오. 또한 그 말에는 질문의 내용을 정리하여 보다 구체적으로 물어보라는 암시도 포함되어 있다는 사실을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #59920 /* ~"아크'알리가 누구요?"~ */ GOTO 283
  IF ~~ THEN REPLY #59921 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59922 /* ~"알겠소. 기스저라이에 대해 질문할 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59923 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59924 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #59925 /* ~"우리의 고향 차원인 림보에 우리는 정신력으로 혼돈에 형태를 부여해야 하오. 만약 그렇지 못하면 혼돈이 우리를 삼킬 것이오. 아크'알리는 '사람들' 중 하나였으나 스스로를 *알지 못했다고 하오. 어느 날 그녀는 림보의 혼돈 속에서 길을 잃었소. 그녀는 자신의 공동체로 어떻게 하면 돌아갈 수 있는지 *알지* 못했소. 그래서 그녀는 생각의 힘으로 작은 섬을 만들고는 그 곳에서 기다렸소."~ */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #59926 /* ~"그녀는 기다렸소. 기다리다가 그녀는 림보의 혼돈 속을 헤엄치고 있는 여행자를 만났소. 아크'알리는 소리를 질러 여행자에게 집으로 가는 길을 물어보았다고 하오. 그녀에게 필요한 질문은 이것 하나뿐이었소: '내 집으로 가는 길을 *아시오?*' 그러나 그녀는 이렇게 물었소: '이 차원에 대해 무엇을 *아시오?*'~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #59927 /* ~"여행자는 많은 것을 알고 있었고, 그 주 많은 것들은 아크'알리가 미처 알지 못했던 것들이었소. 그녀의 질문은 점차 그 도를 더하게 되었고, 마침내 그녀는 자신의 처지와 정신을 집중해야 한다는 사실조차 *알지* 못하게 되었소. 그녀가 만든 섬은 혼돈의 물질로 분해되었으며, 그녀는 익사했소. 그것은 목적이 없는 질문의 위험성을 일깨워 주는 교훈이오."~ */
  IF ~~ THEN REPLY #59928 /* ~"언어와 관련된 다른 질문들이 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59929 /* ~"알겠소. 기스저라이에 대해 질문할 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59930 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59931 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 286 // from: 318.1
  SAY #59932 /* ~다콘의 칼은 마치 물처럼 그의 어깨에서 손으로 이동한다, 그리고 그 칼날에는 위험한 광채가 감돈다. "우리는 분노가 없는 강철을 보여줄 것이오. 당신은 무기에 대해 다시 *알게* 될 것이오."~ */
  IF ~~ THEN REPLY #59933 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
SetAnimState("Dakkon",ANIM_MIMESTANCETOSTAND)
~ GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0
  SAY #59934 /* ~스파링이 끝난 후 당신은 어렵지 않게 전사의 길로 복귀한다. 다콘은 칼을 다시 어깨에 걸치고 말한다. "당신은 가르침을 빨리 흡수하오. 당신은 전투에 돌입할 만반의 준비가 되었소."~ */
  IF ~~ THEN REPLY #59935 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59936 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 318.3
  SAY #59937 /* ~다콘의 칼은 그의 손아귀에서 미끄러지듯 빠져 나온다, 그리고 그는 원형의 동작으로 그것을 자신의 앞으로 가져온다. "우리는 가르침을 복창할 것이오. 당신은 마법의 길을 *다시* 알게 될 것이오."~ */
  IF ~~ THEN REPLY #59938 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 257.0 288.0
  SAY #59939 /* ~교습이 끝나자 당신은 다시 메이지의 길에 눈을 뜨게 된다. 다콘은 당신을 바라보며 고개를 끄덕인다. "당신은 가르침을 빨리 흡수하오. 이제 당신은 스스로의 의지를 소환해 적을 공격할 준비가 되었소."~ */
  IF ~~ THEN REPLY #59940 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59941 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 318.4
  SAY #59942 /* ~"'사람들'의 길은 당신이 *알고* 있는 마법과는 다르다는 것을 *알도록* 하시오. 우리에게 힘을 주는 것은 에너지가 아니라 스스로에 대한 *앎*이오. 저서몬의 가르침은 그러한 것들에 대해 이야기해주고 있소."~ */
  IF ~~ THEN REPLY #59943 /* ~"내게 저서몬의 가르침을 가르쳐 주겠소, 다콘?"~ */ GOTO 291
  IF ~~ THEN REPLY #59944 /* ~"나에겐 알고 싶은 것들이 더 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #59945 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #59946 /* ~"당신은 자신이 어떤 부탁을 한 것인지 *아시오?*" 다콘의 칼의 질감이 변하기 시작하여 돌처럼 된다. "저서몬의 길을 걷기 위해서는 '사람들'에 대해서 *알아야만* 하오. '사람들'의 하나가 아닌 자에게 있어 그건 어려운 일이오. '사람들'이 아닌 자들 중에도 저서몬의 길에 대해 들어본 자들도 있으나, 그들은 그것을 *알지*는 못하오."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59947 /* ~"다콘, 나는 당신 동족들과 저서몬의 가르침에 대해서 *알고자* 하오. 나는 그러한 것들을 배우는 것은 현명한 일이라 생각하오."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~다콘은 내게 저서몬의 길을 가르쳐 주기로 했다. 그는 나를 위해 저서몬의 깨어지지 않은 원을 열어 주었고,  내게 그것을 연구해 그의 종족의 역사를 *알라고* 했다. ~ */ GOTO 293
  IF ~~ THEN REPLY #59948 /* ~"만약 내게 가르쳐 주겠다면 배우도록 하겠소."~ */ GOTO 292
  IF ~~ THEN REPLY #59949 /* ~"나에겐 알고 싶은 것들이 더 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #59950 /* ~"그럼 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.1
  SAY #59951 /* ~"나는 인간들이 어떻게 '마법'을 알게 되었는지 *아오.* 그들은 주문을 두루마리나 책을 통해서 주문을 배우오. 그러한 분열은 저서몬의 길이 *아니오.* 부분만 배우고 전체를 무시할 수는 없소." 다콘은 당신을 조용히 쳐다본다; 그의 칼의 표면은 다시 광채를 되찾았다. "그 길은 집중을 필요로 하는 길이라는 것을 *알도록* 하시오. 만약 당신  마음이 나뉘었고 당신이 저서몬의 길의 의미를 *알지* 못한다면, 당신의 의지는 상실된 것이오."~ */
  IF ~~ THEN REPLY #59952 /* ~"나는 아직도 배우고 싶소."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~다콘은 내게 저서몬의 길을 가르쳐 주기로 했다. 그는 나를 위해 저서몬의 깨어지지 않은 원을 열어 주었고,  내게 그것을 연구해 그의 종족의 역사를 *알라고* 했다. ~ */ GOTO 293
  IF ~~ THEN REPLY #59953 /* ~"나에겐 알고 싶은 것들이 더 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #59954 /* ~"그럼 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 291.0 292.0
  SAY #59955 /* ~"내가 당신 말을 들었으며, 당신을 시험할 것이라는 사실을 *알도록* 하시오. 배우기 위해서 당신은 '사람들'에 대해 *알아야만* 하오. '사람들'에 대해 알려면, 저서몬의 깨어지지 않은 원"을 알아야만 하오." 다콘은 자신이 지니고 있는 돌로 만든 원반을 꺼낸 후, 자신의 거미 같은 손가락을 그 양쪽에 건다. *찰칵* 소리와 함께 원의 석판들이 새로운 배열을 이룬다. 그는 방금 한 동작들을 역순으로 하여 원을 봉인한다. "저서몬의 제1원이 당신에게 열렸다는 사실을 *알도록* 하시오. 그것을 공부하시오, 나는 그 후에 당신과 다시 얘기를 하도록 하겠소."~ */
  IF ~~ THEN REPLY #59956 /* ~"그럼 제1원을 읽도록 하겠소. 그 동안 다른 것들에 대해 *알고* 싶소..."~ */ GOTO 193
  IF ~~ THEN REPLY #59957 /* ~"알겠소. 그것을 잘 살펴본 후 당신과 다시 얘기를 나누도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 318.6
  SAY #59958 /* ~"당신은 어떤 것을 *알게* 되었소?"~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59959 /* ~"힘은 자신을 아는 데 있다. 나는 자신을 *알지* 못하는 자는 스스로를 잃어버린다는 것을 배웠다. 그들은 타인의 도구로 전락한다."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",3)
GiveExperience(Protagonist,300)
~ JOURNAL #59743 /* ~나는 내 자신의 지혜를 교전의 수준까지 끌어올려 저서몬의 제1원을 이해하게 되었다. 대신 다콘은 내게 저서몬의 제2원을 개방하였다. 그는 내가 이전 원을 이해하면 다음 원을 열어 주는 방식으로 내게 깨어지지 않는 원을 단계적으로 가르치려는 것 같다. ~ */ GOTO 296
  IF ~  Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59960 /* ~"나는 당신 민족이 한때 *일리티드*의 노예였다는 것을 알게 되었소. 그들은 당신 민족에게 수많은 죄악을 저지른 것 같소."~ */ JOURNAL #59742 /* ~나는 저서몬의 제1원을 이해하지 못하는 모양이다. 적어도 다콘은 그렇게 얘기하고 있다. 진정한 의미는 그 돌에 적힌 내용을 초월한 곳에 존재하는 것 같다... 저서몬의 길을 이해하려면 내 자신의 지혜가 저서몬의 가르침을 이해할 수 있는 수준에 도달해야 할 것 같다. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59961 /* ~"나는 만약 어떤 것을 처음 발견했을 때, 그 특성과 그것이 어떻게 존재하게 되었는지를 알려고 시도하면, 그것을 *알지* 못하는 것도 육신이나 강철처럼 도구가 될 수 있다는 사실을 배웠소."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",5)
GiveExperience(Protagonist,600)
GiveItemCreate("Circle02",Protagonist,1,0,0)
~ GOTO 297
  IF ~  Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59962 /* ~"나는 저서몬이 *일리티드*를 위해 벌판을 돌보다가 강철의 특성과 어떻게 하면 그것을 이용하여 *일리티드*를 물리칠 수 있는지를 알게 되었다는 사실을 배웠소."~ */ JOURNAL #67782 /* ~다콘의 말하는 바로는 내가 저서몬의 깨어지지 않은 원의 다음 원을 이해하지 못하는 모양이다. 나는 돌에 새겨진 말들에는 단순한 의미 이상의 것이 있다고 생각한다... 저서몬의 길을 이해하려면 내 자신의 지혜가 저서몬의 가르침을 이해할 수 있는 수준에 도달해야 할 것 같다. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59963 /* ~인내하시오. 인내함을 통해서 더욱 강해질 수가 있소.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",7)
GiveExperience(Protagonist,900)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 299
  IF ~  Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59964 /* ~"나는 때로는 목적을 보호하기 위해서 지도자가 고통을 감수해야 한다는 사실을 배웠소."~ */ JOURNAL #67782 /* ~다콘의 말하는 바로는 내가 저서몬의 깨어지지 않은 원의 다음 원을 이해하지 못하는 모양이다. 나는 돌에 새겨진 말들에는 단순한 의미 이상의 것이 있다고 생각한다... 저서몬의 길을 이해하려면 내 자신의 지혜가 저서몬의 가르침을 이해할 수 있는 수준에 도달해야 할 것 같다. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59965 /* ~"눈 앞에 있는 것만 보려는 자는 전체의 일부밖에 보지 못하오. 그들은 장님이나 마찬가지요. 빌콰가 약속된 상에 눈이 멀었었던 것과 마찬가지로 *일리티드* 역시 진정한 봉기를 보지 못했소. 그들은 빌콰의 말을 들었을 때 자신들의 시선을 다시 밖으로 돌렸소. 그리고 방해를 받지 않고 봉기를 결행을 할 여건은 마련되었소. 내 말이 맞지 않소?"~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",9)
GiveExperience(Protagonist,1500)
~ GOTO 303
  IF ~  Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59966 /* ~"알지 못하면서 보려는 자는 스스로를 배신하게 되오."~ */ JOURNAL #67782 /* ~다콘의 말하는 바로는 내가 저서몬의 깨어지지 않은 원의 다음 원을 이해하지 못하는 모양이다. 나는 돌에 새겨진 말들에는 단순한 의미 이상의 것이 있다고 생각한다... 저서몬의 길을 이해하려면 내 자신의 지혜가 저서몬의 가르침을 이해할 수 있는 수준에 도달해야 할 것 같다. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59967 /* ~"다수의 힘은 위대하나 개인에게도 위대한 힘이 있소, 왜냐하면 개인의 의지의 힘이 많은 이들을 인도할 수 있기 때문이오. 힘은 자신을 *아는* 데만 있는 것이 아니라 어떻게 다른 이들도 스스로를 알도록 할 수 있는가를 *아는* 데도 있소."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",11)
GiveExperience(Protagonist,3000)
GiveItemCreate("Circle05",Protagonist,1,0,0)
~ GOTO 307
  IF ~  Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59968 /* ~"저서몬은 그보다도 강대한 존재인 기스와 합류하는 것을 배우게 되었소. 함께 사람들은 더욱 강해졌소."~ */ JOURNAL #67782 /* ~다콘의 말하는 바로는 내가 저서몬의 깨어지지 않은 원의 다음 원을 이해하지 못하는 모양이다. 나는 돌에 새겨진 말들에는 단순한 의미 이상의 것이 있다고 생각한다... 저서몬의 길을 이해하려면 내 자신의 지혜가 저서몬의 가르침을 이해할 수 있는 수준에 도달해야 할 것 같다. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,17,WIS)
Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59969 /* ~"나는 사람들에 대한 저서몬의 헌신이 그들을 그들 자신들로부터도 보호하려고 할 정도였다는 것을 아오. 그는 *일리티드*가 통치와 지배에 대한 집착 때문에 스스로를 *알지* 못하게 되었다는 사실을 알고 있었소. 그는 기스가 사람들을 죽음으로 몰아가기 전에 그녀를 저지하기로 했소. 만사에는 균형이 필요하오, 그렇지 않으면 자아는 유지될 수 없소."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",13)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle06",Protagonist,1,0,0)
GiveItemCreate("Circle06",Protagonist,1,0,0)
~ GOTO 308
  IF ~  Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59970 /* ~"자서몬은 자유로운 상태에서도 자유를 위해서 심지어는 동족끼리도 계속 싸워야 한다는 사실을 배웠소."~ */ JOURNAL #67782 /* ~다콘의 말하는 바로는 내가 저서몬의 깨어지지 않은 원의 다음 원을 이해하지 못하는 모양이다. 나는 돌에 새겨진 말들에는 단순한 의미 이상의 것이 있다고 생각한다... 저서몬의 길을 이해하려면 내 자신의 지혜가 저서몬의 가르침을 이해할 수 있는 수준에 도달해야 할 것 같다. ~ */ GOTO 295
  IF ~  Global("Dakkon_Teach","GLOBAL",15)
~ THEN REPLY #59971 /* ~"저서몬의 돌 안에는 제7원이 있었소. 그것은 *일리티드*에 대한 반란을 준비하는 일에 대해 얘기하고 있소."~ */ GOTO 319
  IF ~  Global("Dakkon_Teach","GLOBAL",18)
~ THEN REPLY #59972 /* ~"저서몬의 돌 안에는 제8원이 있었소. 그것은 정신의 분열과 집중에 중요성에 대해 얘기하고 있소."~ */ GOTO 323
  IF ~~ THEN REPLY #59973 /* ~"관두시오. 나에겐 알고 싶은 것들이 더 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #59974 /* ~"나는 아직도 내가 읽은 내용에 대해 생각하고 있소. 이야기는 나중에 하도록 합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 294.1 294.3 294.5 294.7 294.9 294.11
  SAY #59975 /* ~다콘은 이마를 찌푸린다. "그렇다면 당신은 아무 것도 *알지* 못했소. 당신은 말을 듣고도 그 의미를 *알지* 못하는 자요."~ */
  IF ~~ THEN REPLY #59976 /* ~"알겠소... 나는 그 글을 다시 연구하도록 하겠소. 그 동안 다른 것들에 대해 *알고* 싶소..." ~ */ GOTO 193
  IF ~~ THEN REPLY #59977 /* ~"그럼 관두시오, 다콘."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 294.0
  SAY #59978 /* ~"당신은 저서몬의 제1원을 *알게* 되었소. 당신은 저서몬의 말씀을 볼 수 있을 뿐만이 아니라, 그 의미를 *알게* 되었소." 다콘은 원을 잡고는 그 테두리에 손가락을 건다. *찰칵* 소리와 함께 원의 석판들이 새로운 배열을 이룬다. 그는 방금 한 동작들을 역순으로 하여 원을 봉인한다. "저서몬의 제2원이 당신에게 열렸다는 사실을 *알도록* 하시오. 그것을 공부하시오, 나는 그 후에 당신과 다시 얘기를 하도록 하겠소."~ */
  IF ~~ THEN REPLY #59979 /* ~"그럼 제2원을 읽도록 하겠소. 그 동안 다른 것들에 대해 *알고* 싶소..." ~ */ GOTO 193
  IF ~~ THEN REPLY #59980 /* ~"알겠소. 그럼 그것을 읽은 후 당신과 다시 얘기를 나누도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 294.2
  SAY #59981 /* ~"당신은 말씀을 보았고 그 너머에 있는 것들도 보았소. 당신은 저서몬의 제2원을 *알게* 되었소." 다콘은 원을 받더니 기민한 동작으로 연결 고리들 중 하나를 비틀어 석판이 하나 앞으로 미끄러져 나오도록 한다 -  그러나 묘하게도 돌의 모양에는 변화가 없는 듯하다. 그는 석판을 당신에게 건네준다. "이 가르침에 대해 명상하시오, 그럼 *앎*이 당신에게 힘을 줄 것이오. 당신이 그것을 흡수하게 되면, 당신은 더 많은 것을 *알게* 될 것이오."~ */
  IF ~~ THEN REPLY #59982 /* ~"알겠소... 나는 이 원을 공부하도록 하겠소. 하지만 나는 아직도 저서몬의 가르침에 대해 더 알고 싶소..." ~ */ GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 297.0 302.0 306.0 307.0
  SAY #59983 /* ~다콘은 손가락으로 원의 테두리를 더듬더니 그것을 시계 방향으로 돌린다, 그러자 연결 고리들이 새로운 배열에 도달할 때까지 *찰칵* 소리를 낸다. 그는 방금 한 동작들을 역순으로 하여 원을 리셋한다. "저서몬의 다음 원이 당신에게 열렸소. 그것을 공부하시오, 나는 그 후에 당신과 다시 얘기를 하도록 하겠소."~ */
  IF ~~ THEN REPLY #59984 /* ~"그럼 다음 원을 읽도록 하겠소. 그 동안 다른 것들에 대해 *알고* 싶소..." ~ */ GOTO 193
  IF ~~ THEN REPLY #59985 /* ~"알겠소. 그럼 그것을 읽은 후 당신과 다시 얘기를 나누도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 294.4
  SAY #59986 /* ~당신이 한 말은 다콘에게 묘한 충격을 준 듯하다... 당신이 얘기를 하지 그는 이마를 찌푸렸다가 다시 평상시의 무표정한 얼굴로 돌아간다.~ */
  IF ~~ THEN DO ~GiveItemCreate("Circle03",Protagonist,1,0,0)
~ GOTO 300
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #59987 /* ~"당신의 의지는 당신으로 하여금 저서몬의 제3원을 *알게* 하였소. 당신이 이 *앎*을 얻었으니, 나는 당신에게 이것을 주겠소." 다콘은 원을 받더니 기민한 동작으로 연결 고리들 중 하나를 비틀어 석판이 하나 앞으로 미끄러져 나오도록 한다. 그는 석판을 당신에게 건네준다. "이 가르침에 대해 명상하시오, 그럼 *앎*이 당신에게 힘을 줄 것이오. 당신이 그것을 흡수하게 되면, 당신은 더 많은 것을 *알게* 될 것이오."~ */
  IF ~~ THEN REPLY #59988 /* ~"알겠소... 나는 이 원을 공부하도록 하겠소. 당신이 내게 더 가르칠 수 있는 것은 없소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #59989 /* ~질문을 하다가 당신은 다콘이 당신을 보고 있지 않다는 사실을 갑자기 깨닫는다. 그는 깨어지지 않은 원을 손에 쥐고 그것을 살피고 있다. 그의 칼의 질감은 깨어지지 않은 원과 같은 질감으로 변했다... 왠지 다콘이 갑자기 더 늙어 보인다. ~ */
  IF ~~ THEN REPLY #59990 /* ~"다콘?"~ */ GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #59991 /* ~다콘의 원으로부터 고개를 쳐들고 당신을 쳐다본다. "내가 당신이 원의 가르침을 *알게* 되리라고는 생각하지 않았다는 사실을 *알도록* 하시오. 저서몬의 길을 배우는 길은... 험난하오. 당신의 정신은 이 일에 집중하고 있소?"~ */
  IF ~~ THEN REPLY #59992 /* ~"그렇소. 더 배우고 싶소."~ */ GOTO 298
END

IF ~~ THEN BEGIN 303 // from: 294.6
  SAY #59993 /* ~"당신의 말이 옳다는 것을 *알도록* 하시오. 빌콰의 눈은 빌콰와 *일리티드* 양쪽 모두의 눈을 멀게 만들었소. 촉수 달린 자들은 봉기가 끝났다고 생각했소. 봉기가 일어났을 때 대지는 *일리티드*의 피로 적셔졌소. 따라서 승리가 배신으로부터 나온 셈이오."~ */
  IF ~~ THEN REPLY #59994 /* ~"그것은 매우 흥미로운 교훈이오. 왜 그것이 저서몬의 가르침에 포함되어 있는 것이오?"~ */ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.0
  SAY #59995 /* ~다콘의 칼은 광택이 없는 칠흑색으로 변한다, 그리고 그의 목소리는 한층 낮아진다 - 잠시 당신은 그가 화가 났다고 생각했으나 확신할 수는 없다. "저서몬의 길에는 이해하기 어려운 부분들이 적지 않소."~ */
  IF ~~ THEN REPLY #59996 /* ~"*당신*은 왜 빌콰의 눈이 저서몬의 가르침의 일부인지 아시오?"~ */ GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #59997 /* ~"그것은 우리 민족이 어떻게 자유를 *알게* 되었는지에 대한 이야기의 일부요. 그 이야기는 '사람들' 중에도 '사람들'이 아닌 자들이 있다는 사실을 우리에게 *알려* 주고 있소. 또한 최악의 배신을 통해서도 보다 큰 *앎*을 얻을 수 있다는 사실을 말해주고 있소."~ */
  IF ~~ THEN REPLY #59998 /* ~"알겠소."~ */ DO ~GiveItemCreate("Circle04",Protagonist,1,0,0)
~ GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #59999 /* ~"당신은 저서몬의 제4원을 *알게* 되었소." 다콘은 원을 받더니 기민한 동작으로 연결 고리들 중 하나를 비틀어 석판이 하나 앞으로 미끄러져 나오도록 한다. 그는 석판을 당신에게 건네준다. "이 가르침에 대해 명상하시오, 그럼 *앎*이 당신에게 힘을 줄 것이오. 당신이 그것을 흡수하게 되면, 당신은 더 많은 것을 *알게* 될 것이오."~ */
  IF ~~ THEN REPLY #60000 /* ~"저서몬의 가르침에 대해 더 알고자 하오."~ */ GOTO 298
END

IF ~~ THEN BEGIN 307 // from: 294.8
  SAY #60001 /* ~"당신은 저서몬의 제5원을 *알게* 되었소." 다콘은 원을 받더니 기민한 동작으로 연결 고리들 중 하나를 비틀어 석판이 하나 앞으로 미끄러져 나오도록 한다. 그는 석판을 당신에게 건네준다. "이 가르침에 대해 명상하시오, 그럼 *앎*이 당신에게 힘을 줄 것이오. 당신이 그것을 흡수하게 되면, 당신은 더 많은 것을 *알게* 될 것이오."~ */
  IF ~~ THEN REPLY #60002 /* ~"저서몬의 가르침에 대해 더 알고자 하오."~ */ GOTO 298
END

IF ~~ THEN BEGIN 308 // from: 294.10
  SAY #60003 /* ~"당신은 말씀을 보았고 그것을 *알게* 되었소." 다콘의 목소리가 느려진다, 그리고 그는 양손으로 깨어지지 않은 원의 테두리를 쥔다. 그가 그것을 시계 방향으로 비틀자, *찰칵* 소리와 함께 두 개의 석판이 미끄러져 나온다. 다콘은 두 석판을 손에 쥐고 뚫어지게 쳐다본다 - 그것들을 당신에게 건네주려고 하는 기색은 보이지 않는다.~ */
  IF ~~ THEN REPLY #60004 /* ~"다콘... 그 두 번째 판은 당신을 위한 것이오?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #60005 /* ~다콘은 침묵한다. 그의 칼은 표면이 꽁꽁 얼어붙은 듯 아무런 광채도 내지 않는다. 그는 전신불수가 된 사람처럼 두 번째 석판을 쳐다보고 있다.~ */
  IF ~~ THEN REPLY #60006 /* ~"*당신*은 제6원을 이해하시오?"~ */ GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #60007 /* ~다콘은 고개를 쳐드나 당신을 마주보려고 하지는 않는다. "*내게는 당신에게 가르칠 것이 더 이상 없다는 사실을 *알도록* 하시오. 당신은 '사람들'이 *아는* 것과 마찬가지로 길을 *알고* 있으며, 그 *앎*이 당신이 스스로를 *알* 수 있는 길을 제시할 것이오."~ */
  IF ~~ THEN REPLY #60008 /* ~"내가 물어본 것은 그것이 *아니오*. "당신은 제6원을 *이해*하시오?"~ */ GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #60009 /* ~다콘은 잠시 침묵한 후 입을 연다. 그의 목소리는 느리고 조심스럽다. "나는 저서몬의 제6원을 *알지* 못하게 되었소. 한때는 *알고* 있었소, 하지만 이제 나는 내가 말씀을 볼 뿐이라는 것을 *아오.*" 다콘은 당신을 뚫어지게 쳐다본다. "그게 전부요. 내가 더 이상 저서몬의 길을 *알지* 못하게 되었소."~ */
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60010 /* ~"그것은 슈라'크트'로에서 일어났던 일 때문이오?"~ */ GOTO 317
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60011 /* ~"다콘... 내가 *알고* 싶은 것이 하나 더 있소. 왜 빌콰의 눈이 저서몬의 원에 포함된 거요? 그건 이상하오. 그것은 사람들이 어떻게 해서 동족의 배신으로부터 득을 보았는지에 대해 얘기하고 있소. 그건..."~ */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.1 317.0
  SAY #60012 /* ~다콘의 눈이 번득인다. "나는 이미 그것이 우리 민족이 어떻게 자유를 *알게* 되었는지에 대한 이야기의 일부라고 말했소. 귀를 기울이지 않았소?" 그의 목소리가 기억으로부터의 한 구절을 복창하듯 낮아진다. "그것은 최악의 배신을 통해서도 보다 큰 *앎*을 얻을 수 있다는 사실을 말해주고 있소."~ */
  IF ~~ THEN REPLY #60013 /* ~"내게는 당신이 그것을 믿는다고 생각되지 않소. 나는 빌콰의 눈이 저서몬의 원에 있는 데는 다른 이유가 있다고 생각하오. 그것은 제6원과 두 하늘의 선언 때문에 그 곳에 있는 거요. 그것은 저주받은 평원에서의 저서몬의 동족에 대한 배신을 정당화하기 위해 존재하오."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 313
END

IF ~~ THEN BEGIN 313 // from: 312.0
  SAY #60014 /* ~다콘은 아무 말도 하지 않는다. 그의 칼은 무딘 흑색으로 변했다, 그리고 칼날에는 이빨들이 물결치듯 움직이고 있다.~ */
  IF ~~ THEN REPLY #60015 /* ~"그는 저주받은 평원에서 사람들을 갈라놓았소, 다콘." 그는 당신 민족이 승리를 바로 눈앞에 두고 있을 때 그들을 분열시켰소. 나는 그가 사람들을 그들 자신으로부터 구하고자 했기 때문에 그런 짓을 했다고 믿고 *싶소*, 하지만 당신이 그것을 믿는다고는 생각되지 않소."~ */ GOTO 314
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #60016 /* ~다콘은 침묵한다, 그리고 잠시 후 느릿느릿 이야기하기 시작한다. "나는... 다른 이들이 *아는* 것처럼 제6원을 *알지* 못하오. 나는 많은 이들이 *아는* 것보다 제3원, 제4원, 그리고 제6원이 훨씬 밀접한 관계를 가지고 있는 것은 아닌가 우려하고 있소. 바로 이 *앎* 때문에 나는 내 자신을 상실하게 되었소."~ */
  IF ~~ THEN REPLY #60017 /* ~"제3원에서 저서몬은 *일리티드*를 속이기 위해 자신의 진의를 감추었소, 그리고 제4원에서는 배신의 이득에 대하여 말하고 있소. 제6원에서 저서몬은 *일리티들*를 말살시키기 직전에 민족을 분열시켰소. 당신은 저서몬의 한 말이 그 자신의 말이 아니었을지도 모른다고 생각하시오?"~ */ GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #60018 /* ~"내 말을 *알도록* 하시오, 그리고 상처는 내 가슴 깊숙한 곳에 있다는 것을 *알도록* 하시오. 나는 저서몬께서 침묵의 기둥에서 형벌을 받으셨을 때 진의를 감추지 못하신 것은 아닌가 의심하고 있소. 나는 *일리티드*가 그분으로부터 의지를 빼앗은 것은 아닌가 의심하고 있소. 그리고 그분께서 저주받은 평원에서 선언을 하셨을 때, 그것이 그분의 말씀이 아니라 그들의 말이 아니었는가 의심하고 있소. 나는 그분이 취한 행동이 '사람들'을 위한 것이 아니라 우리들의 옛 지배자들을 위한 것이 아니었는가 의심하고 있소."~ */
  IF ~~ THEN REPLY #60019 /* ~"가능하오, 하지만 *안다고* 해서 그것이 꼭..."~ */ DO ~SetGlobal("BD_DAKKON_FAITH","GLOBAL",1)
~ JOURNAL #60020 /* ~저서몬의 제6원을 배우는 과정에서 나는 다콘이 제6원을 믿지 않는다는 사실을 알게 되었다. 얄궂게도 그는 저서몬의 깨어지지 않은 원을 읽었기 *때문*에 자신에 대한 *앎*을 잃어버리게 된 것 같다.~ */ GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #60021 /* ~"그렇다면 이 사실을 *알고* 이 문제에 대해서는 더 이상 언급하지 마시오." 다콘의 목소리는 마치 비수와 같다. "내가 영원히 진실을 알지 못할 것이라는 사실을 *알도록* 하시오, 왜냐하면 나로서는 저주받은 평원에서의 저서몬의 의중을 결코 알 수 없기 때문이오." 그는 석탄처럼 시커먼 눈으로 손에 쥔 원을 노려본다. "그리고 나는 저서몬의 깨어지지 않은 원 때문에 내 자신을 *알지* 못하오."~ */
  IF ~~ THEN REPLY #60022 /* ~"알겠소, 다콘. 이 일에 대해서는 더 이상 얘기하지 않겠소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 311.0
  SAY #60023 /* ~"나는 *알지* 못하오. '사람들'은 분열되었고, 그로 인해 '사람들'은 고통받았소. 깨어지지 않은 원을 읽으면서 나는 내가 제5원의 *앎*을 통해 '하나의 힘'을 사용함으로서 슈라'크트'로에 제6원의 운명을 야기시켰다는 사실을 *알게* 되었소. 그 행위를 통해 나는 사람들을 분열시켰소. 많은 이들이 고통을 받았소. 나는 슈라'크트'로를 결코 잊지 않을 것이오."~ */
  IF ~~ THEN REPLY #60024 /* ~"다콘... 내가 *알고* 싶은 것이 하나 더 있소. 왜 빌콰의 눈이 저서몬의 원에 포함된 거요? 그건 이상하오. 그것은 사람들이 어떻게 해서 동족의 배신으로부터 득을 보았는지에 대해 얘기하고 있소. 그건-"~ */ GOTO 312
END

IF ~~ THEN BEGIN 318 // from: 193.3 351.0
  SAY #60025 /* ~다콘은 기다리고 있다.~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #60026 /* ~"내게 무기를 쓰는 법에 대해 가르쳐 줄 수 있겠소, 다콘?"~ */ GOTO 351
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #60027 /* ~"나는 내 현재 직업을 버리고 다시 무기를 쓰는 법에 대해 공부하고 싶소, 다콘. 날 훈련시켜 줄 수 있겠소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 286
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60028 /* ~"나는 내 현재 직업을 버리고 다시 마법에 대해 공부하고 싶소, 다콘. 날 훈련시켜 줄 수 있겠소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 257
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60029 /* ~"나는 내 현재 직업을 버리고 다시 마법에 대해 공부하고 싶소, 다콘. 날 훈련시켜 줄 수 있겠소?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 288
  IF ~  Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60030 /* ~"내게 마법에 대해 가르쳐 줄 수 있게소, 다콘?"~ */ GOTO 290
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #68062 /* ~"내게 마법에 대해 가르쳐 줄 수가 있겠소, 다콘?"~ */ GOTO 363
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60031 /* ~"나는 저서몬의 깨어지지 않은 원을 읽었소. 나는 당신과 저서몬의 가르침에 대해 더 얘기를 나누고 싶소."~ */ GOTO 294
  IF ~~ THEN REPLY #60032 /* ~"실은 대신 다른 질문을 하고 싶소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60033 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 294.12
  SAY #60034 /* ~다콘은 침묵한다. "이 제7원에는 어떤 내용이 담겨 있소?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60035 /* ~"그것은 시간이 적이 아니라 친구라고 얘기하고 있소. 그것은 인내가 가장 작은 노력조차도 제국의 심장을 찌를 수 있을 정도로 날카롭게 연마할 수 있다고 말해주고 있소. 지금 당장의 승리가 비록 하찮은 것일지라도 그것이 오랜 시간에 걸쳐 쌓이면 보다 큰 위업도 이룩할 수가 있소."~ */ GOTO 320
  IF ~~ THEN REPLY #60036 /* ~"모르겠소... 그것은 시간과 노고에 대해 얘기하고 있으나 그것에 담긴 뜻은 아직 알아내지 못했소. 만약 그 안에 담긴 지혜를 이해하게 되면 당신과 공유하도록 하겠소."~ */ EXIT
  IF ~~ THEN REPLY #60037 /* ~"지금은 얘기하지 않겠소. 나에게는 다른 *알고* 싶은 것들이 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #60038 /* ~"다른 기회에 당신과 공유하기로 하겠소. 지금 당장은 여행을 계속합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #60039 /* ~다콘은 잠시 침묵한다. "이 원의 내용을 내게 *알려* 주겠소?"~ */
  IF ~~ THEN REPLY #60040 /* ~저서몬의 깨어지지 않은 원을 받아서 제7원을 연다.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",16)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle07",Protagonist,1,0,0)
GiveItemCreate("Circle07",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 321
  IF ~~ THEN REPLY #60041 /* ~"그러리다. 하지만 지금은 아니오. 나에게는 다른 *알고* 싶은 것들이 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #60042 /* ~"지금은 아니오... 다른 기회에 당신과 공유하기로 하겠소. 지금 당장은 여행을 계속합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #60043 /* ~당신이 원반을 받아서 연결 고리들을 뒤틀자, 그 안에서 *두* 개의 석판이 당신 손으로 미끄러져 나온다. 당신으로선 그것들이 어디에서 나왔는지 알 수가 없다, 그러나 깨어지지 않은 원은 멀쩡한 듯하다 - 제7원은 아직도 남아 있다. 다콘은 조용히 당신을 지켜본다,~ */
  IF ~~ THEN REPLY #60044 /* ~"여기에는 금속판이 두 개가 있소... 당신과 내가 그것들을 함께 연구하라는 뜻이 아니겠소?"~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #60045 /* ~다콘은 잠시 침묵한다. "당신은 원에 대해 많은 것을  *알게* 되었소, 그리고 당신의 *앎*은 내 것보다 더 큰 무게를 지니오." 다콘은 당신을 마주본다. "당신의 길이 곧 나의 길이라는 *알도록* 하시오. 당신이 나를 통해 저서몬의 길을 *알게* 된 것처럼, 나 역시 당신을 통해 저서몬의 길을 *알게* 될 것이오."~ */
  IF ~~ THEN REPLY #60046 /* ~"금속판에 대해서는 나중에 연구하도록 합시다. 나에게는 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60047 /* ~"좋소, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 294.13
  SAY #60048 /* ~다콘은 침묵한다. 그가 다시 입을 열자... 그의 목소리는 조용하며, 경건함마저 느껴진다. "이 제8원에는 어떤 내용이 담겨 있소?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60049 /* ~"그것은 집중과 극기에 대해... 그리고 자신을 *알지* 못하는 것이 어떻게 사람을 분열시킬 수 있는지에 대해 얘기하고 있소. 그것은 또한 그 분열이 초래하는 약점에 대해서도 말하고 있소. 그것은 자신을 *앎*으로서 힘을 얻을 뿐만 아니라 집중을 통해서 적의 약점을 발견하라고 말해주는 듯하오."~ */ GOTO 324
  IF ~~ THEN REPLY #60050 /* ~"모르겠소... 그것은 집중과 분열에 대해 얘기하고 있으나 그것에 담긴 뜻은 아직 알아내지 못했소. 만약 그 안에 담긴 지혜를 이해하게 되면 당신과 공유하도록 하겠소."~ */ EXIT
  IF ~~ THEN REPLY #60051 /* ~"지금은 얘기하지 않겠소. 나에게는 다른 *알고* 싶은 것들이 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #60052 /* ~"다른 기회에 당신과 공유하기로 하겠소. 지금 당장은 여행을 계속합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #60053 /* ~다콘은 잠시 침묵한다. "당신은 이 원의 내용을 내게 *알려* 주겠소?"~ */
  IF ~~ THEN REPLY #60054 /* ~저서몬의 깨어지지 않은 원을 받아서 제8원을 연다.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",19)
GiveExperience(Protagonist,10000)
GiveExperience("Dakkon",10000)
GiveItemCreate("Circle08",Protagonist,1,0,0)
GiveItemCreate("Circle08",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 325
  IF ~~ THEN REPLY #60055 /* ~"그러리다. 하지만 지금은 아니오. 나에게는 다른 *알고* 싶은 것들이 있소, 다콘..."~ */ GOTO 193
  IF ~~ THEN REPLY #60056 /* ~"지금은 아니오... 다른 기회에 당신과 공유하기로 하겠소. 지금 당장은 여행을 계속합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY #60057 /* ~당신이 원반을 받아서 연결 고리들을 뒤틀자, 그 안에서 *두* 개의 석판이 당신 손으로 미끄러져 나온다. 당신으로선 그것들이 어디에서 나왔는지 알 수가 없다, 그러나 깨어지지 않은 원은 멀쩡한 듯하다 - 제8원은 아직도 남아 있다. 다콘은 조용히 당신을 지켜본다,~ */
  IF ~~ THEN REPLY #60058 /* ~"여기에는 금속판이 두 개가 있소... 당신과 내가 그것들을 함께 연구하는 것이 좋을 것 같소. 나는 당신이 제8원을 *알게* 되면 당신도 두 하늘의 선언을 했을 때의 저서몬의 심중을 알게 되리라고 생각하오. 그가 한 말은 *일리티드*가 아니라 사람들을 대변하는 것이었소." ~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #60059 /* ~다콘은 석판들을 쳐다보며 기하도형적 배열을 연구한다, 그리고 고개를 쳐들고는 당신을 마주본다. 그의 칼은 변화를 거듭하여 전에 당신이 보았던 광채는 이제 은백색의 작렬하는 빛으로 변했다. 왠지 그는 더 강해진 것처럼 보인다. ~ */
  IF ~~ THEN DO ~IncrementGlobal("Githzerai","GLOBAL",3)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,2)
PermanentStatChange("Dakkon",CON,RAISE,2)
SetAnimState("Dakkon",ANIM_MIMEATTACK1)
~ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #60060 /* ~"죽음이 당신을 찾아오면 내가 그의 칼을 내 칼로 맞받아 칠 것이라는 것을 *알도록* 하시오. 당신 주변의 모든 이들이 죽더라도 나는 당신을 위해 살리라는 것을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60061 /* ~"죽더라도 우리는 같은 날 같은 시에 죽을 것이오, 다콘. 그것은 두 죽음은 하나의 선언이 될 것이오."~ */ JOURNAL #60062 /* ~내가 제8원을 발견한 일이 다콘으로 하여금 스스로를 보다 잘 이해할 수 있도록 해주고, 또한 그를 괴롭히고 있던 *의심*을 제거해준 것 같다. 내가 제8원에 대한 설명을 해주자 그는 오랜 세월 동안 그를 짓누르고 있던 멍에에서 벗어났다. 내 얘기를 듣고 다콘은 두 죽음은 하나의 선언을 했으며, 그 선언에서 그는 만약 죽음이 내게 다가온다면 그는 자신의 칼로서 그와 맞서겠다고 맹세했다.~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 232.3
  SAY #60063 /* ~"그 심벌들은 과거에 당신과 함께 여행한 사람들 넷에 대해 말하고 있소."~ */
  IF ~~ THEN REPLY #60064 /* ~"이들은 어떤 넷이오?"~ */ DO ~SetGlobal("Dakkon_Old_Companions","GLOBAL",1)
~ JOURNAL #60068 /* ~다콘은 나와 함께 여행을 했던 네 사람에 대해 얘기해 주었다: 그녀를 알았으나 사랑은 몰랐던 남자를 사랑했던 여자, 눈이 먼 궁수, 친구, 그리고 노예.~ */ GOTO 329
  IF ~~ THEN REPLY #60065 /* ~"실은 우리들의 여행에 대해 질문할 것이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #60066 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60067 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 232.4 328.0
  SAY #60069 /* ~"그 문신은 네 사람에 대해 얘기하고 있소. "그들 중 하나는 여자로, 그녀를 *알고* 그녀를 사랑하지 않는다는 것을 *안* 남자를 사랑했소. 또 한 사람은 장님으로, 인간의 눈으로 볼 수 없는 것들을 보았소. 세 번째는 메이지의 애완동물이자 종복 같은 존재로 돈에 팔려 예속된 자였소. 그리고 마지막 한 명은 노예였소."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60070 /* ~"그들 중 누가 당신이었소? 노예가 당신이었소?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60071 /* ~"그들 중 누가 당신이었소? 노예가 당신이었소?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60072 /* ~"그리고 당신이 노예였소, 다콘?"~ */ GOTO 330
  IF ~~ THEN REPLY #60073 /* ~"내게 그 네 사람에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 332
  IF ~~ THEN REPLY #60074 /* ~"왜 내게 이 사실에 대해 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~~ THEN REPLY #60075 /* ~"알겠소. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60076 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 329.0 329.1 329.2 333.3 334.1 335.1 337.0
  SAY #60077 /* ~다콘은 잠시 침묵한다, 그리고 그의 칼의 표면은 마치 무슨 소란이라도 난듯 요동친다. "이 사람이 당신에게 은혜를 입었다는 사실을 *알도록* 하시오. 은혜를 입음으로서 나는 노예가 되었소."~ */
  IF ~~ THEN REPLY #60078 /* ~"어떻게 해서 그렇게 되었소?"~ */ GOTO 331
  IF ~~ THEN REPLY #60079 /* ~"당신은 내게 과거에 나와 함께 여행했던 네 사람에 대해 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 333
  IF ~~ THEN REPLY #60080 /* ~"왜 당신은 문신에 새겨진 넷에 대해 내게 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~~ THEN REPLY #60081 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60082 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #60083 /* ~"*그것이 긴 이야기라는 것을 *알도록* 하시오. 그것은 나와 한때 당신이었던 자와의 문제요. 그 이야기를 듣고자 한다면, 그것이 긴 이야기라는 것을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60084 /* ~"듣고 싶소."~ */ GOTO 218
  IF ~~ THEN REPLY #60085 /* ~"당신은 내게 과거에 나와 함께 여행했던 네 사람에 대해 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 333
  IF ~~ THEN REPLY #60086 /* ~"그 일에 대해선 나중에 듣겠소. 왜 당신은 문신에 새겨진 넷에 대해 내게 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~~ THEN REPLY #60087 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60088 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 329.3 334.2 335.2 337.1 338.1 339.0 339.2 340.1 340.2
  SAY #60089 /* ~"여자는 젊었소. 그녀는 시간을 숭배했으며, 이는 그녀의 혈통에 앞으로 일어날 일을 *알* 수 있는 힘이 있었기 때문이오. 궁수는 맹인이었으나, 다른 사람들이 볼 수  없는 것을 볼 수 있었소. 그의 화살은 늘 적의 심장에 명중했소. 노예와 종복에 대해서는 별로 *아는* 바가 없소."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60090 /* ~"앞으로 일어날 일들을 본다? 혹시 그 여자의 이름이 데이오나라는 아니었소?"~ */ JOURNAL #60097 /* ~나는 데이오나라가 과거에 나와 함께 여행을 했다는 사실을 알게 되었다. 다콘의 말로는 그녀에게는 어떤 일이 일어나기 전에 그것을 미리 "볼" 수 있는 능력이 있었다고 한다.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60091 /* ~"앞으로 일어날 일들을 본다? 혹시 그 여자의 이름이 데이오나라는 아니었소?"~ */ JOURNAL #60097 /* ~나는 데이오나라가 과거에 나와 함께 여행을 했다는 사실을 알게 되었다. 다콘의 말로는 그녀에게는 어떤 일이 일어나기 전에 그것을 미리 "볼" 수 있는 능력이 있었다고 한다.~ */ GOTO 334
  IF ~~ THEN REPLY #60092 /* ~"궁수에 대해 더 얘기해주시오."~ */ GOTO 335
  IF ~~ THEN REPLY #60093 /* ~"왜 당신은 문신에 새겨진 넷에 대해 내게 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~~ THEN REPLY #60094 /* ~"당신은 왜 내가 이 네 사람과 함께 여행을 했는지 아시오?"~ */ GOTO 340
  IF ~~ THEN REPLY #60095 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60096 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.1 331.1 334.3 335.3 337.2 338.2 339.1 339.3 341.1 341.2
  SAY #60098 /* ~"여자는 젊었소. 그녀는 시간을 숭배했으며, 이는 그녀의 혈통에 앞으로 일어날 일을 *알* 수 있는 힘이 있었기 때문이오. 궁수는 맹인이었으나, 다른 사람들이 볼 수  없는 것을 볼 수 있었소. 그의 화살은 늘 적의 심장에 명중했소. 종복에 대해서는 별로 *아는* 바가 없소."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60099 /* ~"앞으로 일어날 일들을 본다? 혹시 그 여자의 이름이 데이오나라는 아니었소?"~ */ JOURNAL #60107 /* ~나는 데이오나라와 다콘이 과거에 나와 함께 여행을 했다는 사실을 알게 되었다. 다콘의 말로는 그녀에게는 어떤 일이 일어나기 전에 그것을 미리 "볼" 수 있는 능력이 있었다고 한다.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60100 /* ~"앞으로 일어날 일들을 본다? 혹시 그 여자의 이름이 데이오나라는 아니었소?"~ */ JOURNAL #60107 /* ~나는 데이오나라와 다콘이 과거에 나와 함께 여행을 했다는 사실을 알게 되었다. 다콘의 말로는 그녀에게는 어떤 일이 일어나기 전에 그것을 미리 "볼" 수 있는 능력이 있었다고 한다.~ */ GOTO 334
  IF ~~ THEN REPLY #60101 /* ~"궁수에 대해 더 얘기해주시오."~ */ GOTO 335
  IF ~~ THEN REPLY #60102 /* ~"당신은 어떻게 해서 내 노예가 되었소?"~ */ GOTO 330
  IF ~~ THEN REPLY #60103 /* ~"왜 당신은 문신에 새겨진 넷에 대해 내게 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~~ THEN REPLY #60104 /* ~"당신은 왜 우리가 함께 여행을 했는지 아시오?"~ */ GOTO 341
  IF ~~ THEN REPLY #60105 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60106 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 332.0 332.1 333.0 333.1
  SAY #60108 /* ~"그녀의 이름이 데이오나라였다는 것을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60109 /* ~"그 궁수에 대해서 어떤 것을 아시오?"~ */ GOTO 335
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60110 /* ~"당신은 어떻게 해서 내 노예가 되었소?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60111 /* ~"다른 사람들에 대해 얘기해주시오."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60112 /* ~"다른 사람들에 대해 얘기해주시오."~ */ GOTO 333
  IF ~~ THEN REPLY #60113 /* ~"왜 당신은 문신에 새겨진 넷에 대해 내게 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60114 /* ~"당신은 왜 내가 이 네 사람과 함께 여행을 했는지 아시오?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60115 /* ~"당신은 왜 우리가 함께 여행을 했는지 아시오?"~ */ GOTO 341
  IF ~~ THEN REPLY #60116 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60117 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 332.2 333.2 334.0
  SAY #60118 /* ~"나는 그에 대해 별로 *아는* 것이 없소. 나는 그가 군인이었으며, 술이 그의 인생에서 중요한 비중을 차지했었다는 것을 아오. 눈이 먼 탓에 그는 다르게 보는 법을 *알게* 되었소. 이를 *앎으로서* 그는 강해졌소. 하지만 그는 자신의 힘을 *알지* 못했소."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #60119 /* ~"그의 이름이 무엇이었는지 아시오?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 336
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60120 /* ~"당신은 어떻게 해서 내 노예가 되었소?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60121 /* ~"다른 사람들에 대해 얘기해주시오."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60122 /* ~"다른 사람들에 대해 얘기해주시오."~ */ GOTO 333
  IF ~~ THEN REPLY #60123 /* ~"왜 당신은 문신에 새겨진 넷에 대해 내게 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60124 /* ~"당신은 왜 내가 이 네 사람과 함께 여행을 했는지 아시오?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60125 /* ~"당신은 왜 우리가 함께 여행을 했는지 아시오?"~ */ GOTO 341
  IF ~~ THEN REPLY #60126 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60127 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #60128 /* ~다콘이 대답을 하기 전에 당신은 이미 그 답을 안다. 후두부가 근질거린다, 그리고 당신은 그 이름이 진흙투성이의 대양과도 같은 기억의 바다에서 떠오르는 것을 느낀다. ~ */
  IF ~~ THEN REPLY #60129 /* ~메아리: "그의 이름은 *자카리아*였소... 그는 맹인이었으나 시력을 잃은 대신 남에게 보이지 않는 것을 볼 수 있는 제2의 시각을 얻었소. 그는 궁수였으며 그의 화실은 어김없이 그의 적들의 심장을 꿰뚫었소."
~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ JOURNAL #60130 /* ~다콘과 이야기하던 중 나는 과거에 나와 함께 여행한 눈이 먼 궁수의 이름을 기억해냈다. 그의 이름은 자카리아였고, 그는 적의 심장을 화살로 정확히 노릴 수 있게 해준 제2의 시각을 가지고 있었다.~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #60131 /* ~"그의 이름이 자카리아였다는 것을 *알도록* 하시오. 그리고 그의 이름이 많은 적들의 심장을 꿰뚫었다는 사실을 *알도록* 하시오."~ */
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60132 /* ~"당신은 어떻게 해서 내 노예가 되었소?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60133 /* ~"다른 사람들에 대해 얘기해주시오."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60134 /* ~"다른 사람들에 대해 얘기해주시오."~ */ GOTO 333
  IF ~~ THEN REPLY #60135 /* ~"왜 당신은 문신에 새겨진 넷에 대해 내게 얘기하고 싶어하지 않았던 거요?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60136 /* ~"당신은 왜 내가 이 네 사람과 함께 여행을 했는지 아시오?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60137 /* ~"당신은 왜 우리가 함께 여행을 했는지 아시오?"~ */ GOTO 341
  IF ~~ THEN REPLY #60138 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60139 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 329.4 330.2 331.2 332.3 333.4 334.4 335.4 337.3
  SAY #60140 /* ~"그 네 명은 내가 *아는* 심벌에 의해 묶여 있었소."~ */
  IF ~~ THEN REPLY #60141 /* ~"무슨 심벌 말이오?"~ */ GOTO 339
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60142 /* ~"지금은 그 심벌에 대해 관심이 없소. 문신에 새겨진 넷에 대해 당신이 아는 것을 모두 얘기해주시오."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60143 /* ~"지금은 그 심벌에 대해 관심이 없소. 문신에 새겨진 넷에 대해 당신이 아는 것을 모두 얘기해주시오."~ */ GOTO 333
  IF ~~ THEN REPLY #60144 /* ~"이 일에 대해선 나중에 이야기합시다. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60145 /* ~"관두시오, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 338.0 340.0 341.0
  SAY #60146 /* ~"그 심벌은 고통이오. 당신은 늘 그것을 지니고 있었으며, 당신의 정신은 모르고 있더라도 당신의 육신은 고통받고 있다는 사실을 *알고* 있었다고 휄이 말했소."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60147 /* ~"심벌 얘기는 이제 그만하시오. 문신에 새겨진 넷에 대해 당신이 아는 것을 모두 얘기해주시오."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60148 /* ~"심벌 얘기는 이제 그만하시오. 문신에 새겨진 넷에 대해 당신이 아는 것을 모두 얘기해주시오."~ */ GOTO 333
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60149 /* ~"알겠소. 문신에 새겨진 넷에 대해서 더 얘기해줄 수 있겠소?"~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60150 /* ~"알겠소. 문신에 새겨진 넷에 대해서 더 얘기해줄 수 있겠소?"~ */ GOTO 333
  IF ~~ THEN REPLY #60151 /* ~"알겠소. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60152 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 332.4 334.5 335.5 337.4
  SAY #60153 /* ~"문신은 그들이 걸은 길에 대해서는 아무 것도 말해주지 않고 있소, 단지 그들을 묶은 심벌에 대해 얘기할 뿐이오. 그 길은 당신만이 *알지도* 모른다는 사실을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60154 /* ~"내게 그 심벌에 대해 얘기해주시오."~ */ GOTO 339
  IF ~~ THEN REPLY #60155 /* ~"심벌 얘기는 이제 그만하시오. 문신에 새겨진 그 네 사람에 대해 당신이 아는 것을 모두 얘기해주시오."~ */ GOTO 332
  IF ~~ THEN REPLY #60156 /* ~"알겠소. 문신에 새겨진 넷에 대해서 더 얘기해줄 수 있겠소?"~ */ GOTO 332
  IF ~~ THEN REPLY #60157 /* ~"알겠소. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60158 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 333.5 334.6 335.6 337.5
  SAY #60159 /* ~"그 길은 당신만이 *알고* 있었다는 사실을 *알도록* 하시오, 그리고 우리가 그것에 대해 *알지* 못하는 것은 당신의 뜻에 의한 것이었소. 당신의 길을 걸은 자들은 자신들을 묶은 심벌에 대해서만 *알고* 있었다는 사실을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60160 /* ~알겠소... 내게 그 심벌에 대해 얘기해주시오."~ */ GOTO 339
  IF ~~ THEN REPLY #60161 /* ~"심벌 얘기는 이제 그만하시오. 문신에 새겨진 다른 것들에 대해 당신이 아는 것을 모두 얘기해주시오."~ */ GOTO 333
  IF ~~ THEN REPLY #60162 /* ~"알겠소. 문신에 새겨진 넷에 대해서 더 얘기해줄 수 있겠소?"~ */ GOTO 333
  IF ~~ THEN REPLY #60163 /* ~"알겠소. 지금은 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60164 /* ~"내가 알고자 했던 건 그게 전부요, 다콘. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 342 // from: 270.0
  SAY #60165 /* ~"'사람들'의 언어는 역사에 바탕을 두고 있소. 우리에게 있어 모든 것은 이야기가 되오. 암유는 강력한 도구로 영웅적인 행동을 장려하고, 악행을 경계하도록 하는 본보기로 이용되오. '토릭의 테이블'에 대해 얘기할 때 우리가 토릭이 그의 호의와 손님에 대한 친절로 유명했다는 걸 기억한다는 사실을 *알도록* 하시오. 반면 '셀칸트의 심장'에 대해 얘기할 때 우리는 셀칸트의 음탕함과 잔인함을 상기하오."~ */
  IF ~~ THEN REPLY #60166 /* ~"이해하오. 내게 가르쳐 주겠소?"~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,600)
~ JOURNAL #60167 /* ~다콘은 내게 기스저라이의 언어에 대해 많은 것을 가르쳐 주었다. 그 언어는 암유와 전승에 바탕을 둔 듯했다... 자세한 내용까지 모두  알지는 못하나, 만약 새로운 단어를 듣게 되면 다콘에게  그 의미에 대해 물어볼 수가 있다. ~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #60168 /* ~다콘은 당신에게 몇 가지 일반적인 표현들에 대해 가르친다: 현자가 "아나크의 서를 썼다." 배신 행위를 비난할 때는 "빌콰의 눈"을 기억하라고 한다. 인심 좋은 사람들에게는 그들의 "벽장이 비었다"고 말한다. 일반적인 인사로는 "반갑소, 칼을 울리는 자여"와 "저카이의 일족이 그대에게 경의를 표하오" 등이 있으며 이에 대해서는 "그리고 여행자는 만족하오"라고 대답해야 한다. 다콘은 뛰어난 교사다. 그의 수업을 받은 후에 당신은 다른 기스저라이들과 제대로 인사를 주고받을 수 있을 것이라는 자신감이 생긴다. ~ */
  IF ~~ THEN REPLY #60169 /* ~"기스저라이에 대해 알고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #60170 /* ~"고맙소, 다콘. 내겐 다른 *알고* 싶은 것들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60171 /* ~"지금은 더 이상 듣고 싶지 않소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 224.0
  SAY #60172 /* ~다콘이 말을 하자 당신의 시야가 바깥쪽으로 번진다, 그리고 뭔가가 기어가는 듯한 감각이 당신의 후두부를 꿈틀거리면서 지나간다... 잠시 당신은 현기증을 느낀다. 당신의 시야는 갑자기 뒤죽박죽 엉망진창이 된다, 그리고 당신은 다른 장소에 있다, *과거*의 어느 장소에...~ */
  IF ~~ THEN REPLY #60173 /* ~기억에 몸을 맡긴다...~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetAnimState("Dakkon",ANIM_MIMESTAND)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 345
  IF ~~ THEN REPLY #60174 /* ~기억을 떨쳐버린다...~ */ GOTO 225
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #60175 /* ~당신 주변의 모든 것들이 혼란 상태에 빠져 있다 - 당신의 시야는 동시에 흐릿하고, 아찔하고, 핑핑 돌고 있다... 안개, 불, 진흙으로 만들어진 섬, 그리고 얼음으로 뒤덮인 바위 등이 마치 물고기처럼 혼돈의 바다를 헤엄쳐 다니며 서로 충돌하거나 분해되고 있으며, 물방울들은 호를 그리며 울부짖는 대기를 난무하며 당신의 피부를 이빨처럼 내려찍는다. 당신은 기침을 해서 메스꺼움을 가라앉히고 정신을 가다듬는다. 이 곳은 *림보*로 모든 것이 혼돈이며 안정된 것이라고는 없는 차원이다... 당신은 당신 앞에 누워 있는 죽어가는 사내에게 주의를 집중한다. 다름 아닌 그가 당신이 이 곳까지 온 이유이다.~ */
  IF ~~ THEN REPLY #60176 /* ~메아리: *저스*가 아직 살아있는지 살펴본다."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 346
  IF ~~ THEN REPLY #60177 /* ~기억을 떨쳐버린다...~ */ GOTO 225
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY #60178 /* ~이 '남자'는 기스저라이이다. 그의 몸은 그의 주변에서 소용돌이치고 있는 흙덩이 속에 묻혀 있다 - 그는 무의식적으로 혼돈의 원소로부터 무덤을 만들어 낸 것이다, 그리고 약간의 불과 물이 그의 얼굴을 스치고 지나가도, 그는 아무런 반응도 보이지 않는다. 그의 손은 잿빛이며, 그의 칠흑 같은 눈은 초점을 잃었다 - 그의 앙상한 몸으로 미루어 볼 때 그는 기아에 시달리고 있는 듯하나, 당신은 그것이 그의 증세들 중 가장 경미한 것이라는 것을 안다. 그에게 치명타를 가한 것은 다름 아닌 그의 신념이었다. ~ */
  IF ~~ THEN REPLY #60179 /* ~메아리: 그가 지니고 다니는 칼을 찾는다. ~ */ GOTO 347
  IF ~~ THEN REPLY #60180 /* ~기억을 떨쳐버린다...~ */ GOTO 225
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #60181 /* ~그의 흐느적거리는 왼쪽 손에는 뒤틀린 금속덩어리가 쥐어져 있다. 그 표면은 녹아서 그의 손을 마치 장갑처럼 뒤덮고 있다. 당신이 지켜보자 그것은 병든 뱀처럼 꿈틀거리며 쉿 소리를 낸다. 기스저라이는 그것을 자각하고 있지 못하는 것 같다... 하지만 당신이 여기 온 것은 바로 그 무기 때문이다.  ~ */
  IF ~~ THEN REPLY #60182 /* ~메아리: "다콘, 혼돈의 바다에 가라앉은 슈라'크트'로의 *저스*이자 *카락* 칼의 마지막 소지자여, 내가 혼돈이 아닌 돌에 새겨진, 의지에 의해 깨어지지 않는 원에 새겨진 저서몬의 말들을 가지고 그대에게 왔다는 사실을 알도록 하시오."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 348
  IF ~~ THEN REPLY #60183 /* ~기억을 떨쳐버린다...~ */ GOTO 225
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #60184 /* ~'저서몬'이라는 말을 듣자, 다콘의 눈이 희번덕거린다, 그리고 당신에게 초점을 맞추려고 한다. 그는 노력을 해서 입을 억지로 여나, 건조한 쉿 소리만 나올 뿐이다. 당신은 배낭에서 돌을 꺼내 그가 볼 수 있도록 내민다.~ */
  IF ~~ THEN REPLY #60185 /* ~메아리: "이 돌에 새겨진 저서몬의 말들은 진실된 것이며 분열된 그대의 정신이 더 이상 분열되어 있을 필요가 없다는 것을 알도록 하시오. 이 돌을 받기만 하면 당신은 *알게* 될 것이오."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 349
  IF ~~ THEN REPLY #60186 /* ~기억을 떨쳐버린다...~ */ GOTO 225
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #60187 /* ~다콘의 눈은 저서몬의 깨어지지 않은 원을 보며 깜박인다. 잠시 당신은 그가 그것을 알아보기에는 너무 늦었을지도 모른다고 생각한다. 바로 그 때 그의 오른쪽 손이 씰룩거린다, 그리고 그는 자신의 흙으로 된 감옥에서 천천히 일어선다, 그리고 거기서 떨어져 나오는 작은 흙덩어리들은 림보의 혼돈스런 바람에 의해 순식간에 분해되어 버린다. 그의 뼈만 남은 손은 물에 빠진 사람처럼 돌을 꽉 움켜쥔다, 그리고 그의 눈이 번득인다.~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #60188 /* ~메아리: "슈라'크트'로의 *저스* 다콘, 내가 그대를 구했다는 것을 알도록 하시오."~ */ DO ~SetGlobal("Memory_Shraktlor","GLOBAL",1)
GiveExperience(Protagonist,6000)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #60191 /* ~다콘과 말하던 중 나는 내가 샤라'크트'로에서 저서몬의 깨어지지 않는 원으로 그의 목숨을 구했다는 사실을 기억해냈다... 기묘한 건 내가 구하려 했던 것은 그가 아니라 그의 *카락* 칼이었다는 사실이다. 하지만 난 그 *이유*를 모르겠다. ~ */ GOTO 350
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #60189 /* ~메아리: "슈라'크트'로의 *저스* 다콘, 내가 그대를 구했다는 것을 알도록 하시오."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 350
  IF ~~ THEN REPLY #60190 /* ~기억을 떨쳐버린다...~ */ GOTO 225
END

IF ~~ THEN BEGIN 350 // from: 349.0 349.1
  SAY #60192 /* ~다콘은 돌로부터 눈을 떼고 당신을 쳐다본다, 그리고 그는 다시 속삭이듯 말을 하려고 하나, 입이 너무 말라 말이 나오지 않는다. 그는 눈을 천천히 깜박이고 말문을 연다. 그의 목소리는 속삭임보다 간신히 큰 정도이나, 그의 입에서 나오는 말은 당신이 듣고자 하던 말이다,. "내 목숨은... 당신 목숨이 다하는 날까지 당신 것이오...: ~ */
  IF ~~ THEN REPLY #60193 /* ~눈을 감고 현재로 돌아온다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 225
END

IF ~~ THEN BEGIN 351 // from: 318.0
  SAY #60194 /* ~다콘은 고개를 젓는다. "나는 당신이 다시 전사의 걷도록 인도해 줄 수는 있으나, 당신의 전사로서의 기량을 향상시켜 줄 순 없소. 내 무기는 강철로 만들어진 무기가 아니라 *의지*와 스스로에 대한 *앎*으로 만들어진 무기이기 때문이오."~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60195 /* ~"다른 훈련도 도와줄 수는 없겠소...?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~~ THEN REPLY #60196 /* ~"알겠소. 만약 다시 화이터의 길을 걷고자 할 경우에는 당신에게 도움을 청하겠소. 그 밖에도 다른 질문들이 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60197 /* ~"그럼 관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 193.5
  SAY #60198 /* ~"해그... 그녀는 아무 것도 *알지* 못하오. 다콘의 칼이 물결친다, 그리고 당신이 지켜보는 가운데 칼날은 무디어지고 회색으로 변색된다. 그는 이를 악문 채로 얘기한다. "나는 이 일에 대해 이야기하는 것을 *원하지* 않소.~ */
  IF ~~ THEN REPLY #60199 /* ~"나는 당신이 그걸 말하는 걸 들고 싶소... 사실 그 대화에서 래벌이 한 말들 중에는 내 관심을 끈 것들이 적지 않았소."~ */ GOTO 353
  IF ~~ THEN REPLY #60200 /* ~"알겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60201 /* ~"그럼 그 일에 대해서는 더 이상 얘기하지 않겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #60202 /* ~"당신의 의지가 곧 내 *의지*라는 사실을 *알도록* 하시오. 당신이 말을 하면 나는 반드시 들어야만 한다는 사실을 *알도록* 하시오. 당신의 말이 내 칼을 다른 자의 목으로 안내하거나 그 곳에서 치울 수 있다는 사실을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60203 /* ~"뭐라고? 하지만 왜?~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 354
  IF ~~ THEN REPLY #60204 /* ~"이 일에 대해선 더 이상 얘기하지 않도록 하겠소. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60205 /* ~"더 이상 듣고 싶지 않소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #60206 /* ~다콘은 당신을 마주 보는 것이 견딜 수 없는 듯 당신을 그냥 지나치고 그 너머를 바라보고 있는 것 같다. "그대의 길이 내 길이오. 나는 당신에게 사슬로 묶여 있소.."~ */
  IF ~~ THEN REPLY #60207 /* ~"당신이 내 노예라고?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #60208 /* ~"당신의 의지가 곧 내 *의지*라는 사실을 *알도록* 하시오. 당신이 말을 하면 나는 반드시 들어야만 한다는 사실을 *알도록* 하시오. 당신의 말이 내 칼을 다른 자의 목으로 안내하거나 그 곳에서 치울 수 있다는 사실을 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60209 /* ~"하지만... 왜, 다콘?"~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #60210 /* ~"그것이... 긴 이야기라는 것을 *알도록* 하시오, 그리고 그 이야기를 통해 얻을 것은 아무 것도 없다는 것도 *알도록* 하시오."~ */
  IF ~~ THEN REPLY #60211 /* ~"듣고 싶소."~ */ JOURNAL #59286 /* ~다콘은 내게 그의 예속의 본질에 대해 말해주었다... 내가 그의 생명을 구해주었을 때 그는 내가 죽을 때까지 나를 섬기겠다고 약속했다. 하지만 그는 내가 불사신이란 사실을 알지 못했다. 그 약속을 함으로서 그는 그의 여생을 나에게 바치게 된 셈이다.~ */ GOTO 215
  IF ~~ THEN REPLY #60212 /* ~"그럼 관두시오. 나에겐 *알고* 싶은 것들이 더 있소..."~ */ GOTO 193
  IF ~~ THEN REPLY #60213 /* ~"그럼 그 일에 대해서는 더 이상 얘기하지 않겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from:
  SAY #60401 /* ~"우리가 기스양키를 도와야 하는 거요? 대체 그는 무슨 이유로 자신의 형제들이 엮는 피의 노래를 떠나 이 곳에 온 것이오?~ */
  IF ~~ THEN EXTERN ~DANIZIUS~ 17
END

IF ~~ THEN BEGIN 358 // from:
  SAY #61670 /* ~"저서몬의 길 앞에서는 티끌에 불과하오."~ [DAK204] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 359 // from:
  SAY #61671 /* ~"저서몬에 비하면 나는 아무 것도 아니오."~ [DAK203A] */
  IF ~~ THEN EXTERN ~BGRACE~ 15
END

IF ~~ THEN BEGIN 360 // from:
  SAY #61672 /* ~"기나긴 여로가 날 기다리고 있소. 이것은 다만 시작에 불과하오."~ [DAK203B] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Dakkon","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 361 // from:
  SAY #64995 /* ~"잠깐 기다리시오. 바닥을 주목하시오." 내려다보니 아치로 향하고는... 돌아오지 않는 몇 개의 더러운 발자국이 있다. "많은 자들이 이 곳을 지나갔소. 이 아치는 전이문을 형성하는 것이 틀림없소." ~ */
  IF ~~ THEN REPLY #64997 /* ~"전이문? 어떻게 하면 그것을 열 수가 있소?"~ */ GOTO 362
  IF ~~ THEN REPLY #64998 /* ~"아마 그럴지도. 가세.~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #64996 /* ~"나는 *알지* 못하오, 하지만 이 전이문을 사용한 자들의 수로 미루어 볼 때 열쇠는 귀한 물건일 리가 없소. 아마 이 광장의 주민들이라면 전이문의 사용법을 *알*지도 모르오."~ */
  IF ~~ THEN REPLY #64999 /* ~"그럼 사람들에게 물어보겠소. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 318.5
  SAY #68059 /* ~"이 일에 있어 내가 교사가 될 수 없다는 것을 *알도록* 하시오, 하지만 가이드 역할을 할 수 있다는 사살을 *알도록* 하시오. 나는 인간들이 어떻게 마법을 알게 되었는지 *알지* 못하오. 마법을 배우면 내게 다시 오시오."~ */
  IF ~~ THEN REPLY #68060 /* ~"그럼 메이지가 되고나서 다시 물어보도록 하겠소. 지금으로서는 대신 다른 것들에 대해 물어보고 싶소..."~ */ GOTO 193
  IF ~~ THEN REPLY #68061 /* ~"그럼 우선 마법을 가르쳐 줄 선생부터 찾도록 하겠소. 갑시다."~ */ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",3)
~ THEN BEGIN 364 // from:
  SAY #68195 /* ~당신의 힘이 닿자 다콘이 비틀거리며 숨을 쉰다, 그리고 힘없이 일어난다. 그는 간신히 숨이 붙어 있는 것 같다.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68196 /* ~"다콘, 일찍이 당신은 두 죽음은 하나의 선언을 했소. 지금이 바로 그 때요."~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
SetGlobal("BD_TWO_DEATHS","GLOBAL",1)
JoinPartyEx(TRUE)
~ GOTO 367
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68197 /* ~"다콘, 난 지금 당신 도움이 필요하오. 날 도울 수 있겠소?"~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 365
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68340 /* ~일어나시오, 슈라'크트'로의 다콘, *카락* 칼의 마지막 소지자여. ~ */ GOTO 368
END

IF ~~ THEN BEGIN 365 // from: 364.1 367.0
  SAY #68198 /* ~다콘이 숨을 들이쉬고 스스로를 가다듬자, 그의 칼이 당신이 지켜보는 가운데 날카로워진다. "당신에게 이 칼을 바치리다."~ [DAK025] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68199 /* ~"좋소"~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68200 /* ~"좋소"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68201 /* ~"좋소"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68202 /* ~"좋소"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68203 /* ~"좋소"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68204 /* ~"좋소"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68240 /* ~"좋소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68433 /* ~"좋소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68434 /* ~"좋소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68444 /* ~"좋소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from: 193.4
  SAY #68255 /* ~다콘은 고개를 젓는다. "적이 가까이 있다는 사실을 *알도록* 하시오. 지금은 그 때가 아니오."~ */
  IF ~~ THEN REPLY #68256 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 367 // from: 364.0
  SAY #68270 /* ~당신이 말을 하자 다콘은 눈을 감는다 - 잠시 당신은 그가 더 이상 삶을 유지할 수 없다고 생각한다 - 그러나 바로 그 때 그의 눈이 다시 열린다, 그리고 그의 눈은 더 이상 당신이 기억하던 무딘 검은색이 아니다. 대신 그의 칼과 동일한 금속성의 질감을 지니고 있다, 그리고 당신은 다콘이 *다른* 존재, 전보다 월등히 강한 존재가 되었음을 깨닫는다.~ */
  IF ~~ THEN DO ~GiveExperience("Dakkon",2000000)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,3)
PermanentStatChange("Dakkon",CON,RAISE,3)
FullHealEx("Dakkon")
~ GOTO 365
END

IF ~~ THEN BEGIN 368 // from: 364.2
  SAY #68341 /* ~당신 말을 듣고 다콘은 천천히 고개를 끄덕인다. "당신 목소리... 당신은 마침내 스스로를 알게 되었소?"~ */
  IF ~~ THEN REPLY #68342 /* ~그렇소. 그건... 어려운 일이었소, 그리고 수많은 삶을 필요로 했소. 내가 내 자신을 다시 알기 위해 너무나도 많은 이들이 고통을 받았소.~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #68343 /* ~"스스로를 *앎*은 어려운 길이오."~ */
  IF ~~ THEN REPLY #68344 /* ~그것을 앎으로 해서 나는 내가 이제 곧 어디로 갈지 알게 되었소. 우리가 대화를 나누는 이 순간에도 운명과 시간은 몰아 닥치고 있소. 그리고 나는 이 곳에 오래 머무를 수가 없소. 다콘, 원한다면 당신을 시길로 돌려보내 주겠소. ~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #68345 /* ~다콘은 잠시 침묵한다. 그리고 그가 다시 입을 열었을 때, 그의 목소리는 사슬을 끊듯이 날카롭다. "한때 내가 당신에게 빚을 졌었다는 사실을 *알도록* 하시오. 당신이 내 목숨을 구했다는 사실을 *알도록* 하시오, 그리고 그 빚을 갚기 위해 내가 당신을 따랐다는 사실을 *알도록* 하시오.~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #68346 /* ~"나는 내 목숨으로 당신의 목숨을 대신했소. 빚은 갚았소."~ [DAK030] */
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68347 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68348 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68349 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68350 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68351 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68496 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68497 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68498 /* ~좋소, 다콘. 우리들의 두 죽음은 하나와 같았소. 당신은 자신의 자유를 얻어 이 곳을 떠날 것이오.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",4)
~ THEN BEGIN 372 // from:
  SAY #68412 /* ~다콘은 당신을 바라보며 고개를 끄덕인다. "당신에게 이 칼을 바치리다."~ [DAK025] */
  IF ~~ THEN REPLY #68413 /* ~"좋소. 그것을 쓸 때가 왔소..."~ */ EXIT
END
