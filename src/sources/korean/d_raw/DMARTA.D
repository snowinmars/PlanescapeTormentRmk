// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARTA~

IF ~  Global("Marta","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2831 /* ~두꺼운 삼베 겉옷을 입은 나무토막 같은 노파가 보인다. 그녀는 방을 어지럽히고 있으며, 그녀가 여기저기에 있는 테이블에서 물건을 집을 때마다 그녀의 관절은 삐걱거린다. 그녀는 머리를 뒤로 올려 뼈로 만든 헤어핀으로 고정시켰으며, 그녀의 표정은 쉰 우유 같다. 그녀는 단조로운 가락으로 스스로에게 뭐라고 중얼거리고 있다. ~ */
  IF ~~ THEN REPLY #20473 /* ~"안녕하시오."~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #20474 /* ~떠난다.~ */ EXIT
END

IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2832 /* ~마타가 보인다. 그녀는 방 안을 쿵쿵거리며 돌아다니고 있다. 그녀가 여러 테이블 위에 놓인 물건들을 집으려고 몸을 구부릴 때마다 그녀의 관절에서는 삐걱거리는 소리가 난다. 그녀는 기묘하고 단조로운 목소리로 혼자서 뭐라고 중얼거리고 있다. ~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20475 /* ~"안녕하시오, 마타."~ */ GOTO 2
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20476 /* ~"당신에게 물어볼 것들이 좀 있소, 마타..."~ */ GOTO 30
  IF ~~ THEN REPLY #20477 /* ~마타를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #20432 /* ~그녀는 당신 말을 듣지 못한 것 같다. 대답을 하는 대신 그녀는 긴 테이블들 중 한 곳으로 돌아가 시체를 집적거리기 시작한다. "자..." 그녀는 이빨을 딱딱거린다. "마타를 너무 힘들게 하지마... 그는 널 힘들게 하고 있지, 마타...? 그래, 그렇지..."~ */
  IF ~~ THEN REPLY #20478 /* ~"어... 안녕하시오?"~ */ GOTO 4
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20479 /* ~그녀가 무슨 일을 하는지 지켜본다.~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20480 /* ~그녀가 무슨 일을 하는지 지켜본다.~ */ GOTO 3
  IF ~~ THEN REPLY #20481 /* ~마타를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY #20433 /* ~당신이 보기에 그녀는 맨손과 손톱만 가지고 시체의 입에서 이빨을 뽑아내고 있는 것 같다. 그 방법으로는 이빨이 뽑히지 않자 그녀는 조각난 목제 조각도와 나무망치를 꺼내 이빨이 빠져나올 때까지 시체의 잇몸을 두들긴다. 이빨이 빠지면 그녀는 그것을 허리에 찬 자루에 넣는다. ~ */
  IF ~~ THEN REPLY #20482 /* ~"어... 뭘 하고 있는 거요?"~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #20483 /* ~마타를 무시하고 방을 둘러본다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #20434 /* ~마타는 소스라치게 놀라서 시체로부터 뒤로 물러선다, 그리고 날카로운 비명을 지른다. "아아!!" 그녀는 숨을 헐떡인 후, 테이블 위의 시체에게 화를 낸다. "만약 죽지 않았다면 진작에 말했어야지, 이 가짜 시체, 나쁜 시체 같으니! 넌 부끄러운 줄도 몰라?"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20484 /* ~목소리를 낸다: "부끄러워해야 할 건 당신이오. 내 이빨을 그렇게 빼내다니, 당신은 죽은 자에 대한 존경심이 없소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20485 /* ~목소리를 낸다: "부끄러워해야 할 건 당신이오. 내 이빨과 날 꿰맨 실을 그렇게 빼내다니, 당신은 죽은 자에 대한 존경심이 없소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20486 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20487 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 10
  IF ~~ THEN REPLY #20488 /* ~마타를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #20435 /* ~"흥! 마타는 손을 엉덩이에 얹고 화난 듯 숨을 내쉰다. "언제 이빨에 관심이나 가졌던 것처럼 말하는군. 썩어서 갈색이 다 된 이빨들을 가지고! 네 해골에서 아직 떨어져 나오지 않은 게 신기해!" 그녀는 머리를 긁는다. "그렇지, 마타? 그래, 썩어서 문드러졌어..."~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20489 /* ~목소리를 낸다: "오오오오... 당신은 사악한 이빨 뽑기에 대해 벌을 받을 거요, 마타. 난 당신이 죽는 날까지 당신을 따라다니며 괴롭힐 거요..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20490 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20491 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 10
  IF ~~ THEN REPLY #20492 /* ~마타를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20436 /* ~"흥! 들었어, 마타?" 마타의 얼굴이 쥐어짠 걸레처럼 구겨진다. "난 들었어, 마타, 들었다고!" 그녀는 툴툴거린 후 시체를 주먹으로 치기 시작하는데, 칠 때마다 찰싹하는 소리가 요란하게 난다. "날 괴롭히려면 어디 해보라고! 이거나 먹어라! 이것도!"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20493 /* ~목소리를 낸다: "오오오오... 멈춰... 멈춰... 난 당신을 더 이상 괴롭히지 않을 테니... 날 용서해..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20494 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20495 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 10
  IF ~~ THEN REPLY #20496 /* ~마타를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20437 /* ~"빌어먹을 시체들..." 마타는 심호흡을 하고 조각도를 옆에 떨군다. "그게 더 낫군, 그렇지, 마타? 그래, 그래... 시체는 조용해야 해."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20497 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20498 /* ~"말을 한 건 시체가 아니라 나였소."~ */ GOTO 10
  IF ~~ THEN REPLY #20499 /* ~마타를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.1 7.0
  SAY #20438 /* ~마타는 곁눈질을 한 후 고개를 돌린다. "에? 어떻게 그 곳에 그렇게 빨리 갔지?" 그녀는 혼잣말을 한다. "마타. 그가 어떻게 그런 일을 했지? 이해를 못하겠어."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 207
END

IF ~~ THEN BEGIN 9 // from:
  SAY #20439 /* ~마타는 아직도 *시체*와 *감사*에 대해 뭐라고 중얼거리고 있으나 당신은 알아들을 수가 없다. ~ */
  IF ~~ THEN REPLY #20500 /* ~"당신은 누구요?"~ */ JOURNAL #18470 /* ~나는 매장된 마을에서 마타라는 이름의 미치광이 여자 재봉사를 만났다. 그녀는 마치 그녀 자신이 한 명 더 있기라도 한 듯 계속해서 혼잣말을 해댔다...하지만 누가 알겠나, 정말 그럴지.~ */ GOTO 11
  IF ~~ THEN REPLY #20501 /* ~"어... 좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3 5.2 6.2 7.1
  SAY #20440 /* ~마타는 곁눈질을 한 후 고개를 돌린다. "에? 어떻게 그 곳에 그렇게 빨리 갔지?" 그녀는 혼잣말을 한다. "마타. 그가 어떻게 그런 일을 했지? 이해를 못하겠어."~ */
  IF ~~ THEN REPLY #20502 /* ~"당신은 누구요?"~ */ JOURNAL #18470 /* ~나는 매장된 마을에서 마타라는 이름의 미치광이 여자 재봉사를 만났다. 그녀는 마치 그녀 자신이 한 명 더 있기라도 한 듯 계속해서 혼잣말을 해댔다...하지만 누가 알겠나, 정말 그럴지.~ */ GOTO 11
  IF ~~ THEN REPLY #20503 /* ~"어... 좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ JOURNAL #18470 /* ~나는 매장된 마을에서 마타라는 이름의 미치광이 여자 재봉사를 만났다. 그녀는 마치 그녀 자신이 한 명 더 있기라도 한 듯 계속해서 혼잣말을 해댔다...하지만 누가 알겠나, 정말 그럴지.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0 13.0 30.0
  SAY #20441 /* ~"마타, 이 자가 내가 누구냐고 물었어? 그래, 그랬어..." 그녀는 콧노래를 부르기 시작한다. "다름 아닌 나, 나는 마타, 재봉사 마타... 흐으음... 재봉사-마타... 재봉사-마타..." 그녀는 시체 쪽으로 고개를 돌리고 자신의 이름을 노래부르듯 스스로에게 중얼거린다.~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20504 /* ~"무엇을 하고 있는 거요?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",2)
~ GOTO 12
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20505 /* ~"뭘 하고 있는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #20506 /* ~"어... 좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 13.1 30.1
  SAY #20442 /* ~마타는 화를 내며 시체 쪽으로 돌아선다. "나는 이 얼간이가 이빨과 실을 내놓도록 만들려는데 그는 협력할 생각을 하지 않아, 않아..." 그녀는 어린이에게 설교를 하는 것처럼 손가락을 흔든다. "돌처럼 고집이 세군, 안 그래, 마타?" 그녀는 입을 삐죽 내민다. "그래, 그래..."~ */
  IF ~~ THEN REPLY #20507 /* ~"실과... 이빨? 무슨 얘기를 하는 거요?"~ */ GOTO 14
  IF ~~ THEN REPLY #20508 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20509 /* ~"어... 좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.4 16.9 17.1 18.1 19.2 20.1 21.0 23.4 24.4 25.4 26.2 26.3 27.0 28.1 29.1 31.2 37.0 39.4
  SAY #20443 /* ~"그가 질문을 했어, 마타...?" 마타는 눈을 깜박인 후 얼굴을 찌푸린다. "그래, 마타, 그는 그런 말을 했어. 그는 물어볼 게 있다는 얼굴을 하고 있으니까..."~ */
  IF ~~ THEN REPLY #20510 /* ~"당신은 누구요?"~ */ JOURNAL #18470 /* ~나는 매장된 마을에서 마타라는 이름의 미치광이 여자 재봉사를 만났다. 그녀는 마치 그녀 자신이 한 명 더 있기라도 한 듯 계속해서 혼잣말을 해댔다...하지만 누가 알겠나, 정말 그럴지.~ */ GOTO 11
  IF ~~ THEN REPLY #20511 /* ~"뭘 하고 있는 거요?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20512 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20513 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20514 /* ~"내 몸을 파헤쳐 뭔가 들어있는지 볼 수 있겠소?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20515 /* ~"내 몸을 파헤쳐 뭔가 들어있는지 볼 수 있겠소?"~ */ GOTO 23
  IF ~~ THEN REPLY #20516 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20517 /* ~"당신은 시체를 꿰맨 실들을 뜯어내고 있소... 당신으로부터 바늘과 실을 좀 살 수 있겠소?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20518 /* ~"그 밖에 당신이 시체들로부터 빼낸 것들 중에 내게 팔만한 건 없소?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20519 /* ~"최근에 당신이 시체들로부터 빼낸 것들을 볼 수 있겠소?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20520 /* ~"질문할 것이 없소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #20444 /* ~"시체에서 이빨과 실을 뽑아야 해... 에, 마타, 좀 도와줘... 난 널 전부터 도와주었잖아... 그런 말투로 말하지 말라고... 그래, 이빨과 실을 뽑는 것 말이야. 그리고 안에 들은 물건들도..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20521 /* ~"속의 내용물?"~ */ EXTERN ~DMORTE~ 208
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20522 /* ~"속의 내용물?"~ */ GOTO 31
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20523 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20524 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~~ THEN REPLY #20525 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20526 /* ~"어... 좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #20445 /* ~"물건들."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 209
END

IF ~~ THEN BEGIN 16 // from: 13.2 13.3 14.2 14.3 30.2 30.3 31.0 31.1
  SAY #20446 /* ~"그것들을 치우는 게 여기서 내가 하는 일이야" 그녀는 자기 머리를 긁는다. "그래, 마타, 우리는... 꿰맨 실과 이빨은 귀중하기 때문에 돈이 될 수가 있어. 그들은 마타에게 '우리가 가져온 시체를 발가벗겨'라고 말해. '이빨, 실, 그리고 시체 안에 든 것들을 깨끗하게 다 뽑아 내, 그 다음에 시체를 더스티에게 팔 테니까."~ */
  IF ~~ THEN REPLY #20527 /* ~"시체를 더스티에게 판다...?"~ */ GOTO 17
  IF ~~ THEN REPLY #20528 /* ~"누가 당신에게 이런 일을 하라고 시켰소?"~ */ GOTO 19
  IF ~~ THEN REPLY #20529 /* ~"시체에서 어떤 것들을 찾아내오?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20530 /* ~"당신은 시체 속에 있는 물건들을 찾소? 내 몸을 파헤쳐 그 안에 무슨 물건은 없는지 볼 수 있겠소?"~ */ GOTO 22
  IF ~  !NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20531 /* ~"당신은 시체 속에 있는 물건들을 찾소? 내 몸을 파헤쳐 그 안에 무슨 물건은 없는지 볼 수 있겠소?"~ */ GOTO 23
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20532 /* ~"당신은 시체를 꿰맨 실들을 뜯어내고 있소... 당신으로부터 바늘과 실을 좀 살 수 있겠소?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20533 /* ~"그 밖에 당신이 시체들로부터 빼낸 것들 중에 내게 팔만한 건 없소?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20534 /* ~"최근에 당신이 시체들로부터 빼낸 것들을 볼 수 있겠소?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20535 /* ~"내가 여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20536 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20537 /* ~"어... 좋소. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20447 /* ~마타는 얼굴을 찌푸린다. "우리가 그것들을 팔 거라고 얘기하지 않았어, 마타?" 그녀는 한층 더 얼굴을 찌푸리고 고개를 젓는다. "그래, 우린 했어, 마타. 더스티들은 시체를 사, 하지만 그 전에 우린 시체에서 챙길 건 다 챙기지."~ */
  IF ~~ THEN REPLY #20539 /* ~"누가 당신에게 시체를 약탈하라고 말했소?"~ */ GOTO 19
  IF ~~ THEN REPLY #20540 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20541 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY #20448 /* ~"물건들, 물건들..." 그녀는 한쪽 어깨만 으쓱한다. "다른 사람들이 그것들을 가져가."~ */
  IF ~~ THEN REPLY #20542 /* ~"누구?"~ */ GOTO 19
  IF ~~ THEN REPLY #20543 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20544 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1 17.0 18.0
  SAY #20449 /* ~"뚱뚱한 얼굴의 욕심꾸러기 돼지 퀸트, 그리고 절름거리는 지팡이, 지팡이를 쥐고 절름거리는 훼어라드, 파로드, 맞아, 마타?" 그녀는 기묘한 미소를 짓는다. "그래, 마타..."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #20545 /* ~"파로드? 그는 어디 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #20546 /* ~"그들은 당신이 시체에서 꺼낸 물건 들을 가지고 뭘 하오?"~ */ GOTO 21
  IF ~~ THEN REPLY #20547 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20548 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20450 /* ~마타는 어깨를 으쓱한다. "이 자는 파로드가 어디 있느냐고 묻는 거야? 그는 여기 있어. 그렇지, 마타...?" 그녀는 고개를 끄덕인다. "그래, 파로드는 여기 있어, 마타. 이 곳의 건물들 중 하나에 있어..."~ */
  IF ~~ THEN REPLY #20549 /* ~"그들은 당신이 시체에서 꺼낸 물건 들을 가지고 뭘 하오?"~ */ GOTO 21
  IF ~~ THEN REPLY #20550 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20551 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #20451 /* ~"팔아. 빛나는 걸 받고. "~ */
  IF ~~ THEN REPLY #20552 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20553 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.4 16.3 30.4
  SAY #20452 /* ~마타는 당신을 곁눈질한다. "흐음." 그러더니 고개를 끄덕인다. "마타는 할 수 있어, 그렇지, 마타?" 그래, 할 수 있어."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 210
END

IF ~~ THEN BEGIN 23 // from: 13.5 16.4 30.5
  SAY #20453 /* ~마타는 당신을 곁눈질한다. "흐음." 그러더니 고개를 끄덕인다. "마타는 할 수 있어, 그렇지, 마타?" 그래, 할 수 있어..." 그녀는 부서진 조각도를 꺼낸다. "어디? 어디..." 마타는 어디를 절개하면 제일 좋을지 당신을 자세히 살펴본다.~ */
  IF ~~ THEN REPLY #20554 /* ~"위장을 살펴봅시다..."~ */ GOTO 38
  IF ~~ THEN REPLY #20555 /* ~"내 흉곽은 어떻소...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20556 /* ~"내장을 확인하시오... 그 곳이라면 뭐가 들어있어도 놀랍지 않소."~ */ GOTO 34
  IF ~~ THEN REPLY #20557 /* ~"괜찮다면 내 두개골을 열어 보시오."~ */ GOTO 32
  IF ~~ THEN REPLY #20558 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 13
  IF ~~ THEN REPLY #20559 /* ~"어... 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #20454 /* ~"어디? 어디..." 마타는 어디를 절개하면 제일 좋을지 당신을 자세히 살펴본다.~ */
  IF ~~ THEN REPLY #20560 /* ~"위장을 살펴봅시다..."~ */ GOTO 38
  IF ~~ THEN REPLY #20561 /* ~"내 흉곽은 어떻소...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20562 /* ~"내장을 확인하시오... 그 곳이라면 뭐가 들어있어도 놀랍지 않소."~ */ GOTO 34
  IF ~~ THEN REPLY #20563 /* ~"괜찮다면 내 두개골을 열어 보시오."~ */ GOTO 32
  IF ~~ THEN REPLY #20564 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 13
  IF ~~ THEN REPLY #20565 /* ~"어... 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 32.0 33.0 34.1 38.0
  SAY #20455 /* ~당신 시력이 천천히 돌아온다... 마타가 고개를 저으며 당신 곁에 서 있는 것이 눈에 들어온다. "아무 것도 없었어. 아무 것도 없었지, 마타?" ?" 그녀는 고개를 젓는다. "아니, 아무 것도 없었어, 마타... 우린 다시 시도해야 하나?"~ */
  IF ~~ THEN REPLY #20566 /* ~"위... 위장을 살펴봅시다..."~ */ GOTO 38
  IF ~~ THEN REPLY #20567 /* ~"헉... 헉... 내 흉곽은 어떻소...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20568 /* ~"어... 어... 내장을 확인하시오... 그 곳이라면 뭐가 들어있어도 놀랍지 않소."~ */ GOTO 34
  IF ~~ THEN REPLY #20569 /* ~"그... 그... 괜찮다면 내 두개골을 열어 보시오."~ */ GOTO 32
  IF ~~ THEN REPLY #20570 /* ~"아... 아.. 아니오, 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #20571 /* ~"아... 아... 아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.7 16.5 30.7
  SAY #20456 /* ~그녀는 혼란스러워 하는 듯하다. "사? 돈-돈? 당신은 여기 물건을 가지러... 온 게 아냐? 실, 뼈, 그리고 딸랑거리는 이빨을?"~ */
  IF ~~ THEN REPLY #20572 /* ~거짓말: "그렇소, 난 그것들을 가져오기 위해 여기 왔소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_4","GLOBALLaw",-1)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Teeth",Protagonist,1,0,0)
~ GOTO 27
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20573 /* ~"아니오, 난 그것들을 가지러 이 곳에 온 것이 아니오. 하지만 당신으로부터 물건을 사고 싶소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 28
  IF ~  PartyGold(0)
~ THEN REPLY #20574 /* ~"아니오, 난 그것들을 가지러 이 곳에 온 것이 아니오. 하지만 당신으로부터 물건을 사고 싶소... 나중에 돈이 생기면. 지금은 물어볼 것들이 좀 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 13
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20575 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 13
  IF ~~ THEN REPLY #20576 /* ~"어... 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20457 /* ~"당신이 원하는 것들이야..." 그녀는 아이템들을 당신에게 넘겨준다."내가 가진 것 전부야, 전부..."~ */
  IF ~~ THEN REPLY #20577 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #20578 /* ~"고맙소... 이것들은 쓸모가 있을 것 같소. 안녕히 계시오."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #20458 /* ~그는 당신 손 안의 동전을 쳐다본다. 그녀는 그것을 어떻게 해야 할지 어리둥절해 하는 듯하다. "빛나는 것들, 것들..." 그녀는 눈살을 찌푸린다. "그들이 무엇을 원했는지 다시 말해줄래, 마타?" 그녀는 중얼거린다. "마타... 마타, 그들이 뭘 원했지?"~ */
  IF ~~ THEN REPLY #20579 /* ~"당신이 무엇을 가지고 있는지 좀 볼 수 있겠소?"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20580 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #20581 /* ~"어... 관두시오. 안녕히 계시오."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 13.6 16.8 30.6
  SAY #20459 /* ~마타는 고개를 끄덕인다. "마타의 집, 마타는 여기서 자. 당신도 여기서 자고 싶으면 자도 돼, 그래. 마타는 개의치 않을 거야... 그렇지, 마타? 그녀는 고개를 젓는다. "아니, 아나, 마타, 네가 괜찮다면 나도..."~ */
  IF ~~ THEN REPLY #20583 /* ~"좋소..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #20584 /* ~"아직은 휴식을 취하고 싶지 않소. 먼저 다른 질문들을 좀 하고 싶소..."~ */ GOTO 13
  IF ~~ THEN REPLY #20585 /* ~"잠이 필요하게 되면 다시 오리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 1.1
  SAY #20460 /* ~당신이 말을 하자 마타는 당신을 올려다본다. "그가 질문을 했어, 마타...?" 마타는 눈을 깜박인 후 얼굴을 찌푸린다. "그래, 마타, 그는 그런 말을 했어. 그는 물어볼 게 있다는 얼굴을 하고 있으니까..."~ */
  IF ~~ THEN REPLY #20586 /* ~"당신은 누구요?"~ */ GOTO 11
  IF ~~ THEN REPLY #20587 /* ~"뭘 하고 있는 거요?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20588 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20589 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20590 /* ~"내 몸을 파헤쳐 뭔가 들어있는지 볼 수 있겠소?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20591 /* ~"내 몸을 파헤쳐 뭔가 들어있는지 볼 수 있겠소?"~ */ GOTO 23
  IF ~~ THEN REPLY #20592 /* ~"여기서 휴식을 취해도 괜찮겠소?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20593 /* ~"당신은 시체를 꿰맨 실들을 뜯어내고 있소... 당신으로부터 바늘과 실을 좀 살 수 있겠소?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20594 /* ~"그 밖에 당신이 시체들로부터 빼낸 것들 중에 내게 팔만한 건 없소?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20595 /* ~"최근에 당신이 시체들로부터 빼낸 것들을 볼 수 있겠소?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20596 /* ~"질문할 것이 없소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.1
  SAY #20461 /* ~"속에 들은 물건들, 물건들... 그래, 마타?" 그녀는 고개를 끄덕인후 고개를 젓는다. "그들이 그것들을 가지게 되면, 마타, 그들이 그것들을..."~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20597 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20598 /* ~"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"~ */ JOURNAL #20538 /* ~여자 재봉사 마타의 일은 그녀에게 주어진 시체로부터 이빨을 뽑아내고 꿰맨 곳을 뜯어 값나가는 물건이 없는 지 살핀 후 다시 꿰매는 일이다. ~ */ GOTO 16
  IF ~~ THEN REPLY #20599 /* ~"알겠소... 당신에게 다른 질문을 좀 해도 괜찮겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20600 /* ~"어... 좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.3 24.3 25.3 39.3
  SAY #20462 /* ~당신은 테이블 위에 눕는다. 그리고 당신 시야에 마지막으로 들어온 것은 마타가 조각도와 나무망치를 들고 당신 곁에 서 있는 모습이다. 날카로운 소리와 함께 당신의 시야는 어두캄캄해지고 당신은 비명을 지르며 의식을 잃는다. ~ */
  IF ~~ THEN REPLY #20601 /* ~어둠 속으로 빠져든다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #20602 /* ~나는 매장된 마을의 미치광이 여자 재봉사 마타에게 내 해골 안에 뭔가 있는지 살펴봐 달라고 부탁했다. 하지만 아무 것도 나오지 않았다. ~ */ GOTO 25
END

IF ~~ THEN BEGIN 33 // from: 23.1 24.1 25.1 39.1
  SAY #20463 /* ~당신은 테이블 위에 눕는다, 그리고 마타는 조각도와 나무망치를 들고 당신 곁에 서 있다. 그녀가 당신을 흉곽을 절개하자 날카로운 소리가 난다. 그녀는 당신 폐를 뒤지고, 당신은 나오려는 비명을 간신히 억누른다... 당신은 공기를 들이마시려 하나 갑자기 감각이 마비되고 당신은 의식을 잃는다. ~ */
  IF ~~ THEN REPLY #20603 /* ~어둠 속으로 빠져든다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 23.2 24.2 25.2 39.2
  SAY #20464 /* ~당신은 테이블 위에 눕는다, 그리고 마타는 녹슨 나이프를 가지고 당신 곁에 서 있다. 그녀가 당신의 복부에 칼을 대자 당신은 찌르는 듯한 통증을 느낀다. 그녀는 마치 톱질을 하듯이 무자비하게 아래쪽으로 절개해 나가 당신의 내장들을 드러낸다. 심한 고통에도 불구하고 당신은 그녀가 콧노래를 부르며 당신 장기들을 뒤지는 모습을 엽기적인 호기심을 가지고 조용히 지켜본다. ~ */
  IF ~  Global("Marta_Ring","GLOBAL",0)
~ THEN REPLY #20604 /* ~지켜본다...~ */ GOTO 35
  IF ~  Global("Marta_Ring","GLOBAL",1)
~ THEN REPLY #20605 /* ~어둠 속으로 빠져든다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #20465 /* ~"아!" 마타가 피와 다른 액체가 쏟아져 나오고 있는 끈적끈적한 당신의 내장을 꺼내자 당신은 격통을 느낀다. "이걸 봐, 마타... 이걸 보라고... 보여, 보여, 여기를 자르고, 저기를 자르고..." 마타는 내장들 중 하나의 옆부분을 약간 자른다, 그러자 *땡*하고 바닥에 작은 금속성의 물체가 떨어진다. ~ */
  IF ~~ THEN REPLY #20606 /* ~"억..."~ */ DO ~SetGlobal("Marta_Ring","GLOBAL",1)
GiveItemCreate("Ring02",Protagonist,1,0,0)
GiveItemCreate("Intest",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #20607 /* ~나는 매장된 마을의 미치광이 여자 재봉사 마타에게 내 해골 안에 뭔가 있는지 살펴봐 달라고 부탁했다. 그녀는 반지를 하나 찾아냈고... 난 창자 한 벌 더 생겼다. ~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #20466 /* ~그 다음에 마타는 그 수프 같은 덩어리를 당신의 몸통에 다시 집어넣는다, 그리고 몸을 구부려 그 물건을 줍는다. "예쁘지, 예쁘지, 마타?" 그녀는 고개를 끄덕인다. "그래, 마타, 사람은 그런 걸 삼키면 안돼, 안돼..."~ */
  IF ~~ THEN REPLY #20608 /* ~"고... 고맙소... 다른... 건... 없었소?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 13.8 16.6 30.8
  SAY #20467 /* ~"더 이상은 없지, 마타, 그렇지?" 그녀는 고개를 끄덕인다. "지난 번에 다 꺼냈어. 더 이상은 없어..."~ */
  IF ~~ THEN REPLY #20609 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #20610 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.0 24.0 25.0 39.0
  SAY #20468 /* ~당신은 테이블 위에 눕는다, 그리고 마타는 녹슨 나이프를 가지고 당신 곁에 서 있다. 그녀가 당신의 복부에 칼을 대자 당신은 찌르는 듯한 통증을 느낀다. 그녀는 마치 톱질을 하듯이 무자비하게 아래쪽으로 절개해 나가 당신의 내장들을 드러낸다. 심한 고통에도 불구하고 당신은 그녀가 콧노래를 부르며 당신 장기들을 뒤지는 모습을 엽기적인 호기심을 가지고 조용히 지켜본다. ~ */
  IF ~~ THEN REPLY #20611 /* ~지켜본다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0
  SAY #45007 /* ~마타는 고개를 젓는다. "더는 아무 것도 없어, 아무 것도. 그렇지, 마타? 다른 곳을 뒤져 볼까, 마타?"~ */
  IF ~~ THEN REPLY #45009 /* ~"위... 위... 위장을 뒤져 봅시다...~ */ GOTO 38
  IF ~~ THEN REPLY #45010 /* ~"헉... 헉... 내 흉곽은 어떻소...?"~ */ GOTO 33
  IF ~~ THEN REPLY #45011 /* ~"어... 어... 내장을 다시 한 번만 확인하시오..."~ */ GOTO 34
  IF ~~ THEN REPLY #45012 /* ~"그... 그... 괜찮다면 내 두개골을 열어 보시오."~ */ GOTO 32
  IF ~~ THEN REPLY #45013 /* ~"아... 아.. 아니오, 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #45014 /* ~"아... 아... 아직 아니오. 안녕히 계시오."~ */ EXIT
END
