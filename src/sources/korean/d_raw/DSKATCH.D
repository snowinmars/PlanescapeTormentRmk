// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKATCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKATCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50896 /* ~의전 갑옷을 입은 하모니움 사관이 보인다. 그는 하모니움 노예 상인들의 지휘자인 것 같다. 그는 그들 중에서도 유별나게 오만하고 잔인한 자 같다. "뭘 원하오?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50897 /* ~"나는 썩은 바스의 딸을 되찾으러 왔소."~ */ GOTO 1
  IF ~~ THEN REPLY #50898 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #50899 /* ~"당신은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #50900 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50901 /* ~그는 능글맞게 웃는다. "그래? 만약 내가 그년을 죽이면 어떻게 할 거지?" 그는 부하들에게 손짓한다. "그년을 죽여!" 그는 칼을 뽑아 당신을 공격한다!~ */
  IF ~~ THEN REPLY #50902 /* ~싸운다.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #50903 /* ~"나와 내 부하들은 사람들을 모아 무엇이 옳고 그른지를 가르치려 하고 있소. 보시다시피 모두 다 자발적으로 우리의 호의에 응하는 것은 아니오... 그러나 우리는 그들도 결국에는 바른 길을 걷도록 만들 것이오." 그는 당신을 살펴본다. "당신도 좋은 신병이 될 수 있을 것 같소."~ */
  IF ~~ THEN REPLY #50904 /* ~"관심없소."~ */ GOTO 3
  IF ~~ THEN REPLY #50905 /* ~"더 자세히 말해주시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #50906 /* ~"안됐군." 그는 부하들에게 손짓한다. "계집은 관두고 이 놈을 데려가."~ */
  IF ~~ THEN REPLY #50907 /* ~싸운다.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #50908 /* ~"기꺼이. 당신을 아르카디아로 데려가 진실을 보여주지." 그는 부하들에게 손짓한다. "이 자를 데려가."~ */
  IF ~~ THEN REPLY #50909 /* ~싸운다.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #50910 /* ~"나는 하모니움 2급 사관 스캣치요." 그는 인사를 한다. "나와 내 부하들은 신병을 모집하고 있고. 하모니움의 길에 대해 더 배울 생각이 있소?"~ */
  IF ~~ THEN REPLY #50911 /* ~"없소."~ */ GOTO 3
  IF ~~ THEN REPLY #50912 /* ~"더 자세히 말해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #50913 /* ~"내게는 예속처럼 들리는구려. 어떻게 이번 한 번만 봐줄 수는 없겠소?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #50914 /* ~"당신은 별로 똑똑하지 않군, 안 그렇소? 아니, 기회란 없소. 세상에는 우리의 길과 그릇된 갈 두 가지만이 존재할 뿐이오. 그릇된 자들은... 처벌을 받아야만 하오." 그는 당신을 가리키며 부하들을 부른다. "이 자를 데려가!"~ */
  IF ~~ THEN REPLY #50915 /* ~싸운다.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
