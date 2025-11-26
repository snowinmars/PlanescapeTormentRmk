// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMATTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMATTER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~이 거인은 자신의 몸에 어울리는 화려한 적색 갑옷을 입고 있다. 당신이 접근하자 그는 당신을 조심스럽게 살피나, 두려워하는 기색은 없다.~ */
  IF ~~ THEN REPLY #2894 /* ~그의 거대한 투구로부터 울리는 듯한 목소리가 메아리쳐 나온다: "안녕하시오, 시민. 나는 이 구역의 4급 재판관인 근면 부인의 경호원인... 당연지사라고 하오. 내 임무는 그녀를 경호하는 것이기 때문에 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END
