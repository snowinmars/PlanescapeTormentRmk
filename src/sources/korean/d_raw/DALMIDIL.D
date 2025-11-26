// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALMIDIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DALMIDIL~

IF ~~ THEN BEGIN 0 // from:
  SAY #44695 /* ~"그의 말은 우리들의 적의 말이었소. 설령 그것이 사실이 아니었다 하더라도 우리는 죽음으로서 그의 무지를 치료해 준 셈이오. 그를 여기에 그냥 내버려 두어 수집자들이 그 시체를 처리하도록 합시다. 우리는 이번 원정에 필요한 기스저라이 개들에 대한 정보를 이번 충분히 얻었소. 그들은 7일 이내에 또 하나의 요새를 잃을 것이오. 브리스티고의 성벽이 무너지게 될 것이오."~ */
  IF ~~ THEN DO ~SetGlobal("Vristigor","GLOBAL",1)
~ JOURNAL #39476 /* ~나는 기스양키가 또 다른 기스저라이 요새인 브리스티고를 습격할 계획을 꾸미고 있다는 얘기를 들었다. ~ */ EXTERN ~DYI'MINN~ 45
END
