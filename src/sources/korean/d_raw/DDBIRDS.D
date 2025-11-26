// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDBIRDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDBIRDS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #31493 /* ~몇 조각의 검은 결정 - 얼음이 이 화려한 대좌에서 나오는 차가운 바람 안에서 소용돌이치고 있다. 각 파편은 지극히 날카로워 보인다. 잡거나 만지면 위험할 것 같다. 대좌의 이름표에는 다음과 같이 적혀 있다. '오칸투스의 검은 새들'.~ */
  IF ~~ THEN REPLY #31494 /* ~그것들을 그냥 내버려 둔다.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ EXIT
  IF ~~ THEN REPLY #31495 /* ~그 중 하나를 만진다.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #31496 /* ~그 중 하나를 잡는다.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31497 /* ~그 중 하나를 당신이 지닌 서리의 에일용 머그에 담는다.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.1
  SAY #31498 /* ~당신이 소용돌이치는 파편들 중 하나를 만지려고 손을 내밀자, 당신 손가락은 대좌에서 나오는 차가운 바람의 영향권에 들어가게 된다. 당신 손가락은 순식간에 감각을 마비시킬 정도로 차가운 서리로 뒤덮이게 되고, 이 때문에 당신은 잠시 물러선다. ~ */
  IF ~~ THEN REPLY #31499 /* ~그것들을 그냥 내버려 둔다.~ */ EXIT
  IF ~  HPLT(Protagonist,3)
~ THEN REPLY #31500 /* ~다시 당신 손가락으로 그것들 중 하나를 만진다.~ */ GOTO 2
  IF ~  HPGT(Protagonist,2)
~ THEN REPLY #31501 /* ~다시 당신 손가락으로 그것들 중 하나를 만진다.~ */ DO ~Damage(Protagonist,LOWER,2)
~ GOTO 3
  IF ~~ THEN REPLY #31502 /* ~그 중 하나를 잡는다.~ */ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31503 /* ~그 중 하나를 당신이 지닌 서리의 에일용 머그에 담는다.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #31504 /* ~당신은 극한의 바람 속으로 손가락을 집어넣는다. 당신이 미처 깨닫기도 전에 당신 손가락은 꽁꽁 얼어붙는다. 검은 파편들 중 하나가 회전하다가 당신 손가락과 부딪친다, 그러자 당신 손가락 끝이 요란한 *우두둑* 소리를 내며 부러져 갤러리 바닥에서 뒹군다. 정상적인 상황에서는 대단치 않은 상처이나 이미 중상을 입은 당신 상태에서 그것은 죽음을 의미한다.~ */
  IF ~~ THEN REPLY #31505 /* ~어둠 속으로 빠져든다..."~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #31506 /* ~당신은 극한의 바람 속으로 손가락을 집어넣는다. 당신이 미처 깨닫기도 전에 당신 손가락은 꽁꽁 얼어붙는다. 검은 파편들 중 하나가 회전하다가 당신 손가락과 부딪친다, 그러자 당신 손가락 끝이 요란한 *우두둑* 소리를 내며 부러져 갤러리 바닥에서 뒹군다. 당신이 손가락 끝이 다시 자라나기를 기다리는 동안에도 차가운 검은 새들은 계속 궤도를 돌고 있다.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31507 /* ~그 중 하나를 당신이 지닌 서리의 에일용 머그에 담는다.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31508 /* ~아무도 보지 않았기를 바라면서 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.3
  SAY #31509 /* ~당신이 소용돌이치는 파편들 중 하나를 만지려고 손을 내밀자, 당신 손가락은 대좌에서 나오는 차가운 바람의 영향권에 들어가게 된다. 당신 손가락은 순식간에 감각을 마비시킬 정도로 차가운 서리로 뒤덮이게 되고, 이 때문에 당신은 잠시 물러선다. ~ */
  IF ~~ THEN REPLY #31510 /* ~그것들을 그냥 내버려 둔다.~ */ EXIT
  IF ~~ THEN REPLY #31511 /* ~그 중 하나를 그냥 만진다.~ */ GOTO 1
  IF ~  HPLT(Protagonist,6)
~ THEN REPLY #31512 /* ~다시 손을 내밀어 그것들 중 하나를 잡는다.~ */ GOTO 5
  IF ~  HPGT(Protagonist,5)
~ THEN REPLY #31513 /* ~다시 손을 내밀어 그것들 중 하나를 잡는다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31514 /* ~그 중 하나를 당신이 지닌 서리의 에일용 머그에 담는다.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #31515 /* ~당신은 감각조차 마비시키는 극한의 바람 속으로 손을 집어넣는다. 검은 새들 중 하나를 손으로 감싸 쥐자 손 전체가 당신이 미처 깨닫기도 전에 꽁꽁 얼어붙는다. 다른 검은 파편 하나가 회전하다가 당신 손에 부딪치자 당신 손은 요란한 *우두둑* 소리를 내며 손목으로부터 떨어져 나와 갤러리의 바닥에서 뒹군다. 이미 중상을 입은 상태인 당신은 쓰러져서 죽는다. ~ */
  IF ~~ THEN REPLY #31516 /* ~어둠 속으로 빠져든다..."~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #31517 /* ~당신은 감각조차 마비시키는 극한의 바람 속으로 손을 집어넣는다. 검은 새들 중 하나를 손으로 감싸 쥐자 손 전체가 당신이 미처 깨닫기도 전에 꽁꽁 얼어붙는다. 다른 검은 파편 하나가 회전하다가 당신 손에 부딪치자 당신 손은 요란한 *우두둑* 소리를 내며 손목으로부터 떨어져 나와 갤러리의 바닥에서 뒹군다. ~ */
  IF ~~ THEN REPLY #31518 /* ~재빨리 손을 집어들어 팔에 다시 접합시킨다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31519 /* ~당신은 서리로 뒤덮인 주먹을 집어서 피가 흐르고 있는 절단 부위에 갖다 붙인다. 당신이 잡은 검은 새, 즉 검은 얼음의 날카로운 파편은 이미 녹아 없어졌다. 아무래도 그것을 차갑게 보존할 수 있는 물건 안에 담아서 취해야 할 것 같다. 당신의 세포 조직이 해동되고 재생됨에 따라 당신 손에 온기와 감각이 돌아온다.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31520 /* ~그 중 하나를 당신이 지닌 서리의 에일용 머그에 담는다.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31521 /* ~아무도 보지 않았기를 바라면서 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.4 3.0 4.4 7.0
  SAY #31522 /* ~당신은 머그를 대좌에서 나오는 차가운 바람에 '담그어' 그것으로 작은 파편 하나를 작은 *쩽그렁* 소리와 함께 취한다. 머그 안을 들여다 보니 검은 새가 검은 얼음의 날카롭고 얇은 파편이라는 것을 알 수 있다. 오직 머그의 마력만이 파편이 녹아 없어지는 것을 막고 있다. ~ */
  IF ~~ THEN REPLY #31523 /* ~떠난다.~ */ EXIT
END
