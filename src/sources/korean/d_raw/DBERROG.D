// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBERROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBERROG~

IF ~  Global("Current_Area","GLOBAL",704)
Global("Know_Berrog","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3184 /* ~쥐같이 생긴 겁 많은 사내가 보인다. "제발 날 해치지 마시오!" 그가 큰소리로 외친다. "만약 그들이 날 찾으면 날 죽일 거요!"~ */
  IF ~~ THEN REPLY #3185 /* ~"누가 당신을 죽이려고 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #56942 /* ~"당신은 누구요?"~ */ GOTO 6
  IF ~~ THEN REPLY #56943 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 7
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",0)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #56944 /* ~쥐처럼 생긴 순진한 얼굴의 사내가 보인다. 그의 볼에는 눈물이 흘러내리고 있다. 그는 마차 아래에 깔려 있으며, 그 무게 때문에 그는 압사하기 일보 직전이다. 그는 고통스럽게 애원하는 눈빛으로 당신을 바라본다. "제발, 친구... 이걸 내게서 좀 치워 주시오. 난 여기서 죽을 수는 없소..."~ */
  IF ~~ THEN REPLY #56945 /* ~"알겠소. 그걸 치우도록 하겠소."~ */ GOTO 10
  IF ~~ THEN REPLY #56946 /* ~"관두시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",1)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #56947 /* ~디바를 구출하겠다던 베로그 퀵슈즈가 차축이 부러진 마차 아래에 깔려 있다. "제발, 친구... 이걸 내게서 좀 치워 주시오."~ */
  IF ~~ THEN REPLY #56948 /* ~"알겠소. 그걸 치우도록 하겠소."~ */ GOTO 10
  IF ~~ THEN REPLY #56949 /* ~"관두시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY #56951 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #56952 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 6.1 7.2 8.2
  SAY #56954 /* ~"경비병들. 그들은 날 쫓고 있소. 내가 질문을 잘못 해서 누군가를 화나게 했던지, 아니면 해서는 안 될 사람과 얘기를 한 것 같소. 나는 단지 내 의견을 말했을 뿐이오, 하지만 여기서는 특정한 방법으로 이야기를 하는 모양이오. 이 곳은 모두 다 썩었소!"~ */
  IF ~~ THEN REPLY #56956 /* ~"어쨌든 당신은 누구요?"~ */ GOTO 6
  IF ~~ THEN REPLY #56957 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #56958 /* ~"당신은 어디서 왔소?"~ */ GOTO 8
  IF ~~ THEN REPLY #56960 /* ~"그럼 가시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.1 5.0 7.1 8.0
  SAY #56962 /* ~"나는 베로그 퀵슈즈, 여행자이자 문제 해결사요. 달리 표현하면 도둑이지만 나는 내 자신을 함정과 퍼즐 등을 다루는 기술자라고 생각하오. 나는 좋은 목적을 위해서만 내 기술을 사용하며, 아무도 해치고 싶은 생각이 없소. 하지만 여기서는 그런 장치들을 다른 목적으로 사용하는 모양이오." 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #56965 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #56966 /* ~"누가 당신을 죽이려고 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #56968 /* ~"그럼 가시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 0.2 5.1 6.0 8.1
  SAY #56969 /* ~"나는 어떤 디바가 감금되어 있다는 얘기를 듣고 이 곳 커스트에 왔소. 나는 마운트 실레스쳐에 아컨 친구들이 여럿 있기 때문에 도움이 될 수는 없을까 하여 오게 된 거요. 하지만 이 도시는... 정말 시궁창이오, 그리고 여기서는 아무도 믿을 수가 없소! 대체 사람들이 어떻게 이런 곳에서 살 수 있는지 모르겠소! 난 여길 떠나야만 하오!"~ */
  IF ~~ THEN REPLY #56970 /* ~"마운트 실레스쳐에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #56971 /* ~"어쨌든 당신은 누구요?"~ */ GOTO 6
  IF ~~ THEN REPLY #56972 /* ~"누가 당신을 죽이려고 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #56973 /* ~"그럼 가시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 7.0
  SAY #56974 /* ~그는 마치 꿈꾸는 듯한 표정을 짓는다. "그 곳에서는 모든 것이 다 나름대로의 역할과 의미를 지니고 있소, 그리고 모든 것이 다 아름답소. 수많은 아컨들이 당신의 마음을 아프게 할 정도로 섬세하고 아름다운 패턴으로 하늘을 날고 있소. 과일은 더 크게 자라며, 동물들 역시 더 크고, 모든 집의 문은 다 열려 있소. 하지만 우리는 우리의 덕을 시험하며 궁극적인 선울 향해 나아감으로서, 스스로를 향상시키려고 지속적으로 노력하오... 나는 가능한 한 빨리 고향으로 돌아가고 싶소..."~ */
  IF ~~ THEN REPLY #56975 /* ~"어쨌든 당신은 누구요?"~ */ GOTO 6
  IF ~~ THEN REPLY #56976 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #56977 /* ~"누가 당신을 죽이려고 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #56978 /* ~"그럼 가시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.3 6.2 7.3 8.3
  SAY #56979 /* ~그는 믿을 수 없다는 눈으로 당신을 쳐다본다. "고맙소! 날 다시 볼 일은 없을 거요!" 그는 화급히 떠난다.~ */
  IF ~~ THEN REPLY #56980 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0 2.0
  SAY #56981 /* ~"기다리시오... 그 사람은 아직도 반대쪽에 깔려 있소"~ */
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #56982 /* ~"그는 아직도 그 곳에 있소."~ */ GOTO 12
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #56983 /* ~"그는 이미 죽었소."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 13.1
  SAY #56992 /* ~"제발... 제발..." 그는 진흙 속에 머리를 처박고 조용히 운다.~ */
  IF ~~ THEN REPLY #56993 /* ~떠난다.~ */ EXIT
  IF ~~ THEN REPLY #56994 /* ~그를 죽인다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_2","GLOBALGood",-3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #56995 /* ~"당신은... 당신은 그를 구할 방법도 찾아야만 하오. 나보다는 그를 구해야 하오. 내가 알기로 그는 이 곳의 읍장인 것 같소... 정확한 명칭은 모르겠지만."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 28
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #56996 /* ~"그렇다면 들어 올리시오, 친구..."~ */
  IF ~~ THEN REPLY #56997 /* ~그것을 들어올린다.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #56998 /* ~"관두시오. 하지만 혹시 나중에 다시 돌아올지도 모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.1
  SAY #56999 /* ~당신이 마차를 치우자 그는 그 아래서 기어 나온다. "고맙소, 친구. 이제 이 도시에는 질렸소. 나는 당장 마운트 실레스쳐로 돌아가겠소. 당신이 어디로 가든 간에 당신의 선행이 당신에게 가호를 내리기를. 그는 발코니에 서 있는 디바를 쳐다본다. "저런 꼴을 보려고 내가 여기까지 왔다니 믿을 수가 없소."~ */
  IF ~~ THEN REPLY #57000 /* ~"선의건 뭐건 간에... 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #57001 /* ~"아야야! 다른 쪽도 사람이 있소! 당신은 날 죽이고 있소!"~ */
  IF ~~ THEN REPLY #57002 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #57003 /* ~"거기서 뭘 하고 있는 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #57004 /* ~계속 들어올린다: "그것 참 안됐군."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57005 /* ~"내 이름은... 베로그 퀵슈즈요... 나는 선한 존재인 디바를 구하려고 커스트에 왔소... 하지만 난 잘못 알고 있었소... 여기 오지 말았어야 했소..."~ */
  IF ~~ THEN REPLY #57006 /* ~"거기서 뭘 하고 있는 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #57007 /* ~시장을 누르고 있는 마차를 들어올린다: "글쎄."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57008 /* ~베로그를 누르고 있는 마차를 들어올린다.~ */ EXTERN ~DBURGHER~ 23
  IF ~~ THEN REPLY #57009 /* ~"아마 나중에 다시 오는 게 좋을 듯하오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57010 /* ~"도시가 미끄러지기 시작했을 때... 나는 이 곳을 탈출하려고 하고 있었소... 나는 저 사람 근처에 있었고... 그는 날 움켜 쥐었소. 마차는 하늘에서 떨어졌고, 그는 자신이 도망치려고 나를 그 아래에 밀어 넣으려고 했소. 하지만 그래도 당신에게 그를 구할 방법을 모색해 달라고 부탁하고 싶소..."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #57012 /* ~"날 구해서 당신이 얻을 건 아무 것도 없소... 그 점은 고백하리다. 하지만... 당신이 아무런 이해타산 없이... 나를 구하면 형세가 디바에게 불리하게 바뀔 것이오... 만약 우리 둘 모두를 구한다면 그건 더욱 좋소."~ */
  IF ~~ THEN REPLY #57013 /* ~시장을 누르고 있는 마차를 들어올린다: "그렇소, 하지만 그는 쓸모가 있소."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57014 /* ~베로그를 누르고 있는 마차를 들어올린다: "그에겐 그럴 가치가 없소."~ */ DO ~Kill("Burgher")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57015 /* ~"마차를 번쩍 들어올려 당신들 두 사람을 모두 구하는 건 어떻겠소? 나와 내 동료들이 모두 달려들면 해낼 수가 있소."~ */ EXTERN ~DBURGHER~ 26
  IF ~~ THEN REPLY #57016 /* ~"방법을 강구하도록 하겠소. 안녕히 계시오."~ */ EXIT
END
