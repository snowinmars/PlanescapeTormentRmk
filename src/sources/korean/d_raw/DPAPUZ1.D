// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ1~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49597 /* ~이 낡은 건물은 다버스에 의해 해체되고 있었던 것 같다. 판자 위에 박힌 못들이 대부분 뽑힌 탓에 건물의 뼈대로부터 여러 개의 판자들이 떨어져 나가려는 상태이다. ~ */
  IF ~  PartyHasItem("Hammer")
~ THEN REPLY #49598 /* ~망치를 사용하여 판자들을 제자리에 다시 못박는다.~ */ DO ~SetGlobal("Alley_Puzzle_2","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49599 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49600 /* ~당신은 망치로 못을 박아 판자들을 제 위치로 돌려놓는다. 한 걸음 물러서서 당신의 작품을 감상하다가 당신은 기묘하게도 그 건물이 처음 보았을 때처럼 낡아 보이지 않는다는 사실을 눈치챈다. ~ */
  IF ~~ THEN REPLY #49602 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #59103 /* ~이 무너질 것 같은 집은 마치 여러 세기는 된 것처럼 보인다. 나무로 된 벽은 세월 탓에 풍화되고 낡아 버렸다. 건물의 이쪽에 있는 몇 장의 널빤지는 최근에 뜯어낸 것 같다. ~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #59105 /* ~건물을 살펴본다.~ */ GOTO 0
  IF ~~ THEN REPLY #59106 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #59107 /* ~느슨해진 널판지들을 모두 제자리에 망치로 박아 놓자, 이 낡은 건물은 이전의 모습을 되찾았다. ~ */
  IF ~~ THEN REPLY #59108 /* ~떠난다.~ */ EXIT
END
