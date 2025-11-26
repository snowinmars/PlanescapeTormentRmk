// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAZI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAZI~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #3024 /* ~병약한 기스저라이 여인이 보인다. 그녀의 허리는 휘었으며, 지속적인 기침 때문에 심한 고통을 받고 있는 듯하다. 그녀가 쥐고 있는 손수건은 피와 담으로 범벅이 되어 있다. 그녀는 당신을 살펴보더니 쉿 소리를 낸다.~ */
  IF ~~ THEN REPLY #3025 /* ~"안녕하시오."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42426 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42427 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42428 /* ~"당신에겐 물어볼 것이 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #42429 /* ~언'아지는 눈물을 글썽이며 당신을 바라본다, 그리고 낮은 목소리로 다콘에게 몇 마디 말을 한다.~ */
  IF ~~ THEN REPLY #42430 /* ~"그녀가 뭐라고 했소?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ EXTERN ~DDAKKON~ 132
  IF ~~ THEN REPLY #42431 /* ~"그녀를 죽이시오, 다콘. 그것도 고통스럽게. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DDAKKON~ 126
  IF ~~ THEN REPLY #42432 /* ~"다콘, 그녀를 편안히 저 세상으로 보내주시오. 그녀는 너무나 심한 고통을 받고 있으며, 오래 살 것 같지도 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DDAKKON~ 130
  IF ~~ THEN REPLY #42433 /* ~"여길 그만 떠납시다, 다콘. 그녀에게 작별 인사를 하시오."~ */ EXTERN ~DDAKKON~ 128
  IF ~~ THEN REPLY #42434 /* ~그녀를 편안히 저 세상으로 보내준다.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #42435 /* ~재미로 그녀를 찌른다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_2","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 0.3
  SAY #42436 /* ~그녀는 당신을 쳐다보더니 다콘에게 뭐라고 중얼거린다. ~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 124
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 3 // from:
  SAY #42467 /* ~병든 기스저라이 여인이 보인다. 그녀의 허리는 구부정하며, 지속적인 기침은 그녀에게 큰 고통을 주고 있는 듯하다. 그녀는 피, 세포, 가래로 범벅이 된 손수건을 얼굴에 갖다 댄다. 그녀는 당신을 보더니 쉿 소리를 낸다.~ */
  IF ~~ THEN REPLY #42468 /* ~"안녕하시오."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42469 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42470 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42471 /* ~"치료를 원하시오? 내가 당신을 위해 해줄 수 있는 일은 없겠소?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #42472 /* ~"당신은 어디가 어떻게 잘못되었소?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #42473 /* ~"당신에겐 물어볼 것이 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 4 // from:
  SAY #42474 /* ~늙은 기스저라이 여인의 상태는 전보다도 악화된 것 같다. 그녀는 당신을 야유하려고 하나 피를 토하며 기침을 하는 바람에 뜻을 이루지 못한다.~ */
  IF ~~ THEN REPLY #42475 /* ~"치료를 원하시오? 내가 당신을 위해 해줄 수 있는 일은 없겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #42476 /* ~"당신은 어디가 어떻게 잘못되었소?"~ */ GOTO 9
  IF ~~ THEN REPLY #42477 /* ~"내 질문에 대답을 하는 것은 가능하겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #42478 /* ~"안녕히 계시오, 노파."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 3.2 3.5
  SAY #42479 /* ~그녀는 계속 기침을 하면서 자신의 젖은 손수건을 피가래로 채우고 있다. 그녀는 적의에 찬 눈으로 당신을 노려본다.~ */
  IF ~~ THEN REPLY #42480 /* ~"치료를 원하시오? 내가 당신을 위해 해줄 수 있는 일은 없겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #42481 /* ~"당신은 어디가 어떻게 잘못되었소?"~ */ GOTO 9
  IF ~~ THEN REPLY #42482 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3 4.0 5.0
  SAY #42483 /* ~그녀는 기침을 한다. 그녀는 당신에게 다른 데로 가라고 손짓한다. 그녀는 몸을 움츠리며 입고 있는 넝마로 몸을 감싼다. 명백히 그녀는 당신이 자신을 홀로 죽도록 내버려 두기를 바라고 있다.~ */
  IF ~~ THEN REPLY #42484 /* ~"고통스럽소? 내가 당신을 위해 할 수 있는 일은 없겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #42485 /* ~그녀에게 돈을 좀 준다.~ */ GOTO 8
  IF ~~ THEN REPLY #42486 /* ~"이보시오, 내 질문 몇 가지에만 대답해주시오..."~ */ GOTO 7
  IF ~~ THEN REPLY #42487 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.2
  SAY #42488 /* ~그녀는 당신이 알지 못하는 언어로 몇 마디를 내뱉는다, 그리고 다시 기침을 심하게 하며 그 고통으로 몸을 구부린다. ~ */
  IF ~~ THEN REPLY #42489 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #42490 /* ~그녀는 당신은 내민 동전들을 길바닥에 내던진다. 그녀는 다시 미약한 소리로 당신을 야유한다.~ */
  IF ~~ THEN REPLY #42491 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.1 5.1
  SAY #42492 /* ~그녀는 그녀 위의 하늘을 힘없이 가리킨다. 그녀는 대 주조소, 쓰레기, 석탄 더미, 그리고 자신의 가슴을 차례로 가리킨다. 마치 자신의 말을 강조라도 하려는 듯 그녀는 다시 격렬하게 기침을 한다. 덕분에 그녀의 입술은 피투성이가 된다.~ */
  IF ~~ THEN REPLY #42493 /* ~"스모그 때문이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #42494 /* ~"내가 당신을 위해 해줄 수 있는 치료는 없겠소?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42495 /* ~그녀는 고개를 끄덕인다, 그리고 다시 기침을 한다.~ */
  IF ~~ THEN REPLY #42496 /* ~"내가 당신을 위해 해줄 수 있는 치료는 없겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #42497 /* ~"그럼 내가 당신을 위해 할 수 있는 일은 아무 것도 없소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #42498 /* ~당신의 무기와 자신을 차례로 가리키면서 그녀의 눈빛은 음침해진다.~ */
  IF ~~ THEN REPLY #42499 /* ~"당신은 내가 당신을 죽이기를 원하시오?"~ */ GOTO 12
  IF ~~ THEN REPLY #42500 /* ~"당신을 위해 그 일을 해줄 수는 없소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #42501 /* ~그녀는 고개를 지금 그녀의 상태가 허용하는 한도 내에서 최대한 힘차게 젓는다, 그리고 격렬하게 기침을 함으로서 그 대가를 치른다. 그녀는 단호하게 당신의 무기를 가리킨다. 그녀의 누런 눈에 두려움은 없다.~ */
  IF ~~ THEN REPLY #42502 /* ~"그럼 좋소. 내세에는 당신에게 행운이 있기를."~ */ GOTO 14
  IF ~~ THEN REPLY #42503 /* ~"난 당신을 위해 그 일을 해줄 수는 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 12.1 14.1
  SAY #42504 /* ~당신이 돌아서자 그녀는 당신 발에다가 피가래를 뱉는다.~ */
  IF ~~ THEN REPLY #42505 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
  IF ~~ THEN REPLY #42506 /* ~그녀를 죽인다.~ */ DO ~AddexperienceParty(4000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.4 1.5 12.0
  SAY #42507 /* ~그녀는 두려움없이 용감하게 당신을 직시하며 자신의 숨통을 끊을 일격을 기다린다. ~ */
  IF ~~ THEN REPLY #42508 /* ~그녀를 편안히 저 세상으로 보내준다.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #42509 /* ~"난 당신을 위해 이 일을 해줄 수가 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42510 /* ~당신은 신속한 일격으로 그녀의 숨통을 끊는다. 그녀의 몸은 차가운 길바닥에 쓰러진다, 그러나 그녀는 당신에게 감사하는 듯하다.~ */
  IF ~~ THEN REPLY #42511 /* ~"잘 가시오, 기스저라이."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill(Myself)
~ JOURNAL #67286 /* ~나는 오늘 마계구에서 병든 여자 기스저라이를 죽였다. 그녀는 그 구역의 탁한 공기에서 숨을 쉬는 데 어려움을 겪고 있으며, 죽는 것을 두려워하지 않았다. ~ */ EXIT
END
