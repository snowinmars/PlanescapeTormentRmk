// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTMAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTMAL~

IF ~~ THEN BEGIN 0 // from:
  SAY #3166 /* ~당신 시야에 소수의 군중이 운집한 곳의 가장자리에 서 있는 있는 한 노인이 들어온다. 그들은 단두대로 보이는 것 앞에 모여 있다. ~ */
  IF ~~ THEN REPLY #3167 /* ~"안녕하시오."~ */ EXIT
  IF ~~ THEN EXIT
END
