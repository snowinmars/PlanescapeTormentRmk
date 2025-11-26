// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYI'MINN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYI'MINN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44367 /* ~Cet homme sauvage à la peau jaune t'observe un moment. Ses yeux s'écarquillent et il brandit brusquement son épée. "Chien ! Espèce de chien adorateur de githzeraï !" Il t'attaque !~ */
  IF ~~ THEN REPLY #44368 /* ~Attaque.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44369 /* ~Fuis.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 1 // from:
  SAY #44372 /* ~L'homme aux traits tirés a la peau rugueuse comme du cuir et le teint jaune pâle. Il a un visage anguleux, un petit nez haut et des oreilles en pointe. Son corps est couvert de tatouages et de cicatrices. Ses vêtements en cuir, étranges et voyants, semblent plus décoratifs que faits pour le combat. Ses yeux, semblables à deux petites pierres noires, restent fixés sur toi alors que tu approches. "Tu es l'homme en quête de souvenirs", dit-il sur un ton monocorde. "Je peux t'aider."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44375 /* ~"Tu es un githyanki, n'est-ce pas ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44378 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44380 /* ~"Salut à toi, sonneur d'épées."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44385 /* ~"Comment tu sais ça ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44388 /* ~"En quoi est-ce que tu peux m'aider ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44390 /* ~"Ça ne m'intéresse pas, merci. Au revoir."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 2 // from:
  SAY #44391 /* ~L'homme aux traits tirés a la peau rugueuse comme du cuir et le teint jaune pâle. Il a un visage anguleux, un petit nez haut et des oreilles en pointe. Son corps est couvert de tatouages et de cicatrices. Ses vêtements en cuir, étranges et voyants, semblent plus décoratifs que faits pour le combat. Ses yeux, semblables à deux petites pierres noires, restent fixés sur toi alors que tu approches. "Tu es l'homme en quête de souvenirs", dit-il sur un ton monocorde. "Je peux t'aider."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Tu es un githyanki, n'est-ce pas ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Salut à toi, sonneur d'épées."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Comment tu sais ça ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"En quoi est-ce que tu peux m'aider ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44402 /* ~"Ça ne m'intéresse pas, merci. Au revoir."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 21.0 22.0
  SAY #44404 /* ~"J'ai le plaisir de faire partie de ce peuple." Sa voix est monotone. "Veux-tu que je t'aide à retrouver tes souvenirs ?"~ */
  IF ~~ THEN REPLY #44405 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44406 /* ~"Hum. Pas aujourd'hui, merci."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 6.0 21.1 22.1
  SAY #44407 /* ~"Je m'appelle Yi'minn. Je suis un pêcheur githyanki. Mon peuple est le maître incontesté du Plan Astral, là où les dieux vont mourir et où les souvenirs des défunts flottent comme des feuilles sur une flaque d'eau. Mon devoir est de retrouver les noyaux de mémoire des morts et d'y glaner des informations. Je peux retrouver tes souvenirs. Il suffit que tu en paies le prix."~ */
  IF ~~ THEN REPLY #44408 /* ~"Quel en serait le prix ?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44410 /* ~"Ça ne m'intéresse pas, merci. Au revoir."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 21.2 22.2
  SAY #44413 /* ~Son visage se fige un moment et ses muscles se raidissent alors que sa main empoigne involontairement le manche de son épée. "Tu t'es adressé à moi en employant une expression des chiens githzeraïs. Était-ce de l'ignorance ou une insulte ?"~ */
  IF ~~ THEN REPLY #44416 /* ~"De l'ignorance."~ */ GOTO 12
  IF ~~ THEN REPLY #44417 /* ~"Une insulte."~ */ GOTO 11
  IF ~~ THEN REPLY #44419 /* ~"Tu n'es pas un githzeraï ?"~ */ GOTO 14
  IF ~~ THEN REPLY #44422 /* ~"Ni l'un, ni l'autre."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 21.3 22.3
  SAY #44425 /* ~"Ça se voit. Dans mon métier, on voit beaucoup de gens comme toi."~ */
  IF ~~ THEN REPLY #44432 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #44434 /* ~"Laisse-moi tranquille. Ton charlatanisme ne m'intéresse pas."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4 21.4 22.4
  SAY #44437 /* ~"Je ne suis pas un githyanki ? Ne vivons-nous pas dans les champs du Plan Astral ? Je suis un pêcheur de souvenirs disparus. J'appâte les souvenirs. Je les attrape." Il marque une pause et se penche en avant, comme pour comploter quelque chose. "Je les *rétablis*. Il te suffit juste de payer le prix."~ */
  IF ~~ THEN REPLY #44439 /* ~"Quel sera le prix ?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44441 /* ~"Qu'est-ce que tu peux me dire sur le Plan Astral ?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #44445 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5 2.5 3.1 4.1 6.1 7.2 9.1 10.1 16.1 18.1 20.1
  SAY #44447 /* ~"Réfléchis à mon offre, humain. Si jamais tu veux récupérer tes souvenirs, tu me trouveras ici. Souviens-t'en."~ */
  IF ~~ THEN REPLY #44450 /* ~"C'est ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 16.0 18.0 20.0 21.5 22.5 23.0
  SAY #44455 /* ~"Quelques pièces tout au plus. Le prix est négociable. Disons cent pièces. Tu détermineras la valeur des souvenirs que je trouverai et tu me paieras en conséquence."~ */
  IF ~~ THEN REPLY #44457 /* ~"Ça me va. Qu'est-ce que je dois faire ?"~ */ GOTO 10
  IF ~~ THEN REPLY #44458 /* ~"Peut-être plus tard. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 23.1
  SAY #44459 /* ~"Pour mettre l'appât à mon hameçon et repêcher tes souvenirs, j'aurai besoin de quelques-uns de tes souvenirs actuels. Il me faut aussi un endroit calme pour me concentrer. Si tu veux bien me suivre, nous nous rendrons dans un endroit adéquat et grâce à moi, tu te retrouveras toi-même. Nous devons partir seuls, sans aucun compagnon."~ */
  IF ~~ THEN REPLY #44460 /* ~"D'accord. Allons-y."~ */ DO ~SetGlobal("Yiminn_Trap","AR0500",1)
StartCutSceneMode()
StartCutSceneEx("Yiminn",FALSE)
~ EXIT
  IF ~~ THEN REPLY #44461 /* ~"Peut-être pas tout de suite."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #44462 /* ~"Ça sent le coup fourré, chien githyanki. Tes maîtres *illithids* auraient dû t'enchaîner."~ */ DO ~AddexperienceParty(1000)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.1 10.2 12.3 13.2 19.1 25.2 26.1 27.0
  SAY #44463 /* ~Sans un mot, et en douceur, le pêcheur brandit son épée et bondit pour t'attaquer !~ */
  IF ~~ THEN REPLY #44464 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44465 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 19.0
  SAY #44466 /* ~"Tu peux me demander pardon, maintenant." Il reste immobile, son regard se promenant sur ton corps.~ */
  IF ~~ THEN REPLY #44467 /* ~"Je te présente mes excuses."~ */ GOTO 18
  IF ~~ THEN REPLY #44468 /* ~"Te demander pardon ? À toi ?"~ */ GOTO 13
  IF ~~ THEN REPLY #44469 /* ~"Quoi, tu n'aimes pas te faire traiter de githzeraï ?"~ */ GOTO 14
  IF ~~ THEN REPLY #44470 /* ~"Hors de question."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #44471 /* ~"Oui." Il montre les dents. "Tu as proféré une insulte quasi-impardonnable. Tu dois me demander pardon."~ */
  IF ~~ THEN REPLY #44472 /* ~"Je te présente mes excuses."~ */ GOTO 18
  IF ~~ THEN REPLY #44473 /* ~"Quoi, tu n'aimes pas te faire traiter de githzeraï ?"~ */ GOTO 14
  IF ~~ THEN REPLY #44474 /* ~"Hors de question."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 5.2 12.2 13.1
  SAY #44475 /* ~"Je suis un *githyanki*. Je n'ai rien à voir avec les chiens githzeraïs. Est-ce qu'on peut en dire autant sur toi ?"~ */
  IF ~~ THEN REPLY #44476 /* ~Vérité : "J'ai connu des githzeraïs. Des gens charmants."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #44477 /* ~Mensonge : "J'ai connu des githzeraïs. Des gens charmants."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44478 /* ~Vérité : "Non, les githzeraïs ne sont rien pour moi."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44479 /* ~Mensonge : "Non, les githzeraïs ne sont rien pour moi."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44480 /* ~Vérité : "Non, les githzeraïs ne sont rien pour moi."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 17
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44481 /* ~Mensonge : "Non, les githzeraïs ne sont rien pour moi."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 17.0
  SAY #44483 /* ~"Alors comme ça, tu as de la sympathie pour les chiens githzeraïs ? Ton cadavre aussi en aura !" Il brandit sa lame et attaque !~ */
  IF ~~ THEN REPLY #44484 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44488 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3
  SAY #44490 /* ~"Bon, c'est pas grave. Aucune importance. Parlons d'autre chose. Tu veux récupérer des souvenirs. Je peux m'en charger. Il suffit qu'on se mette d'accord sur un prix."~ */
  IF ~~ THEN REPLY #44491 /* ~"Quel sera le prix ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44492 /* ~"Ça ne m'intéresse pas pour le moment."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 14.4 14.5
  SAY #44493 /* ~Il ne desserre pas les dents et son corps reste crispé. "Tu dis qu'ils ne sont rien pour toi, pourtant tu t'es adressé à moi en employant une de leurs formules de politesse. Quelle est la vérité ?"~ */
  IF ~~ THEN REPLY #44494 /* ~"Tu m'as eu. Ils ne sont pas méchants."~ */ GOTO 15
  IF ~~ THEN REPLY #44495 /* ~"Ils ne sont rien. J'ai admis mon ignorance, admis que je m'étais mal exprimé, et excusé. Qu'est-ce que je peux faire de plus ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 12.0 13.0 17.1
  SAY #44496 /* ~"Très bien. Le sang des githzeraïs ressemble à de l'eau et leur progéniture est faible. Parlons d'autre chose : tu as des souvenirs et je peux les récupérer. Il ne nous reste plus qu'à nous mettre d'accord sur le prix."~ */
  IF ~~ THEN REPLY #44497 /* ~"Quel est ce prix ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44498 /* ~"Je voudrais revenir là-dessus."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #44499 /* ~"C'est forcément l'un ou l'autre : c'était calculé ou simplement de ignorance. Alors ?"~ */
  IF ~~ THEN REPLY #44500 /* ~"De l'ignorance."~ */ GOTO 12
  IF ~~ THEN REPLY #44501 /* ~"C'était une insulte."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 7.1
  SAY #44502 /* ~"C'est un non-endroit, un lieu entre d'autres lieux, où seul l'esprit a sa place. C'est là que vit mon peuple. Quand les gens meurent, leur âme s'envole vers les Plans Extérieurs. En traversant le Plan Astral, leurs souvenirs leur sont ôtés pour aller danser sur la Mer d'Argent. Je peux retrouver mon chemin sur cette mer. Je peux t'aider à récupérer tes souvenirs perdus. Il ne nous reste plus qu'à convenir d'un prix."~ */
  IF ~~ THEN REPLY #44503 /* ~"Quel sera le prix ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44505 /* ~"Je voudrais revenir là-dessus."~ */ GOTO 8
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 21 // from:
  SAY #44504 /* ~"Tu es à la recherche de tes souvenirs, n'est-ce pas, humain ? Je peux les récupérer pour toi. La détresse ne cesse de s'intensifier dans ton regard. Tu n'as qu'un petit prix à payer pour retrouver ta tranquillité d'esprit."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Tu es un githyanki, n'est-ce pas ?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Salut à toi, sonneur d'épées."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Comment tu sais ça ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"En quoi est-ce que tu peux m'aider ?"~ */ GOTO 7
  IF ~~ THEN REPLY #44506 /* ~"Quel est le prix ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44507 /* ~"Parle-moi encore de ton peuple."~ */ GOTO 23
  IF ~~ THEN REPLY #44508 /* ~"Pas aujourd'hui, merci. Au revoir."~ */ GOTO 24
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 22 // from:
  SAY #44509 /* ~"Tu es à la recherche de tes souvenirs, n'est-ce pas, humain ? Je peux les récupérer pour toi. La détresse ne cesse de s'intensifier dans ton regard. Tu n'as qu'un petit prix à payer pour retrouver ta tranquillité d'esprit."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Tu es un githyanki, n'est-ce pas ?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Salut à toi, sonneur d'épées."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Comment tu sais ça ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"En quoi est-ce que tu peux m'aider ?"~ */ GOTO 7
  IF ~~ THEN REPLY #44510 /* ~"Quel est le prix ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44511 /* ~"Parle-moi encore de ton peuple."~ */ GOTO 23
  IF ~~ THEN REPLY #44512 /* ~"Pas aujourd'hui, merci. Au revoir."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.6 22.6
  SAY #44513 /* ~"Tu trouveras peut-être cette réponse dans tes souvenirs perdus. Commençons et tu le sauras."~ */
  IF ~~ THEN REPLY #44514 /* ~"Quel est le prix ?"~ */ GOTO 9
  IF ~~ THEN REPLY #44515 /* ~"Et comment tu vas t'y prendre ?"~ */ GOTO 10
  IF ~~ THEN REPLY #44516 /* ~"Ça ne m'intéresse pas pour le moment."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 21.7 22.7 23.2
  SAY #44517 /* ~"Quand tu changeras d'avis - et tu le feras, humain, tu le feras - reviens ici."~ */
  IF ~~ THEN REPLY #44518 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 25 // from:
  SAY #44519 /* ~L'homme aux traits tirés a la peau rugueuse comme du cuir et le teint jaune pâle. Il a un visage anguleux, un petit nez haut et des oreilles en pointe. Son corps est couvert de tatouages et de cicatrices. Ses vêtements en cuir, étranges et voyants, semblent plus décoratifs que faits pour le combat. Ses yeux, semblables à deux petites pierres noires, restent fixés sur toi alors que tu approches. Alors que tu ouvres la bouche, il lève une main : "Je ne t'écouterai pas, humain. Ne parle à personne du Peuple."~ */
  IF ~~ THEN REPLY #44520 /* ~"De quoi parles-tu ?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~~ THEN REPLY #44521 /* ~"Je n'ai que quelques questions…"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44522 /* ~"Ton 'Peuple' ? Ce ne sont que des chiens qui n'ont jamais quitté la botte de leurs maîtres *illithids*."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44523 /* ~"J'ai juste quelques questions à poser à l'un des githyankis honorés."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 28
  IF ~~ THEN REPLY #44524 /* ~"Eh bien d'accord."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",1)
!NearbyDialog("DDakkon")
~ THEN BEGIN 26 // from:
  SAY #44525 /* ~"Je t'ai demandé de ne plus m'adresser la parole. Est-ce que tous les humains sont aussi lents que toi ?"~ */
  IF ~~ THEN REPLY #44526 /* ~"Je veux juste avoir les réponses à certaines questions…"~ */ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44527 /* ~"Ton 'Peuple' ? Ce ne sont que des chiens qui n'ont jamais quitté la botte de leurs maîtres *illithids*."~ */ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44528 /* ~"J'ai juste quelques questions à poser à l'un des githyankis honorés."~ */ GOTO 28
  IF ~~ THEN REPLY #44529 /* ~"Alors, laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 26.0
  SAY #44530 /* ~Il te fixe d'un regard vide. Sa bouche se pince pour former une ligne fine.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44531 /* ~"Ton 'Peuple' ? Ce ne sont que des chiens qui n'ont jamais quitté la botte de leurs maîtres *illithids*."~ */ GOTO 11
  IF ~~ THEN REPLY #44532 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3 26.2
  SAY #44533 /* ~Il marque une courte pause et ses yeux se braquent sur les tiens. "Je m'incline devant ton honneur, mais mon savoir ne serait que de l'eau pour toi."~ */
  IF ~~ THEN REPLY #44534 /* ~"Tu peux me parler de toi ?"~ */ GOTO 29
  IF ~~ THEN REPLY #44535 /* ~"Tu peux me parler de ton peuple ?"~ */ GOTO 30
  IF ~~ THEN REPLY #44536 /* ~"Tu peux me parler des githzeraïs ?"~ */ GOTO 31
  IF ~~ THEN REPLY #44537 /* ~"Bon, très bien. Au revoir."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #44538 /* ~"Je suis Yi'minn, un pêcheur. Je repêche les souvenirs des défunts pris au piège dans le Plan Astral."~ */
  IF ~~ THEN REPLY #44539 /* ~"Tu peux retrouver mes souvenirs ?"~ */ GOTO 32
  IF ~~ THEN REPLY #44540 /* ~"Qu'est-ce que tu peux me dire sur le Plan Astral ?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #44541 /* ~"Si tu honores notre peuple, comment se fait-il que tu ne connaisses rien sur lui ?"~ */
  IF ~~ THEN REPLY #44542 /* ~"Je veux en apprendre plus."~ */ GOTO 38
  IF ~~ THEN REPLY #44543 /* ~"Je voulais juste que tu me parles."~ */ GOTO 38
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #44544 /* ~"Ce sont nos laissés-pour-compte. Ils implorent notre pitié. Leur sang est aussi dilué que de l'eau, tout comme leur esprit." Il montre les dents. "J'ai le devoir et le plaisir de les pourchasser, eux et leurs collaborateurs, pour leur réserver le plus douloureux des destins."~ */
  IF ~~ THEN REPLY #44545 /* ~"Bien. Tu peux encore répondre à quelques questions ?"~ */ JOURNAL #38976 /* ~J'ai découvert qu'il existait une grande rivalité entre les githyankis et les githzeraïs. Apparemment, tous faisaient partie de la même race avant de se séparer, il y a plusieurs millénaires de cela. Depuis, ils se vouent une haine sans borne.~ */ GOTO 35
  IF ~~ THEN REPLY #44546 /* ~"Alors, au revoir."~ */ JOURNAL #38976 /* ~J'ai découvert qu'il existait une grande rivalité entre les githyankis et les githzeraïs. Apparemment, tous faisaient partie de la même race avant de se séparer, il y a plusieurs millénaires de cela. Depuis, ils se vouent une haine sans borne.~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #44556 /* ~"Oui… si tu paies le prix."~ */
  IF ~~ THEN REPLY #44558 /* ~"Quel est ce prix ?"~ */ GOTO 36
  IF ~~ THEN REPLY #44559 /* ~"Je te paierai ce que tu voudras."~ */ GOTO 36
  IF ~~ THEN REPLY #44560 /* ~"Est-ce que tu accepterais un échange ?"~ */ GOTO 36
  IF ~~ THEN REPLY #44561 /* ~"Laisse tomber. Réponds à d'autres questions pour moi."~ */ GOTO 35
  IF ~~ THEN REPLY #44562 /* ~"Laisse tomber. Au revoir."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #44563 /* ~"C'est un non-endroit, un lieu entre d'autres lieux, où seul l'esprit a sa place. C'est là que vit mon peuple. Quand les gens meurent, leur âme s'envole vers les Plans Extérieurs. En traversant le Plan Astral, leurs souvenirs leur sont ôtés pour aller danser sur la Mer d'Argent."~ */
  IF ~~ THEN REPLY #44564 /* ~"Je vois. Tu peux encore répondre à quelques questions ?"~ */ GOTO 35
  IF ~~ THEN REPLY #44565 /* ~"Merci. Au revoir."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 28.3 31.1 32.4 33.1 35.0
  SAY #44566 /* ~"J'ai répondu à tes questions une fois. Ne reviens plus me voir."~ */
  IF ~~ THEN REPLY #44567 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.0 32.3 33.0 36.1 36.2
  SAY #44568 /* ~"Je ne te donnerai pas d'autres réponses. Tu as donné ton honneur, et je t'ai gentiment remboursé."~ */
  IF ~~ THEN REPLY #44569 /* ~"Bon, si c'est comme ça, au revoir."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 32.0 32.1 32.2
  SAY #44570 /* ~"Mon prix est de deux cents pièces - cette fois, je n'accepterai rien d'autre."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44571 /* ~"Tiens. Prends cet argent."~ */ DO ~TakePartyGold(200)
~ GOTO 37
  IF ~~ THEN REPLY #44572 /* ~"C'est un peu cher. Tu pourrais peut-être répondre à d'autres questions…"~ */ GOTO 35
  IF ~~ THEN REPLY #44573 /* ~"Laisse tomber. Au revoir."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44574 /* ~Le githyanki empoche tes pièces et dit : "Reviens dans une semaine et je te rendrai un souvenir. Ne sois pas en retard."~ */
  IF ~~ THEN REPLY #44577 /* ~"Très bien. Au revoir."~ */ DO ~EscapeArea()
DestroySelf()
~ JOURNAL #39452 /* ~Je viens juste de passer un accord avec Yi'minn, le pêcheur githyanki. Il doit aller rechercher mes souvenirs dans le Plan Astral. Il m'a dit de le retrouver dans le Bas Quartier dans une semaine.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.0 30.1
  SAY #44579 /* ~"Crois-tu que je sois aveugle ? Va-t'en. Maintenant que je t'ai remboursé ton honneur en te répondant, je ne t'adresserai plus la parole."~ */
  IF ~~ THEN REPLY #44580 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Yiminn_Trap","AR0500",1)
~ THEN BEGIN 39 // from:
  SAY #44583 /* ~L'attitude arrogante du githyanki est devenue bien plus menaçante. "Maintenant, humain, laisse tomber ton masque et dis-nous ce que tu as dit et fait pour les chiens githzeraïs dans l'enceinte de Sigil."~ */
  IF ~~ THEN REPLY #44586 /* ~"On ne devait pas partir à la recherche de mes souvenirs ?"~ */ GOTO 40
  IF ~~ THEN REPLY #44588 /* ~"Je ne te dirai rien."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44590 /* ~"J'ai juste soulagé une femme githzeraï de ses souffrances."~ */ GOTO 42
  IF ~~ THEN REPLY #44594 /* ~"J'ai juste posé quelques questions."~ */ GOTO 43
  IF ~~ THEN REPLY #44596 /* ~"Je leur ai menti pour les embrouiller."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #44598 /* ~"Tu n'atteindras le Plan Astral qu'avec des chaînes, humain. Je te donne une dernière chance de me révéler ce que tu as dit et fait pour les githzeraïs dans l'enceinte de Sigil."~ */
  IF ~~ THEN REPLY #44601 /* ~"Je ne te dirai rien."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44603 /* ~"J'ai juste soulagé une femme githzeraï de ses souffrances."~ */ GOTO 42
  IF ~~ THEN REPLY #44605 /* ~"J'ai juste posé quelques questions."~ */ GOTO 42
  IF ~~ THEN REPLY #44606 /* ~"Je leur ai menti pour les embrouiller."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #44607 /* ~"Alors, tu vas mourir." Il brandit son arme pour attaquer !~ */
  IF ~~ THEN REPLY #44608 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44610 /* ~Laisse-le te tuer.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 39.2 40.1 40.2
  SAY #44611 /* ~"Tu mens comme un chien githzeraï, humain. Tu es leur collaborateur et leur sangsue. Nous te rendrons service en te tuant." Il brandit son arme.~ */
  IF ~~ THEN REPLY #44612 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44613 /* ~Laisse-le te tuer.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 39.3 40.3
  SAY #44614 /* ~"Tu mens. Tu observais et écoutais. Tes paroles et ton cœur te trahissent, humain. Prépare-toi à mourir."~ */
  IF ~~ THEN REPLY #44615 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44616 /* ~Laisse-le te tuer.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.4 41.1 42.1 43.1
  SAY #44617 /* ~La lame de Yi'minn t'entaille la gorge et tu tombes à terre, en sang. Ils se penchent sur toi et recommencent à parler. "Il ne savait vraiment rien, Al-midil ?"~ */
  IF ~~ THEN DO ~IncrementGlobal("Death","GLOBAL",1)
~ EXTERN ~DALMIDIL~ 0
END

IF ~~ THEN BEGIN 45 // from:
  SAY #44618 /* ~"Si tu crois que nous en savons assez, alors partons. Rassemblons nos guerriers et rejoignons nos troupes dans les Limbes."~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
StartCutSceneMode()
StartCutSceneEx("0500cut4",FALSE)
~ EXIT
END

IF WEIGHT #8 ~  NearbyDialog("DDakkon")
~ THEN BEGIN 46 // from:
  SAY #44619 /* ~L'homme aux traits tirés a la peau rugueuse comme du cuir et le teint jaune pâle. Il a un visage anguleux, un petit nez haut et des oreilles en pointe. Son corps est couvert de tatouages et de cicatrices. Ses vêtements en cuir, étranges et voyants, semblent plus décoratifs que faits pour le combat. Ses yeux, semblables à deux petites pierres noires, restent fixés sur toi alors que tu approches. Avant que tu n'arrives à lui, Dak'kon marque une pause.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 149
END

IF ~~ THEN BEGIN 47 // from:
  SAY #44620 /* ~Alors que tu approches, le githyanki t'observe et semble t'ignorer. "Dak'kon-qui-gémit-sur-les-murs-de-Shra'kt'lor… Quelle surprise !" Il brandit son arme.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 154
END

IF ~~ THEN BEGIN 48 // from:
  SAY #44621 /* ~Alors que tu te détournes, le githyanki, qui n'a pas cessé de t'observer, s'adresse à toi. "Tu me tournes le dos, Dak'kon-qui-gémit-sur-les-murs-de-Shra'kt'lor ? Tu m'affronteras en duel ou je veillerai à ce que tu portes le signe de la lâcheté dans le dos." Il brandit son arme.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 155
END

IF ~~ THEN BEGIN 49 // from: 50.1 51.1 52.2
  SAY #44622 /* ~Le githyanki et Dak'kon commencent immédiatement à échanger des coups.~ */
  IF ~~ THEN REPLY #44623 /* ~Attaque le githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44624 /* ~Laisse-les se battre.~ */ DO ~ForceAttack("Dakkon",Myself)
Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #44625 /* ~Alors que Dak'kon acquiesce, le githyanki laisse échapper un éclat de rire rauque. "Tu es le larbin de cet humain, chien. Non seulement tu es un traître, mais en plus, tu es un esclave."~ */
  IF ~~ THEN REPLY #44626 /* ~"Tu as intérêt à te taire si tu ne veux pas que je t'arrache la langue."~ */ GOTO 51
  IF ~~ THEN REPLY #44627 /* ~"Dak'kon, tue-le."~ */ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #44628 /* ~Le githyanki se penche et sourit à Dak'kon d'un air supérieur. "Alors, il n'y a rien d'autre à dire pour l'instant. Je ferai part de la condition de ton esclave à mon peuple. Ça les intéressera beaucoup."~ */
  IF ~~ THEN REPLY #44629 /* ~"Ça suffit. Je cherche mes souvenirs."~ */ GOTO 52
  IF ~~ THEN REPLY #44630 /* ~"Ça suffit. Dak'kon, tue-le."~ */ GOTO 49
  IF ~~ THEN REPLY #44631 /* ~"Ça suffit. Au revoir."~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #44632 /* ~"Des souvenirs ? Je trouve des souvenirs qui flottent dans le Plan Astral. Je serais ravi d'en récupérer un pour toi… à condition que tu y mettes le prix."~ */
  IF ~~ THEN REPLY #44633 /* ~"Quel sera le prix ?"~ */ GOTO 53
  IF ~~ THEN REPLY #44634 /* ~"Laisse tomber. On s'en va."~ */ GOTO 55
  IF ~~ THEN REPLY #44635 /* ~"Dak'kon, tue-le."~ */ GOTO 49
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #44636 /* ~"Mon prix est de deux cents pièces - cette fois, je n'accepterai rien d'autre."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44637 /* ~"Tiens. Prends cet argent."~ */ DO ~TakePartyGold(200)
~ GOTO 56
  IF ~~ THEN REPLY #44638 /* ~"Malheureusement, je n'ai pas assez d'argent. Je crois qu'on va s'en aller."~ */ GOTO 55
  IF ~~ THEN REPLY #44639 /* ~"Laisse tomber. On s'en va."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY #44640 /* ~"Le multivers tout entier est notre champ de bataille, chien. Il n'y a pas de sanctuaires. La paix n'existe pas. Tu vas mourir." Le githyanki attaque !~ */
  IF ~~ THEN REPLY #44641 /* ~Attaque le githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44642 /* ~Laisse-les se battre.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.2 52.1 53.1 53.2
  SAY #44643 /* ~"Tu pars ? Non. Pas sans le cœur du traître de Shra'kt'lor." Le githyanki attaque !~ */
  IF ~~ THEN REPLY #44644 /* ~Attaque le githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44645 /* ~Laisse-les se battre.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.0
  SAY #44646 /* ~"Alors, viens avec moi et laisse tomber ton larbin."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 157
END

IF ~~ THEN BEGIN 57 // from:
  SAY #44647 /* ~"Et tu en auras la substance quand j'en aurai fini avec toi."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 158
END

IF ~~ THEN BEGIN 58 // from:
  SAY #44648 /* ~"On va voir ça, chien githzeraï !" Le githyanki attaque furieusement Dak'kon.~ */
  IF ~~ THEN REPLY #44649 /* ~Attaque le githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44650 /* ~Laisse-les se battre.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
