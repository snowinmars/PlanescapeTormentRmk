// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38105 /* ~나는 내 살인자 때문에 인생을 여러 차례 잃었다. 나는 그를 속일 수가 없다, 그러니 그를 죽여야만 한다. 나는 그를 따돌리려고 시도했다. 나는 그를 속일 수 있도록 조작된 거짓 시체들을 남겨두었다. 나는 숨었다. 나는 거리가 날 지켜줄 방패라 생각하며 아웃터 플레인의 대부분을 떠돌아다녔다. 나는 살인자를 죽이려고 이 함정으로 가득한 무덤을 만들었다. 나는 숨었다. ~ */
  IF ~~ THEN REPLY #53727 /* ~계속한다.~ */ GOTO 1
  IF ~~ THEN REPLY #53728 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53729 /* ~공격은 필연적으로 다시 시작되었으며, 그 맹렬함은 한층 더 심해졌다. 속임수는 쓸모가 없다. 어째서인지 살인자는 늘 내가 살아 있다는 것을 안다. 그리고 내가 어느 차원에 숨었는지도 관계가 없다. 그는 나를 찾아낸다. 결국에 가서는.~ */
  IF ~  Global("Inscr_5","GLOBAL",0)
~ THEN REPLY #53730 /* ~패널을 조사한다.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53731 /* ~비문으로부터 발길을 돌린다.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53732 /* ~이 패널은 누르면 벽 속으로 들어갈 것 같다.~ */
  IF ~~ THEN REPLY #53733 /* ~패널을 누른다.~ */ DO ~SetGlobal("Inscr_5","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53734 /* ~패널을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53735 /* ~패널은 벽 속으로 쉽게 들어간다. 당신 뒤의 석관으로부터 찰칵 소리가 들린다.~ */
  IF ~~ THEN REPLY #53736 /* ~비문으로부터 발길을 돌린다.~ */ EXIT
END
