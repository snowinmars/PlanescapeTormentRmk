// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHBDYGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHBDYGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~이 거인은 자신의 몸에 어울리는 화려한 적색 갑옷을 입고 있다. 당신이 접근하자 그는 당신을 조심스럽게 살피나, 두려워하는 기색은 없다.~ */
  IF ~~ THEN REPLY #31238 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #31239 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2894 /* ~그의 거대한 투구로부터 울리는 듯한 목소리가 메아리쳐 나온다: "안녕하시오, 시민. 나는 이 구역의 4급 재판관인 근면 부인의 경호원인... 당연지사라고 하오. 내 임무는 그녀를 경호하는 것이기 때문에 이만 실례하겠소. 안녕히 계시오."~ */
  IF ~~ THEN REPLY #31240 /* ~"잠깐만... 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #31241 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #31235 /* ~그는 그냥 돌아서서 걸어간다.~ */
  IF ~~ THEN REPLY #31242 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31236 /* ~이 거한은 그의 체구에 걸맞는 크기의 화려한 빨간색 갑옷을 입고 있다. 그의 투구의 틈새를 통해서도 그가 당신을 의심쩍은 눈초리로 살펴보고 있다는 사실은 쉽게 알 수가 있다. ~ */
  IF ~~ THEN REPLY #31243 /* ~"안녕하시오..."~ */ GOTO 4
  IF ~~ THEN REPLY #31244 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31237 /* ~그는 갑자기 무기를 든다. "내가 생각한 대로군. 네가 바로 그 자군!" 그는 고함을 질러 증원을 부르면서 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #31245 /* ~자신을 방어한다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #31246 /* ~도망친다.~ */ DO ~Enemy()
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
