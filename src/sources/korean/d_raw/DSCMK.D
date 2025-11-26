// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCMK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCMK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~더럽고 머리도 제대로 빗지 않은 남자가 보인다. 그에게서는 알코올 냄새가 심하게 난다. "뭐요? 뭘 원하는 거요?" 그는 당신 쪽으로 몸을 구부려 당신을 아래위로 살펴본다. "당신에게는 치료사가 필요할 것 같군!" 그는 자신의 썰렁한 유머에 웃음을 터트리며, 그로부터 술과 제대로 소화되지 않은 음식의 메스꺼운 악취가 당신에게로 몰려온다.~ */
  IF ~~ THEN REPLY #3372 /* ~"당신은 누구요?"~ */ EXIT
END
