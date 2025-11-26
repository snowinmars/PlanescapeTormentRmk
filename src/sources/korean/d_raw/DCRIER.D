// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRIER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRIER~

IF ~  Global("Crier","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26006 /* ~끊임없이 흐르는 눈물이 먼지로 뒤덮인 이 사내의 얼굴에 수로와 같은 자국을 내고 있다. 그는 수도승이나 성차처럼 보이나, 그를 뒤덮고 있는 먼지 때문에 그가 정확히 어떤 사람인지 파악하기는 어렵다. 그는 고개를 숙였다 들었다 하면서 뭐라고 영창을 하고 있는데, 아마 일종의 의식인 듯하다. ~ */
  IF ~~ THEN REPLY #26007 /* ~"안녕하시오."~ */ GOTO 4
  IF ~~ THEN REPLY #26008 /* ~성스러운 사나이를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #26523 /* ~에스-안논의 통곡자가 보인다. 그는 사멸한 도시의 이름을 영창하면서 목메어 울고 있으며, 눈물이 그의 볼을 따라 흘러 내려가고 있다.~ */
  IF ~  Global("Crier_Quest","GLOBAL",0)
~ THEN REPLY #26524 /* ~"꼭 물어보고 싶소: 왜 당신은 도시를 위해 통곡하는 거요?"~ */ GOTO 8
  IF ~  Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #26526 /* ~"나는 아직 에스-안논의 이름을 새길 묘비를 찾지 못했소."~ */ GOTO 3
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #26527 /* ~"나는 에스-안논의 이름의 확실하게 기억되도록 만들었소. 이제 그 이름은 시체안치소 밖의 흑색 기념비에 새겨져 있소."~ */ DO ~SetGlobal("Crier","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26530 /* ~나는 더스트맨 기념비에 에스-안논 시의 이름이 새겨지도록 조치하였다. 나는 통곡자에게로 돌아가 이 소식을 전했으며 시내처럼 흐르던 그의 눈물은 멈추었다. 그는 이제 평온을 찾았으며 내 노고를 치하하였다. ~ */ GOTO 23
  IF ~~ THEN REPLY #26528 /* ~통곡자를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #26525 /* ~에스-안논의 통곡자가 보인다. 그는 편안해 보이며, 그의 시선으로부터는 당신이 그를 처음 만났을 때는 느끼지 못했던 평온함을 느낄 수가 있다. "고맙소, 친구. 이제 나는 곧 내 형제들에게 우리가 더 이상 통곡할 필요가 없다고 전하러 떠날 것이오."~ */
  IF ~~ THEN REPLY #26531 /* ~"알겠소. 당신 여행에 행운이 함께 하기를. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #26529 /* ~통곡자는 고개를 젓는다. "내가 우려했던 대로요. 에스-안논의 통곡자 말고는 누구도 그러한 중책을 견딜 수가 없소. 더 이상 찾으려고 애쓸 필요는 없소, 친구..."~ */
  IF ~~ THEN REPLY #26532 /* ~"아니오. 나는 계속 묘비를 찾아보겠소, 그리고 에스-안논의 이름이 묘비에 새겨지게 되면 돌아오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26533 /* ~그는 열광적인 영창을 중단하고, 눈물이 가득 고인 눈으로 당신을 노려본다. 그는 자신의 바싹 마른 입을 열어 말을 하려고 하나 쉰 소리만 나올 뿐이다.~ */
  IF ~~ THEN REPLY #26534 /* ~"무슨 문제라도 있소? 당신은 왜 통곡하는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #26535 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #26536 /* ~"나..." 그의 목소리는 며칠 동안 물 한 모금도 못 마신 사람처럼 심하게 쉬었다. 그리고 눈물 한 방울이 그의 눈에서 나와 그의 얼굴을 따라 흘러 내려가고 있다.. "나는... 에스-안논의 통곡자요."~ */
  IF ~~ THEN REPLY #26537 /* ~"에스-안논? 그게 누구요?"~ */ DO ~SetGlobal("Crier","GLOBAL",1)
~ JOURNAL #26540 /* ~나는 벌통의 거리에서 "에스-안논의 통곡자"란 사람을 만났다. 그에 의하면 에스-안논은 오래 전에 멸망한 도시로 그(와 다른 생존자들)는 차원을 여행하며 들을 귀가 있는 자들에게 그 도시에 대해 알리며 통곡하고 있다. 에스-안논이 기억되는 것이 그들의 소원이다. ~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26541 /* ~"에스-안논이 누구냐고 했소?!" 그는 머리를 뒤로 제치고 귀에 거슬리는 웃음소리를 낸다. 그 소리는 모질고, 또 한편으로는 절망적으로 들린다. "에스-안논은... 사람이 아니라 도시요!"~ */
  IF ~~ THEN REPLY #26542 /* ~"왜 당신은 도시를 위해 통곡하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #26543 /* ~"내가 당신 기분을 상하게 한 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26544 /* ~"우리가 그 이름을 외치는 것은 에스-안논이 잊혀져서는 안 되기 때문이오. 모든 에스-안논의 통곡자는 이 중책을 지고 있소."~ */
  IF ~~ THEN REPLY #26545 /* ~"당신은 도시를 위해 통곡하오? 왜 당신은 그런 일을 하시오?"~ */ GOTO 8
  IF ~~ THEN REPLY #26546 /* ~"알겠소. 당신이 생각할 수 있도록 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 7.0
  SAY #26547 /* ~"왜냐하면 이제 남은 것이라곤 이름뿐이기 때문이오. 그 빛나는 거리, 나선형의 공원... 에스-안논이 붕괴하여 단지 기억 속의 존재가 되어버렸을 때 오직 60명의 시민들만 살아 남았소. 그 때부터 그 이름이 다원 우주 전역에 걸쳐 기억되도록 하는 것이 우리의 책무가 되었소. 많은 에스-안논의 통곡자들이 기억을 위해 죽어갔소... 많은..." ~ */
  IF ~~ THEN REPLY #26549 /* ~"만약 그 일이 다른 이들을 위험에 처하게 한다면 왜 그만두지 않는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #26550 /* ~"나는 당신 도시와 그 시민들에게 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26551 /* ~"내가 흘린 눈물, 나를 뒤덮고 있는 먼지... 이러한 것들은 내가 내 신성한 책무를 저버릴 경우 닥칠 일에 비하면 아무 것도 아니오. 우리는 반드시 ㅡ 이름이 기억되도록 해야만 하오. 우리는 그 도시의 죽음을 애도하는 살아 있는 묘비요."~ */
  IF ~~ THEN REPLY #26552 /* ~"만약 그렇다면, 당신들 모두가 죽을 경우 어떻게 되오?"~ */ GOTO 10
  IF ~~ THEN REPLY #26553 /* ~"나는 당신 도시와 그 시민들에게 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26555 /* ~통곡자의 눈으로부터 새로운 눈물이 한 방울 떨어진다. 먼지로 뒤덮인 그의 얼굴도 절망에 찬 그의 표정은 감출 수가 없다. "모르겠소. 우리들 에스-안논의 통곡자도 우리 도시의 죽음을 영원히 애도할 수는 없소... 지금 이 순간에도 우리들의 옷에는 먼지가 쌓이고, 입 안의 침은 마르며, 육신은 노쇠하여 죽어가고 있소."~ */
  IF ~~ THEN REPLY #26556 /* ~"내가 뭐 도와줄 일은 없겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #26557 /* ~"나는 당신 도시와 그 시민들에게 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26558 /* ~"그렇게 말해주다니 당신은 정말 친절하오..." 통곡자는 고개를 젓는다. "당신이 에스-안논을 영원불멸의 존재로 만들 수 없는 한 당신이 줄 수 있는 도움은 없소." ~ */
  IF ~~ THEN REPLY #26560 /* ~"꼭 당신이 에스-안논을 위해 통곡해야 하는 것이오?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26562 /* ~"그것은 사람에 의해서만 불멸화되어야 하오? 아니면 묘비라도 괜찮겠소?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26561 /* ~"그것은 사람에 의해서만 불멸화되어야 하오? 아니면 묘비라도 괜찮겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #26563 /* ~"나는 당신 도시와 그 시민들에게 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26564 /* ~"무슨 의미가 있겠소? 다른 사람이 대신 이름을 외쳐 준다고 하더라도 그 역시 언젠가는 죽을 것이오." 그의 눈 한쪽에 눈물이 고인다, 그리고 그의 볼을 따라 천천히 흘러내리기 시작한다. "할 수 있는 일은 아무 것도 없소. 에스-안논의 통곡자들이 죽는 날이 에스-안논이 죽는 날이 될 것이오."~ */
  IF ~~ THEN REPLY #26565 /* ~"그렇다면 그렇게 되는 것이 자연스러운 일인지도 모르오. 만약 당신이 말하는 것처럼 그 도시가 멸망했다면, 그것은 애초부터 잊혀질 운명이었던 거요."~ */ GOTO 13
  IF ~~ THEN REPLY #26567 /* ~"에스-안논을 기억시키려는 행위가 남은 생존자들을 위험에 빠뜨리는 것처럼 들이오. 과연 그 일에는 그럴 만한 가치가 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #26568 /* ~"묘비는 어떻소?"~ */ GOTO 16
  IF ~~ THEN REPLY #26569 /* ~"나는 당신 도시와 그 시민들에게 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #26570 /* ~그의 얼굴을 덮고 있는 먼지와 때의 막이 갈라진다, 그리고 그는 당신을 향해 으르렁댄다. "당신은 아무 것도 모르오! 당신은 그 아름다움도 그 찬란함도 보지 못했소! 만약 그토록 완벽한 도시의 기억을 지니고 있다면 어떻게 그것을 감히 버릴 수가 있겠소?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26571 /* ~"만물은 죽을 운명이오. 또한 그들은 잊혀질 운명이오. 이것이 내가 당신에게 하는 충고요, 에스-안논의 통곡자. 만약 당신이 도시를 당신 무덤까지 가져간다면 그건 과연 누구에게 도움이 되는 일이겠소?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26573 /* ~"만물은 죽을 운명이오. 또한 그들은 잊혀질 운명이오. 이것이 내가 당신에게 하는 충고요, 에스-안논의 통곡자. 만약 당신이 도시를 당신 무덤까지 가져간다면 그건 과연 누구에게 도움이 되는 일이겠소?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26574 /* ~"만물은 죽을 운명이오. 또한 그들은 잊혀질 운명이오. 이것이 내가 당신에게 하는 충고요, 에스-안논의 통곡자. 만약 당신이 도시를 당신 무덤까지 가져간다면 그건 과연 누구에게 도움이 되는 일이겠소?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26575 /* ~"나라면 그 기억의 마지막 보존자들을 위험에 빠뜨려 그 기억이 사라지도록 하는 우는 범하지 않겠소. 당신이 당신의 남은 생을 당신 형제들과 함께 에스-안논을 기억하며 보내는 편이 훨씬 의미가 있을 것이오."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26576 /* ~"나라면 그 기억의 마지막 보존자들을 위험에 빠뜨려 그 기억이 사라지도록 하는 우는 범하지 않겠소. 당신이 당신의 남은 생을 당신 형제들과 함께 에스-안논을 기억하며 보내는 편이 훨씬 의미가 있을 것이오."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26577 /* ~"나라면 그 기억의 마지막 보존자들을 위험에 빠뜨려 그 기억이 사라지도록 하는 우는 범하지 않겠소. 당신이 당신의 남은 생을 당신 형제들과 함께 에스-안논을 기억하며 보내는 편이 훨씬 의미가 있을 것이오."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #26578 /* ~"그럼 묘비는 어떻소?"~ */ GOTO 16
  IF ~~ THEN REPLY #26579 /* ~"그럼 관두시오. 당신이 생각할 수 있도록 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.2 13.3 13.4 13.5
  SAY #26580 /* ~통곡자는 입을 다문다, 그리고 그의 눈 한쪽 구석에 눈물이 한 방울 고이는 것이 보인다. 잠시 후 그는 격한 감정이 담긴 듣기 거북한 목소리로 말한다. "당신이 하는 말은... 일리가 있소."~ */
  IF ~~ THEN REPLY #26581 /* ~"그것은 듣기도 받아들이가도 어려운 진실이오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #26582 /* ~그의 눈 한쪽 구석에 고였던 눈물이 갑자기 사라진다. 어찌나 빨리 사라졌는지 그것이 그 곳에 존재했었다는 사실이 의심스러울 정도다. "그렇지만 나는 받아들이도록 하겠소. 그리고 내 형제들도 그것을 받아들이도록 설득할 것이오."~ */
  IF ~  Global("Crier_Answer","GLOBAL",1)
~ THEN REPLY #26583 /* ~"좋소. 그럼 안녕히 계시오."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26585 /* ~나는 에스-안논의 설득자가 그의 순례를 포기하도록 설득하는 데 성공했다. 결국에는 필연적으로 잊혀질 것에 대한 기억을 연장시키기 위하여 그가 차원을 방황할 필요는 더 이상 없었다. 그는 동의했으며 곧 그의 동포들에게 가서 얘기를 전할 것이다. ~ */ EXIT
  IF ~  Global("Crier_Answer","GLOBAL",2)
~ THEN REPLY #26584 /* ~"좋소. 그럼 안녕히 계시오."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26586 /* ~나는 에스-안논의 설득자가 그의 순례를 포기하도록 설득하는 데 성공했다. 나는 그와 다른 통곡자들이 차원을 여행함으로서 에스-안논의 기억을 사라질 위험에 빠트려서는 안 된다고 그를 설득했다. 그는 동의했으며 곧 그의 동포들에게 가서 얘기를 전할 것이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 11.2 12.2 13.6
  SAY #26587 /* ~통곡자는 눈을 깜박인다. "묘... 비?"~ */
  IF ~~ THEN REPLY #26588 /* ~"그것은 죽은 이의 이름, 인생, 그리고 그에 대한 찬사를 기록한 돌이오. 만약에 사람을 위해 쓸 수 있다면 죽은 도시를 위해서도 사용할 수 있지 않겠소?"~ */ GOTO 17
  IF ~~ THEN REPLY #26589 /* ~"중요한 얘기가 아니오. 내 말은 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26590 /* ~"돌이 그러한 역할을 할 수 있다는 것이오?"~ */
  IF ~~ THEN REPLY #26591 /* ~"그렇소. 그리고 그들의 수명의 사람의 그것보다 훨씬 기오. 만약 그 이름이 묘비에 새겨진다면 에스-안논의 기억은 길이 남지 않겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #26592 /* ~"아무 일도 아니오. 내 말은 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26593 /* ~그는 잠시 멈춘다. "다른 사람들도 그 이름을 볼 수가 있겠소?"~ */
  IF ~~ THEN REPLY #26594 /* ~"그렇소. 그것은 당신이 죽고 오랜 세월이 흐른 후에도 누구든 볼 수 있도록 그 곳에 남아있을 것이오."~ */ GOTO 19
  IF ~~ THEN REPLY #26595 /* ~"아무 일도 아니오. 내 말은 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26596 /* ~그는 고개를 끄덕인다. "만약 그런 일이 가능하다면..." 그는 당신 쪽으로 돌아선다. "어디서 그러한 돌을 찾을 수가 있겠소?"~ */
  IF ~~ THEN REPLY #26597 /* ~"내가 가서 찾아보리다. 만약 찾으면 에스 안논의 이름이 그 위에 반드시 새겨지도록 하겠소."~ */ GOTO 20
  IF ~~ THEN REPLY #26598 /* ~"돈을 좀 주겠다면 내가 가서 묘비를 찾은 후, 그 위에 에스 안논의 이름이 틀림없이 새겨지도록 책임을 지겠소."~ */ GOTO 21
  IF ~~ THEN REPLY #26599 /* ~"아무 일도 아니오. 내 말은 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26600 /* ~"당신... 당신... 당신이 이 일을 해주겠다는 것이오?" 그의 눈에는 다시 눈물이 고인다. "당신은 모든 에스-안논의 통곡자들을 해방시켜 주게 될 될 것이오. 이제 남은 사람들은 스무 명 정도밖에 되지 않소... 그토록 오랜 세월이 지난 후에야 드디어 기억을 지키는 중책으로부터 자유로워지는 거요..."~ */
  IF ~~ THEN REPLY #26601 /* ~"그렇게 하리다. 이름이 새겨지면 돌아오겠소."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ JOURNAL #26539 /* ~나는 통곡자를 위해 에스-안논의 이름을 새길 묘비를 찾아주기로 합의했다.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26602 /* ~"당신... 당신... 당신이 이 일을 해주겠다는 것이오?" 그의 눈에는 다시 눈물이 고인다. "당신은 모든 에스-안논의 통곡자들을 해방시켜 주게 될 될 것이오. 이제 남은 사람들은 스무 명 정도밖에 되지 않소... 그토록 오랜 세월이 지난 후에야 드디어 기억을 지키는 중책으로부터 자유로워지는 거요... 그런데 당신은 단지 동전 몇 푼만 받고 그 일을 해주겠다는 것이오?"~ */
  IF ~~ THEN REPLY #26603 /* ~"그렇소."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
GivePartyGold(5)
IncrementGlobalOnceEx("GLOBALEvil_Crier_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #26604 /* ~"관두시오, 난 그 일을 공짜로 해주겠소. 이름이 새겨지면 돌아오리다.~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26605 /* ~"그럼 드리겠소." 통곡자는 옷에서 동전 다섯 닢을 꺼내 세어 본 후 당신에게 준다. "내가 가진 건 이게 전부요. 이걸로 충분하기를 바라겠소."~ */
  IF ~~ THEN REPLY #26606 /* ~"그걸로 만족하도록 하겠소. 좋소, 에스-안논의 이름을 묘비에 새기고 나서 돌아오겠소."~ */ JOURNAL #26608 /* ~나는 동전 몇 닢을 받는 대신 통곡자를 위해 에스-안논의 이름을 새길 묘비를 찾아주기로 했다. ~ */ EXIT
  IF ~~ THEN REPLY #26607 /* ~"내가 원했던 건 돈뿐이오. 그러니 에스-안논을 위한 묘비는 없을 것이오. 안녕히 계시오."~ */ DO ~Enemy()
IncrementGlobalOnceEx("GLOBALEvil_Crier_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crier_1","GLOBALLaw",-1)
Attack(Protagonist)
~ JOURNAL #26609 /* ~나는 동전 몇 닢을 받는 대신 통곡자를 위해 에스-안논의 이름을 새길 묘비를 찾아주기로 했다... 하지만 그 바보가 그의 마지막 남은 동전을 내게 주자 나는 그의 어리석음을 비웃고 그에게 난 그런 멍청한 심부름 따위는 하지 않을 거라고 말했다. 벌통에서는 누구도 믿어서는 안 된다는 걸 모르다니 어리석군.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.2
  SAY #26611 /* ~갑자기 속삭이는 소리가 잠시 들린다, 그리고 그의 눈에서 눈물이 마른다. 그의 볼을 따라서 흘러내리던 눈물도 사라졌다. "그렇다면 에스-안논은 이제 안심이오. 나는 가서 내 형제들에게 당신이 말한 돌에 전하도록 하겠소. 정말 고맙소."~ */
  IF ~  Global("Evil_Crier_1","GLOBAL",0)
~ THEN REPLY #26612 /* ~"음... 도시의 이름을 묘비에 새기는 데는 돈이 약간 들었소. 내가 쓴 비용을 지불할 여유는 있겠소?"~ */ DO ~GivePartyGold(5)
IncrementGlobalOnceEx("Evil_Crier_1","GLOBAL",-1)
~ GOTO 24
  IF ~~ THEN REPLY #26613 /* ~"천만의 말씀이오. 안녕히 계시오... 당신과 당신 형제들이 남은 생을 평온하게 보내기를 바라겠소."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26615 /* ~그는 고개를 끄덕이고 옷 속에 손을 집어넣는다. "내가 가진 것을 모두 드리겠소." 그는 동전 다섯 닢을 세서 당신에게 준다. "이것을 내 감사와 함께 손을 맞잡고 받아 주시오."~ */
  IF ~~ THEN REPLY #26616 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #26617 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END
