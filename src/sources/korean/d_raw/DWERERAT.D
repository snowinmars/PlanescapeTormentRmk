// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERERAT~

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23941 /* ~위어랫은 당신에게 야유를 보낸다. "인가아안! 주우욱어라!" 그는 공격을 개시한다.~ */
  IF ~~ THEN REPLY #23946 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23947 /* ~도망친다.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #23942 /* ~위어랫은 쉿 소리를 낸다. "죽어라! 인간!" 그는 당신에게 덤벼든다.~ */
  IF ~~ THEN REPLY #23948 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23949 /* ~도망친다.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #23943 /* ~위어랫은 쉿 소리를 낸다, 하지만 그는 공격하려는 욕구를 억제한다. 대신 그는 뒤로 살며시 물러나 당신을 유심히 살핀다.~ */
  IF ~~ THEN REPLY #23950 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("CR_Vic","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #23944 /* ~이 인간처럼 생긴 쥐는 찍찍 소리를 내며 대화를 하려는 당신의 시도를 거부한다. 그는 인간과 대화를 나누려는 욕구를 잃은 모양이다. ~ */
  IF ~~ THEN REPLY #23951 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("Zap","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #23945 /* ~위어랫은 쉿 소리를 낸다. "죽어라! 인간!" 그는 당신에게 덤벼든다.~ */
  IF ~~ THEN REPLY #23952 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23953 /* ~도망친다.~ */ EXIT
END

IF ~  CreatureInArea("AR0508")
~ THEN BEGIN 5 // from:
  SAY #67268 /* ~위어랫은 쉿 소리를 낸다, 하지만 그는 공격하려는 욕구를 억제한다. 대신 그는 뒤로 살며시 물러나 당신을 유심히 살핀다.~ */
  IF ~~ THEN REPLY #67269 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END
