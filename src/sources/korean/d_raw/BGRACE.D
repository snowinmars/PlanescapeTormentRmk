// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BGRACE~

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31487 /* ~"모트, 전 궁금해요... 당신 몸은 어떻게 되었나요?"~ [FFG326] */
  IF ~~ THEN EXTERN ~DMORTE~ 603
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61473 /* ~"당신은 언어 구사 능력은 상당하군요. 돌아가면 매음굴에서 한동안 지내면서 갈고 닦도록 하세요."~ [FFG309] */
  IF ~~ THEN EXTERN ~DMORTE~ 604
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #61474 /* ~"모트, 솔직히 전 당신이 어떻게 떠다니는 해골이 되었는지 알고 싶군요."~ [FFG323] */
  IF ~~ THEN EXTERN ~DMORTE~ 605
END

IF ~~ THEN BEGIN 3 // from:
  SAY #61475 /* ~"그게 당신이었나요?~ [FFG323A] */
  IF ~~ THEN EXTERN ~DMORTE~ 606
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #61476 /* ~"모트, 당신이 무엇인지 다시 말해주겠어요? 제게는 얘기해준 적이 없는 것 같군요."~ [FFG324] */
  IF ~~ THEN EXTERN ~DMORTE~ 607
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #61477 /* ~"모트, 진지하게 부탁하겠어요. 당신 자신에 대해 얘기를 해주세요."~ [FFG325] */
  IF ~~ THEN EXTERN ~DMORTE~ 608
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61478 /* ~"당신은 말싸움 능력은 상당하군요. 당신 능력의 한계를 시험해 보고 싶어요."~ [FFG310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 609
END

IF ~~ THEN BEGIN 7 // from:
  SAY #61479 /* ~"그건 무엇이었죠"~ [FFG310AA] */
  IF ~~ THEN EXTERN ~DMORTE~ 610
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 8 // from:
  SAY #61480 /* ~"모트, 당신은 스스로의 가치를 입증하고 있어요. 이대로 계속 나가면 상을 받게 될 거예요."~ [FFG308] */
  IF ~~ THEN EXTERN ~DMORTE~ 611
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #61646 /* ~"안나... 당신은 벌통에서 자랐나요?"~ [FFG328] */
  IF ~~ THEN EXTERN ~DANNAH~ 287
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61647 /* ~"그럼 좋아요."~ [FFG328A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #61649 /* ~"안나... 우리 서로 대화를 나누는 것이 좋을 것 같군요."~ [FFG327] */
  IF ~~ THEN EXTERN ~DANNAH~ 288
END

IF ~~ THEN BEGIN 12 // from:
  SAY #61650 /* ~"그럼 알겠어요."~ [FFG327A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #61652 /* ~"당신의 전사로서의 기량은 정말 놀랍군요, 다콘."~ [FFG307] */
  IF ~~ THEN EXTERN ~DDAKKON~ 358
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY #61653 /* ~"당신의 자제력은 정말 놀랍군요, 다콘."~ [FFG306] */
  IF ~~ THEN EXTERN ~DDAKKON~ 359
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61654 /* ~"자신에게 너무 엄하신 건 아닌가요?"~ [FFG306A] */
  IF ~~ THEN EXTERN ~DDAKKON~ 360
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61655 /* ~"노돔, 근원과 다른 모드론들로부터 분리된 기분은 어떤가요 ?"~ [FFG330] */
  IF ~~ THEN EXTERN ~DNORDOM~ 132
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61656 /* ~"당신과 모트는 제가 처음 생각한 것보다 공통점이 많은 것 같군요."~ [FFG330A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #61657 /* ~"노돔... 당신은 석궁과 얘기를 하고 있나요?"~ [FFG331] */
  IF ~~ THEN EXTERN ~DNORDOM~ 133
END

IF ~~ THEN BEGIN 19 // from:
  SAY #61658 /* ~"오. 다행이에요. 저는..."~ [FFG331A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 134
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61659 /* ~"오."~ [FFG331B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #61660 /* ~"노돔, 당신은 쿼드론 모드론아죠? 당신 날개는 어떻게 되었나요?"?"~ [FFG329] */
  IF ~~ THEN EXTERN ~DNORDOM~ 135
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61661 /* ~"당신은 타락한 작은 천사 같군요."~ [FFG329A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 136
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 23 // from:
  SAY #61662 /* ~"노돔, 당신은 제가 본 중에서 가장 작고 귀여운 불량 모드론이에요."~ [FFG305] */
  IF ~~ THEN EXTERN ~DNORDOM~ 137
END

IF ~~ THEN BEGIN 24 // from:
  SAY #61663 /* ~"물론이에요. 그것이 당신이 그토록 귀여운 이유죠."~ [FFG305A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Nordom","GLOBAL",0)
~ EXIT
END
