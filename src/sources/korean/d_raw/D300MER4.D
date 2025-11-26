// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17409 /* ~이 매력적인 젊은 여인은 지나가는 모든 이들에게 미소를 지으며 자신의 상품들이 얼마나 좋은지를 광고하고 있다. "쟁반! 물주전자! 컵! 큰 잔! 제왕들의 술잔으로 술을!" 당신을 보자 그녀는 당신이 자기 친구라도 되는 것처럼 손을 흔든다.~ */
  IF ~~ THEN REPLY #17433 /* ~"당신이 여기서 뭘 파는지 좀 구경해도 괜찮겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #17434 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #17435 /* ~그녀가 손을 흔드는 것을 못본 척하고 자리를 뜬다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17410 /* ~당신이 다가오자 그녀는 따뜻한 미소를 짓는다. "다시 만나 반가워요. 오늘은 뭘 사러 오셨죠?"~ */
  IF ~~ THEN REPLY #17436 /* ~"지금 뭘 팔고 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #17437 /* ~"아무 것도 없소, 하지만 질문할 것들이 좀 있소."~ */ GOTO 10
  IF ~~ THEN REPLY #17438 /* ~"아무 것도 없소. 나는 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17412 /* ~"나는 쟁반, 컵, 물주전자, 큰 잔, 식기 같은 것들을 팔아요. 최고의 품질을 자랑하는 상품들만 취급해요." 그녀는 뒤로 물러서서 그녀 뒤에 있는 마차 위에 놓인 상자의 뚜껑을 연다. "자, 내 물건들을 살펴보세요... 궁금한 것이 있으면 주저하지 말고 물어보세요."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22233 /* ~"나는 잉크를 담을 용기가 필요하오... 혹시 큰 잔 같은 건 없소?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17439 /* ~가까이 다가가 상자의 내용물들을 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #17440 /* ~"지금은 아니오.. 질문할 것들이 좀 있소."~ */ GOTO 10
  IF ~~ THEN REPLY #17441 /* ~"나중에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 10.0
  SAY #17414 /* ~당신은 상자 속을 들여다 본다. 그 안은 쟁반, 컵, 물주전자, 큰 잔, 식기 등으로 가득 차 있다. 그것들의 품질은 각양각색이나, 그 중에는 상당히 좋은 것도 있다. 당신이 그것들을 보고 있자, 그녀가 다가와 당신에게 기댄다. "당신이 필요로 하는 물건은 찾으셨나요?" 당신 어깨를 스치고 지나가는 그녀의 길고 곱슬곱슬한 머리로부터는 바닐라와 비슷한 감미로운 향기가 난다. ~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22234 /* ~"나는 잉크를 담을 용기가 필요하오... 혹시 큰 잔 같은 건 없소?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~~ THEN REPLY #17442 /* ~"이것들은 모두 어디서 왔소?"~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17444 /* ~"아니, 여긴 내가 필요한 것이 없소. 하지만 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17445 /* ~"아니, 그 어느 것도 내게는 쓸모가 없소. 안녕히 계시오."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17446 /* ~"아니, 여긴 내가 필요한 것이 없소. 하지만 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17448 /* ~"아니, 그 어느 것도 내게는 쓸모가 없소. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #17415 /* ~그녀는 짓궂게 웃는다. "내 애인들은 모두 도둑이에요, 손님. 이 물건들은 모두 시길의 귀족들의 집에서 훔친 것들이고요." 당신 표정을 보고 그녀는 귀엽게 웃는다. "물론 농담이에요. 내 아버지와 오빠들은 땜장이예요. 이 물건들은 귀족들의 저택에서 버려진 것들을 그들이 수선하여 다시 쓸 수 있게 만들 것들이에요."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",8)
~ THEN REPLY #22235 /* ~"나는 잉크를 담을 용기가 필요하오... 혹시 큰 잔 같은 건 없소?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",9)
~ GOTO 12
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17449 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17450 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 5
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17451 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17453 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 3.3 4.1 4.2
  SAY #17416 /* ~"오, 손님, 하지만 기다리세요!" 그녀는 자기 손을 당신 팔뚝에 얹는다. 그녀의 손길은 마치 깃털과도 같이 부드럽다. "정말 아무 것도 필요없으신가요? 가정용이나 선물용으로..." 그녀는 고개를 약간 저으며 부끄러운 듯 입술을 깨문다.~ */
  IF ~~ THEN REPLY #17454 /* ~"글쎄... 저기 있는 쟁반은 괜찮은 것 같군..."~ */ GOTO 7
  IF ~~ THEN REPLY #17455 /* ~"어... 아니, 아무 것도 필요 없소. 내 질문은..."~ */ GOTO 8
  IF ~~ THEN REPLY #17456 /* ~"미안하오. 아무 것도 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.4 3.5 4.3 4.4
  SAY #17417 /* ~"오, 손님, 하지만 기다리세요!" 그녀는 자기 손을 당신 팔뚝에 얹는다. 그녀의 손길은 마치 깃털과도 같이 부드럽다. "정말 아무 것도 필요없으신가요? 가정용이나 선물용으로..." ~ */
  IF ~~ THEN EXTERN ~DANNAH~ 104
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17418 /* ~"여기... 이것 말인가요?"~ */
  IF ~~ THEN REPLY #17459 /* ~"아니,어... 기다리시오. 이건 말도 안돼. 난 쟁반 따위는 필요없소. 질문할 것들이 좀 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #17460 /* ~"미안하오, 하지만 정말 내겐 쟁반이 필요없소. 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #17419 /* ~그녀가 어찌나 슬퍼 보이는지 당신이 심한 죄책감을 느낄 정도이다. 그녀는 천천히 상자의 뚜껑을 닫는다. "미안해요, 하지만 질문에 대답할 시간이 없군요. 나는 해가 지기 전에 가능한 한 많은 물건을 팔아야 해요, 우리 집은 대가족이고 모두들 굶주려 있으니까요."~ */
  IF ~~ THEN REPLY #17461 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 10.1
  SAY #17420 /* ~그녀가 어찌나 가련하게 보이는지 당신이 심한 죄책감을 느낄 정도이다. 그녀는 천천히 상자의 뚜껑을 닫는다. "그럼 안녕히 가세요. 만약 나중에 뭐라도 필요하게 된다면 다시 와주세요. 여기 말고 그렇게 멋진 물건을 그토록 저렴한 가격에 살 수 있는 곳은 없으니까요." 그녀는 슬픈 듯 손을 흔든다.~ */
  IF ~~ THEN REPLY #17462 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 1.1 2.2
  SAY #17421 /* ~ "미안해요, 하지만 질문에 대답할 시간이 없군요. 나는 해가 지기 전에 가능한 한 많은 물건을 팔아야 해요, 우리 집은 대가족이고 모두들 굶주려 있으니까요." 그녀는 뒤에 있는 상자의 뚜껑을 들어서 연다. "정말 내가 파는 물건을 한 번 살펴보실 생각은 없나요?"~ */
  IF ~~ THEN REPLY #17463 /* ~"좋소. 한 번 보겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #17464 /* ~"나중에. 안녕히 계시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #17422 /* ~상인은 그녀의 귀여운 단추같은 코를 치켜 올린다. "흥! 당신은 불쌍한 상인의 장사를 방해할 정도로 질투에 불타고 있나요? 이 분은 고객이에요, 티플링. 소유나 소유권 다툼의 대상이 아니라고요." 그 말을 하고 그녀는 당신을 향해 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #17465 /* ~그것을 기다린다...~ */ EXTERN ~DANNAH~ 105
END

IF ~~ THEN BEGIN 12 // from: 2.0 3.0 4.0
  SAY #22230 /* ~그녀는 고개를 끄덕인다. "아, 그래요... 여러 종류가 있지요. 동전 몇 닢짜리에서 수백 닢이 넘게 호가하는 것까지..."~ */
  IF ~~ THEN REPLY #22236 /* ~"실은 당신이 팔고 있는 것들 중 가장 싼 걸 찾고 있소."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22231 /* ~그녀는 한쪽 눈썹을 치켜 올린다. 그녀는 자신의 옆에 있는 나무 상자에 손을 뻗친다, 그리고 다 찌그러진 맥주 조끼를 당신에게 던진다. 그것은 먼지투성이에다 손잡이가 지금 당장이라도 떨어질 것 같다. ~ */
  IF ~~ THEN REPLY #22237 /* ~"어... 이건 누군가의 해골에 사용된 것 같소."~ */ DO ~GiveItemCreate("Tankard",Protagonist,1,0,0)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22232 /* ~그녀는 가볍게 웃는다. ~ */
  IF ~~ THEN REPLY #22238 /* ~"그거면 될 것 같소. 고맙소, 그리고 안녕히 계시오."~ */ JOURNAL #21909 /* ~나는 상인들 중 하나로부터 찌그러진 큰 잔을 샀다. 나는 그것을 메어'앰에게 가져가 보여줄 준비가 됐다. ~ */ EXIT
END
