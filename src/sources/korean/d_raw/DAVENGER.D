// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAVENGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAVENGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67881 /* ~이 사람은 당신은 안중에도 없고, 단상의 판사만 뚫어지게 바라보고 있다. 그는 입술을 꼭 다물고 있으며, 그의 주먹은 하얀색이다. 그는 당신을 인식조차 하지 않는 듯 혼자서 무미 건조하게  낄낄 웃고 있다. ~ */
  IF ~~ THEN REPLY #67882 /* ~"그렇다면 관두시오."~ */ EXIT
END
