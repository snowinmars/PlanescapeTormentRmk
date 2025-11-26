// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGV1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGV1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1956 /* ~당신이 접근하자 사내는 한 걸음 물러선다. 그의 눈빛은 비겁한 청소 동물의 눈을 연상하게 한다... 그를 바라보니 그가 자신이 당신을 이길 수 있는지 계산해 보고 있다는 걸 알 수가 있다. 하지만 그의 목소리는 불안으로 떨리고 있다. "날 내버려 두시오, 난 당신에게 아...아무 짓도 안 했소."~ */
  IF ~~ THEN REPLY #1957 /* ~"날 공격할 생각도 하지 마시오, 아니면 내 칼에 새로운 집을 얻게 될 테니."~ */ GOTO 3
  IF ~~ THEN REPLY #1958 /* ~"당신은 싸움을 원하는 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #1960 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #1959 /* ~"나는 싸움을 원하지 않소." 그는 말을 하면서 침을 많이 튀긴다. "하지만 만약 당신이 날 이길 수 있다고 생각한다면 큰코다칠 거요!"~ */
  IF ~~ THEN REPLY #1961 /* ~"그 *누구도* 내게 그런 식으로 말하진 못하오, 그리고 그 *누구도* 날 협박할 순 없소. 당신이 한 말을 취소하시오, 아니면 그럴 기회를 다시 한 번 얻기도 전에 죽을 테니."~ */ GOTO 2
  IF ~~ THEN REPLY #1962 /* ~"그래, 그래. 나로부터 일정한 거리를 유지하시오, 아니면 후회하게 될 테니. ~ */ GOTO 3
  IF ~~ THEN REPLY #1963 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1964 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1965 /* ~그는 당신을 뚱하게 쳐다본다.~ */
  IF ~~ THEN REPLY #1966 /* ~"내 말을 이해하지 못하겠소? 당신이 한 말을 취소하지 않으면 당신을 요절내겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #1971 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1972 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.1
  SAY #1967 /* ~그는 당신을 뚱하게 쳐다본다.~ */
  IF ~~ THEN REPLY #1968 /* ~"내 말을 이해하지 못하겠소? 더 이상 가까이 다가오면 당신을 요절내겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #1969 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1970 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #1973 /* ~그의 목소리가 떨린다. "그럼 내가... 한 말을 취소하겠소. 악의는 없소."~ */
  IF ~~ THEN REPLY #1974 /* ~"그럼 좋소. 내 앞에서 꺼지시오."~ */ EXIT
  IF ~~ THEN REPLY #1975 /* ~"내 앞에서 꺼지시오."~ */ EXIT
  IF ~~ THEN REPLY #1976 /* ~어쨌든 그를 공격한다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #1977 /* ~"그럼 당신을 귀찮게 하지 않겠소. 무슨 악의가 있었던 건 아니오."~ */
  IF ~~ THEN REPLY #1978 /* ~"그럼 좋소. 내 앞에서 당장 꺼지시오."~ */ EXIT
  IF ~~ THEN REPLY #1979 /* ~"내 앞에서 꺼지시오."~ */ EXIT
  IF ~~ THEN REPLY #1980 /* ~어쨌든 그를 공격한다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
