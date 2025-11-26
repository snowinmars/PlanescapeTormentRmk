// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUILL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2972 /* ~나는 사무구를 떠돌며 싸울 상대를 찾는 취한 방탕자요. 만약 내가 당신을 보게 되면 당신은 내 표적이 될 거요. 그러니 조심하시오.~ */
  IF ~~ THEN REPLY #2973 /* ~아니, 난 당신이야말로 조심해야 한다고 생각하는데.~ */ EXIT
END
