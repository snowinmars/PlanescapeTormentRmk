// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGUARD~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27728 /* ~적색의 갑옷을 입은 이 거한은 자리에 똑바로 서서 행인들을 유심히 살피고 있다. 당신은 그가 입고 있는 장식된 갑옷이 그가 이 도시의 경찰 역할을 하는 하모니움 소속 사관이라는것을 나타내고 있다는 사실을 희미하게나마 기억해낸다. ~ */
  IF ~~ THEN REPLY #27898 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #27900 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27923 /* ~이 사내는 불쑥 거리 쪽을 가리킨다. "움직이시오."~ */
  IF ~~ THEN REPLY #27924 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #27925 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #27926 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.1 12.1 13.1 14.0
  SAY #27927 /* ~"내게 물어봐야 소용없소. 움직이시오."~ */
  IF ~~ THEN REPLY #27928 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #27929 /* ~"몇 가지 질문에 대한 답을 듣고 싶을 뿐이오."~ */ GOTO 3
  IF ~~ THEN REPLY #27930 /* ~"나는 당신 도움이 필요하오..."~ */ GOTO 4
  IF ~~ THEN REPLY #27931 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27932 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #27933 /* ~그는 고개를 젓는다. "그럼 시민들 중 한 사람에게 물어보시오. 나는 여기서 해야 할 일이 있소... 당신이나 다른 사람과 얘기를 하기 위해 그것을 소홀히 할 수는 없소. 그만 가보시오."~ */
  IF ~~ THEN REPLY #27934 /* ~"적어도 당신이 여기서 뭘 하고 있는지 정도는 얘기해줄 수 있지 않겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #27935 /* ~"하지만 난 당신 도움이 필요하오..."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 4
  IF ~~ THEN REPLY #27936 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27937 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #27938 /* ~그는 무기를 든다. "도움이 필요하오? 어떤 범죄가 저질러졌소?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27939 /* ~"아니오... 질문하고 싶은 것들이 좀 있을 뿐이오."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27940 /* ~"아니오... 질문하고 싶은 것들이 좀 있을 뿐이오."~ */ GOTO 6
  IF ~~ THEN REPLY #27941 /* ~"아니, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27942 /* ~그는 한숨을 쉰다. "당신에게 질문하고 싶은 것들이 있다는 건 나도 알고 있소, 그리고 다른 장소나 시간에서였더라면 기꺼이 도왔을 거요. 하지만-" 그는 지나가는 어떤 행인을 의심에 찬 눈초리로 쳐다보느라 잠시 말을 멈춘다. 그리고 다시 당신 쪽으로 고개를 돌린다. "하지만 지금은 그럴 경황이 없으니... 그냥 떠나 주시오."~ */
  IF ~~ THEN REPLY #27943 /* ~"적어도 당신이 여기서 뭘 하고 있는지 정도는 얘기해줄 수 있지 않겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #27944 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27945 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27946 /* ~"이봐, 얼간이, 내게는..." 그는 지나가는 어떤 행인을 의심에 찬 눈초리로 쳐다보느라 잠시 말을 멈춘다. 그리고 다시 당신 쪽으로 시선을 돌린다. "내게는 맡겨진 임무가 있어, 하지만 쓸데없는 질문만 하고 길이나 가르쳐 달라고 하는 미치광이와 얘기를 하다가는 할 일을 할 수가 없어. 그러니 그만 가봐."~ */
  IF ~~ THEN REPLY #27947 /* ~"적어도 당신이 여기서 뭘 하고 있는지 정도는 얘기해줄 수 있지 않겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #27948 /* ~"만약 내가 바로 여기에 계속 머무르고 싶다면?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27949 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 5.1 6.1
  SAY #27950 /* ~그가 어깨를 으쓱하자 그의 갑옷에서 철커덩 소리가 난다. "여기 서 있는 건 당신 자유지만 법을 어기지는 마시오. 말썽이 생기기 전에 떠나는 게 신상에 좋을 거요. 잘 가시오."~ */
  IF ~~ THEN REPLY #27951 /* ~"적어도 당신이 여기서 뭘 하고 있는지 정도는 얘기해줄 수 있지 않겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #27952 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27953 /* ~이 하모니움 사관은 그의 뒤에 있는 계단을 지키고 있는 것 같다. 이 사람을 전에 만난 적이 있다는 생각이 드나, 하모니움 사관들은 모두 큰 투구를 쓰고 동일한 갑옷을 입고 있기 때문에 구별하기 힘들다.~ */
  IF ~~ THEN REPLY #27954 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #27955 /* ~사관을 그냥 내버려 둔다.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27956 /* ~당신은 이 남자가 최근 당신을 잡으려고 혈안이 된 하모니움의 멤버임을 알아본다. 그는 아직 당신을 눈치채지 못한 것 같다. ~ */
  IF ~~ THEN REPLY #27957 /* ~"안녕하시오..."~ */ GOTO 10
  IF ~~ THEN REPLY #27958 /* ~그가 당신을 보기 전에 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27959 /* ~그의 투구의 틈새로 그의 눈이 휘둥그레지는 것이 보인다. "놈이다!" 그는 당신을 향해 돌격할 준비를 하며 고함을 지른다. "산 채로든 죽여서든 이 자를 잡아!"~ */
  IF ~~ THEN REPLY #27960 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 5.0 6.0 7.0
  SAY #27961 /* ~그는 자기 뒤에 있는, 시의 지하로 직통하는 계단을 가리킨다. "이 계단을 경비하고 있소."~ */
  IF ~~ THEN REPLY #27962 /* ~"왜? 그것은 어디로 통하오?"~ */ GOTO 12
  IF ~~ THEN REPLY #27963 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #27964 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #27965 /* ~"지하 세계로 통하오." 그는 당신의 표정을 보고 얘기를 계속한다. "당신도 아는지 모르겠지만 그 곳은 지하 시길이라고도 불리오."~ */
  IF ~~ THEN REPLY #27966 /* ~"당신이 사람들이 그 곳에 들어가는 것을 막는 데는 무슨 이유라도 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #27967 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #27968 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #27969 /* ~그는 조용히 낄낄 웃는다. 그러자 그의 갑옷의 철판들이 덜거덕거린다. "나는 그 곳에서 *나올지도* 모르는 것들에 대비하여 경계하고 있소. 시길에 *존재해서는* 안 될 것들 말이오."~ */
  IF ~~ THEN REPLY #27970 /* ~"그 지하에는 어떤 것들이 도사리고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #27971 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #27972 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #27973 /* ~"당신이 신경 쓸 것 없소." 그는 잠시 기묘하다는 표정으로 당신을 쳐다본다. "당신은 저 아래로 내려갈 생각이군, 그렇지 않소? 그럼 최대한 조심하는 것이 좋을 것이오. 지하에는 가장 끔찍한 괴물들이 살고 있다는 소문이 나돌고 있으니까."~ */
  IF ~~ THEN REPLY #27974 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 2
  IF ~~ THEN REPLY #27975 /* ~"주의를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END
