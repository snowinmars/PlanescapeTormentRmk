// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGSPIRIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGSPIRIT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32434 /* ~이 유령같은 존재는 통로의의 어두운 구석에서 실체화하여 재빨리 당신 갈 길을 막는다. 그는 당신 앞에서 부유한다, 그리고 한때는 인간이었던 그의 얼굴은 분노로 일그러져 있다. "모독자들! 당장 여기서 떠나라!"~ */
  IF ~~ THEN REPLY #32444 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #32445 /* ~재빨리 떠난다.~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #32435 /* ~수호령이 나타나자 당신 주변의 공기가 갑자기 싸늘해진다. 그는 다시 당신을 향해 온다. 그의 옷은 유령처럼 실체가 없으나, 마치 에테르의 미풍에 휘날리듯 펄럭인다.~ */
  IF ~  Global("Spirit_Quest","GLOBAL",0)
~ THEN REPLY #32446 /* ~"기다리시오, 혼령. 질문할 것들이 좀 있소."~ */ GOTO 4
  IF ~  Global("Spirit_Quest","GLOBAL",1)
~ THEN REPLY #32447 /* ~"기다리시오, 혼령. 난 당신이 말한 이 침입자를 내쫓는 일을 돕고 싶소."~ */ GOTO 8
  IF ~~ THEN REPLY #32448 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #32436 /* ~"당장 떠나라." 그의 쾅 하는 목소리는 통로 전체에 울려퍼진다. "이 곳은 산 자가 와서는 안 되는 곳이다. 아직 떠날 수 있을 때 떠나라."~ */
  IF ~~ THEN REPLY #32449 /* ~"먼저 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #32450 /* ~"내가 어딜 가든 그건 내 맘이오. 비키시오, 혼령."~ */ GOTO 3
  IF ~~ THEN REPLY #32451 /* ~"당신이 원하는 대로 하리다. 안녕히 계시오."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.1
  SAY #32437 /* ~"뻔뻔스럽군!" 혼령의 고함소리가 어찌나 큰지 당신은 손으로 귀를 막는다. "너에게는 이미 경고를 했다... 나는 이 신성한 안식처가 더 이상 침범되도록 내버려 둘 수가 없다."~ */
  IF ~~ THEN REPLY #32452 /* ~"더 이상? 나말고도 다른 사람이 이 곳에 왔소?"~ */ GOTO 5
  IF ~~ THEN REPLY #32453 /* ~"그래, 그래. 가서 애들이나 겁주는 게 어떻겠소?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32454 /* ~"다시 생각해 보니 난 그냥 여길 떠나는 게 좋을 것 같소. 안녕히 계시오."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #32438 /* ~"답은 다른 곳에 가서 찾으라. 이 곳은 죽은 자를 위한 성역이다. 나는 그들의 잠이 또 다른 무례한 인간의 침입에 의해 방해받도록 내버려 둘 수는 없다. ~ */
  IF ~~ THEN REPLY #32455 /* ~"또 다른? 나말고도 다른 사람이 이 곳에 왔소?"~ */ GOTO 5
  IF ~~ THEN REPLY #32456 /* ~"내가 어딜 가든 그건 내 맘이오. 비키시오, 혼령."~ */ GOTO 3
  IF ~~ THEN REPLY #32457 /* ~"당신이 원하는 대로 하리다. 안녕히 계시오."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #32439 /* ~"만약 꼭 알아야만 하겠다면... 그렇다. 지금도 이 영묘의 신성함을 모독하고 있는 또 한 사람의 침입자가 있다." 혼령의 목소리에서 분노의 기색이 사라진다. 그는 그 사실을 인정할 수밖에 없는 것이 슬픈 듯하다. "내 형제자매들의 영혼이 안식을 취하게 해달라고 비명을 지르고 있다."~ */
  IF ~~ THEN REPLY #32458 /* ~"이 다른 침입자는 어떤 자요?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #32459 /* ~"왜 당신이 직접 이 침입자를 내쫓지 않소?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #32460 /* ~"다시 생각해 보니 난 그냥 여길 떠나는 게 좋을 것 같소. 안녕히 계시오."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32440 /* ~"그는 죽은 자를 지배하는 힘을 지닌 사악한 겁쟁이다. 그는 이 곳에서 뭔가를 찾고 있다... 그것이 무엇인지, 그리고 왜 그것을 찾는지에 대해서는 나도 모른다."~ */
  IF ~~ THEN REPLY #32461 /* ~"왜 당신이 직접 이 침입자를 내쫓지 않소?"~ */ GOTO 7
  IF ~~ THEN REPLY #32462 /* ~"다시 생각해 보니 난 그냥 여길 떠나는 게 좋을 것 같소. 안녕히 계시오."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #32441 /* ~"그럴 수가 없다. 그 비열한은 영묘의 내실 속에 틀어박혀 있다. 그는 내가 그 곳으로 들어갈 수 없도록 강력한 수호 마법을 걸어 놓았다. 그는 그 곳으로부터 자신의 사악한 마법으로 내 동포들을 잠에서 깨워 복종시키고 있다."~ */
  IF ~~ THEN REPLY #32463 /* ~"내가 당신을 도울 수도 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #32464 /* ~"말을 들으니 당신은 한 침입자를 내쫓기 위해 다른 침입자의 도움을 빌려야 하는 상황인 것 같소."~ */ GOTO 8
  IF ~~ THEN REPLY #32465 /* ~"다시 생각해 보니 난 그냥 여길 떠나는 게 좋을 것 같소. 안녕히 계시오."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 7.0 7.1
  SAY #32442 /* ~혼령은 한참 동안 아무 말이 없다. 당신은 그의 생기없는 시선의 중압감을 몸으로 느낄 수가 있을 정도이다. "그렇다... 나는 실패했으나 당신은 성공할 수 있을지도 모른다. 만약 당신이 날 위해 이 불한당을 처치해 준다면 당신이 이 곳을 지나가는 것을 허락하겠다. 당신 생각은 어떤가?"~ */
  IF ~~ THEN REPLY #32466 /* ~"하겠소."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",2)
~ JOURNAL #31881 /* ~나는 영묘를 지키는 수호령을 돕기로 맹세했다. 어떤 사령술사가 영묘에 침입하여 내실을 점거하고 강력한 보호의 마법으로 자신을 수호령으로부터 보호하고 있는 듯하다. 노로치가 우려하고 있는 "걸어다니는 시체"의 원흉은 그가 틀림없다. ~ */ GOTO 9
  IF ~~ THEN REPLY #32467 /* ~"다시 생각해 보니 난 그냥 여길 떠나는 게 좋을 것 같소. 안녕히 계시오."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #32443 /* ~"그렇다면 할 수 없다." 혼령은 그의 목소리의 메아리만을 남긴 채 천천히 사라진다. "하지만 주의하라... 이 영묘에서는 조심하지 않으면 당신도 다른 사람들과 마찬가지로 영원한 안식을 취하게 될 것이다." ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("Strahan")
~ THEN BEGIN 10 // from:
  SAY #32468 /* ~당신이 회랑에 발을 들여놓자 혼령이 실체화한다. 그는 당신을 호의적인 표정으로 쳐다보고 있다. "감사한다. 당신은 날 위해 정말 큰 일을 해주었다. 내가 보살피는 영혼들은 이제 다시 조용히 잠들 수 있게 되었다. 무사히 돌아가기를 바라겠다... 친구여." 망령은 영묘의 황량한 통로에 당신을 홀로 남긴 채 사라진다. ~ */
  IF ~~ THEN REPLY #32469 /* ~떠난다.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Spirit_Quest","GLOBAL",4)
SetGlobal("Mausoleum_Quest","GLOBAL",2)
~ JOURNAL #37705 /* ~나는 수호령이 말한 사령술사를 죽였다. 그의 힘이 사라져 죽은 자들은 더 이상 영묘를 활보하지 않는다. 노로치가 기뻐할 것이다.~ */ EXIT
END
