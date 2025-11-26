// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVGGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVGGRD~

IF ~  !Dead("Barr")
~ THEN BEGIN 0 // from:
  SAY #56938 /* ~경비병은 눈을 반쯤 감은 지루한 표정으로 당신을 흘긋 본다. "문을 사용하고 싶으면 바하고 얘기하시오...?" 그는 문 앞에 서 있는 바를 가리킨다. "...아니라면 날 그냥 내버려 두시오." 그는 시선을 다른 데로 돌린다.~ */
  IF ~~ THEN REPLY #56939 /* ~떠난다.~ */ EXIT
END

IF ~  Dead("Barr")
~ THEN BEGIN 1 // from:
  SAY #56940 /* ~경비병은 당신을 살펴보면서 하품을 한다. "문을 사용하려는 건 아니길 바라겠소... 바가 죽고 나서는 아무도 그걸 어떻게 작동시키는지를 모르오." 그는 시선을 다른 데로 돌린다.~ */
  IF ~~ THEN REPLY #56941 /* ~떠난다.~ */ EXIT
END
