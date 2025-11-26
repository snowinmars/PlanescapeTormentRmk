// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAYDEE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAYDEE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58535 /* ~창고 노동자가 보인다. 그는 일에 몰두하고 있어 당신이 다가가도 눈치를 채지 못한다.~ */
  IF ~~ THEN REPLY #58537 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58540 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58542 /* ~그는 하던 일을 멈추고 돌아서서 당신을 마주본다. "내 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #58543 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58547 /* ~"아니, 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58549 /* ~그는 눈살을 찌푸린다. "나는 할 일이 많아 질문에 답할 시간이 없소. 미안하오." 그는 돌아서기 시작한다.~ */
  IF ~~ THEN REPLY #58551 /* ~"짤막한 질문 하나만 합시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #58553 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58554 /* ~그는 돌아서서 당신을 보며 한숨을 쉰다 "'짤막한 질문 하나만 합시다'라... 당신은 내가 하루에 그 말을 몇 번씩 듣는지 아시오?" 그는 당신을 노려본다.~ */
  IF ~~ THEN REPLY #58556 /* ~"어... 아니."~ */ GOTO 4
  IF ~~ THEN REPLY #58557 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58559 /* ~"그럼 내가 말해주리다... 너무 자주요! 얼간이들이 바쁜 사람에게 아무 쓸모도 없는 질문을 할 때는 늘 '짤막한 질문 하나만 합시다'라고 하지!" 그는 당신을 화난 얼굴로 노려본다. "그리고 당신은 아시오?"~ */
  IF ~~ THEN REPLY #58560 /* ~"어...아니. 뭘 말이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #58562 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58563 /* ~그는 언성을 높이고 팔을 휘두르기 시작한다. "물론 그건 거짓말이오! 그는 짤막한 질문이 아니라는 걸 알고 있소! 그는 자신이 원하는 답을 얻기 위해서는 수필 하나 쓸 시간이 걸린다는 걸 알고 있소. 하지만! 그럼에도 그는 짤막한 질문이라고 하오! 왠지 아시오?""~ */
  IF ~~ THEN REPLY #58564 /* ~"어... 아니. 왜요?"~ */ GOTO 6
  IF ~~ THEN REPLY #58566 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58567 /* ~"그건 그가 내가 바보라고 생각하기 때문이오! 그는 내가 자기 대답을 해주는 데 얼마나 엄청난 시간이 필요하다는 것을 모르리라고 생각하고 있소. 오, 안돼! 짤막한 질문이라고 했으니까 반 시간이 넘게 걸려도 상관없어! 바보니까 눈치채지 못하겠지!"~ */
  IF ~~ THEN REPLY #58568 /* ~"나중에 다시 오는 것이 좋을 것 같소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58569 /* ~"방해해서 미안하오. 당신이 바쁜 건 알겠소..."~ */ GOTO 9
  IF ~~ THEN REPLY #58571 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #58572 /* ~"왜? 당신은 이미 내 일을 방해하고 내 사색을 중단시켰소! 염병할 질문을 해서 내 바쁜 일과 중 한 시간 이상을  빼앗고 갈 길이나 가시오!" 그는 당신을 노려본다~ */
  IF ~~ THEN REPLY #58573 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 커스트에 있다고 들었소."~ */ GOTO 8
  IF ~~ THEN REPLY #58574 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58575 /* ~"그래, 나도 그 소문은 들었소. 소문에 의하면 그는 아직도 감옥에 있다고 하오. 만약 그게 사실이라면 당신은 시 광장에 있는 행정부 건물에 가서 물어봐야 할 거요. 이제 날 그냥 내버려 두시오..." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #58576 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58577 /* ~그는 잠시 멈추고 당신을 노려본다. "바빠? 내 스케줄을 본 적이나 있소? 당신은 바쁘다는 말의 의미도 모르오!" 그는 코방귀를 뀐다. "게다가 스케줄은 노상 바뀌오, 대체 애초에 스케줄이 있는 이유를 모르겠소! 매일 새 일이 추가되거나 다른 일을 추가하기 위해 있던 일을 빼는 걸 반복한다오!"~ */
  IF ~~ THEN REPLY #58578 /* ~"알겠소. 이만 실례해야 할 것 같소..."~ */ GOTO 7
  IF ~~ THEN REPLY #58579 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58580 /* ~화난 창고 노동자가 보인다. 그는 당신이 다가오는 걸 눈치챌 때까지는 일에 몰두하고 있었다. "오, 또 당신이군. 어디 맞추어 봅시다, 내게 *짤막한* 질문을 하러 온 게 아니오?"~ */
  IF ~~ THEN REPLY #58581 /* ~"아니오, 떠나려던 참이었소. 안녕히 계시오."~ */ EXIT
END
