// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEST~

IF ~  True()
~ THEN BEGIN 0 // from: 1.3 2.0 3.0 4.0 5.0 8.4 9.3 11.3 18.1 20.0 20.1 21.0 22.0 22.1 22.2 22.3 24.0 25.0
  SAY #2632 /* ~"Je suis un personnage test. Que veux-tu de moi ?"~ */
  IF ~~ THEN REPLY #41912 /* ~Make me a THIEF, Testocles.~ */ DO ~SetNamelessClass(THIEF)
~ GOTO 13
  IF ~  False()
~ THEN REPLY #2633 /* ~Je voudrais passer à une série de champs de tests pour Jim.~ */ GOTO 1
  IF ~~ THEN REPLY #2634 /* ~Je veux faire un test pour voir si les crochets fonctionnent.~ */ GOTO 2
  IF ~~ THEN REPLY #2635 /* ~Je veux voir comment tu réagis quand je choisis cette réponse.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2636 /* ~Je voulais tester des trucs de l'IA.~ */ GOTO 4
  IF ~~ THEN REPLY #2674 /* ~Je voulais tester quelques trucs de dialogues.~ */ GOTO 5
  IF ~~ THEN REPLY #2785 /* ~Rob veut tester la boutique en y entrant des commandes destinées à l'interface.~ */ GOTO 8
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
  IF ~~ THEN REPLY #2702 /* ~Peu importe. Reviens à ton cycle d'animation normal.~ */ DO ~FloatMessage(Protagonist,9621)
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
  SAY #2637 /* ~"Oh, Jim Gardner ? Il est tellement craquant. Que veut-il de moi ?"~ */
  IF ~~ THEN REPLY #2638 /* ~"Fais un grand CORPS de texte et une grande série de réponses, s'il te plaît."~ */ GOTO 9
  IF ~~ THEN REPLY #2639 /* ~"Fais un petit CORPS de texte et une petite série de réponses, s'il te plaît."~ */ GOTO 10
  IF ~~ THEN REPLY #2639 /* ~"Fais un petit CORPS de texte et une petite série de réponses, s'il te plaît."~ */ GOTO 11
  IF ~~ THEN REPLY #24208 /* ~"Rien pour l'instant. Renvoie-moi au menu principal."~ */ GOTO 0
  IF ~~ THEN REPLY #24209 /* ~"Je voulais juste savoir comment tu allais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #2640 /* ~"Oh, tu as vu ça ?" [Si les crochets fonctionnent, tu peux voir le message.]~ */
  IF ~~ THEN REPLY #2641 /* ~Reviens au menu principal.~ */ GOTO 0
  IF ~~ THEN REPLY #2642 /* ~Simple vérification, merci.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 3.1 3.2 3.3
  SAY #2643 /* ~"Tu as vu ? ! Tu as vu ? !~ */
  IF ~~ THEN REPLY #2644 /* ~Silence ! Tu ne le sauras jamais. Maintenant, reviens au menu principal.~ */ GOTO 0
  IF ~~ THEN REPLY #2645 /* ~Refais-le.~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2646 /* ~Change de posture.~ */ DO ~SetAnimState(Myself,ANIM_STANCEFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2647 /* ~Prends la première pose, attends 2 secondes, puis change de posture, attends 2 secondes, puis prends la première pose de nouveau. T'as compris ?~ */ DO ~SetAnimState(Myself,ANIM_STANDFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANCEFIDGET1)
Wait(2)
SetAnimState(Myself,ANIM_STANDFIDGET1)
~ GOTO 3
  IF ~~ THEN REPLY #2712 /* ~Simple vérification, merci.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY #2675 /* ~"Comme… ?"~ */
  IF ~~ THEN REPLY #2676 /* ~Peu importe. Revenons une seconde au menu principal.~ */ GOTO 0
  IF ~~ THEN REPLY #2677 /* ~Run away from me, if you can. Like you're scared. "RunAwayFrom (PC, 2000)"~ */ DO ~RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2678 /* ~Run away from me, if you can. Like you're scared. "RunAwayFrom (PC, 2000)" BUT THIS TIME, set an Enemy flag first and see what happens.~ */ DO ~Enemy()
RunAwayFromEx([PC],2000,FALSE)
~ EXIT
  IF ~~ THEN REPLY #2679 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY #2703 /* ~Elle roule les yeux. "Quel dialogue ?"~ */
  IF ~~ THEN REPLY #2704 /* ~Peu importe. Revenons au menu principal.~ */ GOTO 0
  IF ~~ THEN REPLY #2705 /* ~Si je sélectionne cette option qui t'envoie à un nœud qui dit que tu m'attaques, que se passe-t-il si mes nœuds de réponse n'ont pas de texte ? Est-ce que Cliquer pour continuer est la seule option disponible ? Est-ce que les actions définies à cet endroit (comme les scènes ennemies) auront quand même lieu ? Hein, petit malin ?~ */ GOTO 6
  IF ~~ THEN REPLY #2707 /* ~Si cette réponse m'envoie à un nœud de Morte, et qu'il n'y a pas de nœuds de réponse pour les nœuds de Morte, qu'est-ce qui se passe ?~ */ EXTERN ~DMORTE~ 50
  IF ~~ THEN REPLY #2708 /* ~Peu importe. Reprends ton état d'animation normal, Testocle.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #2706 /* ~Elle t'attaque en grognant.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #2710 /* ~"Non, je n'ai rien fait ! C'est lui qui a commencé !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 51
END

IF ~~ THEN BEGIN 8 // from: 0.6
  SAY #2786 /* ~"Oh, vraiment ? Eh bien, je ferais n'importe quoi pour Rob Holloway. Quelle boutique t'intéresse ?"~ */
  IF ~~ THEN REPLY #2787 /* ~"Montre-moi la 'Boutique 1', s'il te plaît."~ */ DO ~StartStore("Store1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #2790 /* ~"Montre-moi 'l'Auberge 1', s'il te plaît."~ */ DO ~StartStore("Inn1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7032 /* ~"Montre-moi la 'Taverne 1', s'il te plaît."~ */ DO ~StartStore("Tavern1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7037 /* ~"Montre-moi le 'Temple 1', s'il te plaît."~ */ DO ~StartStore("Temple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #7038 /* ~"Peu importe. Ramène-moi au menu principal."~ */ GOTO 0
  IF ~~ THEN REPLY #7039 /* ~"Je veux quitter ce dialogue."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 9.0 9.5 9.6 9.7 9.8 9.9 9.10 9.11 9.12 9.13 9.14 9.15 9.16 9.17 9.18 9.19 11.1
  SAY #24210 /* ~GROS CORPS, REPONSES : "A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants S'ABRUTISSENT. C'est aussi important qu'une boîte de dialogue chez BTW, mon vieux Chris. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent. A toujours travailler, les enfants s'abrutissent.~ */
  IF ~~ THEN REPLY #24211 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24212 /* ~"Montre moi un petit corps et de petites réponses."~ */ GOTO 10
  IF ~~ THEN REPLY #24213 /* ~"Montre moi un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24214 /* ~"Renvoie-moi au menu principal, s'il te plaît."~ */ GOTO 0
  IF ~~ THEN REPLY #24215 /* ~"C'est tout ce que je voulais voir. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #24216 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24217 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24218 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24219 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24220 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24221 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24222 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24223 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24224 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24225 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24226 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24227 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24228 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24229 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24230 /* ~"Montre moi encore un grand corps et de grandes réponses."~ */ GOTO 9
END

IF ~~ THEN BEGIN 10 // from: 1.1 9.1 10.0 11.2
  SAY #24231 /* ~PETIT CORPS, PETITES REPONSES. "Le voilà."~ */
  IF ~~ THEN REPLY #24232 /* ~"Montre-moi encore un petit corps et de petites réponses."~ */ GOTO 10
  IF ~~ THEN REPLY #24233 /* ~"Renvoie-moi au menu du Jardinier, s'il te plaît."~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 1.2 9.2 11.0 11.5 11.6 11.7 11.8 11.9 11.10 11.11 11.12 11.13 11.14 11.15 11.16 11.17 11.18 11.19
  SAY #24234 /* ~PETIT CORPS, GRANDES REPONSES. "Le voilà."~ */
  IF ~~ THEN REPLY #24235 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24236 /* ~"Montre-moi un grand corps et de grandes réponses."~ */ GOTO 9
  IF ~~ THEN REPLY #24237 /* ~"Montre-moi un petit corps et de petites réponses, s'il te plaît."~ */ GOTO 10
  IF ~~ THEN REPLY #24238 /* ~"Renvoie-moi au menu principal, s'il te plaît."~ */ GOTO 0
  IF ~~ THEN REPLY #24239 /* ~"C'est tout ce que je voulais voir, merci. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #24240 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24241 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24242 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24243 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24244 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24245 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24246 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24247 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24248 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24249 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24250 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24251 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24252 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24253 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
  IF ~~ THEN REPLY #24254 /* ~"Montre-moi encore un petit corps et de grandes réponses."~ */ GOTO 11
END

IF ~~ THEN BEGIN 12 // from:
  SAY #39061 /* ~This was a new node, but by the time you see it it will be an old node.  Da Node grew Ode!  Text Text Text Words Words Words.  One of these nodes is not like the other, one of these nodes is not the same……~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.0
  SAY #42286 /* ~"Comme tu voudras ; tu es maintenant un VOLEUR ."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 15.0
  SAY #42878 /* ~This is a test of the…~ */
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
  SAY #46614 /* ~Bon, très bien. Aujourd'hui, nous allons faire des tests avec MORTE_DEAD. Es-tu prêt à continuer ?~ */
  IF ~~ THEN REPLY #46616 /* ~Of course I'm ready you idiot!  I TOLD you that I wanted to do the test.~ */ DO ~SetGlobal("MORTE_DEAD","GLOBAL",0)
SetGlobal("MORTE_DEAD","GLOBAL",1)
SetGlobal("MORTE_DEAD","GLOBAL",0)
~ GOTO 19
  IF ~~ THEN REPLY #46617 /* ~Maintenant que j'y pense, je n'ai vraiment pas le temps. Ramène-moi au menu principal.~ */ GOTO 0
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

Testocles is now back to speaking normally.  That's a relief.  That narative text was just *too* intense.  Uh-oh,…. here we go again…

NOTE: Narrative text color is activated by "NOTE:" on the beginning of a line.  It will end after 2 consecutive <CR> characters.  For instance, the word Salad should still be concidered as part of the narrative text, even though it is a new line.
SALAD - See?  Make sure narative text ends with 2 <CR>'s so this doesn't happen.

Would you like to go back to the main menu?~ */
  IF ~~ THEN REPLY #49180 /* ~Uh,… Sure.  Yeah.~ */ GOTO 0
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
  SAY #54301 /* ~Then a test it shall be. I will spew forth some pointless placeholder text, which you are reading now.  My lovely assistant, Test babe, will ass a few words of wisdom, and then I will finish up the interactions with a last tidbit of savory dialog.~ */
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
