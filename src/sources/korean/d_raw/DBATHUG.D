// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2826 /* ~"당신은 대체 누구야? 가서 타락자 윌리엄과 얘기를 하라고. 당신 답이 마음에 들지 않으면 그는 당신을 죽일 거야. 당신이 그와 얘기를 하지 않으면 우리가 당신을 죽일 거고. 자 가라고."~ */
  IF ~~ THEN REPLY #3550 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3551 /* ~"이런 젠장! 내가 당신보고 가서 타락자 윌리엄과 얘기를 하라고 했잖아! 얼간이 같으니. 다크앨리 쉬브! 공격하라!"~ */
  IF ~~ THEN REPLY #3552 /* ~도망친다.~ */ EXIT
  IF ~~ THEN REPLY #3553 /* ~공격한다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3554 /* ~"당신이 그 자칭 정의의 사도를 죽였어? 잘했군. 그는 정말 눈에 가시같은 존재였지. 가서 윌리엄과 얘기를 하라고, 그가 당신한테 뭔가 좋은 걸 줄 테니."~ */
  IF ~~ THEN REPLY #3555 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3556 /* ~"나하고 얘기하는 건 관두고 가서 그 자칭 정의의 사도를 죽이라고! 우리 목숨이 위협받고 있어!"~ */
  IF ~~ THEN REPLY #3557 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3558 /* ~"난 그 독선적인 계집이 언젠가는 죽을 줄 알았다고. 가서 타락자 윌리엄과 얘기를 해, 그가 당신에게 할 말이 있으니."~ */
  IF ~~ THEN REPLY #3559 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3560 /* ~"당신에겐 가서 죽여할 작자가 있잖아!?"~ */
  IF ~~ THEN REPLY #3561 /* ~떠난다.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3562 /* ~"넌 죽었어! 다크앨리 쉬브! 공격하라!"~ */
  IF ~~ THEN REPLY #3563 /* ~공격한다.~ */ DO ~Enemy()
SetGlobal("0301_Bad_Angry","AR0301",1)
~ EXIT
  IF ~~ THEN REPLY #3564 /* ~도망친다.~ */ EXIT
END
