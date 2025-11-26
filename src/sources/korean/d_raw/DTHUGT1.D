// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33548 /* ~"쉬바의 가터여! *이* 악취가 나는 괴물은 대체 뭐지?"~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33549 /* ~"저 딱한 시체를 다시 저 세상으로 보낸 후 더스티에게 끌고 가 돈이나 받는 게 어때?" 그는 자기 친구를 쳐다보면서 눈살을 치켜 올린다.~ */
  IF ~~ THEN REPLY #33565 /* ~"매우 재미있군... 자, 이제 내 앞에서 비키시오."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33566 /* ~"내 앞에서 비키시오, 아니면 당신들 둘 모두 죽일 테니."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33567 /* ~"내 앞에서 비키시오, 아니면 당신들 둘 모두 죽일 테니."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33568 /* ~"난 말썽은 원하지 않소... 날 그냥 지나가게 해주시오."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33569 /* ~"난 말썽은 원하지 않소... 날 그냥 지나가게 해주시오."~ */ EXTERN ~DTHUGT2~ 6
  IF ~~ THEN REPLY #33570 /* ~언데드처럼 울부짖는다: "으흐흐흔..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Taunter_1","GLOBALLaw",-1)
~ EXTERN ~DTHUGT2~ 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33550 /* ~사내는 눈썹을 치켜올린다. "헤! 그는 너보고 꺼지래..."~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 2
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #33551 /* ~사내는 두 손을 든다. "와, 친구! 우린 그냥 농담을 했던 것뿐이라고! 그냥 가던 길이나 가라고..."~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT2~ 3
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #33552 /* ~사내의 표정이 갑자기 험악해진다. 그는 입술을 비죽거리며 조소한다. "어디 그 말에 책임을 질 수 있는지 볼까, 시체!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT2~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #33553 /* ~"오, 더 이상 아무 말도 하지마. 그를 그냥 내버려 두자고."~ */
  IF ~~ THEN REPLY #33571 /* ~그들이 떠나도록 내버려 둔다.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #33554 /* ~두 사람 모두 나이프를 뽑는다...~ */
  IF ~~ THEN REPLY #33572 /* ~그들과 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33573 /* ~도망친다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33555 /* ~"아냐, 얼간아! 그는 그냥... 그냥..."~ */
  IF ~~ THEN REPLY #33574 /* ~침을 흘리며 배고픈 듯한 눈초리로 그들을 바라본다.~ */ EXTERN ~DTHUGT2~ 8
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33575 /* ~"내 앞에서 비키시오, 아니면 당신들 둘 모두 죽일 테니."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33576 /* ~"내 앞에서 비키시오, 아니면 당신들 둘 모두 죽일 테니."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33577 /* ~"날 그냥 지나가게 해주시오. 난 말썽은 원하지 않소."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33578 /* ~"날 그냥 지나가게 해주시오. 난 말썽은 원하지 않소."~ */ EXTERN ~DTHUGT2~ 6
END
