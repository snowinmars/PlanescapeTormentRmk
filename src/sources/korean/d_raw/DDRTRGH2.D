// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH2~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38622 /* ~"우우릴 위해 트로코를 죽여, 그리고 당신은 그것의 돈을 가져. 우린 그것의 음식 먹고. 좋지?"~ */
  IF ~~ THEN REPLY #38623 /* ~"그 괴물은 대체 뭐요?"~ */ GOTO 1
  IF ~~ THEN REPLY #38636 /* ~"좋소."~ */ GOTO 4
  IF ~~ THEN REPLY #38637 /* ~"난 그렇게 생각하지 않소."~ */ GOTO 3
  IF ~~ THEN REPLY #38638 /* ~"당신 친구는 왜 저러는 거요?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #38624 /* ~"트로코포토카. 좋아해? 우린 싫어... 무섭고 사나운 괴물물. 그것들도 우리 싫어해. 이이이 놈... 우리가 원하는 시체 지켜. 죽여 줄래?"~ */
  IF ~~ THEN REPLY #38625 /* ~"당신 친구는 왜 저러는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #38632 /* ~"내가 놈를 죽이겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #38635 /* ~"그냥 당신이 하시오."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3 1.0
  SAY #38626 /* ~"친구 아냐! 허풍선이! 큰 굴! 자긴 아무 곳도 안 무섭대대! 그가 트로코 가까이 가는 거 봤어? 아니! 그는 겁쟁이! 당신이 그것을 죽이고 용기가 뭔지 그에게 보여줘!"~ */
  IF ~~ THEN REPLY #38627 /* ~"그놈은 대체 뭐요?"~ */ GOTO 1
  IF ~~ THEN REPLY #38628 /* ~"좋소. 내가 놈을 죽이겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #38631 /* ~"아니, 난 그렇게 생각하지 않소."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.2
  SAY #38629 /* ~"스스스... 쓸모없는 고깃덩어리 같으니. 꺼져!"~ */
  IF ~~ THEN REPLY #38630 /* ~"알겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #38633 /* ~"고마워... 놈이 죽죽으면 돈을 가져."~ */
  IF ~~ THEN REPLY #38634 /* ~"그게 바로 내 계획이오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38639 /* ~"왜 트로코 안 죽이지? 트로콘 죽어야 햐! 죽여!"~ */
  IF ~~ THEN REPLY #38640 /* ~"그럼 난 가겠소."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38641 /* ~"왜... 왜 돌아왔지, 어리석은 고기? 죽어라!" 괴물은 당신에게 덤빈다!~ */
  IF ~~ THEN REPLY #38642 /* ~싸운다.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #38643 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38644 /* ~"왜... 왜 돌아왔지, 어리석은 고기? 죽어라!" 괴물은 당신에게 덤빈다!~ */
  IF ~~ THEN REPLY #38645 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38646 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38647 /* ~"넌 네 보물물 가져가, 좋지? 가지고 가, 고기."~ */
  IF ~~ THEN REPLY #38648 /* ~"저놈은 대체 뭐요?"~ */ GOTO 9
  IF ~~ THEN REPLY #38651 /* ~"좋소."~ */ GOTO 10
  IF ~~ THEN REPLY #38652 /* ~"만약 당신이 먼저 죽는다면 그렇지도 않겠지."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38649 /* ~"트로코포토카. 좋아해? 우린 싫어... 무섭고 사나운 괴물. 그것들도 우리 싫어해. 이제 죽었어... 그렇지?"~ */
  IF ~~ THEN REPLY #38650 /* ~"천만에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38653 /* ~"그럼 가지고 가... 우린 먹어야하니까. "~ */
  IF ~~ THEN REPLY #38654 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #67831 /* ~"발써 왔어어어. 가. 우리 먹어."~ */
  IF ~~ THEN REPLY #67832 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
