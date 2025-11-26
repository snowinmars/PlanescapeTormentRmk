// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANTUOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANTUOK~

IF ~  Global("Current_Area","GLOBAL",1600)
Global("AR0508_Visited","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25632 /* ~당신 앞에는 반은 인간이고 반은 쥐인 잡종이 서 있다. 그의 빨간 눈은 교활한 광채를 띠고 있으며, 그의 입에서 나오는 목소리는 그가 간사하고 달변임을 말해주고 있다. " 그래, 양족 동물이 스스로 여럿이-모여-하나의 홀로 찾아 왔군. 무엇을 원하나, 인간, 그리고 어디로 가려 하는가? 조심해라, 침입자, 그리고 이 만투옥에게 진실을 말하라."~ */
  IF ~~ THEN REPLY #25665 /* ~"막 떠나려고 하고 있었소."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #25666 /* ~"나는 매장된 마을에서 와서 이 곳을 탐험하고 있었소."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #25667 /* ~"나는 당신을 만나러 왔소."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #25668 /* ~"내가 어디서 와 어디로 가는지는 내 문제요."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #25669 /* ~"당신은 무엇이오?"~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25634 /* ~"아니, 양족 동물. 이제 내 질문에 대답해. 뭘 원하나, 양족 동물, 그리고 어디로 가려는 거지?"~ */
  IF ~~ THEN REPLY #25670 /* ~"나는 매장된 마을에서 와서 이 곳을 탐험하고 있었소."~ */ GOTO 2
  IF ~~ THEN REPLY #25671 /* ~"내가 어디서 와 어디로 가는지는 내 문제요."~ */ GOTO 8
  IF ~~ THEN REPLY #25672 /* ~"당신은 무엇이오?"~ */ GOTO 9
  IF ~~ THEN REPLY #25673 /* ~"난 떠나겠다고 했소. 안녕히 계시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #25637 /* ~"아, 마을이라. 내 기억을 새롭게 해줘... 그래, 넝마주이들 말인가? 쓰레기라도 줏으러 왔나?"~ */
  IF ~~ THEN REPLY #25674 /* ~"그렇소, 하지만 이 똥통에서는 아무 것도 건질 게 없는 것 같소."~ */ GOTO 3
  IF ~~ THEN REPLY #25675 /* ~"아니오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25638 /* ~"쓸모가 있는 건 없다? 우리의 아름다운 집에서 배설물이라곤 너뿐이자. 하지만 불행히도 우리는 악취를 견디며 살아가는 법을 배워야 할 것 같군. 너는 다시는 일광을 보지 못할 것이다."~ */
  IF ~~ THEN REPLY #25676 /* ~"그건 무슨 뜻이오?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25677 /* ~"당신은 날 협박하려는 거요?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25678 /* ~"그러리다."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #25639 /* ~"네 대답이 그렇다면 이 만투옥도 물어봐야겠다: 넌 왜 여기 온 거지? 길을 계속해서 헤매다 보니 여기 오게 된 건가? 여럿이-모여-하나를 만나러 온 건가? 아니면 자신이 왜 여기 왔는지도 모르는 건가? 넌 내게 설명을 해야만 해."~ */
  IF ~~ THEN REPLY #25679 /* ~"그건 실수의 연속이었소."~ */ GOTO 5
  IF ~~ THEN REPLY #25680 /* ~"나는 여럿이-모여-하나를 만나고자 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25681 /* ~"여럿이-모여-하나가 누구요?"~ */ GOTO 9
  IF ~~ THEN REPLY #25682 /* ~"나는 당신을 만나러 왔소."~ */ GOTO 14
  IF ~~ THEN REPLY #25683 /* ~"난 이 곳에는 아무런 용건도 없소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 17.0
  SAY #25640 /* ~"계속해서 길을 헤매다 여기 오게 됐다고? 안됐군, 한 번 덜 헤매서 여기 오지 않았더라면 좋았을 텐데."~ */
  IF ~~ THEN REPLY #25684 /* ~"무슨 뜻이오?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25685 /* ~"떠남으로서 그걸 정정하겠소..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 17.1
  SAY #25642 /* ~"말을 해라, 양족 동물, 그럼 네 메시지를 여럿이-모여-하나에게 전달할 테니."~ */
  IF ~~ THEN REPLY #25686 /* ~"알겠소."~ */ GOTO 7
  IF ~~ THEN REPLY #25687 /* ~"난 그렇게 생각하지 않소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #25645 /* ~만투옥은 몸을 기울여 귀를 당신 쪽으로 가져다 댄다.~ */
  IF ~~ THEN REPLY #25688 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25689 /* ~"난 아무런 용건도 없소."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25690 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25691 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25692 /* ~"침묵의 왕은 공격하기에는 너무나도 강대하오. 죽은 자의 왕국 근처에는 얼씬도 하지 마시오, 아니면 시체들이 당신을 파멸시킬 테니."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.1 1.3 4.4 7.1 17.3 18.2 20.1
  SAY #25646 /* ~그는 코웃음친다. "그런가. 그렇다면 넌 그 답에 대해 생각해볼 시간을 오랫동안 가지게 될 거다." 그가 손을 들자 그의 손가락으로부터 연기가 나온다.~ */
  IF ~~ THEN REPLY #25693 /* ~"대체 뭔...?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 1.2 4.2 14.1 15.4 17.2
  SAY #25647 /* ~"넌 정말 무지하군, 그렇지? 네가 여기 실수로 온 건 명백하군. 하지만 넌 여기서 떠날 수 없다. 그가 손을 들자 그의 손가락으로부터 연기가 나온다.~ */
  IF ~~ THEN REPLY #25695 /* ~"말로 해결합시다..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25696 /* ~"뭘 하고 있는 거요?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 15.0 15.1 20.2 20.3
  SAY #25650 /* ~그는 잠시 멈춘다. 그는 꼬리를 흔들며 당신을 잠시 바라본다. "침묵의 왕이 언데드들의 허풍에 불과하다고 말한 게 틀림없나? 그래, 넌 분명히 그렇게 말했어." 그는 잠시 다른 쪽을 보더니 다시 승리에 도취된 표정으로 고개를 돌린다. "이제 시체들이 영원히 잠들 날이 멀지 않았군, 그리고 우리는 그들의 살로 배를 채울 것이다..." 그는 갑자기 의심에 찬 눈초리로 당신을 본다. "...이게 속임수가 아니라면. 여럿이-모여-하나를 만나 얘기를 해, 알았나?"~ */
  IF ~~ THEN REPLY #25697 /* ~"아, 이제는 여럿이-모여-하나와 얘기를 할 수 있겠소?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #25652 /* ~"그래. 이걸 명심해, 그들은 이미 네가 한 말을 알고 있어. 잘 가. 또 만나자고."~ */
  IF ~~ THEN REPLY #25698 /* ~"그럼 안녕히 계시오."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 15.2 20.4
  SAY #25654 /* ~만투옥은 쉿 소리를 낸다.. "그가 너무 강하다고? 그가 힘을 실제로 사용하는 것을 봤나? 흥! 그럼 여럿이-모여-하나에게 가서 얘기를 해. 이런 나쁜 소식은 네가 직접 전하라고! 날 따라와."~ */
  IF ~~ THEN REPLY #25699 /* ~"난 그렇게 생각하지 않소."~ */ GOTO 13
  IF ~~ THEN REPLY #25700 /* ~"갑시다."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25655 /* ~"그건 부탁이 아니었어." 그가 손을 들자 그의 손가락으로부터 연기가 나온다. 잠시 사방이 어두컴컴해진다.~ */
  IF ~~ THEN REPLY #25701 /* ~"대체 뭔...?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 4.3
  SAY #25656 /* ~"*날* 보러 왔다고? 네게 이런 헛수고를 시킨 게 누구지?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #25702 /* ~"소에고."~ */ DO ~SetGlobal("Know_Soego_Rats","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25703 /* ~"아무도 아니오."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25704 /* ~"아무도 아니오. 나는 그냥 당신이 지위가 있는 사람이라고 생각했었소."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #25657 /* ~그는 당신을 평가하려고 말을 멈춘다. "왜 먼지와 재의 사제가 늘 쓰는 방법을 쓰지 않았지? 왜 쥐의 일족인 소에고가 밀사를 보내지 않았지? 흥. 상관없어. 내게 메시지를 전하고 꺼져."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25705 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25706 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25707 /* ~"침묵의 왕은 공격하기에는 너무나도 강대하오. 죽은 자의 왕국 근처에는 얼씬도 하지 마시오, 아니면 시체들이 당신을 파멸시킬 테니."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
  IF ~~ THEN REPLY #25708 /* ~"그는 내게 여럿이-모여-하나하고만 얘기하라고 했소."~ */ GOTO 16
  IF ~~ THEN REPLY #25709 /* ~"실은 전할 말이 없소."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #25658 /* ~위어랫은 격분하여 꼬리를 흔든다. "좋아. 여럿이-모여-하나와 얘기를 하게 해주지. 거짓말 할 생각은 하지마, 양족 동물. 여럿이-모여-하나는 네 목소리를 듣는 것만큼 쉽게 네 마음을 읽을 수 있으니까."~ */
  IF ~~ THEN REPLY #25710 /* ~"염두에 두도록 하겠네."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #25659 /* ~"네 혀는 찬사와 거짓말을 번갈아 가며 하고 있군. 그건 바로 네가 사기꾼이란 증거지. 정직하게 말하지 않으면 국물도 없을 줄 알아. 여기 온 용건은 뭐고 대체 뭘 원하는 거지? 계속 헤매다가 여기까지 오개 된 건가? 여기 온 용건이 뭐야?"~ */
  IF ~~ THEN REPLY #25711 /* ~"그건 실수의 연속이었소."~ */ GOTO 5
  IF ~~ THEN REPLY #25712 /* ~"나는 여럿이-모여-하나를 만나고자 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25713 /* ~"여럿이-모여-하나가 누구요?"~ */ GOTO 9
  IF ~~ THEN REPLY #25714 /* ~"난 이 곳에는 아무런 용건도 없소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 6.1
  SAY #25660 /* ~"그리고 왜지? 여럿이-모여-하나에게 무슨 용건인가?"~ */
  IF ~~ THEN REPLY #25715 /* ~"나는 새로운 소식을 가져왔소."~ */ GOTO 19
  IF ~~ THEN REPLY #25716 /* ~"내 용건은 당신이 알 바가 아니오."~ */ GOTO 20
  IF ~~ THEN REPLY #25717 /* ~"특별한 용건은 없소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #25661 /* ~그는 입을 열어 욕설을 퍼부으려고 하다가 갑자기 무슨 메시지라도 듣는 듯 꿈꾸는 듯한 눈빛을 하면서 고개를 한쪽으로 기울인다. 잠시 후 그는 다시 당신 쪽으로 시선을 돌리고 바닥에 침을 뱉는다: "네가 가져온 소식은 가치가 있는 것이어야 할 거야, 양족 동물, 아니면 넌 역사에 남을 만한 고통을 받게 될 테니."~ */
  IF ~~ THEN REPLY #25718 /* ~"협박은 집어치우시오. 갑시다."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #25662 /* ~"나는 여럿이-모여-하나의 대변인이라고! 넌 내게 용건을 말해야 해! 그는 목소리를 낮추고 사근사근하게 말한다. "내게 말을 해야 해, 아니면... 어려움을 겪게 될 테니. 알겠어?""~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #25719 /* ~"만약 당신이 날 해치려고 한다면 여럿이-모여-하나가 당신에게 벌을 내릴 거요, 만투옥."~ */ GOTO 21
  IF ~~ THEN REPLY #25720 /* ~"실은 아무런 용건도 없소."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25721 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25722 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25723 /* ~"침묵의 왕은 공격하기에는 너무나도 강대하오. 죽은 자의 왕국 근처에는 얼씬도 하지 마시오, 아니면 시체들이 당신을 파멸시킬 테니."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #25663 /* ~이 말을 듣자 만투옥은 펄쩍 뛴 후 쉿 소리를 낸다. "더럽고 치사한 인간 같으니. 나 만투옥을 위협하고 무시하다니. 그의 직무를 방해하고 가시 돋친 협박을 하다니. 넌 오늘 적을 하나 만들었다, 인간. 여럿이-모여-하나에게 가서 네 할 말을 해라."~ */
  IF ~~ THEN REPLY #25724 /* ~"고맙소. 당신은 큰 도움이 되었소."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #29320 /* ~반은 인간, 반은 쥐인 괴물이 보인다. 그의 빨간 눈은 교활함으로 번득이고 있으며, 그의 입에서 나오는 목소리는 간사스럽다. "그래... 양족 동물 한 마리가 로타의 부하들의 둥지로 살그머니 들어왔군. 뭘 원하지, 그리고 어디로 가려는 건가? 조심해라, 침입자, 그리고 이 만투옥에게 진실을 말하라."~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29351 /* ~"나는 로타를 위해 심부름을 하고 있소. 나는 해골을 회수하려고 하오."~ */ GOTO 23
  IF ~~ THEN REPLY #29352 /* ~"당신은 누구요?"~ */ GOTO 27
  IF ~~ THEN REPLY #29353 /* ~"나는 이 곳의 책임자를 찾고 있소."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29354 /* ~"나는 내 친구 모트를 찾고 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #29355 /* ~"나는 그냥 이 주변을 둘러보고 있을 뿐이오."~ */ GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 22.0 52.0
  SAY #29321 /* ~당신이 로타에 대해 언급하자 쥐 인간은 고개를 홱 숙이고 쉿 소리를 내며 당신을 야유한다. "우리 일족에게 시켰던 일을 털도 없는 자에게 시켜? 말도 안돼!"~ */
  IF ~~ THEN REPLY #29356 /* ~"그는 당신이 너무 쓸모가 없어 믿을 수 있는 새로운 사람이 필요하다고 했소. 그게 바로 나요."~ */ GOTO 24
  IF ~~ THEN REPLY #29357 /* ~"그래도."~ */ GOTO 24
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29358 /* ~"치즈를 좀 먹겠소, 만투옥?" 그에게 독을 넣은 치즈를 준다.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29363 /* ~"치즈를 좀 먹겠소, 만투옥?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #29322 /* ~만투옥은 또 당신을 야유한다. "그럼 가, 그리고 해골을 손에 넣으면 돌아오라고." 그는 잠시 멈추고 의심스러운 눈초리로 당신을 본다. "아직 해골이 수중에 없는 거야?"~ */
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29364 /* ~그에게 독을 넣은 치즈를 준다. "치즈를 좀 먹겠소, 만투옥?"~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29365 /* ~그에게 치즈를 준다. "치즈를 좀 먹겠소, 만투옥?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
  IF ~~ THEN REPLY #29366 /* ~"실은 그렇소."~ */ GOTO 36
  IF ~~ THEN REPLY #29367 /* ~"아직 아니오. 하지만 곧 가지고 돌아올 것이오."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.0 36.8 38.8 41.1 42.3
  SAY #29323 /* ~쥐 인간은 당신이 내민 손에서 독이 든 치즈를 낚아챈다, 그리고 의심스러운 눈초리로 당신을 바라보면서 조심스럽게 치즈의 냄새를 맡는다. 그가 치즈를 먹자 그의 몸이 경련을 일으킨다. 그는 바닥에 쓰러져 씰룩거린다, 그리고 그의 입으로부터 한 가닥의 피가 섞인 침이 흘러나온다. "악..."~ */
  IF ~  NumTimesTalkedTo(0)
~ THEN REPLY #29368 /* ~"안녕히 계시오, 쥐 인간."~ */ DO ~AddexperienceParty(2000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
  IF ~  NumTimesTalkedToGT(0)
~ THEN REPLY #29369 /* ~"지옥에서 썩게, 만투옥."~ */ DO ~AddexperienceParty(5000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.1
  SAY #29324 /* ~쥐 인간은 당신이 내민 손에서 든 치즈를 낚아챈다, 그리고 수상쩍다는 듯 냄새를 맡는다. 그는 치즈에 고개를 파묻은 채 말한다. "가라, 외부인. 얘기는 네가 돌아오면 더 하자." 그는 치즈를 정신없이 갉아먹는다. ~ */
  IF ~~ THEN REPLY #29370 /* ~"즐기시오, 만투옥."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY #29325 /* ~나는 만투옥이다. 나는 여럿이-모여-하나의 대변인이자, 뼈들의 지배자에서 로타의 사자다. 여기서 질문하는 건 나다. 여기서 뭘 하려는 거지?"~ */
  IF ~~ THEN REPLY #29371 /* ~"여럿이-모여-하나가 누구요?"~ */ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29372 /* ~"로타가 누구요?"~ */ GOTO 30
  IF ~~ THEN REPLY #29373 /* ~"당신은 그들 양쪽 모두를 위해 일하오? 그건 배신 행위가 아니오?"~ */ GOTO 37
  IF ~~ THEN REPLY #29374 /* ~"나는 그냥 이 주변을 둘러보고 있을 뿐이오."~ */ GOTO 33
  IF ~~ THEN REPLY #29375 /* ~"나는 이 곳의 주인을 찾고 있소."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29376 /* ~"나는 내 친구 모트를 찾고 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #29377 /* ~"당신과는 상관없는 일이오."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.6 30.3 37.3
  SAY #29326 /* ~"여기서 일어나는 일들은 모두 내 소관이다. 말을 하지 않으며 내 일족이 네 시체를 영원토록 뜯어먹을 거다."~ */
  IF ~~ THEN REPLY #29378 /* ~"나는 그냥 이 주변을 둘러보고 있을 뿐이오."~ */ GOTO 33
  IF ~~ THEN REPLY #29379 /* ~"나는 이 곳의 주인을 찾고 있소."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29380 /* ~"나는 내 친구 모트를 찾고 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #29381 /* ~"난 당신이 상관할 바가 아니라고 분명히 말했소."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #29327 /* ~만투옥은 입을 꽉 다물고 혼자서 뭐라고 찍찍거린다. "좋다, 그럼. 내가 네 피를 맛보고 네 살코기의 비밀을 알아내도록 하지. 쥐들아! 나를 따르라." 그가 공격을 한다. ~ */
  IF ~~ THEN REPLY #29382 /* ~"자, 만투옥."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 27.1
  SAY #29328 /* ~"이 곳에서는 내가 질문을 한다, 살덩이. 난 네 질문에 대답 따윈 하지 않겠다. 넌... 뭘... 원하지?"~ */
  IF ~~ THEN REPLY #29383 /* ~"나는 그냥 이 주변을 둘러보고 있을 뿐이오."~ */ GOTO 33
  IF ~~ THEN REPLY #29385 /* ~"나는 이 곳의 주인을 찾고 있소."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29386 /* ~"나는 내 친구 모트를 찾고 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #29387 /* ~"당신과는 상관없는 일이오."~ */ GOTO 28
END

IF ~~ THEN BEGIN 31 // from: 22.2 27.4 28.1 30.1 37.1 52.1
  SAY #29329 /* ~"로타를 만나러 왔나? 하지만 너는 그의 서재에서 나왔잖아? 당장 떠나, 그럼 못 본 걸로 해줄 테니."~ */
  IF ~~ THEN REPLY #29388 /* ~"알겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.3 27.5 28.2 30.2 37.2 52.2
  SAY #29330 /* ~"수다쟁이 해골 말인가? 흥! 시간 낭비로군. 주인님과 네 친구를 돌려받는 일에 대해 협정은 맺었겠지? 그 이외에 그를 되찾을 방도는 없으니까." ~ */
  IF ~~ THEN REPLY #29389 /* ~"명심하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 22.4 27.3 28.0 30.0 37.0 52.3
  SAY #29331 /* ~"그건 말도 안 된다. 네가 우리 일족의 소굴에 온 목적이 분명히 있을 거다."~ */
  IF ~~ THEN REPLY #29390 /* ~"그럼 난 떠나겠소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29332 /* ~"그래. 넌 그래야 해. 돌아오면 국물도 없을 줄 알라고. ~ */
  IF ~~ THEN REPLY #29391 /* ~"뭐든 간에. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #29333 /* ~만투옥은 당신을 조심스럽게 살피면서 할 말을 생각한다. "내가 네가 한 말을 잊을 거라고는 생각하지 마라, 인간. 원한다면 올라가서 주인님을 만나라, 그리고 네가 죽는 날까지 날 감시하는 눈들이 있을 거라는 사실을 잊지 마라." 그는 옆으로 비켜선다. ~ */
  IF ~~ THEN REPLY #29392 /* ~"염두에 두도록 하겠소."~ */ EXIT
END

IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN BEGIN 36 // from: 24.2
  SAY #29334 /* ~"그래 주인님이 원하는 특정한 해골을 가져왔나?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29393 /* ~"나는 해골을 가져왔소."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29394 /* ~"그렇소, 한 스켈레톤으로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29395 /* ~"그렇소, 한 좀비로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29396 /* ~"그렇소, 한 굴로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29397 /* ~"그렇소, 한 위어랫으로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29398 /* ~"그렇소, 오래 전에 죽은 한 스켈레톤으로부터."~ */ GOTO 41
  IF ~~ THEN REPLY #29399 /* ~"아직 아니오."~ */ GOTO 43
  IF ~~ THEN REPLY #29400 /* ~"내 앞에서 비키시오, 만투옥, 아니면 당신을 지금 선 자리에서 죽일 테니."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29401 /* ~"치즈를 좀 먹겠소, 만투옥?" 그에게 독을 넣은 치즈를 준다.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29402 /* ~"치즈를 좀 먹겠소, 만투옥?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY #29335 /* ~"그럴 필요가 있나? 주인님은 강대한 마력을 지니고 있고, 여럿이-모여-하나는 이 도시의 비밀을 알고 있지. 아마 언젠가는 내가 그 둘을 대립시킴으로서 어부지리를 얻을 수 있을지도 모르지. 아니면 중재자 역할을 할 수도 있고. 여럿이-모여-하나는 로타와 협력하는 데 관심이 있지... 그리고 매장된 마을 주민들을 수인화시키는 일은 로타와 여럿이-모여-하나의 세력권을 향상시키는 데 도움이 될 수가 있다. 모두 득을 보는 거지, 그렇게 생각하지 않나? 그건 그렇고... 네가 여기 온 목적은 뭐지?"~ */
  IF ~~ THEN REPLY #29403 /* ~"나는 그냥 이 주변을 둘러보고 있을 뿐이오."~ */ GOTO 33
  IF ~~ THEN REPLY #29404 /* ~"나는 이 곳의 주인을 찾고 있소."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29405 /* ~"나는 내 친구 모트를 찾고 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #29406 /* ~"당신과는 상관없는 일이오."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 36.9 41.2 42.4
  SAY #29336 /* ~그는 당신 손에서 치즈를 낚아채 한 입에 삼킨다. "그 해골에 대해서 말인데, 인간, 너는 그걸 지금 가지고 있나?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29407 /* ~"나는 해골을 가져왔소."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29408 /* ~"그렇소, 한 스켈레톤으로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29409 /* ~"그렇소, 한 좀비로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29410 /* ~"그렇소, 한 굴로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29411 /* ~"그렇소, 한 위어랫으로부터."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29412 /* ~"그렇소, 오래 전에 죽은 한 스켈레톤으로부터."~ */ GOTO 41
  IF ~~ THEN REPLY #29413 /* ~"아직 아니오."~ */ GOTO 43
  IF ~~ THEN REPLY #29414 /* ~"내 앞에서 비키시오, 만투옥, 아니면 당신을 지금 선 자리에서 죽일 테니."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29415 /* ~"치즈를 조금 더 먹겠소, 만투옥?" 그에게 독을 넣은 치즈를 준다.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0 38.0
  SAY #29337 /* ~"그게 주인님이 네게 가져오라고 시킨 건가?"~ */
  IF ~~ THEN REPLY #29416 /* ~"그렇소."~ */ GOTO 41
  IF ~~ THEN REPLY #29417 /* ~"아니오."~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #29338 /* ~만투옥은 입술을 비죽거린다. "그럼 그걸 주인님에게 가져가시지. 아마 네가 돌아온 걸 알면 무척 기뻐할 테니."~ */
  IF ~~ THEN REPLY #29418 /* ~"고맙소, 만투옥."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1 36.2 36.3 36.4 36.5 38.1 38.2 38.3 38.4 38.5 39.0
  SAY #29339 /* ~"그걸 내게 줘, 그럼 내가 주인님에게 가져갈 테니. 넌 더 이상 필요가 없다."~ */
  IF ~~ THEN REPLY #29419 /* ~"아니, 내가 그에게 직접 전해 주겠소."~ */ GOTO 42
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29420 /* ~"치즈를 좀 먹겠소, 만투옥?" 그에게 독을 넣은 치즈를 준다.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29421 /* ~"치즈를 좀 먹겠소, 만투옥?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29422 /* ~그에게 이름 없는 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29423 /* ~그에게 하그림의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29424 /* ~그에게 썩은 메리의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29425 /* ~그에게 아카스트의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29426 /* ~그에게 소에고의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29427 /* ~그에게 침묵의 왕의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29340 /* ~"오해를 한 모양이군..." 만투옥은 손을 쥐었다 폈다 하면서 꼬리를 흔들어 대기 시작한다. "그건 부탁이 아니었다. 해골은 내봐라. 우리는 다른 곳도 아닌 여기서... 문제가 생기는 건 원치 않는다, 양족 동물. 이 곳에서 문제가 생기면 아마 너라도 감당하기가 쉽지 않을 거다."~ */
  IF ~~ THEN REPLY #29428 /* ~"당신은 그 한심한 병 때문에 귀까지 나빠진 모양이군. 난 그걸 내가 로타에게 직접 주겠다고 했소."~ */ GOTO 48
  IF ~~ THEN REPLY #29429 /* ~"난 내가 로타에게 해골을 직접 전하겠다고 분명히 말했소."~ */ GOTO 47
  IF ~~ THEN REPLY #29430 /* ~"비키지 않으면 당신이 지금 있는 자리에서 당신을 죽이겠소."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29431 /* ~"치즈를 좀 먹겠소, 만투옥?" 그에게 독을 넣은 치즈를 준다.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29432 /* ~"치즈를 좀 먹겠소, 만투옥?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #29433 /* ~"로타는 내게 안전한 통행을 약속했소. 만약 당신이 날 막는다면 그가 그 일에 대해 듣게 될 거요 - 나로부터, 또는 만약 당신이 무슨 수를 써서라도 날 죽였을 경우에는 내 해골로부터."~ */ GOTO 45
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29434 /* ~그에게 이름 없는 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29435 /* ~그에게 하그림의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29436 /* ~그에게 썩은 메리의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29437 /* ~그에게 아카스트의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29438 /* ~그에게 소에고의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29439 /* ~그에게 침묵의 왕의 해골을 준다: "그럼 여기 있소. 이 해골을 가져가시오."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.6 38.6
  SAY #29341 /* ~"그럼 가서 가져와라, 양족 동물, 그리고 그걸 찾기 전에는 돌아오지 마라. 주인님을 기다리게 하지 않는 게 좋을 거다."~ */
  IF ~~ THEN REPLY #29440 /* ~"나는 그를 더 이상 기다리게 하고 싶지 않소."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 38.7 42.2
  SAY #29342 /* ~"아니, 괴물 인간, 오늘 여기서 죽을 자는 내가 아니다. 나는 네 죽어서 차가워진 손으로부터 주인님이 원하는 해골을 취할 것이다."~ */
  IF ~~ THEN REPLY #29441 /* ~"어디 해보시오."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #29343 /* ~"그럼 나는 널 죽이고 네 해골과 유해를 아무도 찾지 못할 곳에 매장해 버려야겠다."~ */
  IF ~~ THEN REPLY #29442 /* ~"해보시오, 만투옥."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.3 41.4 41.5 41.6 41.7 41.8 42.6 42.7 42.8 42.9 42.10 42.11
  SAY #29344 /* ~만투옥은 해골을 받아서 세밀하게 냄새를 맡는다. "지하 묘지에는 이런저런 장소들이 많다, 그렇지 않나, 양족 동물? 사람을 가두어도 그 비명이 밖으로 새어나오지 않는 장소들이. 너는 그런 곳들 중 하나로 끌려가 영원히 고통받도록 내버려질 것이다." 그는 동료 위어랫들을 향해 고개를 돌린다. "저 양족 동물을 죽을 때까지 찔러. 그리고는 놈의 시체를 지하 묘지로 가져가서 산 채로 매장하라고." ~ */
  IF ~~ THEN REPLY #29443 /* ~"이 쥐새끼..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY #29345 /* ~"그럼 선택의 여지가 없군" 그는 동료 위어랫들을 향해 고개를 돌린다. "저 양족 동물을 죽을 때까지 찔러. 그리고는 놈의 시체를 지하 묘지로 가져가서 산 채로 매장하라고." ~ */
  IF ~~ THEN REPLY #29444 /* ~"이 쥐새끼..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.0
  SAY #29346 /* ~"그건 질병이 아니라 축복이다! 나는 인간보다는 시체에 가까운 너 따위보다는 훨씬 위대한 존재다!"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #29445 /* ~"내 상급자로서 당신의 특권은 하수도에서 웅크리고, 살기 위해 쓰레기와 그리고 때때로 시체를 먹으며, 그리고 찬란한 넝마를 입고 더러운 꼬리를 오물 속에서 질질 끄는 거요? 당신은 인간이 되려고 절박하게 몸부림치는 쥐새끼에 불과하오. 한심하군."~ */ GOTO 49
  IF ~~ THEN REPLY #29446 /* ~"당신은 나와 동등한 자가 아니오."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29347 /* ~당신이 말을 하자 만투옥의 눈은 분노로 불타오른다. 그는 아무 말도 없이 당신에게 달려든다. ~ */
  IF ~~ THEN REPLY #29447 /* ~"당신과 당신 친구들이 함께 있는 것보다는 당신 혼자만 있는 편이 낫지..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #29348 /* ~"아니, 우리는 너보다 우월한 존재다. 우리는 육식 동물이다. 우리는 양족 동물을 사냥한다. 넌 우리 먹이에 불과하다."~ */
  IF ~~ THEN REPLY #29448 /* ~"당신은 내 연습용 표적에 불과해."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29349 /* ~그는 동료 위어랫들을 향해 고개를 돌린다. "저 양족 동물을 쓰러질 때까지 찔러. 그리고는 놈을 지하 묘지로 가져가서 매장하라고. 놈이 매장된 채 영생을 보내도록."~ */
  IF ~~ THEN REPLY #29449 /* ~"어디 당신이 하는 걸 한 번 봅시다..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedToGT(0)
~ THEN BEGIN 52 // from:
  SAY #29350 /* ~"돌아왔군, 괴물 인간. 뭘 원하지?"~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29450 /* ~"나는 로타를 위해 심부름을 하고 있소. 나는 해골을 회수하려고 하오."~ */ GOTO 23
  IF ~~ THEN REPLY #29451 /* ~"나는 이 곳의 책임자를 찾고 있소."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29452 /* ~"나는 내 친구 모트를 찾고 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #29453 /* ~"나는 그냥 이 주변을 둘러보고 있을 뿐이오."~ */ GOTO 33
END
