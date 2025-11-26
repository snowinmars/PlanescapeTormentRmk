// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNAMES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNAMES~

IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7288 /* ~당신 시야에 기괴한 미소를 끊임없이 짓고 있는 더스트맨이 들어온다. 미소에도 불구하고 그의 눈빛은 돌처럼 무디다. 그의 오른쪽 팔은 왼쪽 팔보다 짧으며, 그는 그것을 마치 어린 아이를 요람에 눕히듯 옆쪽에 감싸고 있다.~ */
  IF ~~ THEN REPLY #7289 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #7290 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7291 /* ~더스트맨의 눈은 당신을 미끄러지듯 살펴본다. "이름." 그는 마치 종소리가 울리는 것처럼 말한다.~ */
  IF ~~ THEN REPLY #7292 /* ~"모르... 겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #7293 /* ~"어... 방해해서 미안하오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 9.0
  SAY #7294 /* ~"이름이 없으면 당신을 도울 수가 없소." 더스트맨은 단조로운 말투로 말한다. "만약 그것이 어디서 죽었는지를 알려면 내게 이름을 말해주어야 하오."~ */
  IF ~~ THEN REPLY #7295 /* ~"뭐?"~ */ DO ~SetGlobal("Death_of_Names","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7296 /* ~"사람은 태어날 때 이름을 받고, 그것이 더 이상 필요가 없으면 반납하오. 이름의 죽음. 이름의 죽음." 그는 비석을 훑어본 후 그 곳의 벽들을 훑어본다. "이름의 죽음은 이 곳에 많은 이름들을 매장했소. 이름을 말하시오. 그럼 그것의 무덤을 알려 주겠소."~ */
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7297 /* ~"자카리아."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7298 /* ~"데이오나라."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7299 /* ~"달."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7300 /* ~"달."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7301 /* ~~ */ GOTO 13
  IF ~~ THEN REPLY #7302 /* ~~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #7303 /* ~"퀜틴."~ */ GOTO 5
  IF ~~ THEN REPLY #7304 /* ~"어... 모르겠소. 어디 '아단'으로 한 번 해보시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.5 5.3 5.5 9.4 9.7
  SAY #7305 /* ~그는 고개를 젓는다. "아직 죽지 않았소. 이 곳에 묻히지 않았소. 아직 때가 아니오."~ */
  IF ~~ THEN REPLY #7306 /* ~"다른 이름으로 해봅시다..."~ */ GOTO 9
  IF ~~ THEN REPLY #7307 /* ~"나를 위해 이름을 매장해 줄 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #7308 /* ~"좋소... 방해해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
  SAY #7309 /* ~그는 고개를 끄덕이고, 옆쪽에 감싸고 있던 짧은 팔을 꺼낸다. 그 팔은 위축증에 걸린 듯 어린 아이의 팔 크기에 불과하다. "이름을 매장하려면 돈이 필요하오. 동전 세 닢이오.
"~ */
  IF ~  PartyGoldGT(2)
GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7310 /* ~"자카리아."~ */ GOTO 12
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7311 /* ~"데이오나라."~ */ GOTO 12
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",0)
~ THEN REPLY #7312 /* ~"달."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Dhall","GLOBAL",1)
~ GOTO 6
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7313 /* ~"달."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
Dead("Quentin")
Global("Death_of_Names_Quentin","GLOBAL",0)
~ THEN REPLY #7314 /* ~~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Quentin","GLOBAL",1)
~ GOTO 15
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
!Dead("Quentin")
~ THEN REPLY #7315 /* ~~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #7316 /* ~~ */ EXIT
  IF ~~ THEN REPLY #7317 /* ~"퀜틴."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #7350 /* ~동전은 이름의 죽음의 손 위에 떨어지고, 그는 손을 다시 옆구리에 넣고 감싼다. 다시 생기를 찾은 그의 눈은 뒤쪽을 향했다가 다시 앞쪽으로 돌아와 비석과 기념관의 벽을 빠른 속도로 훑어보기 시작한다. ~ */
  IF ~~ THEN REPLY #7351 /* ~기다린다...~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.0
  SAY #7352 /* ~그는 벽에서 어떤 지점을 찾아낸 후, 그 곳으로 허둥지둥 달려가 몸을 구부리고 뭔가를 새기기 시작한다. 그는 잠시 후에 작업을 마무리하고 일어나 당신에게로 돌아온다. "매장되었소." 그 말에 담긴 단호함이 당신 기분을 거북하게 만든다.~ */
  IF ~~ THEN REPLY #7353 /* ~"당신이 날 위해 어떤 이름을 찾아주었으면 하오..." ~ */ GOTO 9
  IF ~~ THEN REPLY #7354 /* ~"이름을 하나 더 매장하고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #7355 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7356 /* ~이름의 죽음이 보인다. 전과 마찬가지로 그는 기묘한 미소를 짓고 팔을 옆구리에 낀 채 비석 앞에 서 있다. ~ */
  IF ~~ THEN REPLY #7357 /* ~"안녕하시오."~ */ GOTO 9
  IF ~~ THEN REPLY #7358 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
  SAY #7359 /* ~더스트맨을 당신을 바라본다. "이름." 그는 마치 종소리가 울리는 것처럼 말한다.~ */
  IF ~~ THEN REPLY #7360 /* ~"모르... 겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #7361 /* ~"이름을 하나 매장하고 싶소."~ */ GOTO 5
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7362 /* ~"자카리아."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7363 /* ~"데이오나라."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7364 /* ~"달."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7365 /* ~"달."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7366 /* ~"지지."~ */ GOTO 13
  IF ~~ THEN REPLY #7367 /* ~"지지."~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #7368 /* ~"퀜틴."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0 3.1 3.3 9.2 9.3 9.5
  SAY #7369 /* ~그의 눈은 뒤로 돌아갔다가 다시 앞을 향한다. 그는 광기어린 눈빛으로 기념관의 벽들을 질주하듯 둘러보며 새겨진 이름들을 초인적인 속도로 체크하고 있다. 그리고 그는 벽의 한 지점을 가리킨다. "매장되었소."~ */
  IF ~~ THEN REPLY #7370 /* ~그가 가리키는 지점을 살펴본다.~ */ GOTO 11
  IF ~~ THEN REPLY #7371 /* ~"매장할 이름이 하나 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7372 /* ~"이름을 하나 매장하고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #7373 /* ~"그냥 확인했을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7374 /* ~당신이 요청한 이름은 검은 비석에 작은 글씨로 빽빽하게 새겨져 있다. 그것은 주변의 이름들의 바다에 잠겨 거의 보이지 않을 지경이다.~ */
  IF ~~ THEN REPLY #7375 /* ~"매장할 이름이 하나 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7376 /* ~"이름을 하나 매장하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7377 /* ~"그냥 확인했을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 5.1
  SAY #7378 /* ~그는 고개를 젓는다. "매장되었소."~ */
  IF ~~ THEN REPLY #7380 /* ~"매장할 이름이 하나 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7382 /* ~"이름을 하나 매장하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7383 /* ~"그냥 확인했을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4 9.6
  SAY #7384 /* ~그의 눈은 뒤로 돌아갔다가 다시 앞을 향한다. 그는 광기어린 눈빛으로 기념관의 벽들을 질주하듯 둘러보며 새겨진 이름들을 초인적인 속도로 체크하고 있다. 그리고 그는 기념비의 바닥을 가리킨다. "매장되었소."~ */
  IF ~~ THEN REPLY #7386 /* ~그가 가리키는 지점을 살펴본다.~ */ GOTO 14
  IF ~~ THEN REPLY #7387 /* ~"매장할 이름이 하나 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7388 /* ~"이름을 하나 매장하고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #7390 /* ~"그냥 확인했을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7391 /* ~퀜틴의 이름은 검은 비석에 작은 글씨로 빽빽하게 새겨져 있다. 퀜틴에게는 안된 일이지만, 그가 기대했던 것과는 달리 그의 이름은 비석을 쪼개기에 충분하지 않은 것 같다.~ */
  IF ~~ THEN REPLY #7392 /* ~"매장할 이름이 하나 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7394 /* ~"이름을 하나 매장하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7403 /* ~"그냥 확인했을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.4
  SAY #7404 /* ~동전은 이름의 죽음의 손 위에 떨어지고, 그는 손을 다시 옆구리에 넣고 감싼다. 다시 생기를 찾은 그의 눈은 뒤쪽을 향했다가 다시 앞쪽으로 돌아와 비석과 기념관의 벽을 빠른 속도로 훑어보기 시작한다. ~ */
  IF ~~ THEN REPLY #7405 /* ~기다린다...~ */ GOTO 7
END

IF ~~ THEN BEGIN 16 // from:
  SAY #7406 /* ~그는 비석의 바닥 쪽으로 몸을 돌린다, 그리고 그 곳으로 허둥지둥 달려가 몸을 구부리고 뭔가를 새기기 시작한다. 퀜틴에게는 안된 일이지만 그의 이름이 새겨지고 있음에도 기념비는 미동도 하지 않는다. 이름의 죽음은 잠시 후에 작업을 마무리하고 일어나 당신에게로 돌아온다. "매장되었소." 그 말에 담긴 단호함이 당신 기분을 거북하게 만든다.~ */
  IF ~~ THEN REPLY #7407 /* ~"당신이 날 위해 어떤 이름을 찾아주었으면 하오..." ~ */ GOTO 9
  IF ~~ THEN REPLY #7408 /* ~"이름을 하나 더 매장하고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #7409 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END
