// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~이 시체의 살이 많이 붙어 있는 대가리는 과거 어느 시점에서 잘려 나가 실로 급하게 꿰매서 붙여 놓은 것이 틀림없다. 여러 종류의 꿰맨 자국들이 있고, 또 실이 풀어진 정도가 각기 다른 것으로 미루어 볼 때, 이 시체의 머리는 작업 중에 여러 번 떨어져 나갔고, 그 때마다 꿰매어 봉합했던 것 같다. 시체의 관자놀이에는 "79"란 번호가 새겨져 있으며, 그것은 이빨 달린 원에 의해 둘러싸여 있다. 원은 시체의 이마에 낙인으로 찍힌 것 같다. ~ */
  IF ~~ THEN REPLY #34943 /* ~"그래... 뭐 재미있는 일은 없소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALZombie_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",0)
~ THEN REPLY #34946 /* ~이빨 달린 원을 살펴본다.~ */ DO ~SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #34944 /* ~시체는 계속 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #34945 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3 3.0 3.1
  SAY #34949 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~~ THEN REPLY #34950 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64278 /* ~이빨 달린 원은 시체의 이마에 오래 전, 그것도 아마 그가 죽기 전에 찍혀진 것 같다. 그것은 종교적인 상징이거나 어떤 통과 의례의 징표인지도 모른다. 당신은 안쪽의 이빨들 사이의 움푹 들어간 곳들 중 한 곳에는 무슨 특별한 의미가 있는 것처럼 작은 삼각형이 있다는 사실을 발견한다. ~ */
  IF ~  !PartyHasItem("CopEarC")
~ THEN REPLY #64279 /* ~"흠... 흥미롭군. 그 표시가 어떻게 해서 거기에 있게 되었지, 시체?"~ */ JOURNAL #64536 /* ~나는 좀비 #79의 이마에서 송곳니가 달린 원  모양의 기묘한 심벌을 발견했다. 어쩐지 그 문양은 중요한 것이라는 생각이 드나 그 이유는 모르겠다. ~ */ GOTO 2
  IF ~  PartyHasItem("CopEarC")
~ THEN REPLY #64280 /* ~"흠... 이빨들 사이의 공간이 내가 가지고 있는 이 구리 귀걸이의 홈들에 대응될지도..."~ */ JOURNAL #64537 /* ~나는 좀비 #79의 이마에서 송곳니가 달린 원  모양의 기묘한 심벌을 발견했다. 그 심벌을 보니 남동쪽 준비실에서 발견한 고대의 구리 귀걸이 생각이 났다. 아무 둘은 서로 무슨 연관이 있는지도 모르겠다. ~ */ GOTO 2
END
