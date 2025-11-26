// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUSTFER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUSTFER~

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
GlobalLT("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #47616 /* ~"뭐?" 뭘 원하지? 언제쯤이면 피를 보기 시작할 수 있는 거야?"~ */
  IF ~~ THEN REPLY #47617 /* ~"자네 태도가 어찌 그 모양인가?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47618 /* ~"자네의 그 온화했던 마음씨는 대체 어떻게 되어버린 건가?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #47619 /* ~"곧. 내 질문에나 좀 대답해주게."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #47620 /* ~"얼마 안 있어 시작할 거네. 지금은 다시 잠이나 자게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ EXIT
END

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
Global("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #47621 /* ~"뭐?" 뭘 원하지? 언제쯤이면 피를 보기 시작할 수 있는 거야?"~ */
  IF ~~ THEN REPLY #47622 /* ~"자네 태도가 어찌 그 모양인가?"~ */ GOTO 9
  IF ~~ THEN REPLY #47623 /* ~"자네의 그 온화했던 마음씨는 대체 어떻게 되어버린 건가?"~ */ GOTO 7
  IF ~~ THEN REPLY #47624 /* ~"곧. 내 질문에나 좀 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47625 /* ~"얼마 안 있어 시작할 거네. 지금은 다시 잠이나 자게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #47626 /* ~"뭐?" 뭘 원하지? 언제쯤이면 피를 보기 시작할 수 있는 거야?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47627 /* ~"자네 태도가 어찌 그 모양인가?"~ */ GOTO 9
  IF ~~ THEN REPLY #47628 /* ~"자네의 그 온화했던 마음씨는 대체 어떻게 되어버린 건가?"~ */ GOTO 7
  IF ~~ THEN REPLY #47629 /* ~"곧. 내 질문에나 좀 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47630 /* ~"얼마 안 있어 시작할 거네. 지금은 다시 잠이나 자게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #47631 /* ~"뭐?" 뭘 원하지? 언제쯤이면 피를 보기 시작할 수 있는 거야?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47632 /* ~"자네 태도가 어찌 그 모양인가?"~ */ GOTO 9
  IF ~~ THEN REPLY #47633 /* ~"자네의 그 온화했던 마음씨는 대체 어떻게 되어버린 건가?"~ */ GOTO 7
  IF ~~ THEN REPLY #47634 /* ~"곧. 내 질문에나 좀 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47635 /* ~"얼마 안 있어 시작할 거네. 지금은 다시 잠이나 자게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #47636 /* ~"뭐?" 뭘 원하지? 언제쯤이면 피를 보기 시작할 수 있는 거야?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47637 /* ~"자네 태도가 어찌 그 모양인가?"~ */ GOTO 9
  IF ~~ THEN REPLY #47638 /* ~"자네의 그 온화했던 마음씨는 대체 어떻게 되어버린 건가?"~ */ GOTO 7
  IF ~~ THEN REPLY #47639 /* ~"곧. 내 질문에나 좀 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47640 /* ~"얼마 안 있어 시작할 거네. 지금은 다시 잠이나 자게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 5 // from:
  SAY #47641 /* ~"뭐?" 뭘 원하지? 언제쯤이면 피를 보기 시작할 수 있는 거야?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47642 /* ~"자네 태도가 어찌 그 모양인가?"~ */ GOTO 9
  IF ~~ THEN REPLY #47643 /* ~"자네의 그 온화했던 마음씨는 대체 어떻게 되어버린 건가?"~ */ GOTO 7
  IF ~~ THEN REPLY #47644 /* ~"곧. 내 질문에나 좀 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47645 /* ~"얼마 안 있어 시작할 거네. 지금은 다시 잠이나 자게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 6 // from:
  SAY #47646 /* ~"뭐?" 뭘 원하지? 언제쯤이면 피를 보기 시작할 수 있는 거야?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47648 /* ~"자네 태도가 어찌 그 모양인가?"~ */ GOTO 9
  IF ~~ THEN REPLY #47649 /* ~"자네의 그 온화했던 마음씨는 대체 어떻게 되어버린 건가?"~ */ GOTO 7
  IF ~~ THEN REPLY #47650 /* ~"곧. 내 질문에나 좀 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47651 /* ~"얼마 안 있어 시작할 거네. 지금은 다시 잠이나 자게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.1 4.1 5.1 6.1
  SAY #47652 /* ~"과거는 과거고 지금은 지금이라고. 난 빈둥거리면서 나약한 얘기나 하는 데는 질렸어. 가서 뭔가를 죽이자고."~ */
  IF ~~ THEN REPLY #47653 /* ~"자네 성격이 왜 그렇게 변했는지 알고 싶네."~ */ GOTO 9
  IF ~~ THEN REPLY #47654 /* ~"우선 내 질문에 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47655 /* ~"관두게. 나중에 얘기하세."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 2.2 3.2 4.2 5.2 6.2 7.1 9.1 13.0 14.0 15.0 16.0 17.1 18.0 19.2 20.0 21.1 22.0 41.2
  SAY #47656 /* ~"우리가 얘기를 한 후 뭔가를 죽일 수만 있다면."~ */
  IF ~~ THEN REPLY #47657 /* ~"자네에게 대체 무슨 일이 일어난 건가?"~ */ GOTO 9
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47658 /* ~"모트에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47659 /* ~"안나에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 13
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47660 /* ~"다콘에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 14
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47661 /* ~"훨-후럼-그레이스에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 15
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47662 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 16
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47663 /* ~"이그너스에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 16
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47664 /* ~"노돔에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 16
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47665 /* ~"자네 자신에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 17
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47666 /* ~"자네 자신에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 18
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47667 /* ~"자네 자신에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 19
  IF ~~ THEN REPLY #47668 /* ~"관두게. 그럼 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0
  SAY #47669 /* ~"우리가 지금 있는 곳이 증오에 이바지하고 있다고만 해 두자고, 알겠어? 나는 마계를 싫어하고 마계는 날 싫어해."~ */
  IF ~~ THEN REPLY #47670 /* ~"왜?"~ */ GOTO 10
  IF ~~ THEN REPLY #47671 /* ~"그럼 내 질문에 대답해주게."~ */ GOTO 8
  IF ~~ THEN REPLY #47672 /* ~"좋네. 이제 난 자네를 치우겠네."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47673 /* ~"왜냐하면 놈들은 날 한 번 타락시켰어, 그리고 난 같은 일이 반복되도록 결코 용납하지 않을 거야! 입 닥치고 죽이기나 하자고!"~ */
  IF ~~ THEN REPLY #47674 /* ~"우선 내 질문에 좀 대답해주게."~ */ GOTO 11
  IF ~~ THEN REPLY #47675 /* ~"지금 당장은 더 얘기할 것이 없네."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #47676 /* ~무기는 음울하게 입을 다문다. ~ */
  IF ~~ THEN DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY #47677 /* ~"놈은 사악한 배신자야! 난 놈을 투포환처럼 던진 후 날아간 거리만큼만 믿겠어... 물론 내게 그렇게 할 팔이 있다면 말이지만. 그의 충고는 조심하라고 충고하겠어. 내 말은 그를 절대 믿지 말라는 거야. 난 놈 같은 부류의 작자들을 보았고, 그런 놈들은 기회만 있으면 당신을 등 뒤에서 찌를 거라고."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 488
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY #47678 /* ~"그녀에 대해선 모르겠어. 그녀에게는 마족의 피가 흐르고 있어. 마족은 믿을 수가 없어. 그러니 가능한 한 빨리 버리는 게 좋아. 게다가, 그녀는 소녀에 불과해. 그 방면에... 보다 경험이 있는... 여자들도 많잖아. 내 말 무슨 뜻인지 알지?~ */
  IF ~~ THEN REPLY #47679 /* ~"조언을 해주어 고맙네. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47680 /* ~"고맙네."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY #47681 /* ~"그? 그 음침하고, 무표정하고, 완고한 자 말이야? 모드론하고 섹스하는 것만큼이나 유용하지. 내가 할 말은 그뿐이야."~ */
  IF ~~ THEN REPLY #47682 /* ~"조언을 해주어 고맙네. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47683 /* ~"고맙네."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY #47684 /* ~"그래, 그녀를 믿으라고. 타나리를 믿는 것은 언제나 바람직한 일이지. 그들이 악하게 태어났다고 해서 모두 다 나쁜 사람들이란 건 아냐. 그런데 있잖아, 지금 나는 냄새는 반정거리는 냄새야. 당신은 지금 그 속으로 직행하고 있어."~ */
  IF ~~ THEN REPLY #47685 /* ~"조언을 해주어 고맙네. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47686 /* ~"고맙네."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 8.6 8.7
  SAY #47687 /* ~"나도 몰러. 본 적이 없어."~ */
  IF ~~ THEN REPLY #47688 /* ~"조언을 해주어 고맙네. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47689 /* ~"고맙네."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.8
  SAY #47690 /* ~"나는 '변명자'라고 하지. 내 이름을 말할 때는 정관사를 꼭 붙이도록. 나는 아르카디아에서 호루스(이집트의 천공신, 오시리스와 이시스의 아들)의 후원으로 만들어졌어. 흠, 당신은 왠지 낯이 익군... 나는 어떤 일에 대해서도 변명을 댈 수 있기 때문에 그 이름을 얻었지. 게다가 대부분의 사람들은 내게 몇 대만 맞으면 당신이 정당하다고 깨닫게 되지." ~ */
  IF ~~ THEN REPLY #47691 /* ~"어떻게 낯이 익다는 말인가?~ */ GOTO 20
  IF ~~ THEN REPLY #47692 /* ~"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47693 /* ~"알았네. 잘 있게.~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.9
  SAY #47694 /* ~"나는 그래도 '변명자'야... 당신은 왠지 낯이 익은데 생각은 나지 않으니 돌아버리겠군... 타나리와 뭔가 관계가 있는데... 아, 관두자고. 어쨌든 나는 당신의 가장 믿음직한 친구든지 아니면 최악의 적이야, 날 기준으로 당신이 어느 쪽에 서느냐에 따라서 말이여. 내 이름은 '변명자'니까 잊지 말라고."~ */
  IF ~~ THEN REPLY #47695 /* ~"아직도 날 어디서 봤는지 기억이 나지 않나? 좋네. 질문할 것들이 더 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47696 /* ~"아직도 생각이 나지 않나? 그럼 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.10
  SAY #47697 /* ~"이제 당신이 누군지 기억이 나는군. 당신이 자신이 내 소유주라고 생각하곤 했었지. 흉터 때문에 못 알아볼 뻔했지만 이제는 알겠어. 이거 알아? 당신이 그 브락들과 싸우다가 죽은 후 놈들은 날 뒤틀어 버렸어. 당신 책임이야. 하지만 당신 가는 곳엔 늘 피가 따르지. 당신과 함께 있으면 확실히 피로 내 몸을 적실 수가 있지."~ */
  IF ~~ THEN REPLY #47698 /* ~"브락이 뭔가?"~ */ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ GOTO 21
  IF ~~ THEN REPLY #47699 /* ~"자네 정신을 뒤틀리게 만들었다고? 어떻게?"~ */ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ GOTO 22
  IF ~~ THEN REPLY #47700 /* ~"관두게. 그 밖에도 물어볼 것들이 있네..."~ */ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ GOTO 8
  IF ~~ THEN REPLY #47701 /* ~"관두게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #47702 /* ~"모르겠어, 언젠가는 생각이 나겠지. 그러니까 자꾸만 묻지 말라고."~ */
  IF ~~ THEN REPLY #47703 /* ~"멋지군. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47704 /* ~"멋지군. 사색를 즐기게. 그럼 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #47705 /* ~"브락이 뭐냐고? 정말 아무 것도 기억하지 못하는 거야? 콘도르처럼 생긴 타나리의 일종이라고. 놈들 중 하나가 당신 가슴을 창으로 열어제쳤으니까 그런 건 기억하고 있으리라고 생각했는데, 우리는 놈들과 싸워서 여러 마리를 죽였지, 하지만 재수없게 놈들 중 하나가 당신을 죽였지... 그리고 놈들은 날 주워서 타락시켰어..."~ */
  IF ~~ THEN REPLY #47706 /* ~"자네 정신을 뒤틀리게 만들었다고? 어떻게?"~ */ GOTO 22
  IF ~~ THEN REPLY #47707 /* ~"멋지군. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47708 /* ~"안됐군. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1 21.0
  SAY #47709 /* ~그것은 그 일에 대해 기억하지 않으려고 필사적으로 노력을 하고 있는 것 같다. "모르는 게 나. 놈들의 정신은 이질적이며 순수한 악 그 자체니까. 그런 놈들에게 사용당하다니..." 그는 당신 손 안에서 부르르 떤다. "그건 결코 기억하고 싶은 일이 아냐. 놈들의 뛰어난 점을 하나 들라면 - 그건 놈들이 고문하는 데 있어 창의력이 풍부하다는 거야." ~ */
  IF ~~ THEN REPLY #47710 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있네..."~ */ GOTO 8
  IF ~~ THEN REPLY #47711 /* ~"그렇겠지. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier_Lower_Planes","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #47712 /* ~'변명자'는 부끄러워하는 듯하다. "난 마계에서 좀 돌아버렸어, 대장. 미안, 다시는 그런 일 없을 거야."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47713 /* ~"어떤 일이 일어났었나?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47714 /* ~"어떤 일이 일어났었나?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #47715 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 31
  IF ~~ THEN REPLY #47716 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",0)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 24 // from:
  SAY #47717 /* ~'변명자'는 부끄러워하는 듯하다. "난 마계에서 좀 돌아버렸어, 대장. 미안, 다시는 그런 일 없을 거야."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47718 /* ~"어떤 일이 일어났었나?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47719 /* ~"어떤 일이 일어났었나?"~ */ GOTO 30
  IF ~~ THEN REPLY #47720 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ GOTO 31
  IF ~~ THEN REPLY #47721 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #47722 /* ~'변명자'는 부끄러워하는 듯하다. "난 마계에서 좀 돌아버렸어, 대장. 미안, 다시는 그런 일 없을 거야."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47723 /* ~"어떤 일이 일어났었나?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47724 /* ~"어떤 일이 일어났었나?"~ */ GOTO 30
  IF ~~ THEN REPLY #47725 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ GOTO 31
  IF ~~ THEN REPLY #47726 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #47727 /* ~'변명자'는 부끄러워하는 듯하다. "난 마계에서 좀 돌아버렸어, 대장. 미안, 다시는 그런 일 없을 거야."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47729 /* ~"어떤 일이 일어났었나?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47730 /* ~"어떤 일이 일어났었나?"~ */ GOTO 30
  IF ~~ THEN REPLY #47731 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ GOTO 31
  IF ~~ THEN REPLY #47732 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #47728 /* ~'변명자'는 부끄러워하는 듯하다. "난 마계에서 좀 돌아버렸어, 대장. 미안, 다시는 그런 일 없을 거야."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47733 /* ~"어떤 일이 일어났었나?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47734 /* ~"어떤 일이 일어났었나?"~ */ GOTO 30
  IF ~~ THEN REPLY #47735 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ GOTO 31
  IF ~~ THEN REPLY #47736 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 28 // from:
  SAY #47737 /* ~'변명자'는 부끄러워하는 듯하다. "난 마계에서 좀 돌아버렸어, 대장. 미안, 다시는 그런 일 없을 거야."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47738 /* ~"어떤 일이 일어났었나?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47739 /* ~"어떤 일이 일어났었나?"~ */ GOTO 30
  IF ~~ THEN REPLY #47740 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ GOTO 31
  IF ~~ THEN REPLY #47741 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 29 // from:
  SAY #47742 /* ~'변명자'는 부끄러워하는 듯하다. "난 마계에서 좀 돌아버렸어, 대장. 미안, 다시는 그런 일 없을 거야."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47743 /* ~"어떤 일이 일어났었나?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47744 /* ~"어떤 일이 일어났었나?"~ */ GOTO 30
  IF ~~ THEN REPLY #47745 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ GOTO 31
  IF ~~ THEN REPLY #47746 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #47747 /* ~"오래 전, 내게 주인이 있었을 때, 우리는 뭔가를 찾으려고 어비스로 갔어. 그것이 무엇이었는지는 까먹었어. 우리는 우리가 어떤 적이라도 상대할 수 있다고 생각했지. 단단히 잘못 생각했던 거지. 내 주인은 죽임을 당했고 놈들은 날... *뒤틀리게* 만들었어. 난 마계의 기운에 노출되면 다시 성질이 더러워질 때가 있어."~ */
  IF ~~ THEN REPLY #47748 /* ~"안됐군. 자네에게 물어볼 것들이 있네."~ */ GOTO 31
  IF ~~ THEN REPLY #47749 /* ~"안됐군. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 24.2 25.2 26.2 27.2 28.2 29.2 30.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.1 40.0 42.0 43.1 44.0 45.0 46.0
  SAY #47750 /* ~"원하는 건 뭐든지 물어봐, 대장."~ */
  IF ~  GlobalGT("Justifier_Lower_Planes","GLOBAL",0)
~ THEN REPLY #47751 /* ~"자네에게 대체 무슨 일이 일어난 건가?"~ */ GOTO 33
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47752 /* ~"모트에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 34
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47753 /* ~"안나에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 35
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47754 /* ~"다콘에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 36
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47755 /* ~"훨-후럼-그레이스에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 37
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47756 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 38
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47757 /* ~"이그너스에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 38
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47758 /* ~"노돔에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 38
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47759 /* ~"자네 자신에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 39
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47760 /* ~"자네 자신에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 40
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47761 /* ~"자네 자신에 대해 내게 어떤 얘기를 해줄 수가 있겠나?"~ */ GOTO 41
  IF ~~ THEN REPLY #47762 /* ~"관두게. 그럼 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.0 24.0 25.0 26.0 27.0 28.0 29.0
  SAY #47763 /* ~"오래 전 당신이 내 주인이었을 때, 우리는 뭔가를 찾으려고 어비스로 갔지. 그것이 무엇이었는지는 까먹었어. 우리는 우리가 어떤 적이라도 상대할 수 있다고 생각했지. 단단히 잘못 생각했던 거지. 우리는 아찔할 정도의 수의 브락들 - 콘도르와 흡사한 타나리들과 조우했지. 우리는 놈들을 여럿 죽였지만 재수없게 놈들 중 하나가 무시무시하게 생긴 창으로 당신 심장을 갈기갈기 찢어 버렸어. 놈들은 날 주워... *뒤틀리게* 만들었어. 난 마계의 기운에 노출되면 다시 성질이 더러워질 때가 있어."~ */
  IF ~~ THEN REPLY #47764 /* ~"끔찍하군. 자네에게 물어볼 것들이 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47765 /* ~"안됐군. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.0
  SAY #47766 /* ~그것은 다소 부끄러워하는 듯하다. "내가 어비스에 떨어졌을 때 타나리들이 날 뒤틀어 놓는 바람에 나는 자제력을 잃게 되었어. 대부분의 경우에는 내 스스로를 제어할 수가 있어. 미안해, 대장."~ */
  IF ~~ THEN REPLY #47767 /* ~"괜찮네. 내 질문에나 대답해주게"~ */ GOTO 31
  IF ~~ THEN REPLY #47768 /* ~"괜찮네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #47769 /* ~당신은 메이스에 달린 눈이 앞뒤로 왔다갔다하고 있다는 인상을 받는다. 그것은 속삭인다. "그에 대해서는 예감이 좋지 않아, 대장, 하지만 말로 잘 표현할 수는 없어. 그 해골은 내 기억들 중 달갑지 않은 것들과 연관이 되어 있는 것 같아. 기억하지 못하기 때문에 왜 그런지는 설명할 수 없지만..."~ */
  IF ~~ THEN REPLY #47770 /* ~"나중에. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47771 /* ~"나중에. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.2
  SAY #47772 /* ~"내 솔직한 의견? 그녀는 성격이 좀 격렬하기는 하지만... 내 생각에 그녀는 대장을 좋아하는 것 같아. 물론 그녀는 그걸 숨기려고 하지만... 내 생각에 그녀는 믿어도 좋아, 대장이 그녀를 먼저 배신하지 않는 한."~ */
  IF ~~ THEN REPLY #47773 /* ~"고맙네. 그 밖에도 물어보고 싶은 것들이 좀 있네." ~ */ GOTO 31
  IF ~~ THEN REPLY #47774 /* ~"고맙네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.3
  SAY #47775 /* ~"그가 대장과 함께 여행하는 데는 그 만한 이유가 있을 거야, 하지만 그것이 대장에게 이로운 것인지는 나도 모르겠어. 대장도 기스저라이에 대해서는 알잖아. 그들은 결속력이 강해, 그리고 그들이 동족 이외의 사람들과 여행을 할 때는 반드시 이유가 있어. 내가 대장을 위해 그를 감시하도록 할께."~ */
  IF ~~ THEN REPLY #47776 /* ~"고맙네. 질문할 것들이 몇 개 더 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47777 /* ~"고맙네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.4
  SAY #47778 /* ~메이스는 미친 듯이 당신에게 속삭인다. "대장! 대체 타나리와 뭘 하고 있는 거야? 두 마디만 하지. 타나리. 서큐버스. 그녀는 사악해. 그녀의 피는 악의 정수로 만들어졌어. . 그녀는 믿을 수가 없어. 좋은 사람인 척 할 수도 있겠지만 그건 아무런 의미가 없어. 그녀는 자신이 개심했다고 말할지도 모르지만, 그건 또 하나의 거짓말에 불과해. 그녀와 그녀의 동족들은 아주 고단수로 사기를 치거든. 그건 그들의 본성이야."~ */
  IF ~~ THEN REPLY #47779 /* ~"자네 의견에는 감사하네. 다른 질문들에 대답해주게..."~ */ GOTO 31
  IF ~~ THEN REPLY #47780 /* ~"자네 의견에는 감사하네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.5 31.6 31.7
  SAY #47781 /* ~"아무 것도 몰라... 나는 이러한 사람들에 대해서는 몰라, 대장,"~ */
  IF ~~ THEN REPLY #47782 /* ~"좋네. 그럼 내 질문에 대답해주게..."~ */ GOTO 31
  IF ~~ THEN REPLY #47783 /* ~"좋네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.8
  SAY #47784 /* ~"나는 '변명자'라고 해. 나는 어떤 일에 대해서도 변명을 댈 수 있기 때문에 그렇게 불리고 있어. 게다가 대부분의 사람들은 내게 몇 대만 맞으면 당신이 정당하다고 깨닫게 되지. 나는 아르카디아의 헬리오폴리스에서 호루스(이집트의 천공신, 오시리스와 이시스의 아들)의 후원을 받고 있는 장인들 중 한 사람에 의해 만들어졌어. 흠, 당신은 왠지 낯이 익군..." ~ */
  IF ~~ THEN REPLY #47785 /* ~"어떻게 낯이 익다는 말인가?~ */ GOTO 42
  IF ~~ THEN REPLY #47786 /* ~"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47787 /* ~"좋네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.9
  SAY #47788 /* ~"알아야 할 게 뭐지? 나는 정의와 빛의 무기이고, 전투에서 쓸모가 있지... 그래도 왠지 당신은 낯이 익은데 생각은 나지 않으니 미치겠군... 타나리와 뭔가 관계가 있는데... 아, 관두자고. 어쨌든 나는 당신의 가장 믿음직한 친구든지 아니면 최악의 적이야, 날 기준으로 당신이 어느 쪽에 서느냐에 따라서 말이야." 그는 자신의 농담이 웃기는지 크게 웃는다. ~ */
  IF ~~ THEN REPLY #47789 /* ~"아직도 날 어디서 봤는지 기억이 나지 않나? 좋네. 질문할 것들이 더 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47790 /* ~"아직도 생각이 나지 않나? 그럼 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 31.10
  SAY #47791 /* ~"이제 당신이 누군지 기억이 나는군! 대장은 오래 전에 내 주인이었어. 그 당시의 기억은 희미하긴 하지만... 당신이 틀림없어. 흉터 때문에 못 알아볼 뻔했어. 이거 알아? 지금 대장은 그 때보다 더 험상궂게 보이는군. 고생을 많이 한 것 같아. 나는 대장이 죽음으로부터 깨어날 때마다 조언을 해주곤 했어, 하지만 대장이 그 브락들과 싸우다가 모숨을 잃었을 때, 놈들은 재장의 시체를 그냥 내버려 둔 채 날 가지고 가버렸어. 다시 만나서 정말 반가워."~ */
  IF ~~ THEN REPLY #47792 /* ~"이건 뭐, des vrocks ?"~ */ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ GOTO 43
  IF ~  False()
~ THEN REPLY #47793 /* ~"자네 정신을 뒤틀리게 만들었다고? 어떻게?"~ */ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ GOTO 44
  IF ~~ THEN REPLY #47794 /* ~"관두게. 그 밖에도 물어볼 것들이 있네..."~ */ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ GOTO 8
  IF ~~ THEN REPLY #47795 /* ~"관두게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~나는 말하는 메이스인 '정의의 대변자'가 한때는 내 무기였다는 사실을 알게 되었다. 그것은 내 과거에 대해 자세히 기억하고 있지는 못하나, 우리는 무언가를 찾으러 함께 어비스로 갔었고 거기서 나는 죽었던 것 같다. ~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.0
  SAY #47797 /* ~"미안하지만 지금은 기억이 나지 않아... 내게 시간을 조금만 더 주면 틀림없이 기억해 낼 수 있을 거야."~ */
  IF ~~ THEN REPLY #47798 /* ~"멋지군. 그 밖에도 물어볼 것들이 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47799 /* ~"멋지군. 사색을 즐기게. 그럼 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #47800 /* ~"콘도르처럼 생긴 타나리의 일종이야. 대장은 용감하게 싸웠지만 그들의 수는 너무나도 많았어. 재수없게 그들은 우리의 방어를 꿰뚫고는 가시가 박힌 창으로 당신 심장을 뜯어내고는 당신이 피를 흘리면서 죽도록 내버려 두었어. 그들은 날 가져가 타락시켰어... 정말 끔찍했다고..."~ */
  IF ~~ THEN REPLY #47801 /* ~"자네 정신을 뒤틀리게 만들었다고? 어떻게?"~ */ GOTO 44
  IF ~~ THEN REPLY #47802 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47803 /* ~"안됐군. 잘 있게"~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 41.1 43.0
  SAY #47804 /* ~그것은 그 일에 대해 기억하지 않으려고 필사적으로 노력을 하고 있는 것 같다. "모르는 게 나. 놈들의 정신은 이질적이며 순수한 악 그 자체니까. 그런 놈들에게 사용당하다니..." 그는 당신 손 안에서 부르르 떤다. "그건 결코 기억하고 싶은 일이 아냐. 놈들의 뛰어난 점을 하나 들라면 - 그건 놈들이 고문하는 데 있어 창의력이 풍부하다는 거야." ~ */
  IF ~~ THEN REPLY #47805 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있네..."~ */ GOTO 31
  IF ~~ THEN REPLY #47806 /* ~"그렇겠지. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #47808 /* ~이 메이스의 견고한 금속 부분에는 눈이 하나 새겨져 있다. 눈은 그것은 당신과 얘기를 할 때마다 푸른 빛으로 반짝이며, 감정과 생각을 당신에게 전달한다. "안녕. 당신이 내 새 주인이겠군."~ */
  IF ~~ THEN REPLY #47809 /* ~"맞네. 물어보고 싶은 것들이 좀 있네..."~ */ GOTO 31
END

IF ~  GlobalGT("Justifier","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #47810 /* ~"다시 만나 반가워. 내게 뭘 원하지?"~ */
  IF ~~ THEN REPLY #47811 /* ~"나는 몇 가지 질문에 대한 답을 듣고자 할 뿐이네.."~ */ GOTO 31
  IF ~~ THEN REPLY #47812 /* ~"아무 것도 아니네. 잘 있게."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END
