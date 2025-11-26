// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH1~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38573 /* ~"쉿... 고기... 트로코포타카가 우리가 보물 얻는 것 방해해 , 그렇지? 트로코는 죽어야 해. 넌 보물 가지고, 우린 고기 먹어. 좋지?" ~ */
  IF ~~ THEN REPLY #38588 /* ~"그 괴물은 대체 뭐요?"~ */ GOTO 1
  IF ~~ THEN REPLY #38589 /* ~"좋소."~ */ GOTO 2
  IF ~~ THEN REPLY #38590 /* ~"난 그렇게 생각하지 않소."~ */ GOTO 3
  IF ~~ THEN REPLY #38591 /* ~"당신 친구는 왜 저러는 거요?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #38592 /* ~"트로코포타카야. 하얗고, 뿔, 사나워. 트로코들 고오기 먹어. 우리 적적. 죽여, 알겠어어?"~ */
  IF ~~ THEN REPLY #38593 /* ~"당신 친구는 왜 저러는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #38594 /* ~"내가 놈을 죽이겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #38595 /* ~"그냥 당신이 하시오."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.1
  SAY #38596 /* ~"그래래... 좋아. 넌 보물 가지고 우린 고기 먹어. 당장 가! 죽여!"~ */
  IF ~~ THEN REPLY #38597 /* ~"난 가겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.2
  SAY #38598 /* ~"스스스... 쓸모없는 고깃덩어리 같으니. 꺼져!"~ */
  IF ~~ THEN REPLY #38599 /* ~"알겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.0
  SAY #38600 /* ~"하 하... 겁장이야, 그는. 트로코를 무서워 해. 하 하. 우릴 위해 놈을 죽여줘, 아알았어?"~ */
  IF ~~ THEN REPLY #38601 /* ~"그놈은 대체 뭐요?"~ */ GOTO 1
  IF ~~ THEN REPLY #38602 /* ~"좋소. 내가 놈을 죽이겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #38603 /* ~"아니, 난 그렇게 생각하지 않소."~ */ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38604 /* ~"하 하... 겁장이야, 그는. 트로코를 무서워 해. 하 하. 우릴 위해 놈을 죽여줘, 아알았어?"~ */
  IF ~~ THEN REPLY #38605 /* ~"그럼 난 가겠소."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38606 /* ~"그가 죽었어... 그건 네 책임이야! 그는 죽었어! 죽어라, 고기!" 굴은 당신을 공격한다!~ */
  IF ~~ THEN REPLY #38607 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38608 /* ~도망친다.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38609 /* ~"그가 죽었어... 그건 네 책임이야! 그는 죽었어! 죽어라, 고기!" 굴은 당신을 공격한다!~ */
  IF ~~ THEN REPLY #38610 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38611 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38612 /* ~"쉿... 트로코는 죽었소... 넌 보물 가지고, 우린 고기 먹어. 좋지?" ~ */
  IF ~~ THEN REPLY #38613 /* ~"저놈은 대체 뭐요?"~ */ GOTO 9
  IF ~~ THEN REPLY #38614 /* ~"좋소."~ */ GOTO 10
  IF ~~ THEN REPLY #38615 /* ~"만약 당신이 먼저 죽는다면 그렇지도 않겠지."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38616 /* ~"트로코포타카야. 하얗고, 뿔, 사나워. 트로코들 고오기 먹어. 우리 적적. 맛맛 나빠. 이제 죽었어, 고마워, 고기."~ */
  IF ~~ THEN REPLY #38617 /* ~"천만에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38618 /* ~"그럼 그걸 가지고 가... 우린 먹어야 해."~ */
  IF ~~ THEN REPLY #38619 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #38620 /* ~"또 왔어, 고기? 돈을 챙긴 다음에 가."~ */
  IF ~~ THEN REPLY #38621 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
