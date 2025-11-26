// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKITLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKITLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #49453 /* ~Une belle femme de haute taille. Debout, elle fixe les murs de la taverne sans les voir, à serrer et à desserrer les poings lentement. Quand elle te remarque, son regard parcourt tes vêtements et ton attirail puis revient à tes yeux ; un petit sourire narquois étire ses lèvres, puis elle détourne la tête.~ */
  IF ~~ THEN REPLY #49454 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #49455 /* ~Passe ton chemin.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49456 /* ~Elle te regarde de nouveau et fronce les sourcils. "Tu parles toujours aux étrangers ?"~ */
  IF ~~ THEN REPLY #49457 /* ~"Quand j'ai besoin de leur poser des questions, oui."~ */ GOTO 2
  IF ~~ THEN REPLY #49458 /* ~"Généralement, non, mais j'avais envie de te parler."~ */ GOTO 2
  IF ~~ THEN REPLY #49459 /* ~"Non. Au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #49460 /* ~"Tu dois mener une vie passionnante. Malheureusement pour toi, je suis occupée et j'aimerais que tu me laisses tranquille."~ */
  IF ~~ THEN REPLY #49461 /* ~"J'avais juste quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #49462 /* ~"Bon, alors je te laisse. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 3 // from: 2.0
  SAY #49463 /* ~"Je t'ai dit que j'étais occupée, tu ne comprends pas ? Laisse… moi… tranquille. Merci." Elle détourne son attention de toi et semble se replonger dans ses pensées. Elle commence à se pincer la lèvre supérieure jusqu'à la faire saigner.~ */
  IF ~~ THEN REPLY #49464 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mediate","GLOBAL",0)
NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #49465 /* ~Une belle femme de haute taille. Debout, elle fixe les murs de la taverne sans les voir, à serrer et à desserrer les poings lentement. Quand elle te remarque, son regard parcourt tes vêtements et ton attirail puis revient à tes yeux ; un petit sourire narquois étire ses lèvres, puis elle détourne la tête. "Tu cherches quelque chose, matois ?" dit-elle sans te regarder.~ */
  IF ~~ THEN REPLY #49466 /* ~"J'ai cru comprendre que tu étais la personne suivante à qui je devais parler de cette clé."~ */ GOTO 5
  IF ~~ THEN REPLY #49467 /* ~"J'avais des questions à te poser…"~ */ GOTO 5
  IF ~~ THEN REPLY #49468 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #49469 /* ~"La clé, hum ?" Elle fronce un sourcil en te regardant. "Tu veux savoir ce que tu dois faire pour te la procurer, hein ? Eh bien, c'est très simple, l'ami. Ça t'intéresse ? Bien sûr ; tu es venu me voir pour ça. Es-tu prêt à écouter ? Voilà la vraie question."~ */
  IF ~~ THEN REPLY #49471 /* ~"Dis-moi ce que je dois faire."~ */ JOURNAL #49473 /* ~Kitla m'a chargé de régler le différend existant entre Kester et Poingfroissé ou d'obtenir un testament de chacun d'eux. En échange, elle a accepté de me donner la deuxième partie de la clé qui me permettra d'aller voir le deva.~ */ GOTO 6
  IF ~~ THEN REPLY #49472 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 10.7
  SAY #49474 /* ~"Il y a deux hommes ici, l'un s'appelle Poingfroissé et l'autre Kester. Poingfroissé est forgeron et Kester, distillateur. Ils me doivent tous deux *beaucoup* d'argent. L'un d'eux doit aussi de l'argent à l'autre et c'est pour ça qu'aucun des deux ne me rembourse. Ils se querellent sur une question d'héritage ; débrouille-toi pour m'obtenir les héritages qu'ils attendent. Je pourrai alors négocier très *efficacement* avec eux. Si ça ne marche pas, aide-les à résoudre leurs problèmes - ou tue-les - et je te donnerai la deuxième partie de la Clé."~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"J'ai leurs deux héritages."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"J'ai l'héritage de Poingfroissé."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"J'ai l'héritage de Kester."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Poingfroissé est mort."~ */ GOTO 21
  IF ~  !Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester est mort."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Ils sont morts tous les deux."~ */ GOTO 23
  IF ~~ THEN REPLY #3787 /* ~"Je ne ferai pas ça."~ */ GOTO 8
  IF ~  Global("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"D'accord. Au revoir."~ */ DO ~SetGlobal("Mediate","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.6
  SAY #49478 /* ~Elle fronce les sourcils. "Nous pourrons peut-être parler quand tu auras mené à bien cette petite mission, hum ? Allez, mets-toi au travail." Elle replonge le nez dans son verre.~ */
  IF ~~ THEN REPLY #49479 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.6
  SAY #49480 /* ~Elle sourit gentiment. "Alors, tu n'auras pas la Clé. Vas-t'en, maintenant."~ */
  IF ~~ THEN REPLY #49481 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",2)
Global("Mediate","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49482 /* ~"Te revoilà, hum ? Eh bien, il se trouve que j'ai quelque chose pour toi finalement. Tu m'aides, je t'aide et on est tous les deux contents."~ */
  IF ~~ THEN REPLY #49483 /* ~"Qu'est-ce que je dois faire ?"~ */ JOURNAL #49485 /* ~Kitla m'a chargé de régler le différend existant entre Kester et Poingfroissé ou d'obtenir un testament de chacun d'eux. En échange, elle a accepté de me donner la deuxième partie de la clé qui me permettra d'aller voir le deva.~ */ GOTO 6
  IF ~~ THEN REPLY #49484 /* ~"Peut-être plus tard. Au revoir."~ */ JOURNAL #49485 /* ~Kitla m'a chargé de régler le différend existant entre Kester et Poingfroissé ou d'obtenir un testament de chacun d'eux. En échange, elle a accepté de me donner la deuxième partie de la clé qui me permettra d'aller voir le deva.~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Mediate","GLOBAL",0)
!Global("Mediate","GLOBAL",6)
!Global("Mediate","GLOBAL",7)
!Global("Mediate","GLOBAL",8)
!Global("Mediate","GLOBAL",10)
~ THEN BEGIN 10 // from:
  SAY #49486 /* ~Ses yeux brillent dans la pénombre de la taverne. "Tu as quelque chose pour moi, balafré ?"~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"J'ai leurs deux héritages."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"J'ai l'héritage de Poingfroissé."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"J'ai l'héritage de Kester."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Poingfroissé est mort."~ */ GOTO 21
  IF ~  Global("Kester_Dead_KAPUTZ","GLOBAL",1)
!Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester est mort."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Ils sont morts tous les deux."~ */ GOTO 23
  IF ~~ THEN REPLY #66359 /* ~"Pas pour l'instant. J'y travaille. J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #50063 /* ~"Qu'est-ce que j'étais censé faire, déjà ?"~ */ GOTO 6
  IF ~~ THEN REPLY #49499 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 10.0
  SAY #49492 /* ~"Vraiment ? Donne-les-moi et je te donnerai la deuxième partie de la Clé."~ */
  IF ~~ THEN REPLY #49493 /* ~"Voilà."~ */ DO ~TakePartyItemNum("CrumLeg",1)
TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",10)
AddexperienceParty(150000)
~ GOTO 12
  IF ~~ THEN REPLY #49494 /* ~"Je fais de mon mieux. Donne-moi une chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49495 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49496 /* ~Elle te les prend et rit d'un air méchant. "Eh bien, MAINTENANT qu'ils ne viennent pas me dire qu'ils ne peuvent pas me payer." Elle range les héritages dans une bourse attachée à sa ceinture. "Tu es prêt pour la deuxième partie de la clé ?"~ */
  IF ~~ THEN REPLY #49497 /* ~"Oui. Je t'écoute."~ */ GOTO 14
  IF ~~ THEN REPLY #49498 /* ~"Pas encore. Réponds d'abord à quelques questions."~ */ GOTO 16
  IF ~~ THEN REPLY #49499 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 17.1 18.1
  SAY #49500 /* ~Elle soupire. "Ce n'est pas en restant là à discuter avec moi que tu récupéreras mon argent. Allez… va le chercher."~ */
  IF ~~ THEN REPLY #49501 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.0 19.0 20.0 21.0 22.0 23.0
  SAY #49502 /* ~Un instant, elle se concentre, et sa voix baisse d'un ton tandis qu'elle entonne : "Leur prison nichée au cœur des ténèbres…" Elle s'interrompt, et reprend d'une voix normale : "Pour la troisième partie de la Clé, va voir Nabat, là-bas." Elle bâille sans retenue. "Je suis épuisée. Laisse-moi tranquille un moment. Je dois réfléchir à mes prochaines actions ici. Au revoir."~ */
  IF ~~ THEN REPLY #49503 /* ~"Je voulais juste te poser quelques questions…"~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Kitla m'a donné la deuxième partie de la clé. On peut y lire : 'Leur prison nichée au cœur des ténèbres…' Je dois maintenant aller parler à un homme appelé Nabat."~ */ GOTO 15
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49504 /* ~"Je voudrais un entraînement de mage."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Kitla m'a donné la deuxième partie de la clé. On peut y lire : 'Leur prison nichée au cœur des ténèbres…' Je dois maintenant aller parler à un homme appelé Nabat."~ */ GOTO 24
  IF ~~ THEN REPLY #67753 /* ~"Au revoir."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Kitla m'a donné la deuxième partie de la clé. On peut y lire : 'Leur prison nichée au cœur des ténèbres…' Je dois maintenant aller parler à un homme appelé Nabat."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 15 // from: 14.0 24.2 25.1
  SAY #49506 /* ~"Peut-être plus tard. J'ai un peu trop de choses dans la tête pour le moment…"~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49507 /* ~"Peux-tu me former à être mage ?"~ */ GOTO 24
  IF ~~ THEN REPLY #67754 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #49508 /* ~Elle soupire. "Écoute, je dois préparer mon avenir… je te donne la clé et on en reste là, d'accord ?"~ */
  IF ~~ THEN REPLY #49509 /* ~"D'accord. Donne-la-moi."~ */ GOTO 14
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49510 /* ~"Je voudrais un entraînement de mage."~ */ GOTO 24
  IF ~~ THEN REPLY #67755 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1 10.1
  SAY #49511 /* ~"Tu vas me le donner, ou quoi ?" Elle tend la main. "Au moins, comme ça, je suis sûre que Poingfroissé va me rembourser."~ */
  IF ~~ THEN REPLY #49512 /* ~"Oui. Tiens."~ */ DO ~TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49513 /* ~"Je fais de mon mieux. Donne-moi une chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49514 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 10.2
  SAY #49515 /* ~"Tu vas me le donner, ou quoi ?" Elle tend la main. "Au moins, comme ça, je suis sûre que Kester va me rembourser."~ */
  IF ~~ THEN REPLY #49516 /* ~"Oui. Tiens."~ */ DO ~TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49517 /* ~"Je fais de mon mieux. Donne-moi une chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49518 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #49519 /* ~Elle range l'héritage dans une bourse attachée à sa ceinture et sourit d'un air méchant. "Tu veux que je te donne la deuxième partie de la Clé maintenant ?"~ */
  IF ~~ THEN REPLY #49520 /* ~"Oui. Je t'écoute."~ */ GOTO 14
  IF ~~ THEN REPLY #49521 /* ~"Pas encore. Réponds d'abord à quelques questions."~ */ GOTO 20
  IF ~~ THEN REPLY #49522 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Mediate","GLOBAL",5)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 20 // from: 19.1
  SAY #49523 /* ~Elle soupire. "Merci de m'avoir aidée, mais… tu vois, j'ai beaucoup à faire. Je te donne la clé et on est quittes, d'accord ?"~ */
  IF ~~ THEN REPLY #49524 /* ~"D'accord. Donne-la-moi."~ */ GOTO 14
  IF ~~ THEN REPLY #49525 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3 10.3
  SAY #66361 /* ~"Tu l'as tué ? C'est pas plus mal… ce vieux dégoûtant arrêtait pas de me peloter. Tu es prêt pour la deuxième partie de la clé ?"~ */
  IF ~~ THEN REPLY #66362 /* ~"Donne-la moi…"~ */ DO ~SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 6.4 10.4
  SAY #66363 /* ~"Bien. J'ai jamais pu le pifrer, de toute façon. Tu es prêt pour la deuxième partie de la clé ?"~ */
  IF ~~ THEN REPLY #66364 /* ~"Donne-la moi…"~ */ DO ~SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 6.5 10.5
  SAY #66365 /* ~"Salut, le tueur. Je m'y attendais pas, mais je suis pas vraiment déçue. Tu es prêt pour la deuxième partie de la clé ?"~ */
  IF ~~ THEN REPLY #66366 /* ~"Donne-la moi…"~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 24 // from: 14.1 15.0 16.1
  SAY #67738 /* ~Son regard s'illumine. "Oh ? As-tu déjà étudié l'Art auparavant ?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #67756 /* ~"Oui, je suis juste un peu rouillé et j'ai besoin de m'y remettre."~ */ GOTO 25
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #67757 /* ~"Non, j'ai besoin de cours."~ */ GOTO 27
  IF ~~ THEN REPLY #67758 /* ~"Laisse tomber. Réponds plutôt à mes questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #67759 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #67739 /* ~"Et tu veux abandonner ta carrière actuelle pour reprendre tes études de magie ?"~ */
  IF ~~ THEN REPLY #67760 /* ~"Oui."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 26
  IF ~~ THEN REPLY #67761 /* ~"Non, pas vraiment. Réponds plutôt à quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #67762 /* ~"Non, pas vraiment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #67740 /* ~Vous passez de longues minutes à parler magie, puis Kitla hoche la tête en souriant. "Tu es vraiment doué. Tu as tout ce qu'il faut pour recommencer à suivre la voie de l'Art."~ */
  IF ~~ THEN REPLY #67763 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY #67741 /* ~"Voyons d'abord quelles sont tes aptitudes." Elle te fait passer une série d'épreuves de logique et d'énigmes verbales pour déterminer ton intelligence et tes capacités de raisonnement…~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #67764 /* ~Fais de ton mieux pour répondre à ses questions.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Mage_Training","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #67765 /* ~Fais de ton mieux pour répondre à ses questions.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67742 /* ~"On dirait que tes cellules grises fonctionnent, au moins." Elle t'observe attentivement. "Et je vois que tu as déjà un livre. Bien. Tu en auras besoin pour inscrire tes sorts. Ils doivent tous être rédigés quelque part. Ils peuvent prendre des formes extrêmement variées, mais il n'est possible de les étudier que si on les couche sur le papier. Tu me suis, jusque-là ?"~ */
  IF ~~ THEN REPLY #67766 /* ~"Oui. J'ai besoin d'un livre dans lequel inscrire mes sorts afin de pouvoir les étudier plus tard."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #67743 /* ~Elle se retient de se moquer de toi, mais tu distingues une lueur de mépris dans son regard. "Tu n'as pas l'esprit qu'il faut pour devenir mage. Pour toi, les sorts seraient pareils à de l'eau ; ils t'échapperaient avant que tu n'aies eu le temps de les lancer. Continue de combattre ou de voler. Tu ne sauras jamais faire usage de magie."~ */
  IF ~~ THEN REPLY #67767 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #67744 /* ~"Je vais te faire passer une petite épreuve." Elle sort un parchemin. "Lis-le et dis-moi ce qu'il raconte." Les symboles qui recouvrent le papier dansent devant tes yeux ; ils n'ont aucun sens pour toi.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #67768 /* ~Examine le parchemin.~ */ GOTO 31
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #67769 /* ~Examine le parchemin.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67745 /* ~Instinctivement, tu te détends et le sens du parchemin s'impose à ton subconscient, comme si une partie endormie de ton cerveau venait de se réveiller. Le parchemin est une liste de syllabes magiques, de composants, de gestes et de rituels qu'il faut suivre à la lettre pour pouvoir lancer un sort.~ */
  IF ~~ THEN REPLY #67770 /* ~"Il s'agit d'une divination mineure, n'est-ce pas ? Un sort permettant d'identifier les objets."~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #67746 /* ~Malgré tous tes efforts, les symboles du parchemin n'ont pas le moindre sens pour toi. Chaque fois que tu penses pouvoir les comprendre, ils se brouillent et te font mal au crâne. Enfin, après plusieurs minutes, tu abandonnes, les yeux en feu… et soudain, le contenu du parchemin t'apparaît clairement. Il s'agit d'une liste de syllabes magiques, de composants, de gestes et de rituels qu'il faut suivre à la lettre pour pouvoir lancer un sort.~ */
  IF ~~ THEN REPLY #67771 /* ~"Il s'agit d'une divination mineure, n'est-ce pas ? Un sort permettant d'identifier les objets."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 31.0 32.0
  SAY #67747 /* ~Kitla se permet un petit sourire de satisfaction. "Alors, comme ça, tu sais lire un parchemin de sort, hein ? Cela signifie que tu as déjà reçu une formation, même si tu l'as oubliée, car seul un mage peut comprendre les symboles inscrits sur ce parchemin. Le blocage qui s'était constitué dans ton esprit vient de sauter et tu t'es épargné plusieurs années d'étude. Félicitations."~ */
  IF ~~ THEN REPLY #67772 /* ~"Merci. En quoi consiste l'étape suivante ?"~ */ JOURNAL #67774 /* ~Kitla, la magicienne de la taverne de la Porte du Traître, à Maudith, m'a montré un parchemin magique. Elle m'a expliqué que le fait que je sois capable de le lire prouve que j'ai été mage à un moment ou un autre de ma vie.~ */ GOTO 34
  IF ~~ THEN REPLY #67773 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ JOURNAL #67774 /* ~Kitla, la magicienne de la taverne de la Porte du Traître, à Maudith, m'a montré un parchemin magique. Elle m'a expliqué que le fait que je sois capable de le lire prouve que j'ai été mage à un moment ou un autre de ma vie.~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #67748 /* ~"Tu as déjà ton livre de sorts, et il ne te reste donc plus qu'à apprendre comment les mémoriser et les lancer. Pour commencer, tu dois être frais et dispos pour pouvoir les mémoriser. Avant de te reposer, réfléchis aux sorts que tu souhaites apprendre puis détends-toi. Quand tu te réveilleras, étudie les sorts que tu avais choisis et ils te viendront naturellement en mémoire."~ */
  IF ~~ THEN REPLY #67775 /* ~"Combien de sorts puis-je lancer ?"~ */ GOTO 35
  IF ~~ THEN REPLY #67776 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67749 /* ~"Dans les premiers temps, les sorts dont tu disposeras seront limités. Tu ne pourras vraisemblablement en jeter qu'un, voire trois, mais guère plus. Sers-t-en avec discernement, car il te faudra attendre le lendemain pour pouvoir les mémoriser de nouveau après les avoir utilisés. En progressant dans ta maîtrise de l'Art, tu t'apercevras que tes capacités de mémoire deviendront de plus en plus importantes."~ */
  IF ~~ THEN REPLY #67777 /* ~"D'accord. Continue."~ */ GOTO 36
  IF ~~ THEN REPLY #67778 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #67750 /* ~"Lorsque tu lances un sort, il disparaît de ta mémoire. Si tu comptes t'en servir à deux reprises, il te faut l'apprendre deux fois." Elle s'accorde une courte pause. "Ouvre l'œil, des fois que tu découvrirais d'autres sorts. Tu pourras les trouver sous de nombreuses formes et auprès de diverses personnes. Quand tu en obtiens de nouveaux, incorpore-les à ton livre de sorts, si possible. Pour ce faire, étudie-les et recopie-les."~ */
  IF ~~ THEN REPLY #67779 /* ~"D'accord. C'est tout ?"~ */ JOURNAL #67781 /* ~Kitla m'a enseigné les bases de la magie. Avant de me reposer, il me faut choisir dans mon grimoire les sorts que je souhaite mémoriser. Si je veux jeter plusieurs fois le même sort, je dois le mémoriser à plusieurs reprises. Chaque fois que je pourrai dormir, je me réveillerai le lendemain matin avec les sorts en mémoire. Le nombre de sorts que je peux lancer chaque jour est limité en fonction de ma compétence.~ */ GOTO 37
  IF ~~ THEN REPLY #67780 /* ~"Je crois que j'ai saisi les bases. Passons à l'entraînement."~ */ JOURNAL #67781 /* ~Kitla m'a enseigné les bases de la magie. Avant de me reposer, il me faut choisir dans mon grimoire les sorts que je souhaite mémoriser. Si je veux jeter plusieurs fois le même sort, je dois le mémoriser à plusieurs reprises. Chaque fois que je pourrai dormir, je me réveillerai le lendemain matin avec les sorts en mémoire. Le nombre de sorts que je peux lancer chaque jour est limité en fonction de ma compétence.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.1 34.1 35.1 36.0 36.1
  SAY #67751 /* ~"Tu as compris. Bien. Tiens, prends ces parchemins et ajoute les incantations à ton livre de sorts. Bonne chance."~ */
  IF ~~ THEN REPLY #67752 /* ~"Merci et au revoir."~ */ DO ~SetNamelessClass(MAGE)
GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,0,0,0)
GiveItemCreate("SPWI502",Protagonist,0,0,0)
GiveItemCreate("SPWI207",Protagonist,0,0,0)
~ EXIT
END
