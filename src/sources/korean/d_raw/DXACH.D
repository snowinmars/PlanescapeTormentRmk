// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXACH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DXACH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #500 /* ~해골에 "331"이라고 새겨진 남자의 시체가 보인다. 그의 눈과 입은 실로 꿰매져 있으며, 그의 목에는 구멍이 뚫려 있다. 그로부터는 *역겨운* 냄새가 난다."~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #502 /* ~"그래... 뭐 재미있는 일은 없소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #503 /* ~"그래... 뭐 재미있는 일은 없소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1354 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1355 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #1357 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ GOTO 1
  IF ~~ THEN REPLY #1358 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.4
  SAY #501 /* ~시체는 그의 보이지 않는 눈으로 앞을 조용히 바라본다.~ */
  IF ~~ THEN REPLY #505 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #504 /* ~"뭐-뭐..." 좀비는 어색하게 스스로의 목소리를 되찾는다, 그리고 그는 경계를 하는 듯하다. "거기 누구요? 대답을 하시오!"~ */
  IF ~~ THEN REPLY #507 /* ~"당신은 날 볼 수가 없소?"~ */ GOTO 3
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #508 /* ~임기응변: "나요. 내 목소리를 기억하지 못하겠소?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63307 /* ~임기응변: "나요. 내 목소리를 기억하지 못하겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #519 /* ~"당신은 누구요?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #506 /* ~"자카리아?"~ */ GOTO 4
  IF ~~ THEN REPLY #520 /* ~"오늘 당신은 아무런 답도 듣지 못할 거요, 시체. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #509 /* ~"나는 죽어서도 살아 있을 때와 마찬가지로 장님이오... 자, 대답을 하시오. 당신은 누구요?"~ */
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #510 /* ~임기응변: "나요. 내 목소리를 기억하지 못하겠소?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63308 /* ~임기응변: "나요. 내 목소리를 기억하지 못하겠소?"~ */ GOTO 30
  IF ~~ THEN REPLY #511 /* ~"당신은 누구요?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #521 /* ~"자카리아?"~ */ GOTO 4
  IF ~~ THEN REPLY #522 /* ~"오늘 당신은 아무런 답도 듣지 못할 거요, 시체. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 3.3 30.0 31.0
  SAY #512 /* ~"뭐... 당신!" 좀비는 충격을 받은 듯하나, 동시에 기뻐하고 있다. "레이디의 응시에 걸고 묻겠는데..." 그의 목소리로부터는 놀란 기색을 느낄 수가 있다. "당신은 죽지 않았소?"~ */
  IF ~~ THEN REPLY #515 /* ~"당신은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #516 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 47
  IF ~~ THEN REPLY #517 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #518 /* ~"난 오래 얘기할 시간이 없소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1394 /* ~"난 오래 얘기할 시간이 없소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #514 /* ~"그래, 이 더러운 수의에 싸인 이 어리석은 자카리아를 알아보는 게 그렇게도 힘들었소? 그래 나요. 신들에 맹세코 당신을 다시 보게 되리라고는 생각하지도 않았소. 하지만 적어도 내 귀에 들리는 소리로 판단할 때 당신도 변한 것 같소. 또 잘못된 선택을 반복했소?" 목에 난 구멍 때문에 그는 씨근거리며 말한다. "당신도 죽었소?"~ */
  IF ~~ THEN REPLY #685 /* ~"그건 긴 얘기요... 하지만 아니, 난 죽지 않았소."~ */ GOTO 46
  IF ~~ THEN REPLY #686 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 47
  IF ~~ THEN REPLY #687 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #688 /* ~"내겐 더 이상 얘기할 시간이 없소. 자카리아. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1393 /* ~"내겐 더 이상 얘기할 시간이 없소, 자카리아. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 5.2
  SAY #513 /* ~"시체안치소요. 그것도 몰랐소?" ~ */
  IF ~~ THEN REPLY #523 /* ~"누가 당신을 이런 꼴로 만들었소?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,12,INT)
~ THEN REPLY #524 /* ~"내게 시체안치소에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Vaxis_Exposed","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #525 /* ~"내게 내 전생에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #526 /* ~"과거의 내 동료들에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #527 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1392 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
  SAY #528 /* ~"그래서?"~ */
  IF ~  Global("Xachariah_Ring","GLOBAL",1)
~ THEN REPLY #63484 /* ~"나는 지금 당장 그 물건을 되찾고자 하오, 자카리아..."~ */ GOTO 34
  IF ~~ THEN REPLY #637 /* ~"누가 당신을 이런 꼴로 만들었소?"~ */ GOTO 8
  IF ~~ THEN REPLY #638 /* ~"내게 시체안치소에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #639 /* ~"내게 내 전생에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #640 /* ~"과거의 내 동료들에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1391 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #641 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.1
  SAY #529 /* ~그는 부끄러운 듯 목소리를 낮춘다. "당신과 동행하는 일은 결코 쉬운 일이 아니었소, 친구, 그리고 난 많은 끔찍한 것들을 보았소. 따라서 나는 술에 의존하게 되었고, 결국 알코올 중독자가 되고 말았소. 나는 더스티에게 내 몸을 팔아 넘겼소. 내가 위기에 처했을 때 운명은 날 저버렸고, 난 곧 죽고 말았소."~ */
  IF ~~ THEN REPLY #531 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #545 /* ~"얘기는 충분할 만큼 들었소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1390 /* ~"얘기는 충분할 만큼 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.2
  SAY #533 /* ~"죽음을 추구하는 자들에 의해 운영되는 죽은 자들의 장소요... 하지만 여긴 뭔가가 잘못된 것들이 있는 것 같소..."~ */
  IF ~~ THEN REPLY #534 /* ~"뭐가 잘못되었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #536 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #537 /* ~"당신과 더 이상 얘기할 시간이 없소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1389 /* ~"당신과 더 이상 얘기할 시간이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #535 /* ~"당신에게 내가 알고 있는 비밀을 말해주리다. 이 곳에는 좀비가 아니나 좀비인 척 하는 좀비가 있소. 나는 그가 왜 그러는 지 알고 싶은 생각은 없으나, 그래도 이상한 일이오."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #538 /* ~"그 밖에 다른 건?"~ */ GOTO 11
  IF ~~ THEN REPLY #539 /* ~"그건 어느 좀비요?"~ */ GOTO 12
  IF ~~ THEN REPLY #540 /* ~"흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #546 /* ~"당신과 더 이상 얘기할 시간이 없소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1388 /* ~"당신과 더 이상 얘기할 시간이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #541 /* ~"또 한 가지는 그 늙은 기스저라이요... 준비실을 관리하는 달 말이오. 그는 당신을 화장으로부터 수십 번은 구했을 거요. 그가 당신에게 호의를 가지고 있다는 건 당신을 위해 매우 다행한 일이오."~ */
  IF ~  CheckStatGT(Player1,17,INT)
~ THEN REPLY #542 /* ~"달은 정확하게 어떤 방법으로 날 구했소?"~ */ GOTO 13
  IF ~~ THEN REPLY #543 /* ~"나도 알고 있소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #544 /* ~"당신과 더 이상 얘기할 시간이 없소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1387 /* ~"당신과 더 이상 얘기할 시간이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #547 /* ~"만약 내게 시력이 있었다 해도 난 숫자를 알아보지 못하오. 그를 구별할 방법을 알려주겠소, 친구. 그의 목소리는 좀비 같지가 않소... 그가 응답하는 방식은 다른 좀비와는 다르오..."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #548 /* ~"시체안치소에서 그 밖의 다른 이상한 점은 느끼지 못했소?"~ */ GOTO 11
  IF ~~ THEN REPLY #554 /* ~"흠... 흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #549 /* ~"가서 그 좀비를 찾도록 하겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1386 /* ~"가서 그 좀비를 찾도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #550 /* ~"구는 당신이 철판 위에 깨어날 때까지 화장을 연기했소. 그가 왜 그랬는지는 나도 모르오."~ */
  IF ~~ THEN REPLY #552 /* ~"흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #553 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1385 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #555 /* ~"그는 그것이... 막는 데 필요... 나... 나는 그게 왜 필요했는지 기억을 못 하겠소..."~ */
  IF ~~ THEN REPLY #557 /* ~"흠... 수상하군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #556 /* ~"알겠소. 과연 그럴 필요가 *있었는지* 모르겠군. 달과 나는 이 일에 대해 얘기를 나누어야 할 것 같소... 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1384 /* ~"알겠소. 과연 그럴 필요가 *있었는지* 모르겠군. 달과 나는 이 일에 대해 얘기를 나누어야 할 것 같소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #558 /* ~그는 부끄러운 듯 목소리를 낮춘다. "우리가 서로 헤어졌을 때, 친구, 내 안에 생명이라고는 별로 남아있지 않았소. 당신과 동행하는 일은 결코 쉬운 일이 아니었소, 그리고 난 많은 끔찍한 것들을 보았소. 따라서 나는 술에 의존하게 되었고, 결국 알코올 중독자가 되고 말았소. 나는 더스티에게 내 몸을 팔아 넘겼소. 내가 위기에 처했을 때 운명은 날 저버렸고, 난 곧 죽고 말았소."~ */
  IF ~~ THEN REPLY #559 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #560 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1383 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.2 7.3
  SAY #561 /* ~"왜? 당신은 당신 자신에 대한 기억을 잃어버렸소?"~ */
  IF ~~ THEN REPLY #562 /* ~"말하자면... 그렇소."~ */ GOTO 17
  IF ~~ THEN REPLY #563 /* ~"아니... 당신이 정말로 스스로 주장하는 것과 같은 사람인지 확인하고 싶었을 뿐이오."~ */ GOTO 20
  IF ~~ THEN REPLY #564 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #565 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1382 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 21.0 22.0
  SAY #566 /* ~"글쎄... 당신은 이상한 사람이었소. 늘 의심이 많고 뭔가를 경계하고 있었지... 생각해 보면 당신 같은 사람은 살면서 적을 무수히 만드는 타입의 사람이었지. 그리고 당신한테 덤비는 자들은 예외없이 사망자 명단에 그 이름이 올라갔다는 사실 역시 부인할 수가 없소.~ */
  IF ~~ THEN REPLY #569 /* ~"다른 건 없소? 구체적인..."~ */ GOTO 18
  IF ~~ THEN REPLY #570 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #571 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1381 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #567 /* ~"때로 당신은 정말 무자비했지... 내가 그 계약에 서명하게 만들었을 때나 그 칭얼거리는 계집을 아버누스에 버리고 왔을 때처럼 말이오. 우린 정말 죽도록 고생을 했소. 우리들 중 그 누구도 당신을 배신한다는 생각은 꿈에도 할 수가 없었소."~ */
  IF ~~ THEN REPLY #572 /* ~"알겠소... 다른 건 없소? 뭐라도 좋으니 얘기해주시오."~ */ GOTO 19
  IF ~~ THEN REPLY #573 /* ~"관두오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #574 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1380 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #568 /* ~"당신은 마음 속에서 자신에게 일어나는 모든 일들을 영토를 확장하기 위한 전쟁처럼 생각했지. 당신에게 있어 모든 것은 전투였으며, 당신은 내가 본 중에서 가장 잔인한 개자식들 중 하나였소. 가련한 데이오나라의 눈물 어린 호소, 기스의 당신의 전략에 대한 경고, 그리고 이 불쌍한 자카리아의 살아 남으려는 발버둥... 그 어느 것에도 당신은 눈 하나 깜짝하지 않았지. 당신은 마치 불사신처럼 강인했으나 우리는 인간에 불과했소. 이제 우린 모두 죽은 모양이오... 정확히 말하면 죽었다 살았다 하는 사람도 있지만."~ */
  IF ~  GlobalLT("Xachariah_Ring","GLOBAL",2)
~ THEN REPLY #63234 /* ~"다른 건 없소?"~ */ GOTO 32
  IF ~~ THEN REPLY #576 /* ~"데이오나라?"~ */ GOTO 26
  IF ~~ THEN REPLY #577 /* ~"'기스?' 누구 얘기요?"~ */ GOTO 24
  IF ~~ THEN REPLY #578 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #579 /* ~"알겠소... 그만 가봐야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1379 /* ~"알겠소... 그만 가봐야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #580 /* ~"글쎄, 내가 무슨 얘기를 해야 내 자신에 대해 입증을 할 수가 있나... 내 기억도 온전하지는 않고... 이건 어떻소... 우리가 아버누스를 여행하던 도중 구더기로 가득 찬 구덩이에서 한 무리의 아비샤이와 조우한 일은 기억하오?~ */
  IF ~~ THEN REPLY #581 /* ~거짓말: "그렇소."~ */ GOTO 21
  IF ~~ THEN REPLY #582 /* ~"아니."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #583 /* ~"우리들 중 하나라도 그걸 기억하는 건 다행이군, 내가 기억하기로 그런 일은 있지도 않았으니까. 당신은 누구요, 친구, 그리고 죽은 자의 기억으로부터 무엇을 건지기를 원하시오?"~ */
  IF ~~ THEN REPLY #584 /* ~"나는 내 자신을 찾으려 하오. 나는 정말로 내가 누군지 잊어버렸소, 그리고 난 당신이 날 알고 있었다고 생각하오. 내 전생에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 17
  IF ~~ THEN REPLY #586 /* ~"관두시오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #587 /* ~"아무 것도 아니오. 이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1378 /* ~"아무 것도 아니오. 이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #588 /* ~"흠... 그 사건은 내가 기억하고 있는 것과는 차이가 있는 모양이군. 이건 어떻소: 데이오나라가 당신이 커스트에 들어가는 걸 막으려다가 거의 죽을 뻔 한 건 기억하오?"~ */
  IF ~~ THEN REPLY #590 /* ~"아니, 못하오... 하지만 그건 좋소. 난 당신이 날 알고 있었다고 생각하오. 그러니 내게 내 전생에 대해 얘기를 해줄 수 있겠소?"~ */ GOTO 17
  IF ~~ THEN REPLY #591 /* ~"관두시오... 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #592 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1377 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.3 7.4
  SAY #589 /* ~"우린 그야말로 엽기적인 집단이었지... 죽고 싶어도 죽을 수가 없는 반쯤 죽은 자 -- 그것도 어떤 죽음의 신도 받기를 거부할 정도로 못생긴, 통곡하는 변호사의 딸, 추방된 기스, 입버릇 고약한 까부는 해골, 그리고 나같은 알코올에 중독된 눈먼 궁수."~ */
  IF ~~ THEN REPLY #593 /* ~"기스?"~ */ GOTO 24
  IF ~~ THEN REPLY #594 /* ~"통곡하는 변호사의 딸?"~ */ GOTO 26
  IF ~~ THEN REPLY #595 /* ~"떠다니는 해골?"~ */ GOTO 28
  IF ~~ THEN REPLY #596 /* ~"당신이 눈먼 궁수였소?"~ */ GOTO 49
  IF ~~ THEN REPLY #597 /* ~"내 일지가 어떻게 됐는지 혹시 아시오?"~ */ GOTO 29
  IF ~~ THEN REPLY #598 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #599 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1376 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2 23.0 27.0
  SAY #600 /* ~"냉혹하게 생긴 기스... 다른 기스들과 마찬가지로 붙임성없고 조용했지. 난 그 기스를 조금도 신뢰하지 않았소. 그 호리호리한 기스가 신경을 쓴 건 두 가지 밖에 없었지 - 하나는 예속되는 걸 피하는 것이었고, 다른 하나는 오징어 대가리의 일리티드들을 죽이는 일이었소. 그 이외의 다른 건 관심 밖이었고, 당신을 제외한 자들은 사람 취급도 안했지."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #601 /* ~"그건 무엇 때문이었소?"~ */ GOTO 25
  IF ~~ THEN REPLY #602 /* ~"내 다른 동료들에 대해..."~ */ GOTO 27
  IF ~~ THEN REPLY #603 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #604 /* ~"흠... 흥미롭군. 고맙소, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1375 /* ~"흠... 흥미롭군. 고맙소, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0
  SAY #605 /* ~"그건 내가 밝힌 적이 없는 비밀들 중 하나지, 친구. 당신이 내게 말해주겠소?"~ */
  IF ~~ THEN REPLY #606 /* ~"나는 자신이 누군지 누르오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #607 /* ~"그걸 알아내야만 할 것 같군. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1374 /* ~"그걸 알아내야만 할 것 같군. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.1 23.1 27.1
  SAY #608 /* ~"자칭 전사였던 그 교만한 계집은 당신과 함께라면 지옥이라도 다녀오겠다고 맹세를 했지, 그리고 놀랍게도 실제로 그렇게 했소. 그건 그녀에게 있어 당신 곁에 자기가 없다는 건 상상조차 하기 싫은 일이었기 때문이었지. 그녀는 당신에게 미쳐 있었소, 그건 그녀가 미쳤다는 증거지. 여자들이 당신같은 흉터투성이 얼간이에게 무슨 매력이 있다고 생각했는지 모르겠지만, 당신에게 열광하는 여자는 끊이지 않았지. 어쨌든 그녀는 사무구 출신의 부잣집 딸이었고, 당신은 그녀로부터 뭔가를 원했었던 모양이오. 하지만 그 대가로 우리는 그녀와 동행을 해야만 했소.~ */
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #609 /* ~"내가 그녀로부터 무엇을 원했소?"~ */ GOTO 25
  IF ~~ THEN REPLY #610 /* ~"내 다른 동료들에 대해..."~ */ GOTO 27
  IF ~~ THEN REPLY #614 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #611 /* ~"당신 얘기는 이미 충분히 들었소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1373 /* ~"당신 얘기는 이미 충분히 들었소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.1 28.0 29.0 33.1 49.0
  SAY #612 /* ~"그래, 누구 말이오?"~ */
  IF ~~ THEN REPLY #613 /* ~"기스."~ */ GOTO 24
  IF ~~ THEN REPLY #615 /* ~"통곡하는 변호사의 딸."~ */ GOTO 26
  IF ~~ THEN REPLY #616 /* ~"떠다니는 해골."~ */ GOTO 28
  IF ~~ THEN REPLY #617 /* ~"당신이... 눈먼... 궁수였소?"~ */ GOTO 49
  IF ~~ THEN REPLY #618 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #619 /* ~"당신 얘기는 이미 충분히 들었소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1372 /* ~"당신 얘기는 이미 충분히 들었소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.2 27.2
  SAY #620 /* ~"그 역겨운 말하는 해골은 두들겨 맞고 싶어 환장이 난 놈이었지, 늘 잘난 체하며 내 상태를 놀리곤 했어!"~ */
  IF ~~ THEN REPLY #622 /* ~"내 다른 동료들에 대해..."~ */ GOTO 27
  IF ~~ THEN REPLY #623 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #624 /* ~"당신 얘기는 이미 충분히 들었소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  GlobalGT("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #1371 /* ~"당신 얘기는 이미 충분히 들었소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.4
  SAY #625 /* ~"당신 살가죽을 꿰매서 만든, 내가 산 햇수보다 페이지수가 많은 그 스크랩북 말이오? 그 엽기적인 책을 잃어버렸다니 정말 다행한 일이오! 당신은 늘 그 책에다 뭔가를 갈겨 쓰고 있었고, 그건 보기에도 끔찍했지. 마치 당신은 누가 그것을 당장이라도 빼앗아 갈 것처럼 두려워하고 있는 듯했소. 당신이 손가락에서 살점이 벗겨져 나올 때까지 그것에 계속 써댔고, 난 당신이 펜을 통해 당신 뇌를 쏟아 내려는 건 아닌가 생각하기조차 했소. 때로 우리는 당신이 일지를 쓸 동안 며칠이나 기다려야 했소. 나는 그 지옥같은 책을 싫어했소. 그것은 당신을 꽉 붙잡고 놓아주지 않으려는 듯했소. 내가 마지막으로 보았을 때 그건 당신이 지니고 있었소. 만약 당신이 가지고 있지 않다면 난 그게 어디 있을지 짐작조차 할 수가 없소."~ */
  IF ~~ THEN REPLY #626 /* ~"내 동료들에 대해..."~ */ GOTO 27
  IF ~~ THEN REPLY #627 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #628 /* ~"정보를 주어 고맙소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1370 /* ~"정보를 주어 고맙소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.1 2.2 3.0 3.1
  SAY #629 /* ~"귀에 익소... 하지만 당신이 내가 생각하는 바로 그 사람이라면..." 좀비는 잠시 입을 다문다. "나는 누구요?"~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #631 /* ~"자카리아?"~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #632 /* ~"나는 당신 이름을 모르오. 만약 당신 이름을 알게 되면 다시 돌아오리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.3 3.2
  SAY #630 /* ~"나..." 좀비는 조용해진다. "... 나는 내 이름을 잊어버렸소... 나는 더 이상 내가 누군지 기억할 수가 없소."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #634 /* ~"자카리아?"~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #635 /* ~"나는 당신 이름을 알지 못하오. 당신 이름을 알게 되면 돌아오리다. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #636 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.0
  SAY #642 /* ~"당신이 우리 곁을 떠났을 때 당신은 우리 모두에게 큰 상처를 남겼소, 친구... 다콘은 주인을, 모트는 친구를 잃었소. 나? 당신은 내 안 깊숙한 곳에 뭔가를 쑤셔 넣었고, 내가 살아 있는 동안 그건 다시는 몸 밖으로 나오지 않았소. 그것이 내 가슴에 큰 납덩어리처럼 들어앉은 건 정말 소름이 끼쳤소."~ */
  IF ~~ THEN REPLY #645 /* ~"그게 무엇이오?"~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",1)
~ GOTO 33
  IF ~~ THEN REPLY #646 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #648 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1369 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #643 /* ~"모르겠소... 하지만 그건 날 변화시켰소. 내 내부를 말이오. 당신이 그걸 내 안에 집어넣었을 때 난 이미 죽어가고 있었소, 그래서 그 때는 별로 신경을 쓰지 않았소."~ */
  IF ~~ THEN REPLY #649 /* ~"그걸 돌려받을 수 있겠소?"~ */ GOTO 34
  IF ~~ THEN REPLY #650 /* ~"내 다른 동료들에 대해..."~ */ GOTO 27
  IF ~~ THEN REPLY #651 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #652 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1368 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 7.0 33.0
  SAY #644 /* ~"그것은 상당히 깊숙이 묻혀 있소, 하지만 난 그것의 위치를 대강 아오. 메스와 내 안내가 없으면 그걸 빼낼 수는 없을 거요. 메스는 가지고 있소?~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #647 /* ~"그렇소."~ */ GOTO 36
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #653 /* ~"아니오... 하지만 꿰맨 곳을 그냥 손으로 뜯을 수도 있을 것 같소."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from:
  SAY #654 /* ~"그럼 메스를 손에 넣거든 다시 오시오. 그것을 깨끗하게 빼내는 일에 대해서는 그 후에 얘기합시다."~ */
  IF ~~ THEN REPLY #655 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #656 /* ~"가서 메스를 찾아보겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0 34.1
  SAY #657 /* ~"흉골에서 반 뼘쯤 아래로 내려온 곳을 열고 그 안을 더듬어 보시오."~ */
  IF ~~ THEN REPLY #658 /* ~한다.~ */ GOTO 37
  IF ~~ THEN REPLY #659 /* ~"관두시오, 자카리아... 대신 당신에게 물어볼 것이 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #660 /* ~"지금은 곤란하오. 난 떠나야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1367 /* ~"지금은 곤란하오. 난 떠나야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #661 /* ~"조금만 더 왼쪽으로... 조금만 더..." 당신 손은 어떤 물체에 닿는다.~ */
  IF ~~ THEN REPLY #663 /* ~그것을 꺼낸다.~ */ DO ~GiveItemCreate("XacLiver",Protagonist,0,0,0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #662 /* ~당신은 좀비의 간을 꺼낸다. "원 세상에! 미안하오, 친구... 난 더스트맨이 우릴 좀비로 부활시켰을 때 내장을 모두 꺼낸 줄 알았소. 다시 한 번 시도합시다. 아마 오른쪽에 있을 거요."~ */
  IF ~~ THEN REPLY #664 /* ~다시 한다.~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #665 /* ~"그래... 이제 오른쪽으로 조금만 더 가시오... 조금만 더..." 당신은 뭔가 단단하고 차가운 것을 느낀다, 그리고 그건 당신이 생각했던 것보다 더 큰 것 같다. "그것인 것 같소. 꺼냅시다."~ */
  IF ~~ THEN REPLY #666 /* ~그것을 꺼낸다.~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",2)
GiveItemCreate("XacHeart",Protagonist,1,0,0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #667 /* ~당신은 주먹만한 흑색의 물체를 쥐고 있으며 그것은 크기에 비해 극히 무겁다. "그게 틀림없소. 내가 생각했던 것보다 더 크군. 그건... 뭐요? 심장처럼 보이는군..."~ */
  IF ~~ THEN REPLY #668 /* ~"그런 것 같소. 고맙소, 자카리아. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #669 /* ~"그런 것 같소.~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1366 /* ~"그만 가봐야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
  SAY #670 /* ~"가기 전에 내 부탁을 하나 들어주시오, 친구."~ */
  IF ~~ THEN REPLY #672 /* ~"그건 무엇이오?"~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 42
  IF ~~ THEN REPLY #671 /* ~"나는 이미 감당하기 어려울 정도로 할 일이 많소... 그만 가야겠소, 자카리아. 안녕히 계시오."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #673 /* ~그는 부끄러운 듯 목소리를 낮춘다. "나는 여러 가지 실수를 했고 , 그 중에는 정말 끔찍한 것들도 있었소. 하지만 내가 한 최대의 실수는 그 더스트맨 계약서에 서명을 한 일이오. 만약 내가 술에 그토록 취하지 안았던들 그런 짓은 안 했을 거요. 난 지금 그것을 후회하고 있으며, 당신이 그것을 바로잡아 주었으면 하오."~ */
  IF ~~ THEN REPLY #675 /* ~"어떻게?"~ */ GOTO 43
  IF ~~ THEN REPLY #676 /* ~"나는 이미 감당하기 어려울 정도로 할 일이 많소... 그만 가야겠소, 자카리아. 안녕히 계시오."~ */ GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #677 /* ~"내가 생각하기에 이 몸은 상당히 오래 갈 것 같소... 그리고 내가는 하루하루가 너무도 길게 느껴지오. 옛 정을 생각해 날 다시 죽여줄 수는 없겠소? 이 곳 시체안치소에서 또 한 세월 동안 창백한 얼굴을 한 이러한 자들을 보내야 한다는 건 소름이 끼치오. 날 다시 내가 원래 있어야 할 황천으로 다시 보내 주겠소?"~ */
  IF ~~ THEN REPLY #679 /* ~"만약 그것이 당신 소원이라면..."~ */ DO ~Kill(Myself)
~ GOTO 44
  IF ~~ THEN REPLY #680 /* ~"자카리아, 난 당신을 죽이지 않겠소. 다시. 안녕히 계시오."~ */ GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #678 /* ~당신이 자카리아를 베자, 그는 쿵 소리를 내며 바닥에 쓰러진다. 그의 몸으로부터는 약간의 소리가 나며, 그의 흉부는 한 번 경련을 한다. 그 다음 희미한 가르랑거리는 소리가 난 후 시체는 조용해진다. ~ */
  IF ~~ THEN REPLY #681 /* ~"편히 쉬시오, 자카리아."~ */ DO ~SetGlobal("Xachariah_Gutted","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1 43.1
  SAY #682 /* ~"그래, 그럼 관두시오. 나는 이제 당신에 더 쓸모가 없는 모양이군."~ */
  IF ~~ THEN REPLY #684 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 5.0
  SAY #683 /* ~"그래, 친구, 죽은 건 누가 의심할 수 있는 일은 아니겠지. 하지만 당신은 어떻게 나와 얘기를 할 수 있는 거요? 당신 목소리는 내게 너무도 또렷하게 들리오."~ */
  IF ~~ THEN REPLY #689 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 47
  IF ~~ THEN REPLY #690 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #691 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1365 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 4.1 5.1 46.0
  SAY #692 /* ~"나는 이 세상에서 생명 없는 곳의 심부름꾼이오. 영원한 경계를 지나 내가 고향이라고 부를 수 있는 차원으로 갈 수도 있었으나, 내 영혼이 대부분 소진된 탓에 난 이 곳에 남게 되었소."~ */
  IF ~~ THEN REPLY #693 /* ~"좀비로 지낸다는 건 어떤 기분이오?"~ */ GOTO 48
  IF ~~ THEN REPLY #695 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #696 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1364 /* ~"이만 실례해야겠소. 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #694 /* ~"그건 정직한 일이오... 자카리아의 입을 꿰맨 곳이 터지면서 그는 입술 주변의 살을 움직여 미소를 짓는다.... 하지만 난 그걸 싫어하오.""~ */
  IF ~~ THEN REPLY #697 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #698 /* ~"그럼 안녕히 계시오, 자카리아."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #633 /* ~"그럼 안녕히 계시오, 자카리아."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.3 27.3
  SAY #63625 /* ~"그랬소. 당신은 정말로 망각을 한 모양이군, 그렇지 않소? 사람은 단지 눈으로만 보는 것이 아니오... 사람에 따라서는 이러한 감각이 다른 사람보다 더 뛰어난 경우가 있소. 나는 내 적 - *당신* 적의 심장을 느낄 수가 있었소, 그리고 내 화살은 언제나 명중했소. 아, 참 좋은 시절이었지..."~ */
  IF ~~ THEN REPLY #63626 /* ~"내 다른 동료들에 대해서..."~ */ GOTO 27
  IF ~~ THEN REPLY #63627 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #63628 /* ~"흠... 흥미롭군. 고맙소, 자카리아."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #63629 /* ~"흠... 흥미롭군. 고맙소, 자카리아."~ */ EXIT
END
