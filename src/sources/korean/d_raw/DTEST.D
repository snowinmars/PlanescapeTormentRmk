// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEST~

IF ~  True()
~ THEN BEGIN 0 // from: 1.3 2.0 3.0 4.0 5.0 8.4 9.3 11.3 18.1 20.0 20.1 21.0 22.0 22.1 22.2 22.3 24.0 25.0
  SAY #2632 /* ~"나는 테스트용 캐릭터요. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #41912 /* ~나를 도둑으로 만드시오, 테스토클."~ */ DO ~SetNamelessClass(THIEF)
~ GOTO 13
  IF ~  False()
~ THEN REPLY #2633 /* ~짐을 위해 일련의 테스트 휠드로 가고 싶다. ~ */ GOTO 1
  IF ~~ THEN REPLY #2634 /* ~괄호가 제대로 기능하는지 보고 싶다.~ */ GOTO 2
  IF ~~ THEN REPLY #2635 /* ~내가 이 반응을 보이면 당신이 자세를 바꿀지 보고 싶다.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2636 /* ~AI 테스트를 좀 하고 싶다.~ */ GOTO 4
  IF ~~ THEN REPLY #2674 /* ~대화를 시험해보고 싶다. ~ */ GOTO 5
  IF ~~ THEN REPLY #2785 /* ~랍은 인터훼이스를 위해 가가게 작성 커맨드를 테스트하고 싶어 한다.~ */ GOTO 8
  IF ~~ THEN REPLY #46613 /* ~I'd like to do some Global Variable tests.~ */ DO ~PlaySound("JRGWav03")
DestroyItemObject("Embalm",Protagonist,FALSE)
DestroyPartyItem("NEEDLE",FALSE)
~ GOTO 18
  IF ~  False()
~ THEN REPLY #49175 /* ~How about a Narrative text test, baby?~ */ GOTO 21
  IF ~~ THEN REPLY #50013 /* ~A question about Jim's variable, do you know if it is set to zero?~ */ GOTO 22
  IF ~  NearbyDialog("DTESTB")
~ THEN REPLY #54300 /* ~파티 내 대화 테스트를 하고 싶소, 테스토클.~ */ EXIT
  IF ~  !NearbyDialog("DTESTB")
~ THEN REPLY #54303 /* ~파티 내 대화 테스트를 하고 싶소, 테스토클.~ */ DO ~TakePartyItemNum("Celestia",1)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Polymorph(Trias)
AddexperienceParty(10000)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~~ THEN REPLY #2702 /* ~관둬라. 정상적인 애니메이션 사이클로 돌아가라.~ */ DO ~FloatMessage(Protagonist,9621)
SetGlobal("Morte_Dead","GLOBAL",1)
PlaySound("FFG139")
Recoil()
FloatMessage(Myself,9620)
SetGlobal("Morte_Dead","GLOBAL",0)
Wait(5)
AddexperienceParty(100000000)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 10.1
  SAY #2637 /* ~"아, 짐 가드너? 그는 정말 몽상가요. 그는 내게 뭘 원하는 거요?"~ */
  IF ~~ THEN REPLY #2638 /* ~"대량의 텍스트와 여러 종류의 응답을 표시해 주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #2639 /* ~"소량의 텍스트와 몇 종류의 응답만 표시해 주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #2639 /* ~"소량의 텍스트와 몇 종류의 응답만 표시해 주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24208 /* ~"실은 지금은 아무런 용건도 없소. 날 메인 메뉴로 돌려보내 주시오."~ */ GOTO 0
  IF ~~ THEN REPLY #24209 /* ~"당신이 어떻게 지내는지 확인하고 싶었을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #2640 /* ~"오? 이걸 볼 수가 있소?" [만약 각괄호가 제대로 인식된다면 이 문장을 볼 수가 있다.]~ */
  IF ~~ THEN REPLY #2641 /* ~메인 메뉴로 돌아간다.~ */ GOTO 0
  IF ~~ THEN REPLY #2642 /* ~그냥 체크했을 뿐이오, 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 3.1 3.2 3.3
  SAY #2643 /* ~"보았소?! 보았소?!"~ */
  IF ~~ THEN REPLY #2644 /* ~조용! 당신은 결코 알지 못할 것이다. 이제 나를 메인 메뉴로 돌려보내라.~ */ GOTO 0
  IF ~~ THEN REPLY #2645 /* ~다시 한다. ~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2646 /* ~자세를 바꾼다. ~ */ DO ~SetAnimState(Myself,ANIM_STANCEFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2647 /* ~첫 번째 스탠드 애니메이션을 하고 2초를 기다린다, 그 다음에 자세를 바꾸고 다시 2초를 기다린다, 그리고 다시 처음 자세로 돌아간다. 알았나?" ~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANCEFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2712 /* ~그냥 체크했을 뿐이다. 고맙다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY #2675 /* ~"예를 들어...?"~ */
  IF ~~ THEN REPLY #2676 /* ~관둬라. 당신의 메인 메뉴로 잠깐 돌아가자.~ */ GOTO 0
  IF ~~ THEN REPLY #2677 /* ~나로부터 도망 갈수 있다면 도망쳐라. 겁에 질린 것처럼. "RunAwayFrom ((PC), 2000)"~ */ DO ~RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2678 /* ~나로부터 도망 갈수 있다면 도망쳐라. 겁에 질린 것처럼. "RunAwayFrom ((PC), 2000)" 하지만 이번에는 적의 플래그를 하나 설정하고 어떻게 되는지 본다. ~ */ DO ~Enemy()
RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2679 /* ~관둬라. 안녕.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY #2703 /* ~그녀가 눈알을 희번덕거린다. "어떤 대사 말이죠?"~ */
  IF ~~ THEN REPLY #2704 /* ~관둬라. 이제 당신의 메인 메뉴로 돌아가자..~ */ GOTO 0
  IF ~~ THEN REPLY #2705 /* ~당신이 날 공격한다는 메시지가 표시되는 노드로 당신을 보내는 이 옵션을 선택했으나 내 응답 노드에 아무런 텍스트도 없으면 어떻게 되나? '계속하려면 클릭'만 표시되나? 그리고 그 곳에 설정된 행동 스크립트는 실제로 작동하나? 말해보게, 푸.~ */ GOTO 6
  IF ~~ THEN REPLY #2707 /* ~만약 이 응답이 날 모트의 노드들 중 하나로 보냈으나, 모트의 노드들 중에는 응답 노드가 없다면, 어떻게 되나?~ */ EXTERN ~DMORTE~ 50
  IF ~~ THEN REPLY #2708 /* ~관둬라. 정상적인 애니메이션 상태로 복귀하라, 테스토클."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #2706 /* ~그녀는 으르렁거리며 당신을 공격한다!~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #2710 /* ~"아니, 나는 아무 것도 안 했소! 그가 시작한 거요!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 51
END

IF ~~ THEN BEGIN 8 // from: 0.6
  SAY #2786 /* ~"정말? 난 그 섹시한 랍 할러웨이을 위해서라면 뭐든지 할 수 있어. 어떤 가게를 보고 싶어?"~ */
  IF ~~ THEN REPLY #2787 /* ~"내게 '가게1'을 보여주시오."~ */ DO ~StartStore("Store1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #2790 /* ~"내게 '여관1'을 보여주시오."~ */ DO ~StartStore("Inn1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7032 /* ~"내게 '선술집1'을 보여주시오."~ */ DO ~StartStore("Tavern1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7037 /* ~"내게 '신전1'을 보여주시오."~ */ DO ~StartStore("Temple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7038 /* ~"관두시오. 날 메인 메뉴로 돌려보내 주시오."~ */ GOTO 0
  IF ~~ THEN REPLY #7039 /* ~"이 대화창에서 빠져나가고 싶소."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 9.0 9.5 9.6 9.7 9.8 9.9 9.10 9.11 9.12 9.13 9.14 9.15 9.16 9.17 9.18 9.19 11.1
  SAY #24210 /* ~대량의 대사, 대답: "일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다. 일만 하고 놀지는 않아 짐은 재미없는 아이다.~ */
  IF ~~ THEN REPLY #24211 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24212 /* ~"내게 짧은 대사와 짧은 응답을 다시 보여주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #24213 /* ~"내게 짧은 대사와 긴 응답을 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24214 /* ~"나를 메인 메뉴로 돌려보내 주시오."~ */ GOTO 0
  IF ~~ THEN REPLY #24215 /* ~"내가 보고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #24216 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24217 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24218 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24219 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24220 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24221 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24222 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24223 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24224 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24225 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24226 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24227 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24228 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24229 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24230 /* ~"내게 긴 대사와 긴 응답을 다시 보여주시오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 10 // from: 1.1 9.1 10.0 11.2
  SAY #24231 /* ~소량의 대사. 짧은 대답: "여기 있소."~ */
  IF ~~ THEN REPLY #24232 /* ~"내게 짧은 대사, 짧은 응답을 다시 보여주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #24233 /* ~"나를 정원사 메뉴로 돌려보내 주시오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 1.2 9.2 11.0 11.5 11.6 11.7 11.8 11.9 11.10 11.11 11.12 11.13 11.14 11.15 11.16 11.17 11.18 11.19
  SAY #24234 /* ~소량의 대사. 긴 대답: "여기 있소."~ */
  IF ~~ THEN REPLY #24235 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24236 /* ~"내게 긴 대사, 긴 응답을 보여주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #24237 /* ~"내게 짧은 대사, 짧은 응답을 제발 보여주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #24238 /* ~"나를 메인 메뉴로 돌려보내 주시오."~ */ GOTO 0
  IF ~~ THEN REPLY #24239 /* ~"내가 보고 싶었던 건 그게 전부요, 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #24240 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24241 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24242 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24243 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24244 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24245 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24246 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24247 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24248 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24249 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24250 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24251 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24252 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24253 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #24254 /* ~"내게 짧은 대사, 긴 응답을 다시 보여주시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 12 // from:
  SAY #39061 /* ~This was a new node, but by the time you see it it will be an old node. Da Node grew Ode! Text Text Text Words Words Words. One of these nodes is not like the other, one of these nodes is not the same.....~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.0
  SAY #42286 /* ~"As you wish; you're now a THIEF."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 15.0
  SAY #42878 /* ~This is a test of the...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #42880 /* ~Go away!~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #42885 /* ~What's this anyway?~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #42886 /* ~Don't do that again! Or else!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.7
  SAY #46614 /* ~그렇다면 좋소. 우리는 오늘 MORTE_DEAD로 테스트를 진행할꺼요. 계속할 준비는 되었소?~ */
  IF ~~ THEN REPLY #46616 /* ~Of course I'm ready you idiot! I TOLD you that I wanted to do the test.~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",0)
SetGlobal("MORTE_DEAD","GLOBAL",1)
SetGlobal("MORTE_DEAD","GLOBAL",0)
~ GOTO 19
  IF ~~ THEN REPLY #46617 /* ~Now that I think of it, I relly don't have the time right now. Take me back to your main menu.~ */ GOTO 0
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46618 /* ~Hey, no reason to get all bent out of shape, Just making sure.
MORTE_DEAD is now 0.
Next I'll set it to 1 and immediately check it's value in the next node's replies.~ */
  IF ~~ THEN REPLY #46619 /* ~Great Idea! Why didn't I think of that?~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46620 /* ~There are two replies for this node, and only one of them should be visible. Hopefully it's the one which tells you that MORTE_DEAD is 1.
~ */
  IF ~  Global("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46621 /* ~MORTE_DEAD is 0. Sadness and Suffering in the highest degree. Pain and humilliation. Sulk back to main menu.~ */ GOTO 0
  IF ~  GlobalGT("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46622 /* ~Success!!! MORTE_DEAD is 1. Cancel plans for world destruction! Return to main menu for more dialog bliss.~ */ GOTO 0
END

IF ~~ THEN BEGIN 21 // from: 0.8
  SAY #49156 /* ~Testocles glares at you.

NOTE: This is a narrative text test. Will it work? Will it be displayed in a different color than the dialog text? It would sure make me happy.

Testocles is now back to speaking normally. That's a relief. That narative text was just *too* intense. Uh-oh,... here we go again...

NOTE: Narrative text color is activated by "NOTE:" on the beginning of a line. It will end after 2 consecutive <CR> characters. For instance, the word Salad should still be concidered as part of the narrative text, even though it is a new line.
SALAD - See? Make sure narative text ends with 2 <CR>'s so this doesn't happen.

Would you like to go back to the main menu?~ */
  IF ~~ THEN REPLY #49180 /* ~Uh,... Sure. Yeah.~ */ GOTO 0
END

IF ~~ THEN BEGIN 22 // from: 0.9
  SAY #50014 /* ~I'm sorry, but I am only a test character and couldn't possibly know the answer to such a question. But now you've got me curious, it is set to zero?~ */
  IF ~  Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50015 /* ~It is set to zero.~ */ DO ~GiveItemCreate("Eviscera",Protagonist,1,0,0)
~ GOTO 0
  IF ~  !Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50016 /* ~It is NON-ZERO.~ */ GOTO 0
  IF ~  Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50017 /* ~It is set to zero, and I'd appriciate it if you would make it non-zero.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("JRGVar01","GLOBAL",1)
~ GOTO 0
  IF ~  !Global("JRGVar01","GLOBAL",0)
~ THEN REPLY #50017 /* ~It is set to zero, and I'd appriciate it if you would make it non-zero.~ */ DO ~SetGlobal("JRGVar01","GLOBAL",0)
~ GOTO 0
END

IF ~~ THEN BEGIN 23 // from:
  SAY #54301 /* ~Then a test it shall be. I will spew forth some pointless placeholder text, which you are reading now. My lovely assistant, Test babe, will ass a few words of wisdom, and then I will finish up the interactions with a last tidbit of savory dialog.~ */
  IF ~~ THEN DO ~SetGlobal("JRGVar01","GLOBAL",1)
~ EXTERN ~DTESTB~ 1
END

IF ~  False()
~ THEN BEGIN 24 // from:
  SAY #54302 /* ~And there you have it. A sucessful test of character interaction, dripping with drama and suspense. I do hope you have enjoyed our little show.~ */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 25 // from: 0.11
  SAY #54304 /* ~I wish I could help you, but I can't find TEST babe, my lovely assistant. If you place her next to me (via the world editor) I would be most happy to proceed with the test.~ */
  IF ~~ THEN GOTO 0
END
