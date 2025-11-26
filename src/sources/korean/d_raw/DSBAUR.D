// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSBAUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSBAUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45379 /* ~당신 앞에 덩치가 큰 생명체가 서 있다. 그의 하반신은 염소와 흡사하다. 하지만 그의 강인한 앞다리 위에 있는 상반신은 인간에 보다 가까운 모습을 하고 있다. 그의 동체, 팔, 머리는 모두 인간의 그것과 흡사하며, 잘 닦은 갑옷으로 보호되어 있다. 그는 감고 있으며, 겉으로 보기에는 자고 있는 것 같다..~ */
  IF ~~ THEN REPLY #45382 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #45383 /* ~그가 자도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #45380 /* ~그는 잠시 콧김을 내뿜는다, 하지만 눈은 여전히 감겨 있다. 겉잠을 자는 부류는 아닌 듯하다.~ */
  IF ~~ THEN REPLY #45384 /* ~그가 자도록 내버려 둔다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #45381 /* ~반 사람 반 염소는 여전히 깊이 잠들어 있다. ~ */
  IF ~~ THEN REPLY #45385 /* ~그가 자도록 내버려 둔다.~ */ EXIT
END
