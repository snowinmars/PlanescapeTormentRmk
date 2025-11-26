// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BMORTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BMORTE~

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31485 /* ~"내게 말 몇 마디 한다고 해서 손해 볼 건 없잖아, 휜들링."~ [MRT478] */
  IF ~~ THEN EXTERN ~DANNAH~ 289
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61707 /* ~"안나, 꼬리 좀 그만 흔들 수 없어? 짜증난다고."~ [MRT476A] */
  IF ~~ THEN EXTERN ~DANNAH~ 290
END

IF ~~ THEN BEGIN 2 // from:
  SAY #61709 /* ~"그럼 아예 날려보내라고."~ [MRT476B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #61710 /* ~"이봐, 안나... 그 꼬리는 위에까지 올라가?"~ [MRT479A] */
  IF ~~ THEN EXTERN ~DANNAH~ 291
END

IF ~~ THEN BEGIN 4 // from:
  SAY #61712 /* ~"'그래... 네 골통 속으로 들어가 뇌를 파낼 정도로.'"~ [MRT479B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #61713 /* ~"휜들링, 그 악센트는 출처가 대체 어디야?~ [MRT544A] */
  IF ~~ THEN EXTERN ~DANNAH~ 292
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61714 /* ~"신경 쓸 것 없어."~ [MRT544B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",4)
~ THEN BEGIN 7 // from:
  SAY #61715 /* ~"그래, 휜들링, 날 네 무릎에 앉도록 해주고 내게 얘기나 좀 들려 줄래?"~ [MRT477A] */
  IF ~~ THEN EXTERN ~DANNAH~ 293
END

IF ~~ THEN BEGIN 8 // from:
  SAY #61716 /* ~"그럼 난 그냥 여기 떠서 심통부리기로 하지."~ [MRT477B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",5)
~ THEN BEGIN 9 // from:
  SAY #61717 /* ~"너는 늘 그렇게 불친절해?"~ [MRT480] */
  IF ~~ THEN EXTERN ~DANNAH~ 294
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",6)
~ THEN BEGIN 10 // from:
  SAY #61718 /* ~"너는 정말 역겨운 시체 도둑이야. 존경스럽군."~ [MRT542A] */
  IF ~~ THEN EXTERN ~DANNAH~ 295
END

IF ~~ THEN BEGIN 11 // from:
  SAY #61719 /* ~"그래, 내 몸을 찾을 수 있으면 어디 해봐."~ [MRT542B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",7)
~ THEN BEGIN 12 // from:
  SAY #61720 /* ~"그래, 휜들링, 네 몸의 마족 부위는 꼬리 뿐이야?"~ [MRT549A] */
  IF ~~ THEN EXTERN ~DANNAH~ 296
END

IF ~~ THEN BEGIN 13 // from:
  SAY #61721 /* ~"넌 마족의 입도 가지고 있는 것 같군."~ [MRT549B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",8)
~ THEN BEGIN 14 // from:
  SAY #61722 /* ~"이봐, 휜들링, 넌 괜찮아... 뭐, 늘 밴쉬처럼 비명을 질러대지 않는다면 말이지만."~ [MRT541A] */
  IF ~~ THEN EXTERN ~DANNAH~ 297
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61723 /* ~"아... 사랑에 빠진 것 같아."~ [MRT541B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",9)
~ THEN BEGIN 16 // from:
  SAY #61724 /* ~"상황이 더 나빠지면 난 아예 레이디 오브 페인에게 독설을 퍼붓겠어."~ [MRT553A] */
  IF ~~ THEN EXTERN ~DANNAH~ 298
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61725 /* ~"뭐?" *레이디 오브 페인* 말이야?  *레이디 오브 페인*에 대해 말하는 게 나쁜 건가? 왜 *레이디 오브 페인*이 우리가 자기에 대해 얘기하는 데 신경을 쓰지?"~ [MRT553B] */
  IF ~~ THEN EXTERN ~DANNAH~ 299
END

IF ~~ THEN BEGIN 18 // from:
  SAY #61726 /* ~"운명이 *날* 가지고 놀지 말아야 할 걸."~ [MRT553C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",10)
~ THEN BEGIN 19 // from:
  SAY #61727 /* ~"이봐, 휜들링, 너도 좀 더 차려 입으면 보기에 더 좋을 것 같군, 그 에메랄드 눈에 어울릴 굽이 높은 한 쌍의 장식된 부츠는 어때?" ~ [MRT546A] */
  IF ~~ THEN EXTERN ~DANNAH~ 300
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61728 /* ~"내가 너라면 특실을 빌려서 한 달은 안 나오겠어."~ [MRT546B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",11)
~ THEN BEGIN 21 // from:
  SAY #61729 /* ~"이봐, 휜들링, 넌 아버리어산 불꽃 씨앗 같아."~ [MRT547A] */
  IF ~~ THEN EXTERN ~DANNAH~ 301
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61730 /* ~"그래, 네 머리는 달콤하고 부드러운 화염 같아, 하지만 네 내면은 전갈의 독침처럼 신랄하지. ~ [MRT547B] */
  IF ~~ THEN EXTERN ~DANNAH~ 302
END

IF ~~ THEN BEGIN 23 // from:
  SAY #61732 /* ~"때로는 네가 있는 그대로의 나를 사랑해 주길 바라지." ~ [MRT542C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",12)
~ THEN BEGIN 24 // from:
  SAY #61733 /* ~"오, 신들이여, 내 후두부가 또 가렵기 시작하는군. 죽겠어."~ [MRT554A] */
  IF ~~ THEN EXTERN ~DANNAH~ 303
END

IF ~~ THEN BEGIN 25 // from:
  SAY #61734 /* ~"언젠가는 너도 긁을 수 없는 곳이 가려울 때가 생길 거야, 그리고 그 때 난 널 돕지 않을 거라고. 그러며 내 복수는 완성되는 거지."~ [MRT554B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",13)
~ THEN BEGIN 26 // from:
  SAY #61735 /* ~"그래, 휜들링, 솔직히 말해. 넌 내게 반했지?"~ [MRT548A] */
  IF ~~ THEN EXTERN ~DANNAH~ 304
END

IF ~~ THEN BEGIN 27 // from:
  SAY #61736 /* ~"조잘, 조잘, 조잘, 협박, 협박, 협박. 늘 화만 내는 게 피곤하지도 않아? 쳇."~ [MRT548B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",14)
~ THEN BEGIN 28 // from:
  SAY #61737 /* ~"이봐, 휜들링, 난 네가 대장을 어떤 눈으로 바라보는지 알아. 부끄러워할 건 없어. 고백을 하지 그래?"~ [MRT551A] */
  IF ~~ THEN EXTERN ~DANNAH~ 305
END

IF ~~ THEN BEGIN 29 // from:
  SAY #61738 /* ~"좋아, 좋아... 진정하라고. 쳇."~ [MRT551B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",15)
~ THEN BEGIN 30 // from:
  SAY #61739 /* ~"안나, 만약 내가 쳐다보는 게 싫으면, 왜 그... 조끼를 입고 있는 거지?"~ [MRT550A] */
  IF ~~ THEN EXTERN ~DANNAH~ 306
END

IF ~~ THEN BEGIN 31 // from:
  SAY #61740 /* ~"적어도 나는 놀라게 해."~ [MRT550B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Morte_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #61741 /* ~"그래, 그레이스... 혹시 자매는 없어?~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~~ THEN BEGIN 33 // from:
  SAY #61742 /* ~"내게 즐거움으로 광란할 시간을 한 순간만이라도 줘."~ [MRT461BD] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 34 // from:
  SAY #61743 /* ~"자, 그레이스, 난 당신네 서큐버스들이 재미있는 여자들이라고 생각했는데. 왜 그렇게 냉정한 거야?"~ [MRT462AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 363
END

IF ~~ THEN BEGIN 35 // from:
  SAY #61744 /* ~"쳇. 그들은 질문을 하면 뼈에서 가죽을 벗겨 내지.~ [MRT462B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 36 // from:
  SAY #61745 /* ~"우리와 함께 여행하는 유일한 서큐버스가 청교도라. 난 세상에서 제일 불행한 사내야~ [MRT463AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 364
END

IF ~~ THEN BEGIN 37 // from:
  SAY #61746 /* ~"난... 이봐, 잠깐 기다려..."~ [MRT463B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
InParty("Annah")
~ THEN BEGIN 38 // from:
  SAY #61747 /* ~"휜들링 때문에 기분 상하지 마, 그레이스. 그녀는 자기 용모의 이상과 현실의 차이 때문에 고민하는 거니까."~ [MRT555] */
  IF ~~ THEN EXTERN ~DGRACE~ 365
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Morte_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 39 // from:
  SAY #61749 /* ~"왜 미캐너스로 깡충 뛰어 돌아가지 않는 거지, 노돔?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 40 // from:
  SAY #61750 /* ~"나는 저 바보상자를 주사위처럼 굴리 거야.~ [MRT464AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 139
END

IF ~~ THEN BEGIN 41 // from:
  SAY #61751 /* ~"고장난 싸구려 시계 같으니."~ [MRT465] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 42 // from:
  SAY #61752 /* ~"노돔. 왜 석궁을 한 번도 장전하지 않는 거지?"~ [MRT557A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 140
END

IF ~~ THEN BEGIN 43 // from:
  SAY #61753 /* ~"편리하군."~ [MRT557B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #61754 /* ~"노돔, 석궁 좀 그만 찰깍거려! 돌아버리겠어!~ [MRT558A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 141
END

IF ~~ THEN BEGIN 45 // from:
  SAY #61755 /* ~"단... 단 한 번만이라도 보통 사람들과 여행하고 싶어."~ [MRT558B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",5)
~ THEN BEGIN 46 // from:
  SAY #61756 /* ~"이봐, 노돔... '툭-툭.'"~ [MRT556A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 142
END

IF ~~ THEN BEGIN 47 // from:
  SAY #61757 /* ~"농담이야, 이 얼간이 폴리곤아. 넌 '거기 누구지?'라고 대답을 해야 해.""~ [MRT556B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 143
END

IF ~~ THEN BEGIN 48 // from:
  SAY #61758 /* ~"그냥 관두라고."~ [MRT556C] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 49 // from:
  SAY #61759 /* ~"쉿. 이봐, 노돔. 내가 안나의 베개와 씨름할 수 있는 가장 간단한 방법을 계산해 봐."~ [MRT467AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 144
END

IF ~~ THEN BEGIN 50 // from:
  SAY #61760 /* ~"닥쳐! 닥쳐!"~ [MRT467BA] */
  IF ~~ THEN EXTERN ~DANNAH~ 307
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #64208 /* ~"그래, 그레이스... 혹시 자매는 없어?~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
~ THEN BEGIN 52 // from:
  SAY #64209 /* ~"왜 미캐너스로 깡충 뛰어 돌아가지 않는 거지, 노돔?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END
