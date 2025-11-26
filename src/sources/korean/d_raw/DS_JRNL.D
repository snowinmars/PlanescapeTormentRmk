// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_JRNL~

IF ~  NearbyDialog("Dsoego")
~ THEN BEGIN 0 // from:
  SAY #48857 /* ~이 철판은 침대로 사용되고 있는 듯하다. 그 측면에는 비틀면 열리는 공간이 있다. ~ */
  IF ~~ THEN REPLY #48859 /* ~그것을 비집어 연 후 그 안을 들여다본다.~ */ GOTO 1
  IF ~~ THEN REPLY #48861 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48862 /* ~소에고가 이 곳에 있는 동안에는 그의 소지품을 몰래 엿볼 수가 없다. 그러기 위해서는 그의 주의를 딴 데로 돌리거나, 어떤 구실을 만들어서 그를 바깥으로 유인해 내야한다.~ */
  IF ~~ THEN REPLY #48863 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.0
  SAY #48864 /* ~소에고가 훌쩍 오지 않을 것이라는 것을 확신한 당신은 작은 패널을 비틀어 열고 그 안을 들여다 본다. 그 안에는 책 또는 일지처럼 보이는 것이 들어 있다. ~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #66860 /* ~그것을 꺼내서 읽는다.~ */ GOTO 3
  IF ~  Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #48865 /* ~그것을 꺼내서 읽는다.~ */ DO ~SetGlobal("Soego_Journal","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 3
  IF ~~ THEN REPLY #48866 /* ~패널을 닫고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48867 /* ~이 책은 소에고의 일지였다. 그것에는 위어랫에 의해 습격을 당한 일과 그에 따른 수인으로의 타락, 그리고 자기도 모르게 친구를 죽여 먹은 후 시체안치소로부터 도주한 일이 상세히 기록되어 있었다. 숨을 곳을 찾던 중 그는 사고의 굴로 오게 되었고, 그 곳에서 그는 그 곳에 모인 크래니움 랫들의 정신적 집합체인 여럿이-모여-하나를 섬기기로 합의하였다. 그는 이제 죽은 자의 왕국에서 언젠가는 지하 묘지의 이 지역까지 지배하려는 여럿이-모여-하나를 위해 언데드들을 정탐하고 있다.~ */
  IF ~~ THEN REPLY #48868 /* ~일지를 바꿔친 다음, 패널을 닫고 떠난다.~ */ JOURNAL #47846 /* ~나는 소에고의 방에 숨겨진 그의 일지를 발견했다. 그것에는 위어랫의 의해 습격을 당한 일과 그에 따른 수인으로의 타락, 그리고 자기도 모르게 친구를 죽여 먹은 후 시체안치소로부터 도주한 일이 상세히 기록되어 있었다. 숨을 곳을 찾던 중 그는 사고의 굴로 오게 되었고, 그 곳에서 그는 그 곳에 모인 크래니움 랫들의 정신적 집합체인 여럿이 모여 하나를 섬기기로 합의하였다. 그는 이제 죽은 자의 왕국에서 언젠가는 지하 묘지의 이 지역까지 지배하려는 여럿이 모여 하나를 위해 언데드들을 정탐하고 있다. ~ */ EXIT
END

IF ~  !NearbyDialog("Dsoego")
~ THEN BEGIN 4 // from:
  SAY #67165 /* ~이 철판은 침대로 사용되고 있는 듯하다. 그 측면에는 비틀면 열리는 공간이 있다. ~ */
  IF ~~ THEN REPLY #67166 /* ~그것을 비집어 연 후 그 안을 들여다본다.~ */ GOTO 2
  IF ~~ THEN REPLY #67167 /* ~떠난다.~ */ EXIT
END
