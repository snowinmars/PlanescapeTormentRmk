// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEST~

IF ~  True()
~ THEN BEGIN 0 // from: 1.3 2.0 3.0 4.0 5.0 8.4 9.3 11.3 18.1 20.0 20.1 21.0 22.0 22.1 22.2 22.3 24.0 25.0
  SAY #2632 /* ~"Ich bin eine Testperson. Was wünschst du von mir?"~ */
  IF ~~ THEN REPLY #41912 /* ~Make me a THIEF, Testocles.~ */ DO ~SetNamelessClass(THIEF)
~ GOTO 13
  IF ~  False()
~ THEN REPLY #2633 /* ~Ich würde gerne zu einigen von den Testfeldern für Jim springen.~ */ GOTO 1
  IF ~~ THEN REPLY #2634 /* ~Ich möchte ausprobieren, ob die Geschichte mit den eckigen Klammern funktioniert.~ */ GOTO 2
  IF ~~ THEN REPLY #2635 /* ~Ich möchte sehen, ob du eine Standanimation machst, wenn ich diese Anwort wähle.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2636 /* ~Ich möchte ein bißchen KI-Zeugs testen.~ */ GOTO 4
  IF ~~ THEN REPLY #2674 /* ~Ich möchte ein bißchen Dialog-Zeugs testen.~ */ GOTO 5
  IF ~~ THEN REPLY #2785 /* ~Rob will den Befehl für die Speichererstellung testen. Wegen der Schnittstelle.~ */ GOTO 8
  IF ~~ THEN REPLY #46613 /* ~I'd like to do some Global Variable tests.~ */ DO ~PlaySound("JRGWav03")
DestroyItemObject("Embalm",Protagonist,FALSE)
DestroyPartyItem("NEEDLE",FALSE)
~ GOTO 18
  IF ~  False()
~ THEN REPLY #49175 /* ~How about a Narrative text test, baby?~ */ GOTO 21
  IF ~~ THEN REPLY #50013 /* ~A question about Jim's variable, do you know if it is set to zero?~ */ GOTO 22
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
  IF ~~ THEN REPLY #2702 /* ~Macht nichts. Geh zurück zu deinem normalen Animationszyklus.~ */ DO ~FloatMessage(Protagonist,9621)
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
  SAY #2637 /* ~"Oh, Jim Gardner? Er ist ja so verträumt. Was soll ich jetzt machen?"~ */
  IF ~~ THEN REPLY #2638 /* ~"Ich würde gerne VIEL Text sehen und eine umfassende Reihe Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #2639 /* ~"Ich würde gerne WENIG Text sehen und eine kleine Reihe Antworten."~ */ GOTO 10
  IF ~~ THEN REPLY #2639 /* ~"Ich würde gerne WENIG Text sehen und eine kleine Reihe Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24208 /* ~"Im Augenblick eigentlich nichts. Bring mich zum Hauptmenü zurück."~ */ GOTO 0
  IF ~~ THEN REPLY #24209 /* ~"Ich wollte eigentlich nur mal sehen, wie es dir so geht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #2640 /* ~"Oh? Kannst du das sehen?" [Wenn die Klammern funktionieren, müßtest du eigentlich diesen Satz sehen.]~ */
  IF ~~ THEN REPLY #2641 /* ~Geh zum Hauptmenü zurück.~ */ GOTO 0
  IF ~~ THEN REPLY #2642 /* ~Wollte nur mal gucken, danke.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 3.1 3.2 3.3
  SAY #2643 /* ~"Hast du ihn gesehen?! Hast du ihn gesehen?!"~ */
  IF ~~ THEN REPLY #2644 /* ~Ruhe! Man kann nie wissen. Und jetzt tu mich zurück ins Hauptmenü.~ */ GOTO 0
  IF ~~ THEN REPLY #2645 /* ~Tu's noch einmal.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2646 /* ~Nimm Haltung an (nervös).~ */ DO ~SetAnimState(Myself,ANIM_STANCEFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2647 /* ~Führ deine erste Standanimation aus, warte 2 Sekunden, führ die Haltungsanimation aus, warte 2 Sekunden, und führ dann die Standanimation nochmal aus. Alles klar?~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANCEFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2712 /* ~Wollte nur mal gucken, danke.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY #2675 /* ~"Was denn...?"~ */
  IF ~~ THEN REPLY #2676 /* ~Macht nichts. Laß uns zurück ins Hauptmenü gehen und es nochmal versuchen.~ */ GOTO 0
  IF ~~ THEN REPLY #2677 /* ~Flieh vor mir, wenn du kannst. So, als ob du Angst hättest. "RunAwayFrom (PC, 2000)"~ */ DO ~RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2678 /* ~Flieh vor mir, wenn du kannst. So, als ob du Angst hättest. "RunAwayFrom (PC, 2000)" Setz ABER DIESMAL zuerst ein Enemy Flag, und schau, was passiert.~ */ DO ~Enemy()
RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2679 /* ~Macht nichts. Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY #2703 /* ~Er verdreht die Augen. "Was denn für'n Dialog?"~ */
  IF ~~ THEN REPLY #2704 /* ~Macht nichts. Laß uns zurück zu deinem Hauptmenü gehen.~ */ GOTO 0
  IF ~~ THEN REPLY #2705 /* ~Wenn ich diese Option wähle, die dich zu einem Knoten schickt, der dir sagt, du sollst mich angreifen, was passiert dann, wenn meine Antwortknoten keinen Text haben? Ist 'Klick, um weiterzumachen' die einzige mögliche Option? Und finden die dort eingestellten Skriptaktionen (zum Beispiel die gewählten Feinde) auch wirklich statt? Also was ist damit, Arschgesicht?~ */ GOTO 6
  IF ~~ THEN REPLY #2707 /* ~Wenn mich diese Antwort zu einem von Mortes Knoten bringt und es keine Antwortknoten für Mortes Knoten gibt, was passiert dann?~ */ EXTERN ~DMORTE~ 50
  IF ~~ THEN REPLY #2708 /* ~Macht nichts. Geh wieder in deinen normalen Animationsstatus, Testokles.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #2706 /* ~Fauchend greift sie dich an!~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #2710 /* ~"Nein, ich habe nichts getan! Er hat damit angefangen!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 51
END

IF ~~ THEN BEGIN 8 // from: 0.6
  SAY #2786 /* ~"Oh, wirklich? Also, ich würde für diesen sexy Rob Holloway alles tun. Welchen Laden möchtest du gerne sehen?"~ */
  IF ~~ THEN REPLY #2787 /* ~"Zeig mir 'Ladenl', bitte."~ */ DO ~StartStore("Store1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #2790 /* ~"Zeig mir 'Gasthaus1', bitte."~ */ DO ~StartStore("Inn1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7032 /* ~"Zeig mir 'Taverne1', bitte."~ */ DO ~StartStore("Tavern1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7037 /* ~"Zeig mir 'Tempel1', bitte."~ */ DO ~StartStore("Temple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7038 /* ~"Schon gut. Bring mich zurück zum Hauptmenü."~ */ GOTO 0
  IF ~~ THEN REPLY #7039 /* ~"Ich will aus diesem Dialog raus."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 9.0 9.5 9.6 9.7 9.8 9.9 9.10 9.11 9.12 9.13 9.14 9.15 9.16 9.17 9.18 9.19 11.1
  SAY #24210 /* ~GROSSER TEXTKÖRPER, ANTWORTEN: "Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu EINEM DUMMEN Jungen. Zu viel Arbeit - so viel Text paßt ins Dialogtextfenster im Editor, Chris - und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen. Zu viel Arbeit und zu wenig Spiel machen Jim zu einem dummen Jungen.~ */
  IF ~~ THEN REPLY #24211 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24212 /* ~"Zeig mir kleine Textkörper und kleine Antworten."~ */ GOTO 10
  IF ~~ THEN REPLY #24213 /* ~"Zeig mir kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24214 /* ~"Bring mich zum Hauptmenü zurück."~ */ GOTO 0
  IF ~~ THEN REPLY #24215 /* ~"Das ist alle, was ich sehen wollte. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #24216 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24217 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24218 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24219 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24220 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24221 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24222 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24223 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24224 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24225 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24226 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24227 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24228 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24229 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24230 /* ~"Zeig mir wieder große Textkörper und große Antworten."~ */ GOTO 9
END

IF ~~ THEN BEGIN 10 // from: 1.1 9.1 10.0 11.2
  SAY #24231 /* ~KLEINER TEXTKÖRPER, KLEINE ANTWORTEN. "Hier."~ */
  IF ~~ THEN REPLY #24232 /* ~"Zeig mir wieder kleine Textkörper und kleine Antworten."~ */ GOTO 10
  IF ~~ THEN REPLY #24233 /* ~"Bring mich zum Gardner-Menü zurück."~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 1.2 9.2 11.0 11.5 11.6 11.7 11.8 11.9 11.10 11.11 11.12 11.13 11.14 11.15 11.16 11.17 11.18 11.19
  SAY #24234 /* ~KLEINER TEXTKÖRPER, GROSSE ANTWORTEN. "Hier."~ */
  IF ~~ THEN REPLY #24235 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24236 /* ~"Zeig mir große Textkörper und große Antworten."~ */ GOTO 9
  IF ~~ THEN REPLY #24237 /* ~"Zeig mir kleine Textkörper und kleine Antworten."~ */ GOTO 10
  IF ~~ THEN REPLY #24238 /* ~"Bring mich zu deinem Hauptmenü zurück."~ */ GOTO 0
  IF ~~ THEN REPLY #24239 /* ~"Das ist alles, was ich sehen wollte. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #24240 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24241 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24242 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24243 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24244 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24245 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24246 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24247 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24248 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24249 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24250 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24251 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24252 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24253 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
  IF ~~ THEN REPLY #24254 /* ~"Zeig mir wieder kleine Textkörper und große Antworten."~ */ GOTO 11
END

IF ~~ THEN BEGIN 12 // from:
  SAY #39061 /* ~This was a new node, but by the time you see it it will be an old node.  Da Node grew Ode!  Text Text Text Words Words Words.  One of these nodes is not like the other, one of these nodes is not the same......~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.0
  SAY #42286 /* ~"Wie du willst. Du bist jetzt ein DIEB."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 15.0
  SAY #42878 /* ~Dies ist eine Prüfung...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #42880 /* ~Hau ab!~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #42885 /* ~Was ist das überhaupt?~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #42886 /* ~Tu das nie wieder! Sonst setzt's was!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.7
  SAY #46614 /* ~Nun gut. Wir werden heute mit MORTE_DEAD testen. Bereit zum Fortsetzen?~ */
  IF ~~ THEN REPLY #46616 /* ~Of course I'm ready you idiot!  I TOLD you that I wanted to do the test.~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",0)
SetGlobal("MORTE_DEAD","GLOBAL",1)
SetGlobal("MORTE_DEAD","GLOBAL",0)
~ GOTO 19
  IF ~~ THEN REPLY #46617 /* ~Now that I think of it, I relly don't have the time right now.  Take me back to your main menu.~ */ GOTO 0
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46618 /* ~Hey, no reason to get all bent out of shape, Just making sure.
MORTE_DEAD is now 0.
Next I'll set it to 1 and immediately check it's value in the next node's replies.~ */
  IF ~~ THEN REPLY #46619 /* ~Great Idea!  Why didn't I think of that?~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46620 /* ~There are two replies for this node, and only one of them should be visible.  Hopefully it's the one which tells you that MORTE_DEAD is 1.
~ */
  IF ~  Global("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46621 /* ~MORTE_DEAD is 0.  Sadness and Suffering in the highest degree.  Pain and humilliation.  Sulk back to main menu.~ */ GOTO 0
  IF ~  GlobalGT("MORTE_DEAD","GLOBAL",0)
~ THEN REPLY #46622 /* ~Success!!!  MORTE_DEAD is 1.  Cancel plans for world destruction!  Return to main menu for more dialog bliss.~ */ GOTO 0
END

IF ~~ THEN BEGIN 21 // from: 0.8
  SAY #49156 /* ~Testocles glares at you.

NOTE: This is a narrative text test.  Will it work?  Will it be displayed in a different color than the dialog text?  It would sure make me happy.

Testocles is now back to speaking normally.  That's a relief.  That narative text was just *too* intense.  Uh-oh.... here we go again...

NOTE: Narrative text color is activated by "NOTE:" on the beginning of a line.  It will end after 2 consecutive <CR> characters.  For instance, the word Salad should still be concidered as part of the narrative text, even though it is a new line.
SALAD - See?  Make sure narative text ends with 2 <CR>'s so this doesn't happen.

Would you like to go back to the main menu?~ */
  IF ~~ THEN REPLY #49180 /* ~Uh... Sure.  Yeah.~ */ GOTO 0
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
