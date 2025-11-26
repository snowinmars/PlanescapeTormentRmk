// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WSCROLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~WSCROLL~

IF ~  !Class(Protagonist,MAGE)
~ THEN BEGIN 0 // from:
  SAY #62359 /* ~두루마리는 흐르는 듯한 난해한 룬들로 가득 차 있다. 당신은 그 내용을 전혀 이해할 수 없다. 아마 메이지라면 해독할 수 있을지도 모르겠다.~ */
  IF ~~ THEN REPLY #62360 /* ~두루마리를 치운다.~ */ EXIT
END

IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN BEGIN 1 // from:
  SAY #62361 /* ~두루마리 흐르는 듯한 마법의 룬들로 가득 차 있다. 당신이 룬들의 빛나는 윤곽을 읽자, 힘과 절박감이 당신의 존재를 가득 채운다. 하지만 안타깝게도 두루마리에 묘사된 개념은 당신의 현재 지적 수준으로는 이해할 수가 없다.~ */
  IF ~~ THEN REPLY #62362 /* ~두루마리를 치운다.~ */ EXIT
END

IF ~  ClassLevelLT(Protagonist,MAGE,12)
~ THEN BEGIN 2 // from:
  SAY #62363 /* ~두루마리 흐르는 듯한 마법의 룬들로 가득 차 있다. 당신이 룬들의 빛나는 윤곽을 읽자, 힘과 절박감이 당신의 존재를 가득 채운다. 당신은 이것이 '소원성취'의 두루마리라는 것을 마음 속으로 명확하게 깨닫는다. 하지만 안타깝게도 당신은 그것을 사용할 수 있을 정도의 경험을 쌓지 못했다.~ */
  IF ~~ THEN REPLY #62364 /* ~두루마리를 치운다.~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY #62365 /* ~두루마리 흐르는 듯한 마법의 룬들로 가득 차 있다. 당신이 룬들의 빛나는 윤곽을 읽자, 힘과 절박감이 당신의 존재를 가득 채운다. 당신은 이것이 '소원성취'의 두루마리라는 것을 마음 속으로 명확하게 깨닫는다... 어떤 소원을 빌겠습니까?~ */
  IF ~~ THEN REPLY #62366 /* ~"나는 내 능력치를 향상시키길 원하오..."~ */ GOTO 4
  IF ~~ THEN REPLY #62367 /* ~"나는 강력한 아이템을 원하오..."~ */ DO ~GiveItemCreate("Wring",Protagonist,1,0,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 6
  IF ~~ THEN REPLY #62368 /* ~"나는 내 꿈을 이룰 수 있는 막대한 부를 원하오..."~ */ DO ~GiveGoldForce(10000)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 7
  IF ~  False()
~ THEN REPLY #62369 /* ~"나는 경험과 지식을 원하오, 진정한 힘은 바로 거기에 있으니까..."~ */ DO ~PermanentStatChange(Protagonist,LEVEL,RAISE,1)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 8
  IF ~~ THEN REPLY #62370 /* ~"나는 나와 내 동료들의 건강을 완전히 회복되기를 원하오...~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 9
  IF ~~ THEN REPLY #62371 /* ~"나는 비밀스러운 지식과 그것이 가져다 줄 힘을 원하오..."~ */ DO ~GiveItemCreate("SPWI705",Protagonist,1,1,0)
GiveItemCreate("SPWI802",Protagonist,1,1,0)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #62372 /* ~두루마리를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #62373 /* ~룬들은 강력한 마력으로 빛나며 고동치기 시작한다. 당신은 정신은 자신의 이미지 - 당신이 원하는 대로 바꿀 수 있는 이미지로 채워진다... 어느 능력치를 올리겠습니까?"~ */
  IF ~~ THEN REPLY #62374 /* ~힘.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,STR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62375 /* ~지능.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,INT,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62376 /* ~지혜.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,WIS,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62377 /* ~민첩성.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,DEX,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62378 /* ~체력.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CON,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62379 /* ~카리스마.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62380 /* ~두루마리를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5
  SAY #62381 /* ~당신은 정신의 눈으로 당신의 현재 모습과 되고자 하는 모습을 그린다. 두루마리의 힘이 당신의 전신에 넘쳐 흐른다, 그리고 당신이 그린 정신적 이미지에 따라 현실이 변화한다. 두루마리는 에너지를 방출하고는 타 없어진다.~ */
  IF ~~ THEN REPLY #62382 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #62383 /* ~당신은 정신 속에서 주먹을 꽉 쥔다. 당신의 손아귀에는 당신을 강대하게 해줄 힘이 아이템의 형태로 쥐어져 있다. 두루마리의 힘이 당신의 전신에 넘쳐 흐른다, 그리고 당신이 그린 정신적 이미지에 따라 현실이 변화한다. 두루마리는 에너지를 방출하고는 타 없어진다.~ */
  IF ~~ THEN REPLY #62384 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #62385 /* ~당신은 정신 속에서 왕이나 가질 수 있을 정도의 엄청난 재보에 둘러싸인 자신을 본다. 두루마리의 힘이 당신의 전신에 넘쳐 흐른다, 그리고 당신이 그린 정신적 이미지에 따라 현실이 변화한다. 두루마리는 에너지를 방출하고는 타 없어진다.~ */
  IF ~~ THEN REPLY #62386 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY #62387 /* ~당신은 정신 속에서 많은 것들을 체험하는 자신을 본다. 영상은 인식하기에는 너무 빨리 스치고 지나가나, 그래도 당신은 그것들로부터 뭔가를 배운다. 두루마리의 힘이 당신의 전신에 넘쳐 흐른다, 그리고 당신이 그린 정신적 이미지에 따라 현실이 변화한다. 두루마리는 에너지를 방출하고는 타 없어진다.~ */
  IF ~~ THEN REPLY #62388 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY #62389 /* ~당신은 정신 속에서 부상으로 고통받고 있는 당신과 당신 동료들을 본다. 갑자기 상처가 나으면서 당신들 모두는 건강을 회복한다. 두루마리의 힘이 당신의 전신에 넘쳐 흐른다, 그리고 당신이 그린 정신적 이미지에 따라 현실이 변화한다. 두루마리는 에너지를 방출하고는 타 없어진다.~ */
  IF ~~ THEN REPLY #62390 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.5
  SAY #62391 /* ~당신은 정신 속에서 대 마법사의 지식으로 가득 찬 고대의 도서관이 보인다. 당신은 손을 내밀어 책장에서 여러 개의 두루마리를 꺼낸다. 두루마리의 힘이 당신의 전신에 넘쳐 흐른다, 그리고 당신이 그린 정신적 이미지에 따라 현실이 변화한다. 두루마리는 에너지를 방출하고는 타 없어진다.~ */
  IF ~~ THEN REPLY #62392 /* ~완료.~ */ EXIT
END
