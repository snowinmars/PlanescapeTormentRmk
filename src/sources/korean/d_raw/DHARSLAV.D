// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARSLAV~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50939 /* ~거구의 하모니움 경비병이 보인다. 그의 머리는 반백이며, 술에 취한 데다가 기분도 별로 좋아 보이지 않는다. 그는 자신들이 잡은 노예들을 감시하고 있으며, 입 한쪽 구석만 가지고 당신과 얘기를 한다. "뭘 원하오?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50940 /* ~"난 썩은 바스의 딸을 되찾으러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #50941 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #50942 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #50943 /* ~"나는 노예 거래를 중지시키러 왔소."~ */ GOTO 5
  IF ~~ THEN REPLY #50944 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #50945 /* ~"또 왔소?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50946 /* ~"난 썩은 바스의 딸을 되찾으러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #50947 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #50948 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #50949 /* ~"나는 노예 거래를 중지시키러 왔소."~ */ GOTO 5
  IF ~~ THEN REPLY #50950 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.0
  SAY #50951 /* ~"그녀를 되사고 싶소? 그럼 스캣치와 얘기하시오... 그가 책임자니까..."~ */
  IF ~~ THEN REPLY #50952 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #50953 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #50954 /* ~"나는 노예 거래를 중지시키러 왔소."~ */ GOTO 5
  IF ~~ THEN REPLY #50955 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 4.1
  SAY #50956 /* ~그는 투덜거린다. "뭐처럼 보이오? 우린 하모니움 '신병 모집원들'이오."~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50957 /* ~"그렇다면 난 썩은 바스의 딸을 되찾으러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #50958 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #50959 /* ~"나는 노예 거래를 중지시키러 왔소."~ */ GOTO 5
  IF ~~ THEN REPLY #50960 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.1 3.1
  SAY #50961 /* ~"뭐처럼 보이오? 스캣치는 신병 모집이라고 하지만 난 노예 사냥이라고 부르지. 난 신경 쓰지 않소. 수입이 짭짤하니까." 그는 조심스럽게 당신을 쳐다본다. "뭐 원하는 거라도 있소?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50962 /* ~"난 썩은 바스의 딸을 되찾으러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #50963 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #50964 /* ~"나는 노예 거래를 중지시키러 왔소."~ */ GOTO 5
  IF ~~ THEN REPLY #50965 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.2 3.2 4.2
  SAY #50966 /* ~"헤. 왜 내게 그 얘기를 했지? 이제 당신을 죽여야 하잖아." 그는 무기를 뽑아 들고 공격한다!~ */
  IF ~~ THEN REPLY #50967 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
