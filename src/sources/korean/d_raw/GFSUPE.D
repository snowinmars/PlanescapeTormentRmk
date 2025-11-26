// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFSUPE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFSUPE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5336 /* ~"경비병! 경비병! 이 사나이를 제지하시오! 그를 멈추시오!"~ */
  IF ~~ THEN REPLY #5337 /* ~완료.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5338 /* ~"떠나시오. 나중에 오면 그 때 다시 얘기합시다."~ */
  IF ~~ THEN REPLY #5339 /* ~"물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #5502 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #5340 /* ~"난... 떠나라고 했소. 지시 사항에 따르는 일에 대해 잘 생각해 본 다음에 다시 오도록 하시오."~ */
  IF ~~ THEN REPLY #5341 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 20 9 even though they appear after this state */
~  Global("GearRepair","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #5342 /* ~그녀는 당신을 조롱하는 듯한 미소를 짓는다. "우리 기계를 고치는 일에 협조해 주겠다고 해서 고맙소. 주조소의 안녕에 대한 당신의 배려는 가히 감동적이오." 그녀는 당신 발에 침을 뱉고 돌아선다.~ */
  IF ~~ THEN REPLY #5343 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5344 /* ~"당신에게 질문할 것이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #5345 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #5346 /* ~"뭐요. 빨리 말하시오. 나는 당신같은 족속에 대해선 인내심이 없소, 그리고 당신 때문에 나는 지금 할 일이 많소. ~ */
  IF ~~ THEN REPLY #5347 /* ~"생각을 바꿨소. 톱니바퀴를 수리하는 걸 돕도록 하겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #5348 /* ~"사무실이 어디 있는지 다시 얘기해주겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #5349 /* ~"어떻게 하면 갓즈맨의 일원이 될 수가 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #5350 /* ~"어떻게 하면 이 일에 대해 당신에게 변상할 수 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #5351 /* ~"관두시오. 어차피 떠나려던 참이었소."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #5352 /* ~"아, 이제 뭔가 필요하니까 돕곗다고? 아마 당신 시험은 당신의 이기적인 습성에 대한 것인 모양이지? 하지만 내가 그걸 좋아해야 할 필요는 없지, 난 싫어. 그리고 당신은 더 싫어. 이미 수리를 해줄 다른 사람을 찾았어. 그러니 꺼져." 그녀는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #5353 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 7.0
  SAY #5354 /* ~"다른 사람에게 물어보라고, 아니면 스스로 알아서 하든지." 그녀는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #5355 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #5356 /* ~그녀는 잠시 고민을 하는 듯하다, 당신에게 꺼져라고 해야 할지 아니면 그녀의 당파의 새로운 멤버를 확보해야 할지를 놓고. 그녀는 내키지 않은 듯 말을 한다. "주조소 가장 동쪽에 있는 벽의 문으로 들어가면 강당이 나올 거요. 거기 있는 두리안 가의 켈도와 얘기하시오. 그가 당신을 도울 수 있소."~ */
  IF ~~ THEN REPLY #5357 /* ~"고맙소. 다른 질문이 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #5358 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY #5359 /* ~"내게 보상을 해줄 방법이 없냐고? 흥! 없는데. 미로에나 갇히라고." 그녀는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #5360 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #5361 /* ~"안녕하시오, 탐구자. 내가 무엇을 도와주면 되겠소? 하지만 가능한 짧게 해주시오... 유지해야 할 일정이 있으니까. ~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5362 /* ~"나는 사무원으로부터 수령해야 할 물건이 있소. 그는 어디 있소?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
~ THEN REPLY #5363 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5364 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
~ THEN REPLY #5366 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
~ THEN REPLY #5367 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오. 하지만 난 내 징표를 잃어버였소"~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
!HasItem("GToken",Myself)
~ THEN REPLY #5368 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오. 하지만 난 내 징표를 잃어버였소"~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5372 /* ~"나는 용광로를 사용해야 하오."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5373 /* ~"나는 용광로를 사용해야 하오."~ */ GOTO 14
  IF ~~ THEN REPLY #5374 /* ~"용광로에서 작업하는 데 필요한 아이템들을 어디서 구할 수가 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #5375 /* ~"아무 것도 필요하지 않을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 16.0
  SAY #5376 /* ~"저기 아래쪽에 있는 책상이 있는 방이 보이시오? 그는 그 책상 뒤에 앉아 있소. 당신 물건은 그 곳에서 받을 수 있을 거요."~ */
  IF ~~ THEN REPLY #5377 /* ~"고맙소. 그 밖에도 물어볼 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5379 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 16.1
  SAY #5378 /* ~그녀는 잠시 주변을 둘러보며 누가 그녀를 보고 있지는 않은지 확인한다. 그 다음 그녀는 자신의 목에서 황금 메달을 풀어서 당신에게 몰래 준다. 그녀는 작은 소리로 속삭인다. "다른 사람에게는 이걸 어디서 얻었는지 말하지 마시오." ~ */
  IF ~~ THEN REPLY #5380 /* ~"고맙소. 그 밖에도 물어볼 것들이 있소."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5381 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 16.2 16.3 16.7 16.8
  SAY #5382 /* ~"도와주고는 싶지만 고위 간부들만이 그것을 허가할 수 있소. 그 일에 대해선 켈도와 얘기해야 할 거요."~ */
  IF ~~ THEN REPLY #5383 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5384 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.6 16.10
  SAY #5385 /* ~"물론이오. 단, 필요한 물건들을 모두 가지고 있는지 반드시 확인하시오: 방화 장비, 집게, 망치, 그리고 물론 당신이 쓸 철광석."~ */
  IF ~~ THEN REPLY #5386 /* ~"알겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5387 /* ~"그러한 아이템들은 어디서 구할 수 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #5388 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.7 16.11
  SAY #5389 /* ~"미안하지만 다른 멤버들에게도 용광로를 사용할 기회를 주어야 할 것 같소. 당신 그걸 너무 오랫동안 혼자서 독점했소."~ */
  IF ~~ THEN REPLY #5390 /* ~"좋소. 그럼 질문할 것들이 더 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5391 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3 16.4
  SAY #5392 /* ~"당신을 도와주고는 싶지만, 나는 그 곳에 들어가는 것을 허용하는 징표를 어딘가에 잘못 둔 것 같소. 미안하오, 탐구자."~ */
  IF ~~ THEN REPLY #5393 /* ~"그건 괜찮소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5394 /* ~"할 수 없지. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0 11.0 12.0 13.0 14.0 15.0 17.0 18.0 19.0 20.0 21.1 22.3 23.5 23.6 24.0 25.2 26.2 27.2 28.0 29.0 32.0 33.1 34.0 35.0 36.0 37.0
  SAY #5395 /* ~"질문이 더 있소? 어떤 것들이오?"~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5396 /* ~"나는 사무원으로부터 수령해야 할 물건이 있소. 그는 어디 있소?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5397 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5398 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("Gtoken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5399 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5400 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5401 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오. 하지만 난 내 징표를 잃어버였소"~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5402 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오. 하지만 난 내 징표를 잃어버였소"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5403 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5404 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오. 하지만 난 내 징표를 잃어버였소"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5405 /* ~"나는 저기 뒤에 있는, 경비병들이 지키고 있는 방에 들어가야만 하오. 하지만 난 내 징표를 잃어버였소"~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5406 /* ~"나는 용광로를 사용해야 하오."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5407 /* ~"나는 용광로를 사용해야 하오."~ */ GOTO 14
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5408 /* ~"나는 켈도로부터 권한을 위임받아 이 곳에서 일어난 살인 사건을 조사하고 있소. 그 사건에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5409 /* ~"나는 출구를 찾고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #5410 /* ~"나는 출납 사무실을 찾고 있소. 그 곳에는 날 기다리는 물건이 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #5411 /* ~"이 곳을 견학하고 싶소."~ */ GOTO 33
  IF ~~ THEN REPLY #5412 /* ~"당신은 누구요?"~ */ GOTO 34
  IF ~~ THEN REPLY #5413 /* ~"대체 무슨 일이오?"~ */ GOTO 35
  IF ~~ THEN REPLY #5414 /* ~"갓즈맨은 구체적으로 어떤 사상을 지니고 있소?"~ */ GOTO 36
  IF ~~ THEN REPLY #5415 /* ~"용광로에서 작업하는 데 필요한 아이템들을 어디서 구할 수가 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #5416 /* ~"아무 것도 필요하지 않을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4 16.5
  SAY #5417 /* ~"아직 나에겐 징표가 있다는 건 다행한 일이오. 이걸 받으시오, 하지만 다른 사람에게는 내가 이걸 당신에게 주었다는 걸 말하지 마시오, 알겠소? 행운을 빌겠소."~ */
  IF ~~ THEN REPLY #5418 /* ~"고맙소. 그 밖에도 물어볼 것들이 있소."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5419 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.5 16.6 16.9
  SAY #5420 /* ~"나도 그걸 잃어버렸소. 미안하오. 당신은 들어갈 다른 방법을 찾아야 할 것 같소."~ */
  IF ~~ THEN REPLY #5421 /* ~"고맙소. 그 밖에도 물어볼 것들이 있소."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #5422 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 9.8 13.1 16.19 20.1
  SAY #5423 /* ~"만약 그것들을 이 언저리에서 찾을 수가 없다면 사무원으로부터 사야 할 것이오... 물론 근소한 액수면 될 거요.~ */
  IF ~~ THEN REPLY #5424 /* ~"알겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5425 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("G_Test1","GLOBAL",1)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 20 // from:
  SAY #5426 /* ~"뭘 기다리고 있는 거요? 가서 일을 시작하시오! 우리는 당신이 꾸물거리는 동안 용광로를 그냥 놀릴 수는 없소."~ */
  IF ~~ THEN REPLY #5427 /* ~"먼저 당신에게 물어보고 싶은 것들이 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #5428 /* ~"용광로 작업을 위한 아이템들이 어디 있는지 다시 얘기해주겠소?"~ */ GOTO 19
  IF ~~ THEN REPLY #5429 /* ~"좋소, 좋아. 가면 되지 않소."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("G_Test2","GLOBAL",1)
GlobalLT("G_Test2","GLOBAL",11)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 21 // from:
  SAY #5430 /* ~"나는 이미 당신에게 내가 아는 것을 모두 말해주었소. 내게서 뭘 더 원하시오?"~ */
  IF ~~ THEN REPLY #5431 /* ~"당신 얘기를 다시 들려주었으면 하오... 이번에는 천천히."~ */ GOTO 22
  IF ~~ THEN REPLY #5432 /* ~"다른 질문이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5433 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.12 21.0 29.1 30.0
  SAY #5434 /* ~"당신은 내가 살인이 일어난 밤에 무엇을 보았는지 알고 싶소? 싸우는 소리를 들었을 때 난 늦게까지 남아 일을 하던 중이었소. 나는 곧 뛰어 나왔고, 어떤 그림자가 강당으로 들어가는 것을 보았소. 그래서 난 즉시 경보를 울렸소."~ */
  IF ~~ THEN REPLY #5435 /* ~"다른 자세한 내용은 모르시오?"~ */ GOTO 23
  IF ~~ THEN REPLY #5436 /* ~"그게 전부요?"~ */ GOTO 23
  IF ~~ THEN REPLY #5437 /* ~"당신이 하지 않았다는 것을 내가 어떻게 알 수 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #5438 /* ~"고맙소. 그 밖에도 물어볼 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5439 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #5440 /* ~"내가 아는 한 그 밤에 이 건물에 들어올 수 있었던 사람은 세 사람뿐이오. 그들은 틸돈, 사로스, 그리고 베다이-린이오. 그들의 체격은 서로 무척 다르나, 주조소의 연기 때문에 나는 뚜렷하게 볼 수가 없었소."~ */
  IF ~~ THEN REPLY #5441 /* ~"당신이 하지 않았다는 것을 내가 어떻게 알 수 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #5442 /* ~"그럼 용의자는 세 사람뿐이오? 사건이 너무 간단한 것 같소."~ */ GOTO 24
  IF ~~ THEN REPLY #5443 /* ~"좋소. 틸돈은 어디 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #5445 /* ~"좋소. 사로스는 어디 있소?"~ */ GOTO 26
  IF ~~ THEN REPLY #5446 /* ~"그것 참 편리하군. 베다이-린은 어디 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #5447 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5448 /* ~"다른 질문이 있소."~ */ GOTO 16
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0 23.1
  SAY #5444 /* ~"내게는 알리바이가 있소. 그리고 켈도는 이미 나로부터 진실을 확인했소. 나는 숨길 것이 없소. 하지만 틸돈, 사로스, 그리고 베다이-린은 있는 모양이오. 그들은 켈도의 주문의 대상이 되는 것을 거부했소."~ */
  IF ~~ THEN REPLY #5449 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5450 /* ~"틸돈은 어디 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #5451 /* ~"사로스는 어디 있소?"~ */ GOTO 26
  IF ~~ THEN REPLY #5452 /* ~"베다이-린은 어디 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #5453 /* ~"고맙소. 도움이 될 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.1 26.0 27.0
  SAY #5454 /* ~"그는 대개 이 곳 주 주조소와 뒤에 있는 실험실을 왔다갔다하고 있소. 그를 찾는 일은 어렵지 않을 거요."~ */
  IF ~~ THEN REPLY #5455 /* ~"사로스는 어디 있소?"~ */ GOTO 26
  IF ~~ THEN REPLY #5456 /* ~"베다이-린은 어디 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #64145 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #64146 /* ~"그에게 확인하도록 하겠소. 하지만 다시 오게 될지도 모르오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.2 25.0 27.1
  SAY #5457 /* ~"그는 주로 강당에 있소. 당신은 그를 쉽게 발견할 수 있을 거요."~ */
  IF ~~ THEN REPLY #5458 /* ~"틸돈은 어디 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #5459 /* ~"베다이-린은 어디 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #64147 /* ~"다른 질문이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #64148 /* ~"꼭 그렇게 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.4 24.3 25.1 26.1
  SAY #5460 /* ~"그녀는 주조소 어딘가에 있을 거요. 그녀는 우리의 수석 기술자들 중 한 사람이기 때문에 어디든지 출입할 수가 있소. 그녀를 보게 되면 쉽게 알아볼 수 있을 거요.~ */
  IF ~~ THEN REPLY #5461 /* ~"틸돈은 어디 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #5462 /* ~"사로스는 어디 있소?"~ */ GOTO 26
  IF ~~ THEN REPLY #64149 /* ~"그래야겠소. 그런데 다른 질문이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #64150 /* ~"그래야겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 ~  Global("GearRepair","GLOBAL",5)
~ THEN BEGIN 28 // from:
  SAY #5463 /* ~"톱니 바퀴 수리를 도와준 일은 정말 고맙소. 당신 없이도 고칠 수는 있었겠지만 시간이 훨씬 더 걸렸을 거요. 다시 한 번 감사하오. 내가 또 어떤 일을 도울 수 있겠소?"~ */
  IF ~~ THEN REPLY #5464 /* ~"질문할 것이 좀 있소."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ GOTO 16
  IF ~~ THEN REPLY #5465 /* ~"실은 별로 없소. 안녕히 계시오."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 29 // from:
  SAY #5466 /* ~"또 당신이오? 이젠 뭘 원하는 거요? 성급하게 나와 미안하오, 하지만 우리에겐 지켜야 할 일정이 있소."~ */
  IF ~~ THEN REPLY #5467 /* ~"당신에게 질문할 것들이 좀 있소."~ */ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5468 /* ~"나는 켈도로부터 권한을 위임받아 이 곳에서 일어난 살인 사건을 조사하고 있소. 그 사건에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5469 /* ~"지금은 아무 것도 없소. 나중에 다시 오리다."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 30 // from:
  SAY #5470 /* ~이마에 작은 뿔이 나 있고 귀가 머리 뒤쪽으로 굽은 작은 여인이 보인다. 주조소의 용광로에서 나오는 매연에도 불구하고 그녀의 몸에서는 약간의 유황 냄새가 난다. "안녕하시오. 어떤 도움이 필요하시오?"~ */
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5471 /* ~"나는 켈도로부터 권한을 위임받아 이 곳에서 일어난 살인 사건을 조사하고 있소. 그 사건에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5472 /* ~"나는 출구를 찾고 있소."~ */ GOTO 31
  IF ~~ THEN REPLY #5473 /* ~"나는 출납 사무실을 찾고 있소. 그 곳에는 날 기다리는 물건이 있소."~ */ GOTO 32
  IF ~~ THEN REPLY #5474 /* ~"이 곳을 견학하고 싶소."~ */ GOTO 33
  IF ~~ THEN REPLY #5475 /* ~"당신은 누구요?"~ */ GOTO 34
  IF ~~ THEN REPLY #5476 /* ~"대체 무슨 일이오?"~ */ GOTO 35
  IF ~~ THEN REPLY #5477 /* ~"갓즈맨은 구체적으로 어떤 사상을 지니고 있소?"~ */ GOTO 36
  IF ~~ THEN REPLY #5478 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.13 30.1
  SAY #5479 /* ~"뒤돌아서 저쪽을 보시오. 저기 긴 터널이 보이시오? 그 터널로 쭉 가면 정문에 도달할 거요."~ */
  IF ~~ THEN REPLY #5480 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.14 30.2
  SAY #5481 /* ~"저쪽의 책상이 있는 사무실이오. 그는 책상 뒤에 앉아 있을 거요."~ */
  IF ~~ THEN REPLY #5482 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #5483 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.15 30.3
  SAY #5484 /* ~"평상시라면 대환영이지만, 불행히도 우린 지금 좀 바쁘오. 한 1년 정도 지난 후에 다시 오면 기꺼이 제공하리다."~ */
  IF ~~ THEN REPLY #5485 /* ~"무슨 일이 벌어지고 있는 거요?"~ */ GOTO 35
  IF ~~ THEN REPLY #5486 /* ~"좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5487 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 16.16 30.4
  SAY #5488 /* ~"나는 이 구획의 감독인 앨릿사 틸드요. 이 지역은 대 주조소의 주 공장 구획으로, 여기서는 우리가 공개적으로 하는 작업들이 행해지오. 물론 주조소는 훨씬 크지만 우리는 현재 대규모의 비밀 프로젝트를 발주받은 상황이라 대부분의 작업 구획은 현재 출입금지요. 미안하오"~ */
  IF ~~ THEN REPLY #5489 /* ~"이해하오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5490 /* ~"출입제한? 말도 안돼! 안녕히 계시오!"~ */ EXIT
  IF ~~ THEN REPLY #5491 /* ~"알겠소. 시간을 내주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.17 30.5 33.0
  SAY #5492 /* ~"우리는 매우 규모가 크고 극도의 보안을 유지해야 하는 프로젝트를 발주받았고, 우리는 그 일에 우리가 가진 모든 인적 및 물적 자원을 투입하고 있소. 기존의 다른 주문들을 처리하기 위한 일상적인 작업도 하고 있지만 현재 주조소는 전술한 프로젝트를 완수하기 위해 총력을 다하고 있소. 내게 물어볼 생각은 하지 마시오, 난 대답을 하지 않을 테니.~ */
  IF ~~ THEN REPLY #5493 /* ~"당신은 이 일에 대해서 매우 완고한 것 같소. 좋소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5494 /* ~"당신은 이 일에 대해서 매우 완고한 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.18 30.6
  SAY #5495 /* ~"이 당파는 개인적인 동시에 공동체적인 당파요, 그리고 사람에 따라 추구하는 바는 다소 다르나 기본 이념은 다음과 같소. 모든 삶, 아니 존재는 일종의 시험이오. 일어나는 모든 일은 우리를 시험하고 있으며, 우리가 어떻게 반응하느냐에 따라 우리가 만물에 대한 진정한 이해에 얼마나 가까이 다가갈 수 있는지가 결정되오. 우리는 다원 우주의 배후에 존재하는 진실을 추구하며, 우리가 추구하는 길이 옳은 길이라는 것은 명백하오."~ */
  IF ~~ THEN REPLY #5496 /* ~"알겠소... 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #5497 /* ~"어떻게 하면 가입할 수 있소?"~ */ GOTO 37
  IF ~~ THEN REPLY #5498 /* ~"흠. 시간을 내주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #5499 /* ~"오른쪽 벽에 있는 문을 통해 강당으로 들어가 두리안 가의 켈도와 얘기하시오."~ */
  IF ~~ THEN REPLY #5500 /* ~"고맙소. 그런데 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 16
  IF ~~ THEN REPLY #5501 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END
