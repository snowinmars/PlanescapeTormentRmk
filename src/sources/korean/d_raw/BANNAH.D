// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BANNAH~

IF ~  LastPersonTalkedTo("Morte")
Global("Annah_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31484 /* ~"내게 가까이 오지마, 모트!"~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63424 /* ~"방법을 찾아봐, 해골."~ [ANA575BD] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #63425 /* ~"뭘 보고 있는 거야, 해골."~ [ANA576B] */
  IF ~~ THEN EXTERN ~DMORTE~ 614
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63426 /* ~"넌 그 혀 때문에 코가 부러지게 될 거야."~ [ANA576BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #63428 /* ~"얘기하느라 바뻐 숨은 언제 쉬지?"~ [ANA593A] */
  IF ~~ THEN EXTERN ~DMORTE~ 615
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #63429 /* ~"어디 갈 일이 있으면 주저하지 말고 아주 가버리라고, 해골."~ [ANA595A] */
  IF ~~ THEN EXTERN ~DMORTE~ 616
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63430 /* ~"너에게 붙여 줄 만한 이름이라면 많지. 그 어느 것도 점잖은 장소에서는 부를 수 없는 것이긴 하지만."~ [ANA595BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 7 // from:
  SAY #63431 /* ~"더스티에게 널 팔면 얼마나 줄까?"."~ [ANA597D] */
  IF ~~ THEN EXTERN ~DMORTE~ 617
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63432 /* ~"죽음조차도 네겐 과분해, 해골."~ [ANA599A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #63433 /* ~"만약 네 두 눈이 다시 한 번 내 몸을 향하면, 해골, 그것들이 땅 위에서 구르게 될 줄 알아."~ [ANA600A] */
  IF ~~ THEN EXTERN ~DMORTE~ 618
END

IF ~~ THEN BEGIN 10 // from:
  SAY #63434 /* ~"정말 지겹게 수다를 떠는군,~ [ANA600BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",6)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 11 // from:
  SAY #63435 /* ~"해골, 네가 네 눈을 제자리에 놓지 않을 거라면 내가 가져가겠어."~ [ANA601A] */
  IF ~~ THEN EXTERN ~DMORTE~ 619
END

IF ~~ THEN BEGIN 12 // from:
  SAY #63436 /* ~"넌 정말 역겹군."~ [ANA601BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",7)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 13 // from:
  SAY #63439 /* ~"저 서큐버스에게 속지마... 그녀는 당신 목 모양이 마음에 들어 관심을 가지는 거니까... 그녀가 이빨로 물어뜯기에 딱 좋거든."~ [ANA594A] */
  IF ~~ THEN EXTERN ~DMORTE~ 620
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
InParty("Grace")
~ THEN BEGIN 14 // from:
  SAY #63440 /* ~"난 서큐버스를 믿지 않아. 그녀는 마족이라고! 그들은 다 마찬가지야. 당신이 방심하기를 기다렸다가 이빨로 목을 물어뜯지. 저 창녀에게서 눈을 떼지마, 아니면 눈 깜짝할 사이에 당신을 습격할 테니. 마족들은 모두 다 그렇다고, 그래!"~ [ANA602A] */
  IF ~~ THEN EXTERN ~DMORTE~ 621
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63441 /* ~"그래, 난 좋은 부분만 가지고 있지. 그녀는 나쁜 부분만 골라서 가지고 있고."~ [ANA602BA] */
  IF ~~ THEN EXTERN ~DMORTE~ 622
END

IF ~  LastPersonTalkedTo("Grace")
Global("Annah_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #63442 /* ~"언제까지 우리랑 여행을 할 거지, 서큐버스 ?"~ [ANA604A] */
  IF ~~ THEN EXTERN ~DGRACE~ 366
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63443 /* ~"넌 허용이 안돼. 난 널 못 믿겠거든."~ [ANA604BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #63444 /* ~"그래, 언제 네 갈봇집으로 돌아갈 거지, 서큐버스 ?"~ [ANA605A] */
  IF ~~ THEN EXTERN ~DGRACE~ 367
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63445 /* ~"거긴 네가 속하는 곳이니까 그러는 좋을 걸."~ [ANA605BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #63446 /* ~"조심해, 서큐버스. 네가 마각을 드러내고 영혼 사냥을 하기 시작하면 내 칼 맛을 보게 될 거야."~ [ANA606A] */
  IF ~~ THEN EXTERN ~DGRACE~ 368
END

IF ~~ THEN BEGIN 21 // from:
  SAY #63448 /* ~"그래, 네 말을 믿을 수 있었으면 좋겠지만 그럴 순 없지. 너희 서큐버스들은 향수나 뿌리고 다니는 거짓말쟁이 창녀들이니까."~ [ANA606BA] */
  IF ~~ THEN EXTERN ~DGRACE~ 369
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63449 /* ~"내게 가까이 오지만 마. 아니, 아예 우리들 모두 근처에 얼씬도 하지 않으면 더 좋겠군."~ [ANA606CA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #63450 /* ~"대체 언제까지 우리들 뒤를 졸졸 따라다닐 거지, 서큐버스 ?"~ [ANA608A] */
  IF ~~ THEN EXTERN ~DGRACE~ 370
END

IF ~~ THEN BEGIN 24 // from:
  SAY #63451 /* ~"질투? 난 질투 따윈 안 해! 난 질투란 단어를 어떻게 쓰는지도 몰라! 넌 널 믿지 못할 뿐이야... 그리고 그건 다른 사람들도 마찬가지야!~ [ANA608BB] */
  IF ~~ THEN EXTERN ~DGRACE~ 371
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",5)
~ THEN BEGIN 25 // from:
  SAY #63452 /* ~"난 이제 당신하고 저년이라면 지긋지긋해! 저년이 그렇게 좋으면 단둘이 여행하라고! 난 더 이상 당신 일에 상관하지 않을 테니!"~ [ANA609A] */
  IF ~~ THEN EXTERN ~DGRACE~ 372
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63453 /* ~"'이보세요, 안나' 따위 말은 입에도 담지마, 아 사악한 창녀야! 계속 까불면 각오해! 노상 좋은 옷 입고 잘난 채 하는 네 꼴을 보는 건 지겨워! 네가 어떻게 되든 내가 알 바가 아냐!"~ [ANA609BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",5)
LeaveParty()
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
~ THEN BEGIN 27 // from:
  SAY #64201 /* ~"내 근처에 얼씬도 하지마, 모트."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END
