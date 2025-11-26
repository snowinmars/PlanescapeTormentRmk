// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAXIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAXIS~

IF ~  Global("Vaxis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #453 /* ~비틀거리는 시체는 계속 당신을 공허한 눈으로 바라본다. 그의 이마에는 "821" 이라고 새겨져 있으며, 그의 입은 꿰매져 있다. 그의 몸으로부터는 포름알데히드 냄새가 약간 난다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #454 /* ~"그래... 뭐 재미있는 일이라도 있소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #455 /* ~"그래... 뭐 재미있는 일이라도 있소?"~ */ GOTO 5
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #456 /* ~"난 당신이 좀비가 아니라는 걸 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #457 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 1
  IF ~~ THEN REPLY #458 /* ~"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."~ */ GOTO 5
  IF ~~ THEN REPLY #459 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.3
  SAY #460 /* ~이상하게도 당신 능력은 이 좀비에게는 통용되지 않는다. ~ */
  IF ~~ THEN REPLY #461 /* ~눈을 찌른다.~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #462 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #463 /* ~당신이 좀비의 눈을 찌르자 그는 작은 비명을 지르며 재빨리 손으로 얼굴을 가린다. 그는 작은 소리로 중얼거리기 시작하는데, 그것은 당신이 듣기에는 무슨 욕설 같다.~ */
  IF ~~ THEN REPLY #464 /* ~"당신은 좀비가 아니군! 당신은 누구요?"~ */ JOURNAL #64513 /* ~시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다. ~ */ GOTO 6
  IF ~~ THEN REPLY #465 /* ~"왜 시체로 변장한 거요?"~ */ JOURNAL #64513 /* ~시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다. ~ */ GOTO 6
  IF ~~ THEN REPLY #466 /* ~재빨리 떠난다. ~ */ JOURNAL #64513 /* ~시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 5.2
  SAY #467 /* ~당신이 돌아서서 떠나려 하자, '좀비'가 뭐라고 중얼거린다... 그는 무슨 얘기를 하려는 것 같으나 그의 입술이 꿰매진 탓에 알아듣기 힘들다. "너 누구? 뭘 원해?" ~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #468 /* ~"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #469 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #470 /* ~"당신이 누군지 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #472 /* ~거짓말: "실은 당신을 찾고 있었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #473 /* ~"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #474 /* ~"귀찮게 해서 미안하오... 당신이 누구든 간에. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
  SAY #471 /* ~당신이 돌아서서 떠나려 하자, 좀비가 조용히 으르렁거린다. "너 나에 대해 아무 말 하지마. 너 조용히 해. 더스티에게 아무 말도 마." 그는 손가락을 입술에 갖다 댄다. "쉿." 다음에 그는 손가락으로 목을 베는 시늉을 한다. "아니면 잘 때 내가 너 죽인다. 알았어?"~ */
  IF ~~ THEN REPLY #475 /* ~"지금 날 협박한 건가? 더 이상은 못 참겠군. 죽을 각오를 해라."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #476 /* ~거짓말: "나는 더스트맨에게 당신에 대해 얘기할 생각조차 하지 않을 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #477 /* ~진실: "나는 더스트맨에게 당신에 대해 일체 얘기하지 않겠다고 약속하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_1","GLOBALGood",1)
~ EXIT
  IF ~~ THEN REPLY #478 /* ~"그럼 관두시오. 당신은 당신 일에나 신경 쓰시오, 난 내 일에만 신경 쓸 테니."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.4
  SAY #479 /* ~당신이 좀비에게 인사를 하자 그는 깜짝 놀라서 눈을 깜박인다. "에? 뭐?"~ */
  IF ~~ THEN REPLY #480 /* ~"당신은 좀비가 아니군! 당신은 누구요?"~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다. ~ */ GOTO 6
  IF ~~ THEN REPLY #481 /* ~"왜 시체로 변장한 거요?"~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다. ~ */ GOTO 6
  IF ~~ THEN REPLY #482 /* ~재빨리 떠난다. ~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~시체안치소의 좀비들 중 하나는 진짜 좀비가 아니라 좀비로 변장한 사내였다. 왜 좀비 따위로 변장을 했는지는 나로선 알 수가 없다. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 5.0 5.1
  SAY #483 /* ~'좀비'는 꿰맨 입술을 가지고 말을 하려고 노력하고 있다. 그는 반은 화나고, 반은 두려워하는 기묘한 표정을 하고 있다. "너 누구? 뭘 원해?" ~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #484 /* ~"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #485 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #486 /* ~"당신이 누군지 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #487 /* ~거짓말: "실은 당신을 찾고 있었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #488 /* ~"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #489 /* ~"귀찮게 해서 미안하오... 당신이 누구든 간에. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
  SAY #490 /* ~좀비는 당신 말을 듣지 못한 것 같다. 그는 당신을 잠시 위아래로 살펴보더니 눈살을 찌푸린다. "여기서 뭘 하는 거야?" 그는 의심스럽다는 듯 눈을 좁게 뜬다, "더스티 염탐하는 거야?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #491 /* ~"아니오. 난 탈출하려고 하고 있소."~ */ GOTO 12
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #492 /* ~"난 스파이가 아니오. 난 사고로 여기 갇히게 됐소. 날 도와줄 수 있겠소?"~ */ GOTO 31
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #493 /* ~거짓말: "그렇소, 난 더스티들을... 염탐하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #494 /* ~거짓말: "그렇소, 난 더스티들을... 염탐하고 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #495 /* ~"내가 경비병들을 부르기 전에 당신이 여기서 뭘 하고 있는지 말하시오."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #496 /* ~"내가 경비병들을 부르기 전에 당신이 여기서 뭘 하고 있는지 말하시오."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #1306 /* ~"보시오, 질문을 하고 있는 건 나요, *좀비.* 당신이 여기서 뭘 하고 있는지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #1348 /* ~"보시오, 질문을 하고 있는 건 나요, *좀비.* 당신이 여기서 뭘 하고 있는지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #1349 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #1350 /* ~그는 당신을 더 골똘히 살핀다, "당신 스파이? 당신 세포의 일원?"~ */
  IF ~~ THEN REPLY #4671 /* ~"허?"~ */ GOTO 10
  IF ~~ THEN REPLY #1352 /* ~"세포?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1359 /* ~거짓말: "그렇소... 난 당신을 찾고 있었소. 마침내 만나게 되어 반갑소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #1360 /* ~거짓말: "그렇소... 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 내 말뜻을 알겠소? 이 곳에서의 당신 *임무*는 무엇이오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1361 /* ~거짓말: "그렇소... 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 여기서 어떤 일을 하고 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #1362 /* ~"어, 지금은 얘기할 시간이 없소... 나중에 합시다."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #1363 /* ~그는 당신을 더 골똘히 살핀다, "당신 스파이? 당신 세포의 일원?"~ */
  IF ~~ THEN REPLY #4359 /* ~"허?"~ */ EXTERN ~DMORTE~ 85
  IF ~~ THEN REPLY #4360 /* ~"세포?"~ */ EXTERN ~DMORTE~ 85
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #4361 /* ~그는 눈살을 찌푸린 후 쉿 소리를 낸다. "너 스파이 아냐!" 그는 저리 가라는 몸짓을 한다. "꺼져!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4362 /* ~"우선 당신이 여기서 뭘 하고 있는지부터 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4363 /* ~"우선 당신이 여기서 뭘 하고 있는지부터 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4364 /* ~"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4365 /* ~"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4367 /* ~"좋소, 좋아... 난 떠나겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from:
  SAY #4366 /* ~이 말에는 좀비도 고개를 끄덕인다. 당신이 생각하기에 그는 자신의 좀비 변장을 자랑스럽게 생각하고 있는 것 같다.~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4368 /* ~"내가 탈출하는 걸 도와줄 수 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #4369 /* ~"그래 여기서 뭘 하고 있는 거요?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4370 /* ~거짓말: "그래 당신은 아나키스트의 스파이요? 나도 더스티를 염탐하고 있소... 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 내 말뜻을 알겠소? 이 곳에서의 당신 *임무*는 무엇이오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4371 /* ~거짓말: "그래 당신은 아나키스트의 스파이요? 나도 더스티를 염탐하고 있소... 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 여기서 어떤 일을 하고 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #4372 /* ~"어, 지금은 얘기할 시간이 없소... 나중에 합시다."~ */ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 7.0 11.0
  SAY #4373 /* ~좀비는 관심이 있는 듯하다. "당신 문제 있어? 무슨 짓 했어?"~ */
  IF ~~ THEN REPLY #4374 /* ~"나는 위층에 있는 철판들 중 한 곳에서 깨어났소."~ */ GOTO 13
  IF ~~ THEN REPLY #4375 /* ~"어떤 이유에서인지는 모르겠으나 난 이 곳에 갇혔소. 날 도와줄 수 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #4376 /* ~"다른 기회에 얘기하도록 하겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #4377 /* ~좀비는 마치 미치광이라도 보는 듯한 눈으로 당신을 본다. "너 미쳤어?"~ */
  IF ~~ THEN REPLY #4378 /* ~"그래 나는 정말 미쳤소, 정말로."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4379 /* ~"'바미?' 그게 무슨 뜻이오?"~ */ GOTO 16
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4380 /* ~"'바미?' 그게 무슨 뜻이오?"~ */ EXTERN ~DMORTE~ 87
  IF ~~ THEN REPLY #4381 /* ~"믿기 어려울지도 모르겠지만 당신에게 거짓말을 하는 게 아니오. 나는 위층에 있는 철판들 중 한 곳에서 죽음으로부터 깨어났소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4382 /* ~"어, 아니오... 실은 난 이 곳에 갇혔소. 날 도와줄 수 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #4383 /* ~"우리가 한 얘기에 대해선 잊으시오. 이만 실례해야겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.3 15.0
  SAY #4384 /* ~그는 당신을 쳐다본 후, 쉿 소리를 내며 저리 가라는 몸짓을 한다. "너 미쳤어! 꺼져!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4385 /* ~"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4386 /* ~"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4387 /* ~"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4388 /* ~"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4389 /* ~"좋소, 좋아... 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from:
  SAY #4390 /* ~가짜 좀비는 당신들 둘을 의심스러운 눈초리로 쳐다본다.~ */
  IF ~~ THEN REPLY #4391 /* ~"그건 사실이오. 난 여기에 있는 철판들 중 하나에서 깨어났소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4392 /* ~"어, 미안하오. 실은 난 이 곳에 갇혔소. 날 도와줄 수 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #4393 /* ~"관두시오. 그만 가봐야겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #4394 /* ~그는 당신을 쳐다본 후, 쉿 소리를 내며 저리 가라는 몸짓을 한다. "너 미쳤어! 바보! 꺼져!"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4395 /* ~"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4396 /* ~"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4397 /* ~"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4398 /* ~"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4399 /* ~"좋소, 좋아... 가겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.5 10.1 14.1 16.1 25.3 27.3
  SAY #4400 /* ~그는 잠시 겁에 질린 듯하다, 그러나 당신을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4401 /* ~"내가 당신을 죽이면 당신은 탈출할 수가 없지. 자, 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4402 /* ~"내가 당신을 죽이면 당신은 탈출할 수가 없지. 자, 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4403 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #4404 /* ~좀비는 눈을 좁게 뜨고 당신에게 야유한다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"~ */
  IF ~~ THEN REPLY #4405 /* ~"그 위험은 감수하기로 하지. 죽을 준비나 하시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4406 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요... *좀비.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 7.6 10.2 14.2 16.2 25.4 27.4
  SAY #4407 /* ~그는 잠시 겁에 질린 듯하다, 그러나 당신 체격을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"~ */
  IF ~~ THEN REPLY #4408 /* ~"그 위험은 감수하기로 하지. 죽을 준비나 하시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4409 /* ~"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4410 /* ~"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"~ */ GOTO 20
  IF ~~ THEN REPLY #4411 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요... *좀비.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.2
  SAY #4412 /* ~좀비는 눈을 좁게 뜨고 당신에게 야유한다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."~ */
  IF ~~ THEN REPLY #4413 /* ~"그건 네 마지막 기회였다, 시체. 각오를 해라."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4414 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요... *좀비.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 7.4 10.0 14.0 16.0 19.1 25.2 27.2
  SAY #4415 /* ~당신 눈 안의 그 무언가가 그의 자신감을 무너트린 것 같다. "아니, 아냐! 경비 부르지 마!" 그는 겁에 질린 듯 하다. "난 더스티 염탐하고 내가 본 것 말할 뿐이야. 그거 뿐이야."~ */
  IF ~~ THEN REPLY #4416 /* ~"스파이? 누굴 위해?"~ */ GOTO 23
  IF ~~ THEN REPLY #4417 /* ~"더스트맨이 어떤 일을 하는 걸 보았소?"~ */ GOTO 29
  IF ~~ THEN REPLY #4418 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4419 /* ~"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오, *좀비.*"~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.7 10.3 14.3 16.3 17.1 25.5 27.5
  SAY #4420 /* ~"아니, 아냐! 나 해치지 마!" 좀비를 압도하는 당신의 근육이 그의 결정에 영향을 미친 것 같다. "나 해치지 마. 난 더스티 염탐하고 내가 본 것 말할 뿐이야. 그거 뿐이야."~ */
  IF ~~ THEN REPLY #4421 /* ~"스파이? 누굴 위해?"~ */ GOTO 23
  IF ~~ THEN REPLY #4422 /* ~"더스트맨이 어떤 일을 하는 걸 보았소?"~ */ GOTO 29
  IF ~~ THEN REPLY #4423 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4424 /* ~"내가 알고 싶었던 건 그게 전부요. 이제 내 앞에서 비키시오, *좀비.*"~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0
  SAY #4425 /* ~좀비는 겁에 질린 듯 입을 다문다. 그는 더 이상 말을 하려고 하지 않는다.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4426 /* ~"자, 말하시오. 당신은 누굴 위해 이 곳을 감시하고 있소?"~ */ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4427 /* ~"자, 말하시오. 당신은 누굴 위해 이 곳을 감시하고 있소?"~ */ EXTERN ~DMORTE~ 89
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4428 /* ~"만약 당신이 누굴 위해 염탐하고 있는지를 지금 내게 말해준다면 훨씬 덜 고통스러울 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4429 /* ~"만약 당신이 누굴 위해 염탐하고 있는지를 지금 내게 말해준다면 훨씬 덜 고통스러울 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 89
  IF ~~ THEN REPLY #4430 /* ~"그럼 관두시오. 더스트맨이 어떤 일을 하는 걸 보았소?"~ */ GOTO 29
  IF ~~ THEN REPLY #4431 /* ~"다른 알고 싶은 것들이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4432 /* ~"관두시오, 그럼. 안녕히 계시오, *좀비.*"~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.3 6.3 8.2
  SAY #4433 /* ~"날 찾았어? 왜?" 그는 눈을 가늘게 뜨고 당신을 본다. "나한테 전할 메시지 있어?"~ */
  IF ~~ THEN REPLY #4434 /* ~거짓말: "그렇소, 당신을 위해 메시지를 가져왔소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_5","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #4435 /* ~"누구로부터의 메시지 말이오?"~ */ GOTO 27
  IF ~~ THEN REPLY #4436 /* ~"아니, 내겐 아무런 메시지도 없소."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY #4437 /* ~화난 듯 쉿 소리를 낸다. "그럼 뭘 원해, 얼간아!"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4438 /* ~"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #4439 /* ~"난 정보가 필요하오..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4440 /* ~"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4441 /* ~"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4442 /* ~"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4443 /* ~"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4444 /* ~"귀찮게 해서 미안하오... 당신이 누구든 간에. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY #4445 /* ~"무슨 메시지?"~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4446 /* ~"당신은 내게 당신 임무에 대해 말할 의무가 있소."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4447 /* ~거짓말: "당신에게 내릴 새로운 지령을 가지고 왔소"~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4448 /* ~거짓말: "당신에게... 내릴 새로운 지령을 가지고 왔소"~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #4449 /* ~"미안하오, 내겐 메시지가 없소."~ */ GOTO 27
  IF ~~ THEN REPLY #4450 /* ~"관두시오. 귀찮게 해서 미안하오. 안녕히 계시오."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.3 26.4
  SAY #4451 /* ~그는 화가 난 듯 눈을 좁게 뜬다. "너 심부름꾼 아냐. 너 누구야?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4452 /* ~"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"~ */ GOTO 31
  IF ~~ THEN REPLY #4453 /* ~"내겐 정보가 필요하오..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4454 /* ~"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4455 /* ~"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4456 /* ~"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4457 /* ~"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4458 /* ~"귀찮게 해서 미안하오... 당신이 누구든 간에. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
  SAY #4459 /* ~"난 더스티 염탐하고 내가 본 것 말할 뿐이야. 그거 뿐이야."~ */
  IF ~~ THEN REPLY #4460 /* ~"더스트맨이 어떤 일을 하는 걸 보았소?"~ */ GOTO 29
  IF ~~ THEN REPLY #4461 /* ~"알겠소. 그 밖에도 당신에게 물어보고 싶은 것이 있소.~ */ GOTO 43
  IF ~~ THEN REPLY #4462 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.1 22.1 23.4 28.0 70.1 71.2
  SAY #4463 /* ~"아무 것도 없어. 그들 아무 일도 안해. 아무 것도 찾을 수 없어. 시체, 시체, 시체 뿐이야. 더스티는 아무 일도 안해." 그는 자신감에 차서 눈을 가늘게 뜬다. "그래도 난 감시해."~ */
  IF ~~ THEN REPLY #4464 /* ~"알겠소. 그 밖에도 당신에게 물어보고 싶은 것이 있소.~ */ GOTO 43
  IF ~~ THEN REPLY #4465 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1 26.2
  SAY #4466 /* ~그는 이해를 하려고 노력하는 듯 눈을 가늘게 뜬다. "무슨 명령?"~ */
  IF ~~ THEN REPLY #4467 /* ~"당신 임무에 대해 얘기하시오."~ */ GOTO 28
  IF ~~ THEN REPLY #4468 /* ~"나는 남의 눈에 띄지 않고 떠날 수 있는 탈출로를 찾아야만 하오."~ */ GOTO 49
  IF ~  Global("Vaxis_Leave","GLOBAL",0)
~ THEN REPLY #4469 /* ~"나는 당신과 임무를 교대하러 왔소. 당신의 모은 모든 정보와 소지품을 내게 주고 떠나도록 하시오."~ */ DO ~SetGlobal("Vaxis_Leave","GLOBAL",1)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Embalm",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Knife",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #64517 /* ~나는 변장한 스파이에게 그와 교대하러 왔다고 말했다. 그러자 그는 자신이 모은 물건들을 모두 넘겼는데, 그것들은 주로 붕대와 다른 치료용 아이템들이었다. 아마 변장을 유지하기 위해 필요로 했던 것 같다. ~ */ GOTO 72
  IF ~~ THEN REPLY #4470 /* ~"나는 당신이 필요로 하는 모든 도움을 제공하러 이 곳에 왔소."~ */ GOTO 35
  IF ~~ THEN REPLY #4471 /* ~"당신의 새로운 지령은 다음 번까지 기다려야 할 것이오. 나중에 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 7.1 12.1 13.4 15.1 25.0 27.0 50.0
  SAY #4472 /* ~그는 잠시 아무 말도 하지 않는다. 그리고 이해했다는 듯 가볍게 고개를 끄덕인다. "왜 내가 너 도와야 하지?"~ */
  IF ~~ THEN REPLY #4473 /* ~"왜냐하면 내겐 당신 도움이 필요하기 때문이오."~ */ GOTO 32
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4474 /* ~"우리가 서로 돕는 것이 어떻겠소. 대가로 당신은 뭘 원하시오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vaxis_3","GLOBALGood",1)
~ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4475 /* ~"왜냐하면 만약 당신이 날 도울 경우... 내가 당신 변장을 폭로하지 않을 것이기 때문이오."~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4476 /* ~"왜냐하면 만약 당신이 날 도울 경우... 내가 당신 변장을 폭로하지 않을 것이기 때문이오."~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4477 /* ~"당신은 시체가 되기보다는 시체로 변장하는 것을 택할 사람 같소. 이유는 그걸로 충분하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4478 /* ~"당신은 시체가 되기보다는 시체로 변장하는 것을 택할 사람 같소. 이유는 그걸로 충분하오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4479 /* ~"우리가 만난 사실에 대해 잊으시오.이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #4480 /* ~좀비는 조소한다. "모두 뭘 원해, 하지만 아무도 주지 않아. 당신 내게 뭘 주면, 나도 도울지 몰라."~ */
  IF ~~ THEN REPLY #4481 /* ~"무엇이 필요하오?"~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4482 /* ~"당신이 날 도우면 나도 경비병을 부르지 않기로 하는 건 어떻겠소?"~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4483 /* ~"당신이 날 도우면 나도 경비병을 부르지 않기로 하는 건 어떻겠소?"~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4484 /* ~"당신은 내게 '노'라고 하기보다는 살아 숨쉬는 것을 택할 사람 같소. 자, 마지막으로 묻겠소: 어떻게 하면 여기서 나갈 수 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4485 /* ~"당신은 내게 '노'라고 하기보다는 살아 숨쉬는 것을 택할 사람 같소. 자, 마지막으로 묻겠소: 어떻게 하면 여기서 나갈 수 있소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4486 /* ~"관심없소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 33 // from: 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
  SAY #4487 /* ~그는 자신이 당신을 처치할 수 있을지 알아보기라도 하듯 당신을 위아래로 살피고 당신 흉터들을 쳐다본 후, 그러지 않기로 결정한다, "흠... 전이문으로 탈출할 수 있어."~ */
  IF ~~ THEN REPLY #4672 /* ~"전이문?"~ */ DO ~SetGlobal("Strong_Arm_Vaxis","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 34 // from: 31.3 32.2 35.3
  SAY #4491 /* ~그는 잠시 겁에 질린 듯하다, 그러나 당신을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4489 /* ~"내가 당신을 죽이면 당신은 탈출할 수 없을 거요. 자, 입을 열기 시작하시오, 아니면 그 변장을 현실로 만들어 줄 테니." ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4490 /* ~"내가 당신을 죽이면 당신은 탈출할 수 없을 거요. 자, 입을 열기 시작하시오, 아니면 그 변장을 현실로 만들어 줄 테니." ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4492 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 35 // from: 30.3 31.1 32.0
  SAY #4493 /* ~"어 날 위해 열쇠 가져다 줘. 난 쇠로 만든 처리실 열쇠 원해 ."~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4494 /* ~"이 열쇠 말이오?"~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~~ THEN REPLY #4495 /* ~"좋소. 열쇠는 어디 있소?"~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4496 /* ~"내겐 이런 데 허비할 시간이 없소. 내가 탈출하는 것을 도와주시오, 아니면 경비병들을 부르겠소."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4497 /* ~"내겐 이런 데 허비할 시간이 없소. 내가 탈출하는 것을 도와주시오, 아니면 경비병들을 부르겠소."~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4498 /* ~"난 당신을 위해 아무런 심부름도 하지 않을 것이오. 내가 탈출하는 것을 도와주시오, 아니면 당신 목을 여기서 당장 부러트려 놓겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4499 /* ~"난 당신을 위해 아무런 심부름도 하지 않을 것이오. 내가 탈출하는 것을 도와주시오, 아니면 당신 목을 여기서 당장 부러트려 놓겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~~ THEN REPLY #4500 /* ~"사양하겠소. 아마 다른 기회에."~ */ GOTO 4
END

IF ~~ THEN BEGIN 36 // from: 35.1 58.2
  SAY #4501 /* ~"더스티 계집이 가지고 있어." 그는 자신의 눈을 가리킨다. "그녀의 눈은 노란색이야..." 다음에 그는 손으로 한 쌍의 가위를 연상시키는 손짓을 한다. "손가락에 칼이 달렸어."~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4502 /* ~"우리는 이미 연관이 되었소. 여기 열쇠가 있소."~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #64520 /* ~"눈이 노랗고 손가락에 칼날이 달린... 여자 더스트맨 말이오? 나는 이미 그녀를 처리실에서 만났소. 기다리시오. 곧 열쇠를 가지고 돌아오리다."~ */ JOURNAL #64519 /* ~"좀비"의 도움을 받는 대신 나는 그를 위해 다른 방에서 만난 적이 있는 에이-빈이라는 이름의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다. 칼날이 달린 그런 손으로 어떻게 처리실 열쇠를 사용할 수가 있는지 나로선 정말 모르겠다. ~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #4503 /* ~"여자 더스트맨... 노란 눈에다 손가락에는 칼날이 달린? 알았소. 열쇠를 가지고 돌아오리다."~ */ JOURNAL #64518 /* ~"좀비"의 도움을 받는 대신 나는 그를 위해 손에 칼날이 달린 노란 눈의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다. ~ */ GOTO 38
  IF ~~ THEN REPLY #4504 /* ~"이 여자 더스트맨은 참으로 매혹적이오. 당신은 정말로 내가 당신들 두 사람을 서로 소개시켜 주는 것을 원하지 않소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_6","GLOBALLaw",-1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.3
  SAY #4505 /* ~좀비는 눈을 깜박인다. 그는 당신 말을 이해하지 못한 듯하다.~ */
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #4506 /* ~"그건 농담이었소, 보시오, 당신... 관두시오. 가서 당신이 원하는 열쇠를 찾아 오겠소."~ */ JOURNAL #64519 /* ~"좀비"의 도움을 받는 대신 나는 그를 위해 다른 방에서 만난 적이 있는 에이-빈이라는 이름의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다. 칼날이 달린 그런 손으로 어떻게 처리실 열쇠를 사용할 수가 있는지 나로선 정말 모르겠다. ~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #66150 /* ~"그건 농담이었소. 당신은... 관두시오. 가서 당신이 원하는 열쇠를 찾아오겠소."~ */ JOURNAL #64518 /* ~"좀비"의 도움을 받는 대신 나는 그를 위해 손에 칼날이 달린 노란 눈의 여자 더스트맨으로부터 처리실 열쇠를 가져오기로 했다. ~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2 37.0 37.1
  SAY #4507 /* ~좀비는 눈을 가늘게 뜨고 당신을 바라본다. "잡혀도 내 얘기 하지 마. 아니면 내가 너 잘 때 죽인다."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4508 /* ~"가서 당신이 원하는 열쇠를 찾아 오겠소... 하지만 함부로 협박 따위는 하지 않은 게 좋을 거요, 알겠소?"~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4509 /* ~"곧 돌아오겠소."~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4510 /* ~"가서 당신이 원하는 열쇠를 찾아 오겠소... 하지만 함부로 협박 따위는 하지 않은 게 좋을 거요, 알겠소?"~ */ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4511 /* ~"곧 돌아오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 43.12
  SAY #4512 /* ~"나 변장 잘해. 내겐 상처도 있어. 난 향료도 많이 발랐어. 난 좋은 좀비야." 좀비는 꿰맨 입으로 킬킬거리더니 자신의 머리를 가볍게 두드린다. "더스티들은 바보야."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 93
END

IF ~~ THEN BEGIN 40 // from:
  SAY #4514 /* ~"난 여기서 기다릴께. 열쇠 가져와." 좀비는 당신에게 역겨운 미소를 짓는다. "그럼 내가 너 도울께."~ */
  IF ~~ THEN REPLY #4515 /* ~"찾을 수가 있으면 가지고 돌아오겠소."~ */ EXIT
  IF ~~ THEN REPLY #4516 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #4517 /* ~좀비는 눈을 크게 뜬다, 그리고 손을 내밀고 손가락을 튕겨 탁 소리를 낸다. "내게 그걸 줘."~ */
  IF ~~ THEN REPLY #4518 /* ~"잠깐 기다리시오. 먼저 원하는 것이 있소."~ */ EXIT
  IF ~~ THEN REPLY #4519 /* ~"여기 있소."~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0 36.0 58.0 58.1
  SAY #4520 /* ~좀비는 눈을 크게 뜬다, 그리고 당신 손으로부터 열쇠를 채 간다. 그는 계속 고개를 끄덕이며 그것을 돌려본다: "좋아... 좋아."~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4521 /* ~"자... 어떻게 하면 여기서 나갈 수가 있소?"~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~나는 백시즈에게 그가 그토록 간절히 원하는 처리실 열쇠를 갖다 주었다. 그의 몸에서 향료 냄새가 사라지려고 하는 것으로 미루어볼 때, 그는 변장을 유지하는 데 필요한 물품을 얻기 위해 그 열쇠를 원한 것 같다.  ~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",1)
~ THEN REPLY #4522 /* ~"자... 알고 싶은 것이 좀 있소..."~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~나는 백시즈에게 그가 그토록 간절히 원하는 처리실 열쇠를 갖다 주었다. 그의 몸에서 향료 냄새가 사라지려고 하는 것으로 미루어볼 때, 그는 변장을 유지하는 데 필요한 물품을 얻기 위해 그 열쇠를 원한 것 같다.  ~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
  SAY #4523 /* ~"뭘 알고 싶어?"~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",1)
~ THEN REPLY #64508 /* ~"어떻게 하면 이 곳에서 탈출할 수가 있소?"~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",0)
~ THEN REPLY #4524 /* ~"어떻게 하면 여기서 탈출할 수가 있소?"~ */ GOTO 49
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #4525 /* ~"당신이 말한 전이문이 어디 있는지 다시 말해주겠소?"~ */ GOTO 52
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",1)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4526 /* ~"나를 좀비로 변장시켜 줄 수 있겠소?"~ */ GOTO 63
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",2)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4527 /* ~"나를 다시 좀비로 변장시켜 줄 수 있겠소?"~ */ GOTO 63
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4528 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 28
  IF ~  GlobalLT("Pharod","GLOBAL",1)
~ THEN REPLY #4673 /* ~"파로드란 이름의 사람을 아시오?"~ */ GOTO 44
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #4530 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 47
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #4531 /* ~"달에 대해 아는 것을 얘기해줄 수 있겠소?"~ */ GOTO 53
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4532 /* ~"데이오나라에 대해 아는 것을 얘기해줄 수 있겠소?"~ */ GOTO 54
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #4533 /* ~"소에고에 대해 아는 것을 얘기해줄 수 있겠소?"~ */ GOTO 55
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4534 /* ~"어떻게 해서 그런 모습을 하게 된 거요?~ */ GOTO 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4535 /* ~"어떻게 해서 그런 모습을 하게 된 거요?~ */ GOTO 39
  IF ~~ THEN REPLY #4536 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.6
  SAY #4537 /* ~"훠로드?" 좀비는 생각에 잠긴 듯 잠시 눈살을 찌푸린다. "난... 그가 벌통 어딘가에 산다고 들었어." 그는 고개를 젓는다. "정확히 어딘지는 몰라." 그는 다시 눈살을 찌푸린다. "더스티들은 화났어, 그들 훠로드 싫어해."~ */
  IF ~~ THEN REPLY #4538 /* ~"벌통?"~ */ GOTO 45
  IF ~~ THEN REPLY #4539 /* ~"더스트맨이 왜 파로드를 싫어하오?"~ */ JOURNAL #64522 /* ~더스트맨과 파로드는 별로 좋은 사이가 아닌 듯하다... 백시즈는 내게 파로드가 시체안치소로 많은 수의 시체를 가져오고 있으며, 더스트맨은 파로드가 아직 죽을 때가 되지 않은 사람들을 죽이고 있는 것은 아닌가 의심하고 있다고 말해주었다. ~ */ GOTO 46
  IF ~~ THEN REPLY #4540 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4541 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #4542 /* ~"이 곳 밖의 빈민굴."~ */
  IF ~~ THEN REPLY #4543 /* ~"더스트맨이 왜 파로드를 싫어하오?"~ */ JOURNAL #64522 /* ~더스트맨과 파로드는 별로 좋은 사이가 아닌 듯하다... 백시즈는 내게 파로드가 시체안치소로 많은 수의 시체를 가져오고 있으며, 더스트맨은 파로드가 아직 죽을 때가 되지 않은 사람들을 죽이고 있는 것은 아닌가 의심하고 있다고 말해주었다. ~ */ GOTO 46
  IF ~~ THEN REPLY #4544 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4545 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0
  SAY #4546 /* ~"그는 수집자야. 시체안치소에 시체를 가져와 더스트맨에게 팔아. 시체를 많이 많이 가져와. 더스티들은 그거 어디서 시체 가져오는지 몰라. 그가 사람들을 죽인다고 생각하는 거 같아."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4547 /* ~"어... 뭐라고?"~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4548 /* ~"어... 뭐라고?"~ */ EXTERN ~DMORTE~ 91
  IF ~~ THEN REPLY #4549 /* ~"아. 그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4550 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.7
  SAY #4551 /* ~"몰라. 어떤 자식이 널 털었어?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4552 /* ~"어... 뭐라고?"~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4553 /* ~"어... 뭐라고?"~ */ EXTERN ~DMORTE~ 92
  IF ~~ THEN REPLY #4554 /* ~"아. 그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4555 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #4556 /* ~좀비는 말을 하려다 멈추고, 다시 말을 하려다 어깨를 으쓱한다. 아무래도 그보다 더 명료하게 설명을 할 수가 없는 것 같다.~ */
  IF ~~ THEN REPLY #4557 /* ~"아. 그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4558 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.1 42.0 43.0 43.1
  SAY #4559 /* ~좀비는 툴툴거린다. "전이문으로 탈출할 수 있어." 그는 손을 흔든다. "푹."~ */
  IF ~~ THEN REPLY #4560 /* ~"문? 무슨 문 말이오?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 33.0 49.0
  SAY #4563 /* ~"전이문들..." 좀비는 손으로 주변을 가리킨다. "전이문은 모든 곳에 있어."~ */
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4564 /* ~"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"~ */ GOTO 31
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
GlobalGT("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64509 /* ~"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"~ */ GOTO 51
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",1)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64510 /* ~"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"~ */ GOTO 51
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #64511 /* ~"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3 72.0
  SAY #4567 /* ~좀비는 고개를 끄덕인다. "나가고 싶으면 1층 북서쪽 방에 있는 아치로 가... 넌 손가락뼈 필요해, 갈고리 모양의." 그는 자신의 집게손가락을 치켜들어 갈고리 모양으로 구부린다. "열쇠를 찾으면 아치를 통해, 비밀 묘지로 간 다음 가기서부터 탈출을 할 수 있어. 비밀 탈출 루트." 그는 열심히 고개를 끄덕인다. "넌 거기서 쉴 수 있어."~ */
  IF ~  !PartyHasItem("BoneChrm")
~ THEN REPLY #64527 /* ~"굽은 손가락뼈? 그것은 어디서 얻을 수가 있소?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64528 /* ~백시즈는 내게 시체안치소 1층의 북서쪽 방에 비밀의 전이문이 있다고 말해주었다. 백시즈의 말에 의하면 굽은 손가락뼈를 전이문에 갖다 대면 그것이 작동하여 나를 "휴식"을 취할 수 있는 비밀 토굴로 이동시켜 줄 것이라고 한다. 그는 굽은 손가락뼈가 어디 있는지 알지 못하나, 내게 시체안치소 3층을 찾아보라고 권했다. ~ */ GOTO 77
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4568 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~백시즈는 내게 시체안치소 1층의 북서쪽 방에 비밀의 전이문이 있다고 말해주었다. 백시즈의 말에 의하면 굽은 손가락뼈를 전이문에 갖다 대면 그것이 작동하여 나를 "휴식"을 취할 수 있는 비밀 토굴로 이동시켜 줄 것이라고 한다. ~ */ GOTO 43
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4569 /* ~"1층 북서쪽 방의 아치? 알겠소, 가서 확인해 보겠소."~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~백시즈는 내게 시체안치소 1층의 북서쪽 방에 비밀의 전이문이 있다고 말해주었다. 백시즈의 말에 의하면 굽은 손가락뼈를 전이문에 갖다 대면 그것이 작동하여 나를 "휴식"을 취할 수 있는 비밀 토굴로 이동시켜 줄 것이라고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.2
  SAY #4570 /* ~"잘 듣고 기억하라고!" 좀비는 화난 듯하다. "아치, 1층, 북서쪽..." 그는 자신의 집게손가락을 치켜들어 구부린다. "넌 굽은 손가락뼈 필요해. 너는 비밀 묘지로 가게 돼. 탈출 루트. 거기선 쉴 수가 있어."~ */
  IF ~~ THEN REPLY #4571 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4572 /* ~"1층 북서쪽 방의 아치, 구부러진 손가락뼈로 열린다? 좋소, 이번에는 알아들었소."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 43.8
  SAY #4573 /* ~"서기." 어깨를 으쓱한다. "늙은이."~ */
  IF ~~ THEN REPLY #4574 /* ~"더 이상 얘기할 것은 없을 것 같소. 다른 것에 대해 알고 싶소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4575 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 43.9
  SAY #4576 /* ~"허?" 눈살을 찌푸린다. "그녀 누구?"~ */
  IF ~~ THEN REPLY #4577 /* ~"관두시오. 다른 것에 대해 알고 싶소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4578 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 43.10
  SAY #4579 /* ~"가이드. 시체안치소 장문에 있어. 그로부터 뭘 원해?"~ */
  IF ~~ THEN REPLY #4580 /* ~"그에 대해 뭘 아시오?"~ */ DO ~SetGlobal("Vaxis_Exposes_Soego","GLOBAL",1)
~ JOURNAL #64530 /* ~백시즈는 소에고가 좀 이상하다고 말했다. 그가 "쥐"를 좋아한다나... 아무튼 그런 얘기였다. 백시즈가 남보고 이상하다는 것은 정말 아이러니가 아닐 수 없다. ~ */ GOTO 56
  IF ~~ THEN REPLY #4581 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #4582 /* ~"이상하게 행동해. 더스티도 아니고 아나키스트도 아냐. 눈이 변했어..." 어깨를 으쓱한다. "쥐같다고. 이상해."~ */
  IF ~~ THEN REPLY #4583 /* ~"이 근방에서 이상한 사람이 그뿐이라니 참으로 다행한 일이군. 그 밖에도 알고 싶은 것이 좀 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4584 /* ~"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."~ */ EXIT
END

IF ~  GlobalGT("Vaxis","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #4585 /* ~가짜 좀비가 보인다. 당신은 그의 변장에 감탄하지 않을 수 없다... 그의 숨소리는 얼마나 미약한지 거의 눈치채지 못할 정도이다.~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
~ THEN REPLY #4586 /* ~"안녕하시오."~ */ GOTO 58
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
~ THEN REPLY #4587 /* ~"안녕하시오."~ */ GOTO 58
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4588 /* ~"안녕하시오."~ */ GOTO 59
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4589 /* ~"안녕하시오."~ */ GOTO 58
  IF ~~ THEN REPLY #4590 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1 57.3
  SAY #4591 /* ~좀비는 주위에 누가 없는 지 살핀 후 당신을 향해 몸을 돌린다. "뭐야?"~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
PartyHasItem("KeyEm")
~ THEN REPLY #4592 /* ~"당신이 원했던 처리실 열쇠가 여기 있소."~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
PartyHasItem("KeyEm")
~ THEN REPLY #4593 /* ~"당신이 원했던 처리실 열쇠가 여기 있소."~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!PartyHasItem("KeyEm")
~ THEN REPLY #4594 /* ~"당신이 말한 열쇠가 어디 있는지 다시 얘기해주겠소?"~ */ GOTO 36
  IF ~~ THEN REPLY #4595 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4596 /* ~"관두시오. ~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.2
  SAY #4597 /* ~좀비는 주위에 누가 없는 지 살핀 후, 쉿 소리를 내며 당신에게 딴 데로 가라는 몸짓을 한다 . "꺼져! 꺼지라고!"~ */
  IF ~~ THEN REPLY #4598 /* ~"아니오. 당신에게 먼저 물어볼 것들이 있소..."~ */ GOTO 43
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4599 /* ~"그럼 관두시오."~ */ GOTO 4
  IF ~  GlobalGT("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4600 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 43.11
  SAY #4601 /* ~"나 변장 잘해. 내겐 상처도 있어. 난 향료도 많이 발랐어. 난 좋은 좀비야." 좀비는 꿰맨 입으로 킬킬거리더니 자신의 머리를 가볍게 두드린다. "더스티들은 바보야."~ */
  IF ~~ THEN REPLY #4602 /* ~"그래 그들은 정말 바보들이오."~ */ GOTO 61
  IF ~~ THEN REPLY #4603 /* ~"아프진 않소?"~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4604 /* ~"그 변장은 상당히 훌륭하오. 그래서 말인데... 나도 좀비로 변장시켜 줄 수 있겠소?"~ */ GOTO 63
  IF ~~ THEN REPLY #4605 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4606 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #4607 /* ~좀비는 비꼬아서 한 말이란 눈치채지 못한 모양이다. "바보 같은 더스티들. 난 좋은 좀비야."~ */
  IF ~~ THEN REPLY #4608 /* ~"아프진 않소?"~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4609 /* ~"그 변장은 상당히 훌륭하오. 나도 좀비로 변장시켜 줄 수 있겠소?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4610 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4611 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4612 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4613 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1 61.0
  SAY #4614 /* ~그는 당신 흉터들을 바라본다. "나도 같은 질문을 하고 싶은데. 난 별로 아프지 않아." 그는 자기 가슴을 두드린다. "나 튼튼해."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4615 /* ~"그 변장은 상당히 훌륭하오. 나도 좀비로 변장시켜 줄 수 있겠소?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4616 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4617 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4618 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4674 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 43.3 43.4 60.2 61.1 62.0 64.1 64.2
  SAY #4619 /* ~그는 몇 초 동안 당신을 위아래로 살핀다, 그리고 스스로에게 뭐라고 중얼거린 다음 고개를 끄덕인다. "어. 향료 한 단지가 필요해." 그는 당신 가슴에 난 흉터들을 가리킨다. "그리고 바늘과 실도 좀 필요해."~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #4620 /* ~"여기 있소."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",2)
DestroyPartyItem("Embalm",FALSE)
DestroyPartyItem("Needle",FALSE)
~ GOTO 65
  IF ~~ THEN REPLY #4621 /* ~"생각해 보겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4622 /* ~"사양하겠소. 아마 다른 기회에... 안녕히 계시오."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #4623 /* ~"약간의 향료와 실? 가서 구할 수 있는지 알아보겠소.~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2 61.3 62.1 62.2
  SAY #4624 /* ~그는 기묘한 표정으로 당신을 위아래로 살핀다. "넌 좋은 좀비가 되겠어. 난 너 좀비로 만들어 줄 수 있어. 좋은 변장."~ */
  IF ~~ THEN REPLY #4625 /* ~"어쨌든 고맙소. 당신에게 물어볼 것들이 더 있소..."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4626 /* ~"물론이오. 해줄 수 있겠소?"~ */ GOTO 63
  IF ~~ THEN REPLY #4627 /* ~"사양할 이유는 없소. 난 이미 걸어다니는 시체가 된 기분이니까."~ */ GOTO 63
  IF ~~ THEN REPLY #4628 /* ~"아니... 아니오... 괜찮소. 안녕히 계시오."~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.0
  SAY #4629 /* ~좀비는 당신으로부터 아이템들을 받은 후 작업을 개시한다...~ */
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",0)
~ THEN REPLY #4630 /* ~움직이지 말고 가만히 있는다.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
AddexperienceParty(500)
SetGlobal("Vaxis_Zombie_XP","GLOBAL",1)
~ GOTO 66
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",0)
~ THEN REPLY #4631 /* ~움직이지 말고 가만히 있는다.~ */ DO ~SetGlobal("Morte_Vaxis_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 94
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",1)
~ THEN REPLY #4632 /* ~움직이지 말고 가만히 있는다.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",1)
~ THEN REPLY #64533 /* ~가만히 있으려고 노력한다.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.2 65.3
  SAY #4633 /* ~좀비는 당신 몸에 향료를 잔뜩 바른 후 당신의 흉터 여러 곳을 꿰맨다. 그는 발로부터 시작하여 위쪽으로 올라가며 당신 흉터들을 꿰맨 다음, 당신 입술을 꿰매어 변장을 완성시킨다. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4634 /* ~"음-음-음... 코맙쏘."~ */ GOTO 67
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",0)
~ THEN REPLY #4635 /* ~"음-음-음... 코맙쏘."~ */ DO ~SetGlobal("Morte_Vaxis_Quip_2","GLOBAL",1)
~ EXTERN ~DMORTE~ 95
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",1)
~ THEN REPLY #4636 /* ~"음-음-음... 코맙쏘."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #4637 /* ~좀비는 손을 치켜 올린다. "조심해! 말을 하면 꿰맨 곳이 터져 변장을 망쳐! 좀비는 말 안 해. 할 말이 있으면 천천히 조심스럽게 해."

주: 아무도 좀비가 말하리라고는 생각하지 않는다. 만약 좀비로 변장한 채 다른 사람에게 말을 걸면 변장이 탄로날 위험이 있다.~ */
  IF ~~ THEN REPLY #4638 /* ~"음... 음. 알겠소..."~ */ JOURNAL #64531 /* ~얼마간의 바늘과 실, 그리고 향료와 교환으로 백시즈는 나를 좀비로 변장시켜 주었다. 그는 달리면 변장이 벗겨질 것이며, 좀비는 "말'을 하지 않기 때문에 변장 중에는 말을 하지 말라고 내게 주의를 주었다. ~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #4639 /* ~좀비는 눈살을 찌푸린다. "변장은 오래 가지 않아... 향료는 말라 버리고 꿰맨 실들도 떨어져 나가." 그는 어깨를 으쓱한다. "아마 시체안치소 밖까지 유지되지는 못할 거야. 그리고 달리지 마! 달리면 변장을 다 망쳐."

주: 무기를 장비하거나 달리면 변장은 즉시 무효화된다. 새로운 무기를 발견하더라도 변장을 해제하고 싶을 때까지 장비를 미루는 것이 좋다. 만약 뛰어서 이동하는 것이 기본 설정으로 되어 있다면, 백시즈에게 변장을 부탁하기 전에 설정을 변경해야 한다.~ */
  IF ~~ THEN REPLY #4640 /* ~다시 고개를 끄덕이고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #4641 /* ~'좀비'는 눈살을 찌푸린다. "넌 낯이 익어. 내가 전에 너 본 적 있어?"~ */
  IF ~~ THEN REPLY #4642 /* ~"아마 그럴지도. 날 어디서 보았소?"~ */ EXIT
  IF ~~ THEN REPLY #4643 /* ~X.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 23.0 23.2 71.0 71.1
  SAY #4644 /* ~놀랍게도 좀비는 당신으로부터 고개를 돌린다... 그는 두려운 듯한 눈빛으로 주변을 살피기 시작한다. ~ */
  IF ~~ THEN REPLY #4645 /* ~"말하지 않겠다는 거요? 그럼 비명을 지를 준비를 하시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4646 /* ~"그럼 관두시오. 더스트맨이 어떤 일을 하는 걸 보았소?"~ */ GOTO 29
  IF ~~ THEN REPLY #4647 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4648 /* ~"그럼 관두시오. 안녕히 계시오, *좀비.*"~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #4649 /* ~좀비는 당신들 둘을 두려운 눈빛으로 바라보고 있다. 그는 아직도 조용하다... 그의 표정으로 미루어 볼 때 모트의 추측이 맞는 것 같다.~ */
  IF ~~ THEN REPLY #4650 /* ~"아나키스트? 당신은 그들을 위해 이 곳을 감시하는 거요?~ */ GOTO 70
  IF ~~ THEN REPLY #4651 /* ~"왜 아나키스트가 당신으로 하여금 이 곳을 감시하게 하는지를 지금 내게 말해주면 훨씬 덜 고통스러울 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #4652 /* ~"그럼 관두시오. 더스트맨이 어떤 일을 하는 걸 보았소?"~ */ GOTO 29
  IF ~~ THEN REPLY #4653 /* ~"그 밖에도 알고 싶은 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #4654 /* ~"그럼 관두시오. 안녕히 계시오, *좀비.*"~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 30.2
  SAY #4655 /* ~좀비는 실망한 듯하다, 그러나 그는 어깨를 으쓱한 다음 자신의 얼룩진 튜닉에 손을 집어 넣고 뒤적거리기 시작한다. "조용했어. 더스티들은 조용했어. 지난번 보고 이후 새로운 건 아무 것도 없어." 잠시 후 그는 툴툴거리면서 당신에게 몇 개의 아이템을 넘겨 준다. "여기 있어." 냄새를 미루어 볼 때 그것들은 수색을 받더라도 발견되지 않을 곳에 감추러 두었던 것 같다. "난 조금 있다가 떠날 거야."~ */
  IF ~  Global("Vaxis_Help","GLOBAL",0)
~ THEN REPLY #4656 /* ~"떠나? 어떻게?"~ */ GOTO 51
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #64532 /* ~"알겠소. 안녕히 계시오, 백시스."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #4658 /* ~좀비는 툴툴거린다. "전이문은 아치야, 1층 북쪽 방에 있는. 열려면 스켈레톤 손가락뼈가 필요해." 그는 고개를 끄덕인다. "잘 해봐."~ */
  IF ~~ THEN REPLY #4659 /* ~"어... 좋소.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 34.0
  SAY #4660 /* ~좀비는 눈을 좁게 뜨고 당신에게 야유한다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"~ */
  IF ~~ THEN REPLY #4661 /* ~"그건 네 마지막 기회였다. 죽을 준비를 해라."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4662 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 걸, *좀비.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 75 // from: 31.4 32.3 35.4
  SAY #4663 /* ~그는 잠시 겁에 질린 듯하다, 그러나 당신 체격을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4664 /* ~"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4665 /* ~"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"~ */ GOTO 76
  IF ~~ THEN REPLY #4666 /* ~"그 위험은 감수하기로 하지. 죽을 준비나 하시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4667 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요... *좀비.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #4668 /* ~좀비는 눈을 좁게 뜨고 당신에게 야유한다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."~ */
  IF ~~ THEN REPLY #4669 /* ~"그건 네 마지막 기회였다, 시체. 죽을 준비를 해라."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4670 /* ~"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요... *좀비.*"~ */ GOTO 4
END

IF ~~ THEN BEGIN 77 // from: 51.0
  SAY #64523 /* ~그는 어깨를 으쓱한다. "어딘가 있을 거야... 위층의 저장실에 가봐. 아마 거기 있을지도."~ */
  IF ~~ THEN REPLY #64524 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 43
  IF ~~ THEN REPLY #64525 /* ~"좋소. 위층에서 굽은 손가락뼈를 찾은 다음 1층으로 내려가 북서쪽 방에 있는 아치들 중 하나로 향하겠소. 알았소."~ */ EXIT
END
