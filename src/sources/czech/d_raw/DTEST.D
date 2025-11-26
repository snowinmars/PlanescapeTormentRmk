// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEST~

IF ~  True()
~ THEN BEGIN 0 // from: 1.3 2.0 3.0 4.0 5.0 8.4 9.3 11.3 18.1 20.0 20.1 21.0 22.0 22.1 22.2 22.3 24.0 25.0
  SAY #2632 /* ~"I am a test character. What do you wish of me?"~ */
  IF ~~ THEN REPLY #41912 /* ~Udělej mne ZLODĚJEM, Testocle.~ */ DO ~SetNamelessClass(THIEF)
~ GOTO 13
  IF ~  False()
~ THEN REPLY #2633 /* ~I'd like to jump to a series of test fields for Jim.~ */ GOTO 1
  IF ~~ THEN REPLY #2634 /* ~I want to test and see if brackets work.~ */ GOTO 2
  IF ~~ THEN REPLY #2635 /* ~I want to see if you'll do a stand fidget when I choose this response.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2636 /* ~I wanted to test some AI stuff.~ */ GOTO 4
  IF ~~ THEN REPLY #2674 /* ~I wanted to test some dialogue stuff.~ */ GOTO 5
  IF ~~ THEN REPLY #2785 /* ~Rob wants to test the store making command for interface purposes.~ */ GOTO 8
  IF ~~ THEN REPLY #46613 /* ~Rád bych udělal nějaké testy Globálních Proměnných~ */ DO ~PlaySound("JRGWav03")
DestroyItemObject("Embalm",Protagonist,FALSE)
DestroyPartyItem("NEEDLE",FALSE)
~ GOTO 18
  IF ~  False()
~ THEN REPLY #49175 /* ~How about a Narrative text test, baby?~ */ GOTO 21
  IF ~~ THEN REPLY #50013 /* ~TOTO NENI POTREBA PREKLADAT = VLOUDILY SE SEM NEJAKE ZKUSEBNI TEXTY A question about Jim's variable, do you know if it is set to zero?~ */ GOTO 22
  IF ~  NearbyDialog("DTESTB")
~ THEN REPLY #54300 /* ~I'd like to do an in-party interaction test, Testocles.~ */ EXIT
  IF ~  !NearbyDialog("DTESTB")
~ THEN REPLY #54303 /* ~I'd like to do an in-party interaction test, Testocles.~ */ DO ~TakePartyItemNum("Celestia",1)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Polymorph(Trias)
AddexperienceParty(10000)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~~ THEN REPLY #2702 /* ~Nevermind. Go back to your normal animation cycle.~ */ DO ~FloatMessage(Protagonist,9621)
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
  SAY #2637 /* ~"Oh, Jim Gardner? He's so dreamy. What does he want me to do?"~ */
  IF ~~ THEN REPLY #2638 /* ~"Do a large BODY of text and a large series of responses, please."~ */ GOTO 9
  IF ~~ THEN REPLY #2639 /* ~"Do a small BODY of text and a small series of responses, please."~ */ GOTO 10
  IF ~~ THEN REPLY #2639 /* ~"Do a small BODY of text and a small series of responses, please."~ */ GOTO 11
  IF ~~ THEN REPLY #24208 /* ~"Vlastně, nic právě teď. Vrať mě do hlavního menu."~ */ GOTO 0
  IF ~~ THEN REPLY #24209 /* ~"Vlastně, právě jsem se zastavil, abych viděl, jak to děláš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #2640 /* ~"Oh? Can you see this?" [If the brackets are working, then you should see this statement.]~ */
  IF ~~ THEN REPLY #2641 /* ~Návrat do hlavního menu.~ */ GOTO 0
  IF ~~ THEN REPLY #2642 /* ~Jenom se ujišťuju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 3.1 3.2 3.3
  SAY #2643 /* ~"Viděls to? Viděls to?!"~ */
  IF ~~ THEN REPLY #2644 /* ~Silence! You'll never know. Now return me to the main menu.~ */ GOTO 0
  IF ~~ THEN REPLY #2645 /* ~Do it again.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2646 /* ~Do a stance fidget.~ */ DO ~SetAnimState(Myself,ANIM_STANCEFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2647 /* ~Do your first stand anim, wait for 2 sekund, then do the stance fidget, wait for 2 sekund, then do the stand one again. Got that?~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANCEFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2712 /* ~Just checking, díky.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY #2675 /* ~"Jako...?"~ */
  IF ~~ THEN REPLY #2676 /* ~Nevermind. Let's go back to your main menu for a second.~ */ GOTO 0
  IF ~~ THEN REPLY #2677 /* ~Run away from me, if you can. Like you're scared. "RunAwayFrom ((PC), 2000)"~ */ DO ~RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2678 /* ~Run away from me, if you can. Like you're scared. "RunAwayFrom ((PC), 2000)" BUT THIS TIME, set an Enemy flag first and see what happens.~ */ DO ~Enemy()
RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2679 /* ~Nevadí. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY #2703 /* ~Rolls her eyes. "Like what dialogue stuff?"~ */
  IF ~~ THEN REPLY #2704 /* ~Nevermind. Let's go back to your main menu.~ */ GOTO 0
  IF ~~ THEN REPLY #2705 /* ~If I select this option that sends you to a node that says you attack me, what happens if my response nodes have no text? Does Click to Continue the only option that shows up? And will scripting actions set there (such as Enemy sets) actually take place? What about it, poo-face?~ */ GOTO 6
  IF ~~ THEN REPLY #2707 /* ~If this response takes me to one of Morte's nodes, and there are no response nodes for Morte's nodes, what happens?~ */ EXTERN ~DMORTE~ 50
  IF ~~ THEN REPLY #2708 /* ~Nevermind. Resume your normal animation state, Testocles.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #2706 /* ~S divokým skřekem se na tebe vrhla!~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #2710 /* ~"Ne, já nic neudělal! On si začal."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 51
END

IF ~~ THEN BEGIN 8 // from: 0.6
  SAY #2786 /* ~"Oh, really? Well, I'd do anything for that sexy Rob Holloway. Which store would you like to see?"~ */
  IF ~~ THEN REPLY #2787 /* ~"Show me 'Store1,' please."~ */ DO ~StartStore("Store1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #2790 /* ~"Show me 'Inn1,' please."~ */ DO ~StartStore("Inn1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7032 /* ~"Ukaž mi prosím 'Tavern1,'."~ */ DO ~StartStore("Tavern1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7037 /* ~"Ukaž mi prosím 'Temple1,'."~ */ DO ~StartStore("Temple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7038 /* ~"Nech to být. Chtěl bych zpět do hlavní nabídky."~ */ GOTO 0
  IF ~~ THEN REPLY #7039 /* ~"Přeji si ukončit tento rozhovor."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 9.0 9.5 9.6 9.7 9.8 9.9 9.10 9.11 9.12 9.13 9.14 9.15 9.16 9.17 9.18 9.19 11.1
  SAY #24210 /* ~VELKÝ SOUHRN, ODPOVĚDI: "Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje.  Jen pracuje a vůbec si nehraje, Jim, HLOUPÝ - toto je tak velké jako jedno dialogové textové okno v editoru  BTW, Chris - chlapec. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje. Jim, hloupý chlapec, jen pracuje a vůbec si nehraje..~ */
  IF ~~ THEN REPLY #24211 /* ~"Ukaž mi ještě velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24212 /* ~"Ukaž mi malý souhrn a malé odpovědi."~ */ GOTO 10
  IF ~~ THEN REPLY #24213 /* ~"Ukaž mi malý souhrn a malé odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24214 /* ~"Vrať mě do hlavního menu, prosím."~ */ GOTO 0
  IF ~~ THEN REPLY #24215 /* ~"To je všechno, co jsem chtěl vidět. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #24216 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24217 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24218 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24219 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24220 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24221 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24222 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24223 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24224 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24225 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24226 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24227 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24228 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24229 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
  IF ~~ THEN REPLY #24230 /* ~"Ukaž mi znovu velký souhrn a velké odpovědi."~ */ GOTO 9
END

IF ~~ THEN BEGIN 10 // from: 1.1 9.1 10.0 11.2
  SAY #24231 /* ~MALÝ SOUHRN, MALÉ ODPOVĚDI. "Tady to je."~ */
  IF ~~ THEN REPLY #24232 /* ~"Ukaž mi znovu malý souhrn, malé odpovědi.."~ */ GOTO 10
  IF ~~ THEN REPLY #24233 /* ~"Vrať mě do Gardnerova menu, prosím."~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 1.2 9.2 11.0 11.5 11.6 11.7 11.8 11.9 11.10 11.11 11.12 11.13 11.14 11.15 11.16 11.17 11.18 11.19
  SAY #24234 /* ~MALÝ SOUHRN, MALÉ ODPOVĚDI. "Tady to je."~ */
  IF ~~ THEN REPLY #24235 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24236 /* ~"Ukaž mi velký souhrn, veškeré posloupnosti."~ */ GOTO 9
  IF ~~ THEN REPLY #24237 /* ~"Ukaž mi malý souhrn, malé odpovědi, prosím."~ */ GOTO 10
  IF ~~ THEN REPLY #24238 /* ~"Vrať mě do hlavního menu, prosím."~ */ GOTO 0
  IF ~~ THEN REPLY #24239 /* ~"To je všechno, co jsem chtěl vidět, díky. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #24240 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24241 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24242 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24243 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24244 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24245 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24246 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24247 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24248 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24249 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24250 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24251 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24252 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24253 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
  IF ~~ THEN REPLY #24254 /* ~"Ukaž mi znovu malý souhrn, velké odpovědi."~ */ GOTO 11
END

IF ~~ THEN BEGIN 12 // from:
  SAY #39061 /* ~To byl nový node, ale s odstupem času vidíš, že to bude starý node.  Da Node grew Ode!  Text Text Text Slova Slova Slova.  Jeden z těchto nodes není podobný ostatním, ani jeden z těchto nodes není ten samý...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.0
  SAY #42286 /* ~"Jak si přeješ; Teď je z tebe ZLODĚJ."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 15.0
  SAY #42878 /* ~Tohle je test...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #42880 /* ~Jdi pryč!~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #42885 /* ~Co to každopádně je?~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #42886 /* ~Už to znovu nedělej! Nebo jinak!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.7
  SAY #46614 /* ~Tak o.k. Dneska budeme testovat MORTE_SMRT. Připravený?~ */
  IF ~~ THEN REPLY #46616 /* ~Jasně, že jsem připravený, idiote! ŘEKL jsem ti, že chci udělat test!~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",0)
SetGlobal("MORTE_DEAD","GLOBAL",1)
SetGlobal("MORTE_DEAD","GLOBAL",0)
~ GOTO 19
  IF ~~ THEN REPLY #46617 /* ~Když nad tím tak přemýšlím, nemám teď čas. Dej mě zpátky do hlavního menu.~ */ GOTO 0
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46618 /* ~Hej, nemusíš tak nadávat, jenom jsem se ujišťoval.
MORTE_SMRT je teď 0.
Pak ji nastavíme na 1 a okamžitě ověříme její hodnotu v dalším uzlu odpovědí.~ */
  IF ~~ THEN REPLY #46619 /* ~Skvělý nápad! Proč mě to nenapadlo?~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46620 /* ~Pro tento uzel existují dvě odpovědi a jenom jedna z nich by měla být vidět. Doufejme, že je to ta, která ti říká, že MORTE_SMRT je 1.
~ */
  IF ~  Global("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46621 /* ~MORTE_SMRT je 0.  Smutek a Utrpení nejvyššího stupně. Bolest a ponížení. Návrat do hlavního menu.~ */ GOTO 0
  IF ~  GlobalGT("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46622 /* ~Úspěch! MORTE_SMRT je 1.  Zrušte plánování světové destrukce! Vrať se do hlavního menu pro další dialogy.~ */ GOTO 0
END

IF ~~ THEN BEGIN 21 // from: 0.8
  SAY #49156 /* ~Testocles glares at you.

POZNÁMKA: This is a narrative text test. Will it work? Will it be displayed in a different color than the dialog text? It would sure make me happy.

Testocles is now back to speaking normally. That's a relief. That narative text was just *too* intense. Uh-oh,.... here we go again...

POZNÁMKA: Narrative text color is activated by "POZNÁMKA:" on the beginning of a line. It will end after 2 consecutive <CR> characters. For instance, the word Salad should still be concidered as part of the narrative text, even though it is a new line.
SALAD - See? Make sure narative text ends with 2 <CR>'s so this doesn't happen.

Would you like to go back to the main menu?~ */
  IF ~~ THEN REPLY #49180 /* ~Uh... Jistě. Jo.~ */ GOTO 0
END

IF ~~ THEN BEGIN 22 // from: 0.9
  SAY #50014 /* ~I'm sorry, but I am only a test character and couldn't possibly know the answer to such a question.  But now you've got me curious, it is set to zero?~ */
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
  SAY #54301 /* ~Then a test it shall be.  I will spew forth some pointless placeholder text, which you are reading now.   My lovely assistant, Test babe, will ass a few words of wisdom, and then I will finish up the interactions with a last tidbit of savory dialog.~ */
  IF ~~ THEN DO ~SetGlobal("JRGVar01","GLOBAL",1)
~ EXTERN ~DTESTB~ 1
END

IF ~  False()
~ THEN BEGIN 24 // from:
  SAY #54302 /* ~And there you have it.  A sucessful test of character interaction, dripping with drama and suspense.  I do hope you have enjoyed our little show.~ */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 25 // from: 0.11
  SAY #54304 /* ~I wish I could help you, but I can't find TEST babe, my lovely assistant.  If you place her next to me (via the world editor) I would be most happy to proceed with the test.~ */
  IF ~~ THEN GOTO 0
END
