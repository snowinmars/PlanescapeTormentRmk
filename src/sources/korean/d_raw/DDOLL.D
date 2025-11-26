// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLL~

IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22975 /* ~이 작은 인형은 긴 세월 동안 꽤나 혹사당한 모양이다. 꿰맨 자리는 터지려고 하고 있으며 실도 다 풀어지기 일보직전이다. 그것은 머리에 가시가 돋친 후광을 두르고 기묘한 법의를 입은 여인의 모양을 하고 있다. ~ */
  IF ~~ THEN REPLY #22981 /* ~"아아아... 너는 그냥 작고 귀여운 인형이다, 그렇지 않니? 그렇지 않니? 그래, 맞아!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_3","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22982 /* ~인형을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22976 /* ~인형은 당신이 하는 말에 반응하지 않고 단추로 만들어진 눈으로 당신을 쳐다보기만 한다.~ */
  IF ~~ THEN REPLY #22983 /* ~"좋아, 좋다고... 난 그냥 재미있게 놀려고 한 것 뿐인데..."~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #22977 /* ~이 작은 인형은 긴 세월 동안 꽤나 혹사당한 모양이다. 꿰맨 자리는 터지려고 하고 있으며 실도 다 풀어지기 일보직전이다. 레이디 오브 페인의 모양을 본떠 만든 것은 틀림없으나, 단추로 만든 눈과 부드러운 감촉 탓인지 별로 두려움은 느껴지지 않는다.~ */
  IF ~~ THEN REPLY #22984 /* ~"오오... 너는 작고 귀여운 레이디 오브 페인이야, 그렇지 않니? 그렇지 않니? 그래, 맞아!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22985 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22986 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22987 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #22988 /* ~농담: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22989 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22990 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22991 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #22992 /* ~농담: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #22993 /* ~인형을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.6 4.2 4.6
  SAY #22978 /* ~당신이 그 말을 하려고 하자 당신은 머리 뒤편에서 무엇인가 기어 다니고 있는 듯한 기묘한 느낌을 받는다. 그리고 그 느낌과 함께 그러한 말을 하면 엄청난 위험에 처하게 될 것이라는 예감이 온다... 단지 그런 생각을 하는 것조차도 위험할 것 같다.~ */
  IF ~  GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22994 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22995 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #22996 /* ~인형을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 2.3 2.4 3.1 4.0 4.1 4.3 4.4 5.0 5.1 5.2
  SAY #22979 /* ~인형은 당신이 하는 말에 반응하지 않고 단추로 만들어진 눈으로 당신을 쳐다보기만 한다.~ */
  IF ~~ THEN REPLY #22997 /* ~"오오... 너는 작고 귀여운 레이디 오브 페인이야, 그렇지 않니? 그렇지 않니? 그래, 맞아!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22998 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22999 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #23000 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #23001 /* ~농담: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23002 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23003 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23004 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #23005 /* ~농담: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #23006 /* ~인형을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 3.0 4.5 4.7 4.8
  SAY #22980 /* ~그 말을 하자마자 당신의 전신을 오한이 엄습한다... 그리고 당신은 공포를 느낀다. 뭔가가 단단히 잘못된 것 같다. 그 봉제 인형은 더 이상 아무런 해도 없는 보통 인형이 아닌 것만 같다. 잠시 동안, 그것도 아주 잠시 동안 당신에게는 인형의 머리 주변에 있는 칼날들이 금속과 흡사한 광채를 띠고 있는 것처럼 보인다.~ */
  IF ~~ THEN REPLY #23007 /* ~"오오... 너는 작고 귀여운 레이디 오브 페인이야, 그렇지 않니? 그렇지 않니? 그래, 맞아!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23008 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #23009 /* ~농담: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23010 /* ~인형을 치운다.~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #51951 /* ~이 작은 인형은 긴 세월 동안 꽤나 혹사당한 모양이다. 꿰맨 자리는 터지려고 하고 있으며 실도 다 풀어지기 일보직전이다. 레이디 오브 페인의 모양을 본떠 만든 것은 틀림없으나, 단추로 만든 눈과 부드러운 감촉 탓인지 별로 두려움은 느껴지지 않는다.~ */
  IF ~~ THEN REPLY #51955 /* ~"오오... 너는 작고 귀여운 레이디 오브 페인이야, 그렇지 않니? 그렇지 않니? 그래, 맞아!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51956 /* ~진실: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ GOTO 7
  IF ~~ THEN REPLY #51957 /* ~농담: "오, 위대한 레이디 오브 페인, 시길의 여신이여, 제 간청을 부디 받아들여 제가 곤경에 처했을 때 구해주소서."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51958 /* ~인형을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #51960 /* ~인형은 당신이 하는 말에 반응하지 않고 단추로 만들어진 눈으로 당신을 쳐다보기만 한다. 시길 밖에 있는 탓에 인형은 레이디 오브 페인 노릇을 하고 싶은 생각이 들지 않는 것인지도 모른다. ~ */
  IF ~~ THEN REPLY #51961 /* ~인형을 재빨리 한 번 안아 준 후 배낭에 넣는다. ~ */ EXIT
END
