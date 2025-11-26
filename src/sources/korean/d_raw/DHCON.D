// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60814 /* ~한쪽 팔에 용암과 같은 붉은 색의 피부를 지닌 기계 인간이 보인다. 당신이 다가가자 그는 경계하는 눈초리로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #60815 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #60816 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60817 /* ~그는 머리를 한쪽으로 기울이고 의심쩍은 눈초리로 당신을 쳐다본다. "안녕하시오, 침입자."~ */
  IF ~~ THEN REPLY #60818 /* ~"왜 내가 침입자라고 생각하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #60819 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #60820 /* ~"당신은 어떤 존재요?"~ */ GOTO 4
  IF ~~ THEN REPLY #60821 /* ~"뭘 하고 있는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #60822 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60823 /* ~그는 당신을 보고 사악한 미소를 짓는다. "왜냐하면 당신은 우리들 중 하나가 아니기 때문이오. 침입자인 당신은 죽어야만 하오." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60824 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60825 /* ~"내겐 자아는 없소, 목적만 있을 뿐이오. 내 목적은 당신을 죽이는 것이오." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60826 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #60827 /* ~"나는 중 전투용 로봇이오. 내 사양은: 평균적 전투능력, 고도의 지능, 그리고 뛰어난 무기 사용 능력이오. 덤으로 난 성질까지 더럽소." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60828 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #60829 /* ~"나는 당신의 급소를 파악하고 있소. 이제 이 정보를 집계했으니, 나는 그것을 이용하여 당신에게 심한 고통을 주겠소." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60830 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #60831 /* ~그는 당신을 보고 사악한 미소를 짓는다. "그래, 당신은 가게 될 거요,. 내가 당신을 죽인 뒤 저 세상으로!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60832 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY #60833 /* ~한쪽 팔에 용암과 같은 붉은 색의 피부를 지닌 기계 인간이 보인다. 당신이 다가가자 그는 경계하는 눈초리로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #60834 /* ~"안녕하시오."~ */ GOTO 8
  IF ~~ THEN REPLY #60835 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60836 /* ~그는 머리를 한쪽으로 기울이고 의심쩍은 눈초리로 당신을 쳐다본다. "왜 우리에게 계속 질문을 하는 거요? 이해할 수 없소."~ */
  IF ~~ THEN REPLY #60837 /* ~"항상 뭔가를 배울 가능성이 있기 때문이오."~ */ GOTO 9
  IF ~~ THEN REPLY #60838 /* ~"당신은 누구요?"~ */ GOTO 10
  IF ~~ THEN REPLY #60839 /* ~"당신은 어떤 존재요?"~ */ GOTO 11
  IF ~~ THEN REPLY #60840 /* ~"뭘 하고 있는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #60841 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60842 /* ~그는 생각을 하느라 잠시 시선을 돌린다. 그는 다시 당신 쪽으로 돌린 후, 고개를 끄덕여 동의한다. "그래... 그건 그렇다고 합시다... 내가 당신에게 고통에 대해 가르쳐 주겠소." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60843 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #60845 /* ~"나는 사악한 위저드의 부하이고 그는 당신을 죽이라고 명령했소." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60846 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #60847 /* ~"내가 바로 널 쓰러뜨릴 자다, 침입자!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60848 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #60849 /* ~"나는 당신을 죽이기 전에 사악한 위저드에게 미로에서의 당신 위치를 알리고 있소..." 그는 잠시 말을 멈춘다. "완료. 살인 개시." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60850 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4
  SAY #60851 /* ~"가시겠소? 벌써? 내가 가는 길을 안내해 드리도록 하겠소!" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60852 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 14 // from:
  SAY #60853 /* ~한쪽 팔에 용암과 같은 붉은 색의 피부를 지닌 기계 인간이 보인다. 당신이 다가가자 그는 경계하는 눈초리로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #60854 /* ~"안녕하시오."~ */ GOTO 15
  IF ~~ THEN REPLY #60855 /* ~로봇을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60856 /* ~그는 머리를 한쪽으로 기울이고 의심쩍은 눈초리로 당신을 쳐다본다. "당신은 정말 끈질기군, 그러나 어리석음에는 변함이 없소."~ */
  IF ~~ THEN REPLY #60857 /* ~"왜 우리가 싸워야 하는 거요? 너무나도 무의미한 것 같소." ~ */ GOTO 16
  IF ~~ THEN REPLY #60858 /* ~"당신은 누구요?"~ */ GOTO 17
  IF ~~ THEN REPLY #60859 /* ~"당신은 어떤 존재요?"~ */ GOTO 18
  IF ~~ THEN REPLY #60860 /* ~"뭘 하고 있는 거요?"~ */ GOTO 19
  IF ~~ THEN REPLY #60861 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60862 /* ~그는 대답을 하기 전에 당신을 한동안 쳐다본다. "무의미한 것처럼 보일 뿐이오, 침입자. 우리의 광기에는 이유가 있소..." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60863 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #60864 /* ~"개체로서는 아무도 아니오, 하지만 전체로서는 모두요." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60865 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY #60866 /* ~"목적을 위한 수단이오, 침입자" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60867 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #60868 /* ~"난 사악한 위저드에게 당신의 모든 성공, 실패, 그리고 움직임을 보고하고 있소. 당신에게서 우린 배울 수 있소. 당신 덕분에 우리는 더 강해질 수 있소." 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60869 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #60870 /* ~"그래... 다시 만날 때까지, 침입자" 그는 당신에게 달려든다.~ */
  IF ~~ THEN REPLY #60871 /* ~자신을 방어한다.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
