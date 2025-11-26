// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHINEAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHINEAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2397 /* ~당신 앞에 있는 남자는 땅딸막하며 온몸과 얼굴에 뾰루지와 농포가 나 있다. 그의 옷은 그가 일종의 관리임을 나타내고 있으나, 그것은 더럽고 주름져 있는 데다가 쥐털로 뒤덮여 있다. 당신이 지켜보는 동안에도 그는 자신의 뭉툭한 손가락으로 한가하게 몸을 긁고 있다.~ */
  IF ~  Global("Phineas","GLOBAL",0)
~ THEN REPLY #2398 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #2400 /* ~그를 그냥 내버려 두고 가게를 둘러본다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2402 /* ~"아이크!" 작은 사내는 놀란 듯 소리치며 뛰어오른다. 그는 가슴을 움켜쥐며 심호흡을 한 후, 그의 농포 투성이 코에 걸린 안경을 밀어 올린다. "그래, 그래? 무슨 용건이시오..." 그는 코를 긁으면서 당신을 아래위로 쳐다보고 당신의 흉터를 살펴본다. "어...돈 서랍에는 아무 것도 없소, 그러니 만약 강도질을 하려고 왔다면 장소를 잘못 골랐소..."~ */
  IF ~~ THEN REPLY #2403 /* ~"나는 '사무실을 약탈'하려고 이 곳에 온 것이 아니오. 당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #2404 /* ~"'서랍에는 아무 것도 없다?' 당신이 가진 것 전부를 내게 주는 게 좋을 거요, 그럼 우린 사이좋게 헤어질 수 있을 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Phineas_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #2405 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #2406 /* ~"아이크! 신들에게 맹세코... 그렇게 몰래 들어와 날 놀라게 하지 마시오!" 그는 코에 걸린 안경을 밀어 올리고 당신을 응시한다. "*이번에는* 무슨 용건이오?"~ */
  IF ~~ THEN REPLY #2401 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2450 /* ~"당신 금고에 들어 있는 걸 내놓으면 곧 떠나도록 하겠소."~ */ GOTO 13
  IF ~~ THEN REPLY #2451 /* ~"오늘은 아무런 용건도 없소 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #2407 /* ~"나? 나는 존경받는 피니어스 T 로트 39세로, 해수 및 질병 관리국의 벌통 지국을 책임지고 있소." 그는 가슴을 긁고 의기양양하게 말한다. "나는 우리, 즉 관료적인 의미로 시길 전체의 관료 체계를 포함하는 뜻에서의 *우리가*, 다원 우주의 중심지이며 모든 도시를 평가할 때의 기준이 되는 도시인 시길의 거리에서 창궐하고 있는 각종 쥐와 유사한 해수를 잡아오면 현상금을 지불하겠다는 사실을 자랑스럽게 알리겠소." 그는 다시 긁적거린다.~ */
  IF ~~ THEN REPLY #2408 /* ~"현상금?"~ */ JOURNAL #66745 /* ~나는 벌통의 해수 구제 검사관인 피니어스 T 로트와 얘기를 했다. 그는 자신의 사무소로 가져오는 크래니움 랫의 꼬리에 대해서는 꼬리 하나 당 동전 한 닢을 준다고 말했다. 대단한 액수는 아니지만 없는 것보다는 나을 것 같다... 만약 내가 충분한 수의 쥐꼬리를 가져온다면 그에게 더 나은 가격으로 꼬리를 팔 수 있을지도 모른다. ~ */ GOTO 4
  IF ~~ THEN REPLY #2409 /* ~"알겠소. 당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2410 /* ~"그래, 그래... 우리, 즉 관료적인 의미로 시길 전체의 관료 체계를 포함하는 뜻에서의 *우리는*, 벌통 지역에서 최근 몇 년간 급속도로 창궐하고 있는 뇌 쥐 또는 크래니움 랫이라 불리는 해수를 죽였다는 명백한 증거물을 접수받고 있소. 나는 시길 정부에 의해..." 그는 극적일 정도로 우쭐댄다. "... 내 사무실로 가져오는 크래니움 랫 한 마리 당 동전 한 닢씩 지불할 권한을 부여받고 있소."~ */
  IF ~~ THEN REPLY #2411 /* ~"크래니움 랫?"~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2412 /* ~"쥐는 없지만 쥐꼬리라면 좀 가지고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #2413 /* ~"알겠소. 이만 실례해야겠소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.3
  SAY #2414 /* ~"크래니움 랫은 쥐의 일종으로 서로 인접하고 있는 쥐의 수가 늘어나면 늘어날수록 지능이 증가하는 괴물이오. 한 마리의 크래니움 랫은 고작해야 판자를 갉아먹고 움식을 훔쳐먹는 정도의 하찮은 골칫거리지만, 그들의 수가 늘어나면 나와 같은 사람의 지능을 초월할 정도가 되고 마오." 그는 다시 긁적거린 후 경멸하듯이 코를 킁킁거린다. "당신이라면 크래니움 쥐 두세 마리의 지능도 당하지 못할 것 같군."~ */
  IF ~~ THEN REPLY #2415 /* ~"또 다시 그런 말을 하면 국물도 없을 줄 아시오."~ */ GOTO 6
  IF ~~ THEN REPLY #2416 /* ~"시길에는 크래니움 랫이 몇 마리나 있소?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2417 /* ~"크래니움 랫에 대해 더 자세히 얘기해주시오."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2418 /* ~"쥐는 없지만 쥐꼬리라면 좀 가지고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #2423 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2419 /* ~피니어스는 눈을 깜박인다. 당신의 용모가 마침내 그에게 영향을 미친 모양이다. "최근 당신의 우월성의 과시와 현 사회적 상황에서의 육체적 우월성을 감안할 때 내가 했던 극히 부적절한 코멘트를 취소하도록 하겠소."~ */
  IF ~~ THEN REPLY #2420 /* ~"시길에는 크래니움 랫이 몇 마리나 있소?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2421 /* ~"크래니움 랫에 대해 더 자세히 얘기해주시오."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2422 /* ~"쥐는 없지만 쥐꼬리라면 좀 가지고 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #2424 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.3 6.2 16.4
  SAY #2425 /* ~"훌륭하오! 매우 훌륭하오!" 그는 기쁜 듯이 박수를 친다. "어디 봅시다..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
~ THEN REPLY #2452 /* ~쥐꼬리를 넘기고 현상금을 받는다.~ */ DO ~IncrementGlobal("Sold_Rat","GLOBAL",1)
DestroyPartyItem("Tail",FALSE)
GiveGoldForce(1)
~ GOTO 15
  IF ~~ THEN REPLY #2453 /* ~"그것들은 그냥 내가 당분간 가지고 있도록 하겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2454 /* ~"아마 다른 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.0
  SAY #2432 /* ~"현상금 사냥꾼이 일생... 아니 여러 생 동안 먹고살기에 충분하고 남을 양이오." ~ */
  IF ~~ THEN REPLY #2433 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2434 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 6.1
  SAY #2435 /* ~"서로 인접하고 있는 쥐의 수가 늘어나면 늘어날수록 그들은 더욱 강해지며... 경우에 따라서는 주문을 영창할 수 있는 능력과 마법에 대한 내성까지 지니게 되며, 매우 교활한 전술도 사용하오." 안경을 코에서 밀어 올린다. "당신도 알다시피 우리는 시길에서 그들의 수를 줄이기 위해 고심하고 있소."~ */
  IF ~~ THEN REPLY #2436 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2437 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 16.1 16.2
  SAY #2438 /* ~"그건 매우 서사시적인 얘기요... 나는 이 곳 시길에서 태어났소..."~ */
  IF ~~ THEN REPLY #2439 /* ~"어..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 11 // from:
  SAY #2440 /* ~"...그리고 난 이 곳으로 좌천을 당하게 되었고, 그때 비로소 난 내가 동료들을 화나게 했다는 걸 깨달았소. 그 이후 나는 벌써 *오랜* 세월 동안 이 곳에서 일을 하고 있소." 그는 한숨을 쉰 후 한가하게 코를 긁는다.~ */
  IF ~~ THEN REPLY #2441 /* ~"어... *하품* ... 그 밖에도 질문할 것들이 좀 있소..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 16
  IF ~~ THEN REPLY #2442 /* ~"알겠소... 어쨌든 시간을 내주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.5
  SAY #2443 /* ~"내 뾰루지가 전염성이냐고? 아니오... 적어도 난 그렇게 생각하지 않소. 내 생각에 그건 직업병인 것 같소. 이 직책은 몸에 아주 배어버리게 된다오." 그는 다시 몸을 긁는다~ */
  IF ~~ THEN REPLY #2444 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2445 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.1
  SAY #2446 /* ~"어... 물론 그러리다..." 그는 카운터 아래의 돈궤에 손을 뻗쳐 뚜껑을 연 후 뭔가를 찾는다. 그의 손은 몇 닢의 동전을 쥐고 다시 나타나며, 그는 그 돈을 당신에게 준다. "이런 짓을 하는 데 대해 당신이 약간의 죄책감이나마 느꼈으면 좋겠소. 그러한 몇 푼 안 되는 돈이라도 없으면 이 사무실을 운영하기조차 어렵소."~ */
  IF ~~ THEN REPLY #2447 /* ~"당신 때문에 정말 가슴이 아프오. 안녕히 계시오."~ */ DO ~SetGlobal("Phineas","GLOBAL",4)
GiveGoldForce(53)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 17 24 25 26 30 even though they appear after this state */
~  Global("Phineas","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #2448 /* ~"내 돈을 털어간 것만으로는 부족했던 모양인 것 같소. 왜 돌아왔소?"~ */
  IF ~~ THEN REPLY #51468 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #51469 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #2455 /* ~당신이 거래를 마치자 그는 기쁜 듯 콧노래를 부른다. "정말 고맙소, 선생. 시길 시와 나는 당신의 노고를 치하하오."~ */
  IF ~~ THEN REPLY #2456 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #2457 /* ~"고맙소. 쥐꼬리를 더 입수하게 되면 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 7.1 8.0 9.0 11.0 12.0 14.0 15.0 24.1 25.1 30.1 31.0
  SAY #2458 /* ~"흠...? 어떤 질문이오...?"~ */
  IF ~~ THEN REPLY #2459 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #2460 /* ~"여기서 뭘 하고 있는 거요?"~ */ GOTO 10
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #2461 /* ~"당신처럼... 대단한 사람이 어떻게 이런 곳에 오게 됐소?"~ */ GOTO 10
  IF ~~ THEN REPLY #2462 /* ~"이 크래니움 랫이란 놈들에 대해 애기해주시오."~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2463 /* ~"쥐꼬리를 좀 가지고 있소. 그것들에 대한 현상금을 받고 싶소."~ */ GOTO 7
  IF ~  CheckStatGT(Player1,13,WIS)
~ THEN REPLY #2464 /* ~"당신 몸에 난 뾰루지는 혹시 전염성이오?"~ */ GOTO 12
  IF ~~ THEN REPLY #2465 /* ~"더 이상 질문은 없소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 30 even though they appear after this state */
~  GlobalGT("Sold_Rat","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #51476 /* ~"아아아! 제발 날 죽이지 마시오..." 피니어스는 놀라서 비명을 지르며 길길이 뛴다. 그는 다른 사람인 줄 알았다는 표정으로 당신을 쳐다본다. "신들이시어, 감사합니다. 겨우 당신이었군..." 그는 잠시 멈추고 정신을 가다듬으려고 한다.~ */
  IF ~~ THEN REPLY #51477 /* ~"당신을 죽이지 말라고? 무슨 곤란이라도 겪고 있소?"~ */ GOTO 18
  IF ~~ THEN REPLY #51478 /* ~"별로 이 곳에 있고 싶지가 않군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51479 /* ~그는 침을 꿀꺽 삼키고 주위를 둘러본다. "크래니움 랫들... 그들이 시길에서 날 말살하기로 작심한 모양이오. 내가 해수 및 질병 관리국에서의 직무를 너무 열심히 수행했던 것 같소." 그는 애원하는 눈빛으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #51480 /* ~"무슨 얘기를 하는 거요?"~ */ GOTO 19
  IF ~~ THEN REPLY #51481 /* ~"얘기는 충분할 만큼 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #51482 /* ~"오늘 나는 다른 곳도 아닌 내 사무실에서 거대한 쥐를 발견했소. 나는 놈을 잡은 후 처리하기 위해 지하실로 내려갔소." 그의 눈이 벌어지고, 숨은 더욱 거칠어진다. "그런데 놈은 내 눈 앞에서 사람 크기의 괴물로 변신하더니 자신이 내가 크래니움 랫에 대해 지은 죄를 처벌하기 위해 날 죽이려고 왔다고 했소!"~ */
  IF ~~ THEN REPLY #51483 /* ~"대체 무슨 일을 한 거요?"~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #51484 /* ~"얘기는 충분할 만큼 들었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51485 /* ~"나는 죽어라고 도망쳤소. 내가 이 곳까지 도망쳐 올 수 있었던 건 기적이오. 나는 도망치면서 문을 잠궜소, 그러니 놈은 그 곳에 갇혀 있을 거요." 당신을 쳐다보면서 그의 눈은 당신의 수많은 흉터들로 향한다. 그는 다시 당신을 정면으로 쳐다본다. "날 위해 괴물을 죽여 주시오... 그만한 대가는 지불하겠소..."~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51486 /* ~"그 일을 해주면 내게 뭘 줄 거요?"~ */ GOTO 21
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51487 /* ~"그 일을 해주면 내게 뭘 줄 거요?"~ */ GOTO 22
  IF ~~ THEN REPLY #51488 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #51489 /* ~그는 잠시 생각하더니 미소를 짓는다. "나는 당신이 날 털었다는 것을 기꺼이 잊고 시 당국에 보고하지 않겠소..." 그는 잠시 멈추고 당신의 반응을 본다. "그리고 덤으로 동전 백 닢도 주겠소."~ */
  IF ~~ THEN REPLY #51490 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51491 /* ~"생각해 보겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51492 /* ~"관련되고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #51493 /* ~그는 잠시 생각하더니 미소를 짓는다. "내 지하실의 사악한 괴물을 퇴치하면 동전 이백 닢을 주겠소."~ */
  IF ~~ THEN REPLY #51494 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51495 /* ~"생각해 보겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51496 /* ~"관련되고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 24.0 25.0
  SAY #51497 /* ~그는 미소를 지으며 당신에게 고개를 숙인다. "좋소. 지하실 열쇠가 여기 있소. 그 괴물을 처치하면 돈을 지불하리다."~ */
  IF ~~ THEN REPLY #51498 /* ~열쇠를 받아서 떠난다. ~ */ DO ~GiveItemCreate("PhinKey",Protagonist,1,0,0)
~ JOURNAL #53636 /* ~나는 피니어스 T 로트를 만나러 해수와 질병 구제 사무소에 갔다. 그는 정신이 나간 듯했으며 자기 지하실에 위어랫이 한 마리 사는 것 같다며 횡설수설하고 있었다. 나는 보수를 받는 대신 위어랫을 죽여주기로 합의했다.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #51499 /* ~피니어스가 보인다. 그는 안경테 너머로 당신을 쳐다본다. "다시 찾아 주셔서 영광이오. 내 지하실의 괴물을 퇴치해 달라는 내 부탁을 들어주려고 오셨소?"~ */
  IF ~~ THEN REPLY #51500 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51501 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #51502 /* ~"그럴 생각은 없소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #51503 /* ~피니어스가 보인다. 그는 안경테 너머로 당신을 쳐다본다. "다시 찾아 주셔서 영광이오. 내 지하실의 괴물을 퇴치해 달라는 내 부탁에 대해서 재고해 보셨소?"~ */
  IF ~~ THEN REPLY #51504 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51505 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #51506 /* ~"그럴 생각은 없소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #51507 /* ~피니어스가 보인다. 그는 안경테 너머로 당신을 쳐다본다. "다시 찾아 주셔서 영광이오. 내가 부탁한 일은 해결했소?"~ */
  IF ~  Dead("Thesik")
~ THEN REPLY #51508 /* ~"그렇소. 괴물은 죽었고 나는 보수를 받으러 왔소."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",4)
~ GOTO 27
  IF ~  !Dead("Thesik")
~ THEN REPLY #51509 /* ~"아니, 아직 아니오."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #51510 /* ~피니어스는 미소를 짓는다. "정말 멋진 소식이오. 내가 당신에게 약속한 보수가 무엇이었더라?"~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51511 /* ~"동전 백 닢, 그리고 내가 당신 서랍으로부터 돈을... 빌린 일은 잊어버리는 거요."~ */ DO ~GivePartyGold(100)
AddexperienceParty(500)
~ GOTO 28
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51512 /* ~"동전 2백 닢."~ */ DO ~GivePartyGold(200)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #51513 /* ~"도와주셔서 고맙소. 이 은혜는 잊지 않으리다." 그는 당신에게 머리를 숙인다.~ */
  IF ~~ THEN REPLY #51514 /* ~"안녕히 계시오."~ */ JOURNAL #54870 /* ~나는 위어랫을 죽였으며 그 대가를 피니어스로부터 받았다. 내가 한 고생을 생각하면 보잘것없는 액수지만, 그래도 돈은 돈이다.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #51515 /* ~그는 눈살을 찌푸린다. "이 일은 가급적 빨리 해결해 주시면 고맙겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #51516 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Snuff_Rat","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #64156 /* ~피니어스가 보인다. 그는 코에 걸린 안경을 밀어 올리고 정다운 표정을 짓는다.. "아, 친구. 이번에는 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #64157 /* ~"이번에는 내가 들어와도 별로 놀라지 않는 것 같소."~ */ GOTO 31
  IF ~~ THEN REPLY #64158 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #64159 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64160 /* ~그는 한숨을 쉬고 미소를 짓는다 "당신의 영웅적인 위업 후에 나는 평온을 되찾았소. 솔직히 그토록 편안한 기분이 둔 건 여러 해만의 일이오." 그는 잠시 멈추고 생각한다. "그 일에 대해서는 정말 감사하오. 자, 어떤 도움이 필요하시오?~ */
  IF ~~ THEN REPLY #64161 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #64162 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
