// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ2~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49588 /* ~이 건물은 다버스에 의해 수리되고 있었던 것 같다. 낡은 판자 위에 새롭고 견고한 판자들이 몇 개 덧붙여져 있다. 제대로 된 도구들만 있다면 수리한 부분들을 이전 상태로 되돌릴 수 있을 것 같다. ~ */
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #49590 /* ~지렛대를 사용하여 판자들을 느슨하게 만든다.~ */ DO ~SetGlobal("Alley_Puzzle_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49589 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49593 /* ~당신은 건물 표면에서 새 판자들을 차례대로 하나씩 뜯어낸다. 마지막 판자를 뜯어내자, 이제는 뼈대를 지탱하는 것이 없어 무게 중심을 안정되게 유지할 수 없기 때문인 듯 건물이 큰 소리로 삐걱거린다.~ */
  IF ~~ THEN REPLY #49603 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #58919 /* ~이 황폐한 건물은 당장이라도 무너질 것 같다. 가라앉으려는 이 건물을 보강해주기 위해 여러 장의 널빤지를 최근에 못박은 듯하다.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #58920 /* ~건물을 보다 자세히 살펴본다.~ */ GOTO 0
  IF ~~ THEN REPLY #58921 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #58922 /* ~이 황폐한 건물은 당장이라도 무너질 것 같다. 다버스가 못박은 판자들은 모두 제거되어 이 낡은 건물은 이전의 열화된 상태로 돌아갔다. ~ */
  IF ~~ THEN REPLY #58923 /* ~떠난다.~ */ EXIT
END
