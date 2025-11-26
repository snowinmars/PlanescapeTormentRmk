// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANSF~

IF ~  Global("Annah_Death_Scene","GLOBAL",1)
!Global("Grace_Death_Scene","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #63314 /* ~아... 휜들링 소녀로군.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63315 /* ~너를 이 곳에 데려온 자는 어디 있는가?~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 0
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63316 /* ~네 말에는 열정의 힘은 있으나 이성이라곤 거의 없다. ~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63317 /* ~흥미롭군...~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #63318 /* ~네가 그를 따라 이 곳에 온 이유는 분명해지고 있-~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #63319 /* ~혹시 너는 네가 그의 눈에 *특별한* 존재로 보인다고 생각하나?~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 3
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63320 /* ~휜들링, 나는 네가 따르는 자를 여러 삶에 걸쳐 지켜보았다. 나는 그의 의중을 안다, 그리고 나는 무수히 많은 여자들이 그에게 열정을 불태웠다는 것을 알고 있다.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63321 /* ~그들 중에서도 너는 물론 가장 *하찮은* 존재에 불과하다. 너는 다원 우주와 네 부모들에 의해 버려진 *짐승*이나 마찬가지이다...~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 4
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63322 /* ~이 질문에 답하라, 그리고 침묵하라, 아이야.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63323 /* ~네가 따르는 자가 너에게 *소중*한 존재인가?~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201CSA3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #63336 /* ~내 목적은 네가 알 바가 아니다, 타락한 타나리. 네 시꺼먼 가슴이 고동을 치고 있는 것도 다 내 관대함 덕분이다. 원한다면 이 곳을 무사히 떠나도록 해주겠다. ~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1201csG5",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #63337 /* ~이 무의미한 일에 만족스런 결론이란 있을 수 없다. 네 죽지 않는 동료는 이 곳에 두고 떠나도록 하라.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63338 /* ~그가 목숨을 잃는 것을 걱정할 필요는 없다. 그가 치를 유일한 대가는 기억 상실이다.~ */
  IF ~~ THEN EXTERN ~DGRACEF~ 6
END

IF ~~ THEN BEGIN 13 // from:
  SAY #63339 /* ~*그는 잊을 것이다.* 무지한 채로 있는 것이 그의 *운명*이다. ~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63340 /* ~그는 너를 잊을 것이다, 타나리, 그가 자신의 불행의 여로에 동행한 다른 모든 자들을 잊었던 것처럼. 그는 죽고, 잊고, 다시 죽기 위해서만 존재한다. 그는 아무 것도 아니다.~ */
  IF ~~ THEN EXTERN ~DGRACEF~ 8
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63341 /* ~타나리...~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63342 /* ~너는 이 곳에서의 내 힘을 의심하는 모양이군. 시범을 보여주면 네 의심도 사라질 것이다.~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",4)
StartCutSceneMode()
StartCutSceneEx("1201csG7",FALSE)
~ EXIT
END
