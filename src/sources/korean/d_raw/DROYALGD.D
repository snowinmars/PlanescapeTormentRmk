// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROYALGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DROYALGD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51341 /* ~인간보다 월등히 큰 이 거대한 스켈레톤은 복잡한 문양이 새겨진 화려한 청동 갑옷을 입고 있다. 당신이 다가가자 그는 당신을 잠시 내려다보더니 이내 시선을 돌린다.~ */
  IF ~~ THEN REPLY #51342 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #51409 /* ~자이언트 스켈레톤을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51410 /* ~"안녕하시오, 산 자." 그의 목소리는 찌렁찌렁 울린다. "나는 위대하신 침묵의 왕 폐하의 친위대원으로서 이 곳을 지키고 있소. 질문으로 내 임무를 방해하지 말라고 부탁하겠소."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51412 /* ~"왜 위병이 필요한 거요? 그는 이미 죽었는데..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51411 /* ~"왜 위병이 필요한 거요? 그는 이미 죽었는데..."~ */ GOTO 2
  IF ~~ THEN REPLY #51414 /* ~"적어도 당신이 누군지... 아니면 누구였는지 말해줄 수 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #51415 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1
  SAY #51413 /* ~자이언트 스켈레톤은 주춤하고 주변을 둘러본다, 그리고 당신을 내려다보며 이를 악물고 호통을 친다. "조용하라, 어리석은 자! 그 일에 대해 다시 얘기를 꺼내면 너는 더 이상 살지 못할 것이다!"~ */
  IF ~~ THEN REPLY #51416 /* ~"좋소. 적어도 당신이 누군지... 아니면 누구였는지 말해줄 수 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #51417 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #51418 /* ~"침묵의 왕께서는 평범한 시체가 아니시오, 산 자여. 오래 전, 그 분께서 우리들에게 친히 말씀하셨던 시절에도 침묵의 왕께서는 단순한 뛰어난 인간 이상의 존재이셨소. 침묵의 왕은 하나의 *체제*요. 그리고 바로 그것이 내가 지난 이백 년 동안 지켜 온 것이기도 하오. 그분의 위대한 의지는 하그림과 썩은 메리를 통해 전달되며, 내 뼈가 나보다 강한 적의 발길 아래서 가루가 될 때까지 내 임무를 계속할 것이오."~ */
  IF ~~ THEN REPLY #51419 /* ~"알겠소. 당신은 누구요...아니 어떤 사람이었소?~ */ GOTO 4
  IF ~~ THEN REPLY #51420 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0
  SAY #51421 /* ~"나는 생전에도 죽어서도 아마하가 추방되어 이스'히르에 떨어졌을 때 태어난 서부 산맥의 아흔 아홉 명의 아들들 중 하나요. 여왕 폐하를 수호하기로 굳은 맹세를 했던 우리들은, 우리의 세계와 그분이 아마하의 형제이기도 한 어떤 분노한 신에 의해 파괴되었을 때 이 세계로 오게 되었소. 우리들 중 많은 사람들은 다른 차원으로 떠났으나, 나를 비롯하여 몇몇 형제들은 시길에 남았소. 나는 죽은 뒤 이 곳에 매장되었고, 나중에 당신이 지금 보는 것과 같은 모습으로 다시 깨어났소. 그리고 나는 침묵의 왕을 수호할 새로운 주인으로 선택하였소."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51422 /* ~"왜 그를 지키는 거요? 그는 이미 죽었는데..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51423 /* ~"왜 그를 지키는 거요? 그는 이미 죽었는데..."~ */ GOTO 2
  IF ~~ THEN REPLY #51424 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END
