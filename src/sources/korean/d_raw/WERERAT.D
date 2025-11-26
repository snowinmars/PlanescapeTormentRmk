// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~WERERAT~

IF ~  Dead("Mantuok")
~ THEN BEGIN 0 // from:
  SAY #29298 /* ~"죽어라라라! 인간 쓰레기!" 위어랫은 당신에게 돌격한다.~ */
  IF ~~ THEN REPLY #29304 /* ~"빌어먹을, 난 얘기를 하려고 했을 뿐이오."~ */ DO ~Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY #29299 /* ~추악한 쥐 인간은 당신을 향해 쉿 소리를 낸다. "뭘 원하지, 인간?"~ */
  IF ~~ THEN REPLY #29305 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #29306 /* ~"로타는 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #29307 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #29308 /* ~"당신은 만투옥을 아시오?"~ */ GOTO 5
  IF ~~ THEN REPLY #29309 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29300 /* ~위어랫은 경멸하는 눈초리로 당신을 훑어본다. "네가 알 바가 아니야, 인간." 그는 찍찍거리며 웃는다. ~ */
  IF ~~ THEN REPLY #29310 /* ~"좋소, 그럼. 로타는 어디 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #29311 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #29312 /* ~"만투옥은 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #29313 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #29301 /* ~"주인님이... 이 곳에 오실 거다. 틀림없어... 그분은 널 지켜보고 계신다." 그의 수염이 당신 쪽으로 씰룩거린다. "당장 꺼져! 난 더 이상 너와 얘기하기 싫으니까!"~ */
  IF ~~ THEN REPLY #29314 /* ~"좋소, 그럼."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.1
  SAY #29302 /* ~"여긴 우리 둥지다. 이 곳에 자주 올 생각은 아니겠지, 인간? 우리에겐 너 따윈 필요없어."~ */
  IF ~~ THEN REPLY #29315 /* ~"그 일에 대해서는 걱정하지 마시오. 냄새 때문에 그러려고 해도 그러지 못할 것 같소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #29316 /* ~"아마 그런 일은 없을 거요. 그 곳은 별로 쾌적한 곳이 아니니까. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2
  SAY #29303 /* ~"만투옥? 그를 만나 뭘 하려는 거지? 만약 네가 만투옥을 만날 필요가 있다면 만투옥이 널 찾을 거야." 그는 찍찍거리며 당신으로부터 물러선다.~ */
  IF ~~ THEN REPLY #29317 /* ~"로타가 어디 있는지 말해주시오."~ */ GOTO 3
  IF ~~ THEN REPLY #29318 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #29319 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
