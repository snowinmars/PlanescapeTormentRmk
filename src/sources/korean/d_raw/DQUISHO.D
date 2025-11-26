// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISHO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #50027 /* ~빨간 머리에, 키가 작고 통통한 여자가 보인다. 그녀의 얼굴에는 너무 오랫동안 곪도록 내버려 둔 우려와 증오로 인해 온통 주름투성이다. 당신이 다가가자 그녀는 냉소한 후, 당신이 자신의 눈을 볼 수 없도록 고개를 돌린다. 그녀는 마치 자신과 당신이 서로를 보지 못하는 것처럼 행동한다. 그녀에게 있어 당신이란 사람은 존재하지 않는 것이나 마찬가지이다.~ */
  IF ~~ THEN REPLY #50029 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #50030 /* ~이 여자는 당신을 철저하게 무시한다. 무슨 말을 해도 아무런 반응도 보이지 않는다. ~ */
  IF ~~ THEN REPLY #50031 /* ~"그럼 좋소."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY #50033 /* ~빨간 머리에, 키가 작고 통통한 여자가 보인다. 그녀의 얼굴에는 너무 오랫동안 곪도록 내버려 둔 우려와 증오로 인해 온통 주름투성이다. 그녀는 쉰 목소리로 내뱉는다. "당신이 지하로 가려고 하는 자요? 그럼 당신은 열쇠의 일부분을 얻기 전에 먼저 이 도나 퀴쇼의 부탁을 들어주어야 할 것이오. 이 도시 어딘가에 갇혀 있는 마족이 하나 있소. 나를 위해 그를 풀어 주시오." 그녀는 당신이 미처 반응하기도 전에 당신 손에 두루마리를 쥐어 준다.~ */
  IF ~~ THEN REPLY #50035 /* ~"왜?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50036 /* ~"나는 마족을 해방하는 일에 찬성할 수 없소."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50038 /* ~"내가 뭘 해야 하는지 말해주시오."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50039 /* ~"훨-후럼-그레이스, 당신 의견은 어떻소?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #50040 /* ~"왜냐하면 그건 내 것이기 때문이오! 난 그것을 위해 너무나도 많은 것을 희생했소! 하지만 그들은 내게서 그걸 빼앗아 감춘 후 가두어 버렸고, 내가 원했던 건 오직 그것뿐인데도 아무도 날 도우려 하지 않았소!" 그녀의 목소리에 교활한 기색이 감돈다. "하지만 이제 나는 당신이 필요로 하는 정보를 가지고 있고, 애그릴-샤낙을 풀어 주지 않는 한 당신은 그걸 얻을 수 없소." ~ */
  IF ~~ THEN REPLY #50041 /* ~"그것이 미쳐 날뛰지 않을지 내가 어떻게 알 수가 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #50042 /* ~"나는 마족을 해방하는 일에 찬성할 수 없소."~ */ GOTO 4
  IF ~~ THEN REPLY #50043 /* ~"내가 뭘 해야 하는지 말해주시오."~ */ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50044 /* ~"훨-후럼-그레이스, 당신 의견은 어떻소?"~ */ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 8.1
  SAY #50045 /* ~그녀는 당신을 정면으로 보면서 깔깔댄다. "상관없는 일이오. 당신에게는 열쇠의 다섯 번째 부분이 필요하고 난 그것을 가지고 있소. 당신이 지하로 갈 수 있는 다른 방법을 찾아내지 않는 한 당신은 내가 시키는 대로 해야만 하오."~ */
  IF ~~ THEN REPLY #50046 /* ~"그것이 미쳐 날뛰지 않을지 내가 어떻게 알 수가 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #50047 /* ~"하지 않겠소."~ */ GOTO 7
  IF ~~ THEN REPLY #50048 /* ~"내가 뭘 해야 하는지 말해주시오."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.2 6.0 8.2
  SAY #50049 /* ~"이 도시의 곡물 사일로(저장고)를 찾으시오. 그 안에서 바닥에 새겨진 오망성을 찾으시오. 그리고 그 부근에서 두루마리를 사용한 후, 애그릴-샤낙이 나타나면... 그것을 풀어 주시오. 원한다면 그것과 거래를 해도 좋소, 하지만 반드시 그것을 풀어 주시오. 그 다음에 당신이 뭘 하든지 난 상관하지 않겠소."~ */
  IF ~~ THEN REPLY #50050 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #50051 /* ~열쇠의 다섯 번째 부분을 얻기 위해서는 이 도시의 곡물 사일로를 찾아 그 안에 있는 오망성을 발견한 다음, 오망성 부근의 두루마리를 이용해 마족 애그릴 샤낙을 해방해야 한다. 이 일을 끝낸 후에 나는 열쇠를 받으러 도나 퀴쇼에게 돌아가야만 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0
  SAY #50052 /* ~그녀의 눈가의 작은 미소가 감돈다 - 당신은 그토록 악의로 가득한 미소를 지금껏 본 적이 없다. "그건 내가 상관할 바가 아니오. 마족과 어떤 거래를 하는가는 당신 문제요. 난 그가 해방되기만을 바랄 뿐이오."~ */
  IF ~~ THEN REPLY #50053 /* ~"난 무슨 일을 해야 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #50054 /* ~"하지 않겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 9.1
  SAY #50055 /* ~"그럼 당신은 열쇠의 다섯 번째 부분을 얻지 못할 거요. 마음이 바뀌면 다시 오시오." 그녀는 깔깔대면서 돌아선다.~ */
  IF ~~ THEN REPLY #50056 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",5)
Global("Free_Fiend","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #50057 /* ~당신이 다가가자 이번에는 그녀가 단호한 표정으로 당신을 노려본다. 그녀는 쉰 목소리로 내뱉는다. "당신이 지하로 가려고 하는 자요? 그럼 당신은 열쇠의 일부분을 얻기 전에 먼저 이 도나 퀴쇼의 부탁을 들어주어야 할 것이오. 이 도시 어딘가에 갇혀 있는 마족이 하나 있소. 나를 위해 그를 풀어 주시오." 그녀는 당신이 미처 반응하기도 전에 당신 손에 두루마리를 쥐어 준다.~ */
  IF ~~ THEN REPLY #50058 /* ~"왜?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50059 /* ~"나는 마족을 해방하는 일에 찬성할 수 없소."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50060 /* ~"내가 뭘 해야 하는지 말해주시오."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50061 /* ~"훨-후럼-그레이스, 당신 의견은 어떻소?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~  GlobalGT("Free_Fiend","GLOBAL",0)
GlobalLT("Free_Fiend","GLOBAL",3)
~ THEN BEGIN 9 // from:
  SAY #50062 /* ~당신이 다가가자 도나 퀴쇼는 경멸에 찬 표정으로 당신을 쳐다본다. "아직도 애그릴-샤낙을 풀어 주지 않은 거요? 그 일을 끝낸 후에 다시 오시오."~ */
  IF ~~ THEN REPLY #50063 /* ~"내가 무슨 일을 해야 하는지 다시 얘기해주겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #50064 /* ~"Je ne le ferai pas."~ */ GOTO 7
  IF ~~ THEN REPLY #50065 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #50066 /* ~그녀는 초조하게 한숨을 쉰다. "곡물 사일로. 오망성. 두루마리 읽기. 대체 뭐가 그렇게 힘든 거요? 빨리 가서 하시오." 그녀는 당신에게 등을 돌린다.~ */
  IF ~~ THEN REPLY #50067 /* ~"그럼 안녕히 계시오." ~ */ EXIT
END

IF ~  Global("Free_Fiend","GLOBAL",3)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #50068 /* ~"일을 끝냈군, 그래, 맞아. 하지만... 애그릴-샤낙은 어디 있소?"~ */
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50069 /* ~진실: "그는 죽었소."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 13
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50070 /* ~거짓말: "그는 곧 올거요."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50071 /* ~"틀림없이 그는 곧 올거요."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #68287 /* ~"나는 놈이 오망성에서 애타게 기다리도록 내버려두었소. 원한다면 당신이 직접 가서 놈을 풀어주시오. 나는 놈을 재소환했고... 나머지는 당신에게 달렸소."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.2 11.3
  SAY #50072 /* ~그녀는 깔깔 웃는다. "그리고 우리는 계획을 세워 함정을 놓을 것이며, 그들은 자신들의 실수를 후회하게 될 것이다." 그녀는 동전이 든 자루 하나를 당신 손에 쥐어 준다. "이게 열쇠의 마지막 부분이오: '극에서 멀리 떨어진 중심에서처럼'. 이제 가서 썩은 바스와 얘기를 하시오, 그가 당신을 안내해 줄 거요." 그녀는 계속 깔깔대면서 소지품을 챙겨 가게 밖으로 서둘러 나간다. ~ */
  IF ~~ THEN REPLY #50073 /* ~"안녕히 계시오..."~ */ DO ~GivePartyGold(1500)
AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50074 /* ~도나 퀴쇼는 내게 열쇠의 다섯 번째 부분을 주었다: "극에서 멀리 떨어진 중심에서처럼." 그녀는 복수 운운하며 낄낄 웃었으며, 내게 열쇠를 사용하려면 썩은 바스와 다시 얘기를 하라고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #50075 /* ~그녀의 얼굴이 창백해진다. "죽었다고... 하지만... 당신이 그를 죽였소? 그럼 난 망했소. 염병할 열쇠를 가지고 어서 꺼지시오." 그녀는 생기없는 목소리로 다음 단어들을 영창한다: '극에서 멀리 떨어진 중심에서처럼'. 그녀는 주위를 잠시 둘러본다. 이제 가서 썩은 바스와 얘기를 하시오. 그가 어떻게 해야 하는지 일러줄 거요." 그녀는 정신을 가다듬고는 자리를 뜬다.~ */
  IF ~~ THEN REPLY #50076 /* ~"그럼 안녕히 계시오."~ */ DO ~AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50077 /* ~도나 퀴쇼는 내게 열쇠의 다섯 번째 부분을 주었다: "극에서 멀리 떨어진 중심에서처럼." 그녀는 내게 썩은 바스와 다시 얘기를 하라고 말했으며, 내가 애그릴-샤낙이 죽었다고 하자 무언가를 잃었다고 중얼거린 다음, 마치 지옥의 군세가 쫓아오기라도 하는 것처럼 불이 나게 도망쳤다. 
~ */ EXIT
END
