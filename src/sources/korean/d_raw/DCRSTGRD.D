// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1536 /* ~당신 눈에 커스트의 경비병들 중 하나의 모습이 들어온다. 구는 피투성이이며 헐떡거리고 있다. "얘기할 시간이 없소. 여력이 있다면 시를... 방어하는 일을 도와주시오." 그는 손을 흔들어 당신에게 가라고 한다.~ */
  IF ~~ THEN REPLY #58830 /* ~"무슨 일이 일어났소?"~ */ GOTO 1
  IF ~~ THEN REPLY #58832 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1538 /* ~"어떤 얼간이가 뭔가를 해방시키는 바람에 우린 카케리에 떨어져 살아 남으려고 발버둥치는 신세가 되었소. 자, 이제 여기서 떠나 도움이 될 만한 일을 하시오."~ */
  IF ~~ THEN REPLY #58831 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1539 /* ~"가서 당신 용무나 보라고 내가 말하지 않았소? 난 진지하오! 가시오!"~ */
  IF ~~ THEN REPLY #58833 /* ~"알겠소."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 3 // from:
  SAY #1540 /* ~"대체 여기 내려와 뭘 하고 있는 거요?"~ */
  IF ~~ THEN REPLY #58834 /* ~"나는 그냥 돌아다니고 있었을 뿐이오."~ */ GOTO 5
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58835 /* ~"저 갑옷에 대해 어떤 것을 아시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #58836 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #58837 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #1541 /* ~"거기서 당장 멈춰!" 경비병들은 공격한다!~ */
  IF ~~ THEN REPLY #58838 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58839 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 6.1
  SAY #58840 /* ~"돌아다녀? 감옥에서? 넌 탈옥을 도우려고 왔군!" 그는 당신에게 자기 무기를 휘두른다!~ */
  IF ~~ THEN REPLY #58858 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58859 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #58841 /* ~"모르겠소. 그것은 내가 기억할 수 있는 한 계속 이 감옥의 일부였소. 우리가 아무리 애를 써도 그 감방은 열 수가 없었소. 그건 꽤 좋은 갑옷이지만 우리로선 접근할 수도 없소. 이제 당신이 대답할 차례요: 여기서 뭘 하고 있는 거요?"~ */
  IF ~~ THEN REPLY #58860 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #58861 /* ~"나는 그냥 돌아다니고 있을 뿐이오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.0
  SAY #58842 /* ~그는 미소짓는다. "당신은 곧 천상계의 합창대에 합류하게 될 거요." 그는 무기를 들고 공격한다!~ */
  IF ~~ THEN REPLY #58862 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58863 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #58843 /* ~커스트 경비병이 보인다. 그는 좀 지루해 하는 것 같다. "무엇을 원하오? 봉쇄 상황이란 걸 모르오"~ */
  IF ~~ THEN REPLY #58864 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 10
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58865 /* ~"로버타 부인이라는 여자가 그녀의 남편인 칼을 죽이려는 음모에 연관되어 있소. 내가 알기로 그는 시장의 조수들 중 하나요."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58866 /* ~"나는 칼 파휘도를 죽인 일에 대해 자수하려 하오."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58867 /* ~"이 도시의 관료들 중 하나가 내게 다른 관료를 죽여달라고 부탁했소. 난 이 일을 당신에게 알려야 한다고 생각했소."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58868 /* ~"난 당신이 날 체포하기를 바라오."~ */ GOTO 15
  IF ~~ THEN REPLY #58869 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #58870 /* ~"책임자를 만나고 싶소."~ */ GOTO 11
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58871 /* ~"이 도시의 관료들 중 하나가 내게 다른 관료를 죽여달라고 부탁했소. 난 이 일을 당신에게 알려야 한다고 생각했소."~ */ GOTO 22
  IF ~~ THEN REPLY #58929 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from: 10.0 11.0 12.1 13.1 14.0 15.2 16.0 17.1 22.0
  SAY #58844 /* ~"이젠 뭘 원하오?"~ */
  IF ~~ THEN REPLY #58872 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #58873 /* ~"책임자를 만나고 싶소."~ */ GOTO 11
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58874 /* ~"로버타 부인이라는 여자가 그녀의 남편인 칼을 죽이려는 음모에 연관되어 있소. 내가 알기로 그는 시장의 조수들 중 하나요."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58875 /* ~"나는 칼 파휘도를 죽인 일에 대해 자수하려 하오."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58876 /* ~"이 도시의 관료들 중 하나가 내게 다른 관료를 죽여달라고 부탁했소. 난 이 일을 당신에게 알려야 한다고 생각했소."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58877 /* ~"난 당신이 날 체포하기를 바라오."~ */ GOTO 15
  IF ~~ THEN REPLY #58878 /* ~"나는 어떤 디바를 찾고 있소."~ */ GOTO 16
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58879 /* ~"이 도시의 관료들 중 하나가 내게 다른 관료를 죽여달라고 부탁했소. 난 이 일을 당신에게 알려야 한다고 생각했소."~ */ GOTO 22
  IF ~~ THEN REPLY #58932 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #58845 /* ~"우리는 역병 때문에 지금 시의 일부를 봉쇄한 상황이오. 원인은 나도 모르겠소, 하지만 그 원인이 밝혀질 때까지는 계속 그 상태가 유지될 거요. 달리 원하는 거라고 있소?"~ */
  IF ~~ THEN REPLY #58880 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #58881 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.6 9.1 17.0
  SAY #58846 /* ~"뭐, 시장? 그는 행정부 건물에 있소. 하지만 만나기는 힘들 거요. 그는 요즘 *아무도* 만나지 않으니까. 그의 마음이 다른 데 가 있는 게 틀림없소..."~ */
  IF ~~ THEN REPLY #58882 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #58883 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 9.2
  SAY #58847 /* ~"로버타 부인?" 생각하느라 그의 이마에 주름이 잡힌다. "이 일은 우리가 조사하겠소." 그는 시선을 돌린다. "오, 고맙소."~ */
  IF ~~ THEN REPLY #58884 /* ~"아니, 이 일에 대해서 아무런 상도 없단 말이오?"~ */ GOTO 17
  IF ~~ THEN REPLY #58885 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #58886 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2 9.3
  SAY #58848 /* ~"이건 웃어 넘길 문제가 아니오. 우리는 이번 죽음을 매우 심각하게 수사하고 있소. 누가 했는지는 모르나 아마 그 또는 그녀는 감옥에서 오랜 세월을 보내게 될 거요."~ */
  IF ~~ THEN REPLY #58887 /* ~"정말이오. 난 그를 죽였소."~ */ GOTO 18
  IF ~~ THEN REPLY #58888 /* ~"농담해서 미안하오. 질문할 것들이 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #58889 /* ~"미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3 9.4
  SAY #58849 /* ~그는 고개를 젓는다. "당신에겐 내가 바보처럼 보일지도 모르겠지. 하지만 난 정치 분쟁에 말려들 생각은 없소. 난 내 직장과... 생명이 소중하오. 대장한테 가서 얘기를 하시오."~ */
  IF ~~ THEN REPLY #58890 /* ~"알겠소. 그럼 몇 가지만 더 물어보리다."~ */ GOTO 9
  IF ~~ THEN REPLY #58891 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4 9.5
  SAY #58850 /* ~"당신을 체포해? 무엇 때문에?"~ */
  IF ~~ THEN REPLY #58892 /* ~"난 감옥에 들어가고 싶을 뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 19
  IF ~~ THEN REPLY #58893 /* ~"난 완전히 미쳤으니까! 블루기 불르그 아 우하하!~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 20
  IF ~~ THEN REPLY #58894 /* ~"관두시오. 다른 질문에나 답해주시오..."~ */ GOTO 9
  IF ~~ THEN REPLY #58895 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 9.6
  SAY #58851 /* ~"그렇다면 당신은 번지수를 잘못 찾아왔소. 왜냐하면 설령 이 곳에 디바가 있더라도 그는 수전노가 금을 감추듯 엄중하게 감금되어 있을 거요."~ */
  IF ~~ THEN REPLY #58896 /* ~"그럼 좋소. 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #58897 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.0
  SAY #58852 /* ~그는 능글맞게 눗는다. "미덕은 그 자체로 보상이오. 그 이상을 원한다면 책임자에게 가보시오."~ */
  IF ~~ THEN REPLY #58898 /* ~"그렇다면 나는 책임자를 만나야겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #58899 /* ~" 좋소. 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #58900 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #58853 /* ~"조용히 따라올 거요, 아니면 꼭 거칠게 다뤄야겠소?"~ */
  IF ~~ THEN REPLY #58901 /* ~"얌전히 가겠소."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58902 /* ~"우린 싸울 거요."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #58854 /* ~"당신은 그렇게 주장한다면 갑시다."~ */
  IF ~~ THEN REPLY #58903 /* ~"마음을 바꿨소. 그일은 잊어버리시오. ~ */ GOTO 21
  IF ~~ THEN REPLY #58904 /* ~"좋소. 갑시다."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #58855 /* ~"당신은 날 납득시켰소. 그럼 갑시다.~ */
  IF ~~ THEN REPLY #58905 /* ~"마음을 바꿨소. 그일은 잊어버리시오. ~ */ GOTO 21
  IF ~~ THEN REPLY #58906 /* ~"좋소. 갑시다."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #58856 /* ~"그러기엔 너무 늦었소. 조용히 따라올 거요, 아니오?"~ */
  IF ~~ THEN REPLY #58908 /* ~"얌전히 가겠소."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58909 /* ~"우린 싸울 거요."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.7 9.7
  SAY #58928 /* ~그는 고개를 젓는다. "당신에겐 내가 바보처럼 보일지도 모르겠지. 하지만 난 정치 분쟁에 말려들 생각은 없소. 난 내 직장과... 생명이 소중하오. 대장한테 가서 얘기를 하시오. 그는 도시 가운데에 있는 관문 앞에 있소."~ */
  IF ~~ THEN REPLY #58930 /* ~"알겠소. 그럼 몇 가지만 더 물어봅시다..."~ */ GOTO 9
  IF ~~ THEN REPLY #58931 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
Global("Curst_Arrest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #58933 /* ~"염병할... 탈옥이다!" 경비병이 공격한다 !~ */
  IF ~~ THEN REPLY #58934 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58935 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
