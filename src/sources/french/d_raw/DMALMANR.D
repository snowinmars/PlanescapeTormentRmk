// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMALMANR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMALMANR~

IF ~  Global("Malmaner","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #27976 /* ~Cet homme mince, au visage anguleux, attire ton attention. "Ah, monsieur, monsieur ! Juste un instant ! Serais-tu ici pour aller chez le tailleur par hasard ?"~ */
  IF ~~ THEN REPLY #28027 /* ~"Je vou…"~ */ GOTO 1
  IF ~~ THEN REPLY #28028 /* ~Ignore-le, continue à marcher.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27977 /* ~L'homme poursuit : "Je demande, monsieur, parce que j'ai l'impression de l'avoir offensé. J'avais commandé à ce fou au sang chaud un costume, mais il m'a jeté de son magasin et ne veut plus me parler."~ */
  IF ~~ THEN REPLY #28029 /* ~"Et alo…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27978 /* ~L'homme serre soudain les poings et les agite en direction du ciel. "Qu'ai-je fait pour mériter ce traitement ? Rien ! J'étais un *client* ! C'est son devoir de me *servir* à cette espèce de grossier bouffon !"~ */
  IF ~~ THEN REPLY #28030 /* ~"Qu'est-ce que tu attends de moi ?"~ */ GOTO 4
  IF ~~ THEN REPLY #28031 /* ~"Je n'ai pas le temps. Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 4.0 5.0
  SAY #27979 /* ~"Pourrais-je te demander d'y aller et de me rapporter mon costume ? J'ai un bal masqué et je n'ai pas le temps d'en faire faire un autre."~ */
  IF ~~ THEN REPLY #28032 /* ~"Oui. Je m'en occupe tout de suite."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~J'ai accepté de rapporter le déguisement de Malmanier de chez Goncalves, le tailleur.~ */ GOTO 6
  IF ~~ THEN REPLY #28033 /* ~"D'accord, mais pas gratuitement."~ */ GOTO 8
  IF ~~ THEN REPLY #28034 /* ~"Pourquoi est-ce que tu ne vas pas le chercher toi-même ?"~ */ GOTO 7
  IF ~~ THEN REPLY #28035 /* ~"Non, je n'ai pas le temps. Au revoir."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #27980 /* ~"Hein ?" Il recentre son attention sur toi. "Oh ! Oui, toi…"~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #27981 /* ~"Attends, attends, s'il te plaît !"~ */
  IF ~~ THEN REPLY #28050 /* ~Écoute-le jusqu'au bout.~ */ GOTO 3
  IF ~~ THEN REPLY #28051 /* ~Pars.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 7.0 8.0 16.0
  SAY #27982 /* ~"Oh, parfait ! C'est le bâtiment long, juste là…" Il te désigne un édifice long et bas vers le nord. "Je te remercie, monsieur !"~ */
  IF ~~ THEN REPLY #28052 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #27983 /* ~Il ricane, roulant les yeux. "Ce rustre porcin ! Je ne sais pas comment, j'ai 'offensé' ce freluquet bouffi et pompeux ! Il m'a défendu de remettre les pieds dans son magasin et refuse de discuter. Incroyable !"~ */
  IF ~~ THEN REPLY #28053 /* ~"Je m'en occupe tout de suite."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~J'ai accepté de rapporter le déguisement de Malmanier de chez Goncalves, le tailleur.~ */ GOTO 6
  IF ~~ THEN REPLY #28054 /* ~"J'irai chercher ton costume, mais pas gratuitement."~ */ GOTO 8
  IF ~~ THEN REPLY #28055 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 7.1 16.1
  SAY #27984 /* ~"*Quoi* ? Au nom des Puissances, tu ne vas chercher qu'un *costume* ! Ça ne te prendra qu'un instant ! Je ne pense pas qu'un acte aussi élémentaire mérite rétribution !"~ */
  IF ~~ THEN REPLY #28056 /* ~"Bien. Je vais aller le chercher, alors."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~J'ai accepté de rapporter le déguisement de Malmanier de chez Goncalves, le tailleur.~ */ GOTO 6
  IF ~~ THEN REPLY #28057 /* ~"Alors, je n'ai pas de temps. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #27985 /* ~"Attends…" Il soupire bruyamment. "Dix pièces de cuivre alors, pour une course qui ne prendra que quelques minutes. Ça ira… ?"~ */
  IF ~~ THEN REPLY #28058 /* ~"Oui. Donne-moi l'argent et j'irai chercher le costume."~ */ DO ~GivePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #28059 /* ~"Tu as intérêt à me parler sur un autre ton, 'sire'. Je commence à comprendre pourquoi le tailleur t'a trouvé désagréable. Au revoir."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #28060 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27986 /* ~Il te tend les pièces, en continuant de marmonner. "C'est le bâtiment long, juste là…" Il désigne un édifice long et bas. "… au nord-est de la porte du Bas Quartier. Dépêche-toi s'il te plaît."~ */
  IF ~~ THEN REPLY #28061 /* ~"Je vais aller le chercher. Au revoir."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~J'ai accepté de rapporter le déguisement de Malmanier de chez Goncalves, le tailleur.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28062 /* ~"Que je me dépêche ? Pour aller où ? Oh, et merci pour la pièce. Au revoir… 'sire'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28063 /* ~"Que je me dépêche ? Pour aller où ? Oh, merci pour la pièce. Au revoir… 'sire'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #27987 /* ~Il te rappelle : "Toi… toi, vieux débris de chair balafré ! Toi, espace de sac à poubelle minable et ridé ! Reviens ici, toi, propagateur de maladies ! Personne ne traite Malmanier de la sorte ! Reviens ici avant que j'appelle la garde !"~ */
  IF ~~ THEN REPLY #28064 /* ~"Bien… Reprends ton argent."~ */ DO ~TakePartyGold(10)
~ GOTO 13
  IF ~~ THEN REPLY #28065 /* ~Jette-lui les dix pièces de cuivre.~ */ DO ~TakePartyGold(10)
~ GOTO 14
  IF ~~ THEN REPLY #28066 /* ~Ignore-le et va-t'en.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #27988 /* ~Il te rappelle : "Toi… toi, vieux débris de chair balafré ! Toi, espace de sac à poubelle minable et ridé ! Reviens ici, toi, propagateur de maladies ! Personne ne traite Malmanier de la sorte ! Reviens ici avant que j'appelle la garde !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 273
END

IF ~~ THEN BEGIN 13 // from: 11.0 21.0 21.2 21.4 21.6
  SAY #27989 /* ~"Hmph !" Il te saisit les pièces dans la main et part d'un pas lourd en les fourrant dans sa bourse.~ */
  IF ~~ THEN REPLY #28067 /* ~Pars.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1 21.1 21.3 21.5 21.7
  SAY #27990 /* ~L'homme te regarde surpris. "Toi… insolent…"~ */
  IF ~~ THEN REPLY #28068 /* ~"Tais-toi si tu ne veux pas mourir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #28069 /* ~Ignore-le et va-t'en.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2 14.0 21.8
  SAY #27991 /* ~"Tu vas voir ! Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #28070 /* ~Attaque-le.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #28072 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~  Global("Malmaner","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #27992 /* ~"Allons, allons, le citoyen le plus aimable de Sigil…" La voix de l'homme n'est que sarcasme amer. "Je te remercie *beaucoup* de ton aide, monsieur. Oh… attends… est-ce que tu m'as aidé au fait ? Hmph."~ */
  IF ~~ THEN REPLY #28073 /* ~"J'ai changé d'avis. Je vais aller chercher ton costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~J'ai accepté de rapporter le déguisement de Malmanier de chez Goncalves, le tailleur.~ */ GOTO 6
  IF ~~ THEN REPLY #28075 /* ~"Écoute… J'irai chercher ton costume, mais pas gratuitement."~ */ GOTO 8
  IF ~~ THEN REPLY #28076 /* ~"Au revoir."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",2)
~ THEN BEGIN 17 // from:
  SAY #27993 /* ~L'homme te regarde avec impatience. "Alors ? Alors ? T'as pris le costume chez Goncalves ?"~ */
  IF ~~ THEN REPLY #28077 /* ~"Non, pas encore."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.4 32.2 33.2 38.0 39.2
  SAY #27994 /* ~"Bon, alors vas-y ! Il faut que j'aille à ce bal masqué, moi !"~ */
  IF ~~ THEN REPLY #28078 /* ~"Je reviendrai quand je l'aurai. Au revoir."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",3)
!PartyHasItem("Costume1")
~ THEN BEGIN 19 // from:
  SAY #27995 /* ~L'homme te regarde avec impatience. "Alors ? Alors ? T'as pris le costume chez Goncalves ?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28079 /* ~"Non, pas encore. Il dit que tu lui dois trente pièces de cuivre pour le boulot."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28083 /* ~Mensonge : "Non, pas encore. Il dit que tu lui dois, euh, cinquante pièces de cuivre pour son travail."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28084 /* ~"Non, pas encore… mais au fait, et ces robes d'Hommes-Poussière ?"~ */ GOTO 32
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28085 /* ~Mensonge : "Euh… oui. Voici la robe d'Homme-Poussière. Je veux dire, le costume."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_2","GLOBALLaw",-1)
~ GOTO 33
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28086 /* ~"Non, pas encore."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 23.2 27.0 32.0 33.0
  SAY #27996 /* ~"*QUOI* ?! Hmph ! Bien, bien… prends cet argent et rapporte-moi ce foutu costume !" Il te jette trente pièces de cuivre.~ */
  IF ~~ THEN REPLY #28087 /* ~"Je reviendrai quand je l'aurai. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28088 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28089 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 24.1 40.1 42.1
  SAY #27997 /* ~Il te rappelle : "Toi… toi vieux débris de chair balafré ! Toi, espèce de sac à poubelle minable et ridé ! Reviens-ici, sale propagateur de maladies ! Personne ne traite Malmanier de la sorte ! Reviens avant que j'appelle la garde !"~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28090 /* ~"Bien… Reprends ton argent."~ */ DO ~TakePartyGold(30)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28091 /* ~Jette-lui les trente pièces de cuivre.~ */ DO ~TakePartyGold(30)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28092 /* ~"Bien… Reprends ton argent."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28093 /* ~Jette-lui les cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28094 /* ~"Bien… Reprends ton argent."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28095 /* ~Jette-lui les cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28096 /* ~"Bien… Reprends ton argent."~ */ DO ~TakePartyGold(80)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28097 /* ~Jette-lui les quatre-vingt pièces de cuivre.~ */ DO ~TakePartyGold(80)
~ GOTO 14
  IF ~~ THEN REPLY #28098 /* ~Ignore-le, pars.~ */ GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 40.2 42.2
  SAY #27998 /* ~Il te rappelle : "Toi… toi, vieux débris de chair balafré ! Toi, espace de sac à poubelle minable et ridé ! Reviens ici, toi, propagateur de maladies ! Personne ne traite Malmanier de la sorte ! Reviens ici avant que j'appelle la garde !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 274
END

IF ~~ THEN BEGIN 23 // from: 19.1 32.1 33.1
  SAY #27999 /* ~L'homme a l'air abasourdi. "Impossible ! Ridicule ! Nous nous étions mis d'accord sur un prix de trente pièces !"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28099 /* ~Mensonge : "Il était blessé, Malmanier. Tu l'as vexé, alors il a augmenté le prix."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28100 /* ~Mensonge : "Eh bien, euh, comme il était contrarié, il a augmenté le prix."~ */ GOTO 27
  IF ~~ THEN REPLY #28101 /* ~"Pardon, j'ai fait une erreur. Ce n'était que trente pièces de cuivre."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28000 /* ~Il t'examine avec suspicion, puis s'adoucit : "D'accord ! Voilà. Donne-moi ce foutu costume !" Il te jette cinquante pièces de cuivre.~ */
  IF ~~ THEN REPLY #28102 /* ~"Je reviendrai quand je l'aurai. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28103 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28104 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~  Global("Malmaner","GLOBAL",3)
PartyHasItem("Costume1")
~ THEN BEGIN 25 // from:
  SAY #28001 /* ~L'homme te regarde avec impatience. "Alors ? Alors ? T'as pris le costume chez Goncalves ?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28105 /* ~"Oui, le voilà. Ça m'a coûté trente pièces."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~J'ai récupéré le déguisement de Malmanier chez Goncalves, le tailleur, et je le lui ai rapporté.~ */ GOTO 26
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28106 /* ~Mensonge : "Oui, le voilà. Il m'a coûté cinquante pièces."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28107 /* ~"Oui, le voilà."~ */ DO ~TakePartyItemNum("Costume1",1)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~J'ai récupéré le déguisement de Malmanier chez Goncalves, le tailleur, et je le lui ai rapporté.~ */ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.2 30.0
  SAY #28002 /* ~"D'accord, d'accord ! Voilà." Il te jette trente pièces de cuivre. "Faut que je parte maintenant…"~ */
  IF ~~ THEN REPLY #28108 /* ~"Attends… Goncalves a dit que beaucoup de gens allaient se déguiser en Homme-Poussière."~ */ GOTO 34
  IF ~~ THEN REPLY #28109 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY #28003 /* ~Il t'examine avec suspicion, en pinçant les lèvres.~ */
  IF ~~ THEN REPLY #28110 /* ~"Pardon, j'ai fait une erreur. Ce n'était que trente pièces de cuivre."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #28004 /* ~L'homme a l'air abasourdi. "Impossible ! Ridicule ! Nous nous étions mis d'accord sur un prix de trente pièces !"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28111 /* ~Mensonge : "Il était blessé, Malmanier. Tu l'as vexé, alors il a augmenté le prix."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(50)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~J'ai récupéré le déguisement de Malmanier chez Goncalves, le tailleur, et je le lui ai rapporté.~ */ GOTO 29
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28112 /* ~Mensonge : "Eh bien, euh, comme il était contrarié, il a augmenté le prix."~ */ GOTO 30
  IF ~~ THEN REPLY #28113 /* ~"Pardon, j'ai fait une erreur. Ce n'était que trente pièces de cuivre."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~J'ai récupéré le déguisement de Malmanier chez Goncalves, le tailleur, et je le lui ai rapporté.~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #28005 /* ~Il t'examine avec suspicion, puis se radoucit : "D'accord ! Voilà !" Il te jette cinquante pièces de cuivre. "Bon, je dois m'en aller…"~ */
  IF ~~ THEN REPLY #28114 /* ~"Attends… Goncalves a dit que beaucoup de gens allaient se déguiser en Homme-Poussière."~ */ GOTO 34
  IF ~~ THEN REPLY #28115 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #28006 /* ~Il t'examine avec suspicion, en pinçant les lèvres.~ */
  IF ~~ THEN REPLY #28116 /* ~"Pardon, j'ai fait une erreur. Ce n'était que trente pièces de cuivre."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY #28008 /* ~"Enfin !" Il t'arrache le costume des mains. "Bon, faut que je m'en aille…"~ */
  IF ~~ THEN REPLY #28117 /* ~"Attends… Goncalves a dit que beaucoup de gens allaient se déguiser en Homme-Poussière."~ */ GOTO 34
  IF ~~ THEN REPLY #28118 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.2
  SAY #28009 /* ~Il se recule l'air dégoûté. "Berk ! Mais regarde… ça ! Des trucs sales, mités… et ce tissu si grossier ! Jamais je ne porterai cette camelote."~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28119 /* ~"Eh bien, il dit que tu lui dois trente pièces de cuivre pour le vrai costume."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28120 /* ~Mensonge : "Eh bien, il dit que tu lui dois, euh, cinquante pièces de cuivre pour le vrai costume."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28121 /* ~"Eh bien, je n'ai pas encore le vrai costume."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 19.3
  SAY #28010 /* ~Il se recule l'air dégoûté. "Berk ! Regarde… ça ! Des trucs sales, mités… et un tissu si grossier ! Jamais je ne porterai cette camelote." Il te regarde avec suspicion. "Qu'est-ce que c'*est* exactement, monsieur ?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28122 /* ~"Rien, peu importe. Il dit que tu lui dois trente pièces de cuivre pour le vrai costume."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28123 /* ~Mensonge : "Rien, peu importe. Il dit que tu lui dois, euh cinquante pièces de cuivre pour le vrai costume."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28124 /* ~"Peu importe. Je n'ai pas encore le vrai costume."~ */ GOTO 18
END

IF ~~ THEN BEGIN 34 // from: 26.0 29.0 31.0
  SAY #28007 /* ~"Non ? Zut ! Je détesterais arriver dans un costume si *commun*… hmmm…"~ */
  IF ~~ THEN REPLY #28125 /* ~"Je pourrais aller voir s'il en a un autre de prêt."~ */ GOTO 36
  IF ~~ THEN REPLY #28126 /* ~"Je pourrais essayer de t'en trouver un autre… mais ça te coûtera de l'argent."~ */ GOTO 37
  IF ~~ THEN REPLY #28127 /* ~"Dommage. Au revoir."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2 36.2 37.1
  SAY #28011 /* ~"Hmph !" Il part d'un pas lourd, en marmonnant aigrement.~ */
  IF ~~ THEN REPLY #28128 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #28012 /* ~"C'est pas une mauvaise idée, pas mauvaise du tout ! Vite, vois si ce nigaud ventru en a un autre, veux-tu ?"~ */
  IF ~~ THEN REPLY #28129 /* ~"Je reviendrai avec un autre costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALGood_Malmaner_1","GLOBALGood",1)
~ JOURNAL #27454 /* ~J'ai accepté de récupérer un second déguisement pour Malmanier chez Goncalves, le tailleur.~ */ EXIT
  IF ~~ THEN REPLY #28130 /* ~"D'accord… mais ça va te coûter de l'argent."~ */ GOTO 37
  IF ~~ THEN REPLY #28131 /* ~"Peu importe, oublie mon offre. Au revoir."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.1 36.1
  SAY #28013 /* ~Il roule les yeux, en ricanant. "J'aurais dû m'en douter ! Voici, *mercenaire*. Ce sera suffisant, j'espère ?" Il te tend vingt pièces de cuivre.~ */
  IF ~~ THEN REPLY #28132 /* ~"Ça ira. Je vais revenir avec un autre costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
GivePartyGold(20)
~ JOURNAL #27454 /* ~J'ai accepté de récupérer un second déguisement pour Malmanier chez Goncalves, le tailleur.~ */ EXIT
  IF ~~ THEN REPLY #28133 /* ~"En fait, oublie mon offre. Au revoir."~ */ GOTO 35
END

IF ~  Global("Malmaner","GLOBAL",4)
~ THEN BEGIN 38 // from:
  SAY #28014 /* ~L'homme te regarde avec impatience. "Bon ? Alors ? Tu as pris un autre costume chez lui ?"~ */
  IF ~~ THEN REPLY #28134 /* ~"Non, pas encore."~ */ GOTO 18
END

IF ~  Global("Malmaner","GLOBAL",5)
!PartyHasItem("Costume2")
~ THEN BEGIN 39 // from:
  SAY #28015 /* ~L'homme te regarde avec impatience. "Bon ? Alors ? Tu as pris un autre costume chez lui ?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28135 /* ~"Non, pas encore. Il en a un autre, mais il veut cinquante pièces de cuivre."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28136 /* ~Mensonge : "Non, pas encore. Il en a un autre, mais il en veut, euh, quatre-vingt pièces de cuivre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_3","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28137 /* ~"Non, pas encore."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 41.2 43.0
  SAY #28016 /* ~Il s'arrache les cheveux, en geignant : "Oh, que les Puissances aiment abuser du pauvre, du noble Malmanier ! Damné soit ce bal masqué et trois fois damné ce tailleur repoussant !" Il te jette cinquante pièces de cuivre. "Va-t'en !"~ */
  IF ~~ THEN REPLY #28138 /* ~"Je reviendrai quand je l'aurai. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28139 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28140 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #28017 /* ~"C'est… c'est… inconcevable ! Tout à fait absurde ! Pour qui se prend-il ?!" Il se renfrogne soudain. "En y réfléchissant, ça me *paraît* un peu fort, même de la part de Goncalves." Il te regarde d'un air soupçonneux.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28141 /* ~Mensonge : "Ce type ne t'apprécie guère, Malmanier. Il te fait payer pour les mauvaises paroles que tu as eues envers lui."~ */ DO ~GivePartyGold(80)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 42
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28142 /* ~Mensonge : "Eh bien, euh, tu l'as vraiment contrarié."~ */ GOTO 43
  IF ~~ THEN REPLY #28143 /* ~"Pardon, ce n'est pas ce que je voulais dire. Ce n'était que cinquante pièces de cuivre."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #28018 /* ~Il te regarde avec suspicion, puis se radoucit : "Très bien ! Prends ça, prends ça. Va me chercher cet autre costume, et vite !" Il te lance quatre-vingt pièces de cuivre.~ */
  IF ~~ THEN REPLY #28144 /* ~"Je reviendrai quand je l'aurai. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28145 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28146 /* ~"Hmmm… quel costume ? Oh, et merci pour les pièces de cuivre… Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #28019 /* ~Il te regarde avec suspicion, les lèvres pincées. Tu es sûr qu'il ne croit pas un mot de ce que tu lui racontes.~ */
  IF ~~ THEN REPLY #28147 /* ~"Pardon, ce n'est pas ce que je voulais dire. Ce n'était que cinquante pièces de cuivre."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 44 // from:
  SAY #28020 /* ~Vide.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Malmaner","GLOBAL",5)
PartyHasItem("Costume2")
~ THEN BEGIN 45 // from:
  SAY #28021 /* ~L'homme te regarde avec impatience. "Alors ? Alors ? T'as pris le costume chez Goncalves ?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28148 /* ~"Oui, voilà. Ça m'a coûté cinquante pièces."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~J'ai récupéré un second déguisement pour Malmanier chez Goncalves, le tailleur, et je le lui ai donné.~ */ GOTO 46
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28149 /* ~Mensonge : "Oui, le voilà. Il m'a coûté quatre-vingt pièces."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 48
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28150 /* ~"Oui, le voilà."~ */ DO ~TakePartyItemNum("Costume2",1)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~J'ai récupéré un second déguisement pour Malmanier chez Goncalves, le tailleur, et je le lui ai donné.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.2 49.0
  SAY #28022 /* ~Il ne cache pas son dégoût, t'arrache le costume des mains et te jette cinquante pièces. "Maintenant, je dois partir…"~ */
  IF ~~ THEN REPLY #28151 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #28023 /* ~"Il était temps !" Il t'arrache le costume des mains. "Bon, je dois m'en aller…"~ */
  IF ~~ THEN REPLY #28152 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #28024 /* ~"C'est… c'est… inconcevable ! Tout à fait absurde ! Pour qui se prend-il ?!" Il se renfrogne soudain. "En y réfléchissant, ça me *paraît* un peu fort, même de la part de Goncalves." Il te regarde d'un air soupçonneux.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28153 /* ~Mensonge : "Ce type ne t'apprécie guère, Malmanier. Il te fait payer pour les mauvaises paroles que tu as eues envers lui."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(80)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~J'ai récupéré un second déguisement pour Malmanier chez Goncalves, le tailleur, et je le lui ai donné.~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28154 /* ~Mensonge : "Eh bien, euh, tu l'as vraiment contrarié."~ */ GOTO 49
  IF ~~ THEN REPLY #28155 /* ~"Pardon, ce n'est pas ce que je voulais dire. Ce n'était que cinquante pièces de cuivre."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~J'ai récupéré un second déguisement pour Malmanier chez Goncalves, le tailleur, et je le lui ai donné.~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #28025 /* ~Il t'examine avec suspicion, en pinçant les lèvres.~ */
  IF ~~ THEN REPLY #28156 /* ~"Pardon, ce n'est pas ce que je voulais dire. Ce n'était que cinquante pièces de cuivre."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #28026 /* ~Il t'examine avec suspicion, puis se radoucit. Il ne cache pas son dégoût, t'arrache le costume des mains et te lance quatre-vingt pièces. "Bon, je dois m'en aller…"~ */
  IF ~~ THEN REPLY #28157 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END
