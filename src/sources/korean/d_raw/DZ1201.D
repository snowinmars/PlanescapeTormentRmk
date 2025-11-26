// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1201~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~시체의 이마에는 잉크로 "1201"이란 번호가 적혀 있으며, 잉크는 눈을 거쳐 볼과 턱에까지 흘러내렸다. 잉크가 흘러내려 간 자국을 따라가다가 당신은 잉크가 시체의 입술을 꿰맨 자국 틈새로까지 들어가 시체의 입 안에 낀 쪽지와 같은 것의 구석에서 멈추었다는 사실을 깨닫는다. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34954 /* ~쪽지를 빼내려고 시도한다.~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34957 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34958 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34959 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ GOTO 2
  IF ~~ THEN REPLY #34962 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
  IF ~~ THEN REPLY #34963 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34955 /* ~쪽지는 좀비 입 안의 점액으로 범벅이 되어 있다. 만약 당신 시체의 입술을 꿰매고 있는 실들 사이로 쪽지를 억지로 꺼내려고 한다면 종이가 갈기갈기 찢어질 것 같다. 시체를 칼로 베어서 꺼내는 방법도 쪽지를 파손할 위험이 크다. 쪽지를 꺼내기 전에 꿰맨 실들부터 조심스럽게 제거할 방법부터 찾아야 할 것 같다.~ */
  IF ~~ THEN REPLY #34956 /* ~메스를 이용하여 꿰맨 곳들을 잘라낸다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34960 /* ~당신은 시체의 입을 꿰매고 있는 실들을 능숙하게 잘라낸다, 그러자 시체의 턱이 아래로 쳐지면서 입이 열린다. 당신은 시체의 입으로부터 쪽지를 조심스럽게 꺼낸다... 종이의 상태에도 불구하고 그 위에 적힌 글은 아직도 알아볼 수가 있다. 

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #34961 /* ~시체를 다시 조사한다.~ */ EXIT
END
