// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPODGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPODGE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2891 /* ~나는 상류층 거주지역에서 온 뚱뚱한 소매치기요. 당신은 아마 하류층 거주지역에서 나와 비슷한 부류의 인간들과 이미 만났을 거요."~ */
  IF ~~ THEN REPLY #2892 /* ~그렇네. 그럼 가서 그들을 찾아보도록 하겠네. 안녕. ~ */ EXIT
END
