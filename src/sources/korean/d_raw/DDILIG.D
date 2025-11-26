// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~이 초로의 엄격하게 생긴 여성은 명백히 어디론가 가는 중이다. 당신이 다가오는 것을 눈치채자 그녀는 입을 꽉 다물고 눈살을 찌푸린 채 비난하는 듯한 표정으로 당신을 살펴본다. ~ */
  IF ~~ THEN REPLY #2890 /* ~당신이 내게 당신 물건을 보여줄 수만 있다면.~ */ EXIT
END
