// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33556 /* ~"우! *저걸* 좀 봐!"~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33557 /* ~"흠... 더스티의 시체들 중 하나가 도망친 모양이군!" 사내는 사악하게 웃는다. ~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #33558 /* ~"우리가 왜 그래야 하지?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33579 /* ~"만약 그러지 않으면 내가 당신들 둘 모두 죽일 테니까."~ */ EXTERN ~DTHUGT1~ 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33580 /* ~"만약 그러지 않으면 내가 당신들 둘 모두 죽일 테니까."~ */ EXTERN ~DTHUGT1~ 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33581 /* ~"난 말썽은 원하지 않기 때문이오... 날 그냥 지나가게 해주시오."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33582 /* ~"난 말썽은 원하지 않기 때문이오... 날 그냥 지나가게 해주시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33559 /* ~"그래, 친구... 그냥 농담이야, 농담..."~ */
  IF ~~ THEN REPLY #33583 /* ~"그럼에도 불구하고 난 당신들 둘 다 죽여야겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Taunter_1","GLOBALGood",-1)
SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #33584 /* ~그들이 떠나도록 내버려 둔다.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #33560 /* ~두 사람 모두 나이프를 뽑는다...~ */
  IF ~~ THEN REPLY #33585 /* ~그들과 싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33586 /* ~도망친다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #33561 /* ~"말썽은 원하지 않아?! 그거 안됐군, 왜냐하면-"~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT1~ 5
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #33562 /* ~"말썽은 원하지 않아?! 그거 안됐군, 왜냐하면 넌 이미 말썽에 말려들었거든!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT1~ 6
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33563 /* ~"어..." 사내는 자기 친구를 쳐다본다. "오, 친구, 그가 실제로..."~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY #33564 /* ~사내는 한 걸음 물러선다. "더스티의 시체들하고 싸우는 건 악운을 부른다고, 친구... 어서 가자..." 두 사람은 돌아서서 화급하게 떠난다.~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
END
