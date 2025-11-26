// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAMSEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAMSEL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2207 /* ~아름답고 젊은 여자가 보인다. 그녀의 머리는 흐트러져 있으며, 그녀의 드레스의 동체 부분은 찢겨졌다. 그녀는 절박하게 주위를 두리번거리다 당신을 발견한다.~ */
  IF ~~ THEN REPLY #2208 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #2209 /* ~그녀를 무시한다.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0
  SAY #51524 /* ~그녀는 당신에게 달려와 당신 팔을 덥석 잡는다. 당신의 그녀의 드레스 앞쪽이 피로 얼룩졌다는 사실을 깨닫는다. "도와주세요, 제발! 그들이 내 동생을 죽이고 있어요!" 그녀는 당신 팔을 잡아당기기 시작한다.~ */
  IF ~~ THEN REPLY #51525 /* ~"누구를?"~ */ GOTO 2
  IF ~~ THEN REPLY #51526 /* ~"당신을 도울 테니 날 그녀에게 데려가 주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #51527 /* ~"이런 일에 낭비할 시간이 없소. 안녕히 계시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51528 /* ~그녀는 머리를 마구 흔들며 주변을 둘러본다. "이 주정뱅이는 술집에서부터 우릴 따라왔어요... 우리는 그에게 악의가 있는 줄은 몰랐어요... 제발 도와주세요, 시간이 없어요! 우릴 도와주세요!"~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #51529 /* ~"기다리시오, 처음에 당신은 *그들*이 당신 자매를 죽인다고 했으나 지금은 *그*가 그녀를 죽인다고 하고 있소. 어느 쪽이 옳은 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #51530 /* ~"왜 그가 그녀를 공격했소?"~ */ GOTO 10
  IF ~~ THEN REPLY #51531 /* ~"당신을 도울 테니 날 그녀에게 데려가 주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #51532 /* ~"이런 일에 낭비할 시간이 없소. 안녕히 계시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51533 /* ~그녀는 뭐라고 말해야 할지 몰라 당신을 그냥 쳐다보기만 한다. "나... 나는 위기에 처했어요... 나는 실수를 저질렀어요." 그녀는 자신의 드레스에 묻은 피를 흘긋 본다. "제발 도와주세요!"~ */
  IF ~~ THEN REPLY #51534 /* ~그녀 옷의 핏자국을 살펴본다.~ */ GOTO 4
  IF ~~ THEN REPLY #51535 /* ~"이런 일에 낭비할 시간이 없소. 안녕히 계시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.0
  SAY #51536 /* ~당신은 시선을 아래쪽으로 돌려 그녀의 드레스에 묻은 피를 흘긋 본다. 진짜 피인 듯하나, 이미 완전히 말랐다. 묻은 지 몇 시간은 된 것 같다.~ */
  IF ~~ THEN REPLY #51537 /* ~"그 핏자국은 벌써 여러 시간이 지난 거요... 무슨 꿍꿍이요?~ */ GOTO 5
  IF ~~ THEN REPLY #51538 /* ~"아니, 가야겠소. 안녕히 계시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51539 /* ~당신은 그녀의 눈이 핏자국과 당신 사이를 재빨리 오가는 것을 눈치챈다. 그녀의 목소리로부터는 초조한 기색을 읽을 수가 있다. "당신이 잘못 아신 거예요. 제발 도와주세요! 우리가 머뭇거리는 동안에도 내 동생은 죽어가고 있어요!"~ */
  IF ~~ THEN REPLY #51540 /* ~진실: "당신은 무슨 일을 꾸미고 있군. 사실대로 말하지 않으면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Damsel_1","GLOBALGood",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51541 /* ~허풍: "당신은 무슨 일을 꾸미고 있군. 사실대로 말하지 않으면 당신을 죽이겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Damsel_1","GLOBALLaw",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51542 /* ~"이런 일에 낭비할 시간이 없소. 안녕히 계시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #51543 /* ~그녀는 당신 눈을 들여다보더니 당신 몸을 뒤덮고 있는 흉터를 흘긋 본다. 그녀는 불안한 듯 침을 꿀꺽 삼킨다, 그리고 당신은 그녀의 얼굴이 창백해지는 것을 볼 수가 있다." 나... 나는 사람들을 골목으로 유인하는 일을 맡고 있어요. 그들은 당신 돈을 빼앗으려고 거기서 기다리고 있어요..." 그녀는 걱정스러운 표정으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #51544 /* ~"당신에게 충고를 좀 해주지..."~ */ GOTO 7
  IF ~~ THEN REPLY #51545 /* ~"이 곳을 떠나서 다시는 돌아오지 마시오..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51546 /* ~그녀는 조용히 당신을 바라본다, 그리고 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #51547 /* ~"나같은 사람은 표적으로 삼지 마시오. 싸움이라고는 해본 적도 없는 주정뱅이를 택하는 편이 신상에 좋을 거요..."~ */ GOTO 8
  IF ~~ THEN REPLY #51548 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51549 /* ~그녀는 정중하게 고개를 한 번 끄덕인다. ~ */
  IF ~~ THEN REPLY #51550 /* ~"그리고 그의 주머니에 동전 몇 푼이라도 있는지 확인을 하시오... 그럼 이제 당장 꺼지시오."~ */ GOTO 9
  IF ~~ THEN REPLY #51551 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #51552 /* ~그녀는 고개를 끄덕이고 뒤로 물러선다. 그녀는 잠시 머뭇거리더니 돌아서서 자리를 뜬다. "고마워요." 그녀는 화급히 자리를 뜬다. ~ */
  IF ~~ THEN REPLY #51553 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #51554 /* ~"그에게 돈이 한 푼도 없다는 사실을 알자 그녀는 그에게 같이 잘 수 없다고 했죠. 그러자 그가 칼을 뽑아서는..." 그녀는 자기 드레스 앞쪽을 쳐다보더니 다시 당신 팔을 잡아당긴다. ~ */
  IF ~~ THEN REPLY #51555 /* ~그녀 옷의 핏자국을 살펴본다.~ */ GOTO 4
  IF ~~ THEN REPLY #51556 /* ~"이런 일에 낭비할 시간이 없소. 안녕히 계시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY #51557 /* ~"제발 날 무시하지 마세요. 난 도움이 필요해요!"~ */
  IF ~~ THEN REPLY #51558 /* ~"내게 뭘 원하는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #51559 /* ~그녀를 계속 무시한다.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 1.1 2.2
  SAY #51560 /* ~그녀의 얼굴에 안도감이 감돈다. 그녀는 당신 팔을 잡아당긴다. "이쪽이에요."~ */
  IF ~~ THEN REPLY #51561 /* ~그녀를 따라간다.~ */ DO ~SetGlobal("Damsel_Ambush","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 2.3 3.1 4.1 5.2 10.1 11.1
  SAY #51562 /* ~당신이 자리를 뜨는 동안에도 그녀는 계속 울면서 비명을 지르고 있다.~ */
  IF ~~ THEN REPLY #51563 /* ~떠난다.~ */ DO ~EscapeArea()
~ EXIT
END
