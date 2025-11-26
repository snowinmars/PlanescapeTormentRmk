// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3174 /* ~"제발! 제발 날 구해주시오! 그들은 내가 내 직무에 충실했다는 그 이유 하나 때문에 날 죽이려 하고 있소! 내겐 아무런 악의도 없었소! 그들은 자신들이 이 도시를 파멸로 인도하고 있다는 사실을 모르는 거요? 그는 흐느낀다. "제발... 당신은 날 도와야만 하오!"~ */
  IF ~~ THEN REPLY #3175 /* ~"난 당신이 죽는 걸 그냥 지켜볼 생각이오."~ */ EXIT
  IF ~~ THEN REPLY #66758 /* ~"내가 할 수 있는 일을 하도록 하겠소."~ */ EXIT
END
