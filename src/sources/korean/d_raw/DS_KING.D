// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_KING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_KING~

IF ~  Global("Took_Skull","AR1501",0)
~ THEN BEGIN 0 // from:
  SAY #51339 /* ~이 쭈글쭈글한 시체가 다름 아닌 '위대한' 침묵의 왕인 듯하다. 문양이 새겨진 그의 의전용 갑옷은 먼지와 거미줄이 겹겹이 쌓이기는 했으나, 그가 그것을 입고 있는 모습은 나름대로 인상적이다. 하지만 죽은 자의 왕국의 군주는 말라 비틀어진 시체 이상의 존재가 아닌 것 같다. ~ */
  IF ~  Global("1501_Undead_Alert","GLOBAL",1)
~ THEN REPLY #51340 /* ~그의 해골을 가져간다.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ GOTO 1
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
!Class(Protagonist,THIEF)
~ THEN REPLY #51425 /* ~그의 해골을 가져간다.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 2
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
Class(Protagonist,THIEF)
~ THEN REPLY #51426 /* ~그의 해골을 가져간다.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65532 /* ~떠난다.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51427 /* ~당신은 침묵의 왕의 머리를 비틀어서 뜯어내려고 하지만 소용이 없다... 그것은 미동도 하지 않는다. 마침내 당신은 옥좌의 한쪽 팔걸이에 발을 힘껏 디뎌서 지렛대로 이용함으로서 날카로운 *우두둑* 소리와 함께 해골을 뜯어내는 데 성공한다. ~ */
  IF ~~ THEN REPLY #51428 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #51429 /* ~침묵의 왕의 머리를 뜯어내면 현재 알현실에 있는 자들이 분노할 것이다... 먼저 그들부터 처리해야 할 것 같다.~ */
  IF ~~ THEN REPLY #51430 /* ~그럼에도 불구하고 그의 해골을 가져가려고 시도한다.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #51431 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1
  SAY #51432 /* ~당신은 침묵의 왕의 머리를 조용히 뜯어내려고 해보지만 소용이 없다... 그것은 미동도 하지 않는다. 마침내 당신은 옥좌의 한쪽 팔걸이에 발을 힘껏 디뎌서 지렛대로 이용함으로서 날카로운 *우두둑* 소리와 함께 해골을 뜯어내는 데 성공한다 - 그리고 방 안에 있는 모든 자들에게 경계 신호를 보낸다. 그들은 돌아서서 당신이 자신들의 경애하는 군주의 머리를 비틀어서 뜯어내는 광경을 보고는 즉시 공격을 개시한다...~ */
  IF ~~ THEN REPLY #51433 /* ~자신을 방어한다.~ */ DO ~SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ EXIT
END

IF ~  Global("Took_Skull","AR1501",1)
~ THEN BEGIN 4 // from:
  SAY #51434 /* ~죽은 자의 왕국의 군주는 말라 비틀어진 시체에 불과하다. 게다가 당신이 해골을 뜯어낸 탓에 머리도 없다. ~ */
  IF ~~ THEN REPLY #51435 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Took_Skull","AR1501",2)
~ THEN BEGIN 5 // from:
  SAY #65524 /* ~죽은 자의 왕국의 군주는 말라 비틀어진 시체 이상의 존재가 아닌 것 같다. 당신이 그의 해골을 다른 것과 바꿔친 이래 그의 머리는 그의 어깨 위 다소 삐딱하게 얹혀져 있다. ~ */
  IF ~~ THEN REPLY #65525 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY #65526 /* ~침묵의 왕의 머리를 뜯어내면 현재 알현실에 있는 자들이 분노할 것이다... 먼저 그들부터 처리해야 할 것 같다. 하지만 만약 당신 수중에 보통 해골이 있다면, 그들이 눈치채기 전에 그것과 침묵의 왕의 투구 속에 있는 해골을 재빨리 바꿔칠 수 있을 것이다. ~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #65527 /* ~그 해골을 당신이 가지고 있는 것과 바꾼다.~ */ DO ~SetGlobal("Took_Skull","AR1501",2)
DestroyPartyItem("Skull",FALSE)
GiveItemCreate("SkullSK",Protagonist,1,0,0)
AddexperienceParty(500)
~ GOTO 7
  IF ~  !PartyHasItem("Skull")
~ THEN REPLY #65530 /* ~그럼에도 불구하고 그의 해골을 가져가려고 시도한다.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #65531 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65528 /* ~아무도 당신을 보고 있지 않다는 사실을 확인한 다음, 당신은 침묵의 왕의 투구를 든다, 그리고 그의 해골을 당신 배낭에 넣고는 그것이 있던 자리에 당신이 가지고 있는 다른 해골을 대신 갖다 놓는다. 투구만 다시 씌우고 나면 아무도 눈치채지 못할 것이다...~ */
  IF ~~ THEN REPLY #65529 /* ~떠난다.~ */ EXIT
END
