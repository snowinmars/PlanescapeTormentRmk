// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ396~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~이 시체는 철판들 사이를 왔다갔다하며 그 위에 누워 있는 시체들을 붕대로 감고 있다. 그의 왼쪽 관자놀이에는 "396"이란 번호가 새겨져 있으며, 그의 입은 꿰매어져 있다. 당신은 시체의 손에 붕대가 들려 있다는 사실을 눈치챈다... 붕대는 쓸만해 보인다.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"그 붕대 좀 빌려도 괜찮겠소?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"그 붕대 좀 빌려도 괜찮겠소?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34936 /* ~좀비로부터 붕대를 풀어서 떼어내려고 시도한다.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34937 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 2
  IF ~~ THEN REPLY #34940 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ EXIT
  IF ~~ THEN REPLY #34941 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34933 /* ~시체는 계속 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #34934 /* ~좀비로부터 붕대를 풀어서 떼어내려고 시도한다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34938 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
  IF ~~ THEN REPLY #34939 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END
