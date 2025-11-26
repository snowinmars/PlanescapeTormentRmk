// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR2~

IF ~  Global("RChaser","AR0400",0)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15606 /* ~Ce Récupérateur à l'aspect crasseux regarde en l'air, apparemment indifférent à ce qui l'entoure.~ */
  IF ~~ THEN REPLY #15721 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #15722 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15723 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 65.0
  SAY #15607 /* ~Il recule, dérangé dans ses méditations. Quand il te voit, une expression de panique se peint sur ses traits.~ */
  IF ~~ THEN REPLY #15724 /* ~"Il faut qu'on parle…"~ */ GOTO 2
  IF ~~ THEN REPLY #15725 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15726 /* ~"Je ne faisais que passer. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #15608 /* ~"Ah… eh… de quoi voulais-tu parler ?"~ */
  IF ~~ THEN REPLY #15727 /* ~"Arrête ton petit jeu. Je sais qui tu es, fiélon."~ */ GOTO 3
  IF ~~ THEN REPLY #15728 /* ~"Si on parlait de ton pendentif ?"~ */ GOTO 53
  IF ~~ THEN REPLY #15729 /* ~"De ta mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15730 /* ~"Rien, peu importe. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 53.0
  SAY #15617 /* ~"Quoi ? Non ! Je ne vois pas de quoi tu… tu…" Il se tait sous ton regard dur, puis soupire. Lorsqu'il se remet à parler, sa voix est calme et courtoise. "Parfait. Et comment as-tu appris mon secret ?"~ */
  IF ~~ THEN REPLY #15731 /* ~"Un chasseur de rats m'a parlé de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #15732 /* ~"Deux fiélons m'en ont parlé."~ */ GOTO 8
  IF ~~ THEN REPLY #15733 /* ~"Ça ne te regarde pas. J'ai des questions…"~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #15619 /* ~"Un chasseur de rats ? Étrange." Il se gratte le menton un moment. "Hum. Connaîtrais-tu le nom de cette personne ?"~ */
  IF ~~ THEN REPLY #15734 /* ~"Oui. Ratos."~ */ GOTO 5
  IF ~~ THEN REPLY #15736 /* ~Mensonge : "Non."~ */ GOTO 6
  IF ~~ THEN REPLY #15738 /* ~"Je ne peux pas te le dire."~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #15621 /* ~"Je vois; je te remercie." Il s'arrête, peut-être pour se remettre le nom en mémoire. "Bon, qu'est-ce qui t'amène ?"~ */
  IF ~~ THEN REPLY #15742 /* ~"Pour ton pendentif."~ */ GOTO 12
  IF ~~ THEN REPLY #15743 /* ~"J'ai quelques questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15745 /* ~"De ta mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15748 /* ~"Pour rien, vraiment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #15623 /* ~Il secoue la tête tristement. "Quel dommage. Mais, pourquoi es-tu venu me voir ?"~ */
  IF ~~ THEN REPLY #15787 /* ~"Pour ton pendentif."~ */ GOTO 12
  IF ~~ THEN REPLY #15788 /* ~"J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15789 /* ~"De ta mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15793 /* ~"Pour rien, vraiment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.2
  SAY #15624 /* ~Il secoue la tête tristement. "C'est compréhensible après tout, qu'est-ce que j'ai à offrir en retour pour ces informations ? Tu serais idiot de trahir leur identité pour rien… sauf si tu leur veux du mal. Bon, pourquoi es-tu venu me voir ?"~ */
  IF ~~ THEN REPLY #15796 /* ~"Pour ton pendentif."~ */ GOTO 12
  IF ~~ THEN REPLY #15799 /* ~"J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15801 /* ~"De ta mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15803 /* ~"Pour rien, vraiment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #15625 /* ~Il a l'air incrédule. "Quoi ?! C'est impossible ! Comment… comment osent-ils !" Ses yeux s'assombrissent et ses lèvres se retroussent sur ses dents tordues et tachées dans un grondement. "Qui ? Quels sont leurs noms ? Le sais-tu ?"~ */
  IF ~~ THEN REPLY #15804 /* ~"Oui. Aethelgrin et Tegar'in Trois-Fois-Damnés."~ */ GOTO 9
  IF ~~ THEN REPLY #15805 /* ~Mensonge : "Non."~ */ GOTO 10
  IF ~~ THEN REPLY #15806 /* ~"Je ne peux pas te le dire."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #15627 /* ~Il ricane. "Trois fois damné, vraiment ! Oh, ils vont me le payer, dussè-je attendre mille ans pour les voir souffrir !" Il se reprend. "Bon, pourquoi es-tu venu me voir ?"~ */
  IF ~~ THEN REPLY #15807 /* ~"Pour ton pendentif."~ */ GOTO 12
  IF ~~ THEN REPLY #15808 /* ~"J'ai quelques questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15809 /* ~"De ta mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15810 /* ~"Pour rien, vraiment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #15629 /* ~Il ricane, serrant les poings de frustration. "Argh ! Je les trouverai… ah, ils vont payer, dussè-je attendre mille ans pour les voir souffrir !" Il se reprend. "Bon, pourquoi es-tu venu me voir ?"~ */
  IF ~~ THEN REPLY #15811 /* ~"Pour ton pendentif."~ */ GOTO 12
  IF ~~ THEN REPLY #15812 /* ~"J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15813 /* ~"De ta mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15814 /* ~"Pour rien, vraiment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY #15631 /* ~"Vraiment ? Alors, pourquoi es-tu venu me voir ?"~ */
  IF ~~ THEN REPLY #15815 /* ~"Pour ton pendentif."~ */ GOTO 12
  IF ~~ THEN REPLY #15816 /* ~"J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15817 /* ~"De ta mort…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15818 /* ~"Pour rien, vraiment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 6.0 7.0 9.0 10.0 11.0 54.5
  SAY #15632 /* ~"Hum ?" Il semble troublé. "Et de quel pendentif s'agirait-il ?"~ */
  IF ~~ THEN REPLY #15819 /* ~"Ne me fais pas perdre mon temps. Tu sais très bien de quoi je parle."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15820 /* ~"Tu n'as pas de pendentif ? Un pendentif en forme de crâne ?"~ */ GOTO 13
  IF ~~ THEN REPLY #15821 /* ~"Peu importe. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15822 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #15633 /* ~"Voyons, non… rien qui y ressemble. Pourquoi crois-tu que j'en ai un ?"~ */
  IF ~~ THEN REPLY #15823 /* ~"Ne me fais pas perdre mon temps. Tu sais très bien de quoi je parle."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15824 /* ~"Alors, ça ne te dérange pas si je te fouille…"~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15825 /* ~"Tant pis pour ton pendentif. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15826 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 13.1
  SAY #15635 /* ~Il soupire. "Très bien. Et que veux-tu savoir à propos de mon pendentif ?"~ */
  IF ~~ THEN REPLY #15827 /* ~"Je veux seulement l'avoir."~ */ GOTO 15
  IF ~~ THEN REPLY #15828 /* ~"C'est quoi, exactement ?"~ */ GOTO 16
  IF ~~ THEN REPLY #15829 /* ~"Tant pis pour ton pendentif. J'ai des questions…"~ */ GOTO 54
END

IF ~~ THEN BEGIN 15 // from: 14.0 54.6
  SAY #15637 /* ~"Mais…" Il se recule. "Je ne peux pas le perdre ! Tu ne comprends pas… Plutôt périr !"~ */
  IF ~~ THEN REPLY #15830 /* ~"Alors, tu périras…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15831 /* ~"Mais pourquoi ? Qu'est-ce que c'est exactement ?"~ */ GOTO 16
  IF ~~ THEN REPLY #15832 /* ~"Tant pis pour ton pendentif. J'ai des questions…"~ */ GOTO 54
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1 54.2
  SAY #15639 /* ~"C'est un récipient, rien de plus. Le pendentif peut séduire une âme lorsqu'elle quitte son enveloppe mourante, la piégeant avant qu'elle n'ait pu atteindre le plan d'existence qui lui convient."~ */
  IF ~~ THEN REPLY #15833 /* ~"Qui ferait une chose pareille ?"~ */ GOTO 17
  IF ~~ THEN REPLY #15834 /* ~"Pourquoi tu en as besoin ?"~ */ GOTO 22
  IF ~~ THEN REPLY #15835 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15836 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15837 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15838 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #15641 /* ~"Il a été commandé par un sorcier mortel très puissant, Yemeth. Il recherchait l'immortalité, mais l'idée de devenir une liche le rebutait. Selon ses journaux, ses études du savoir le plus sombre de la nécromancie lui ont inspiré la fabrication de ce dispositif. Avec lui, il pouvait piéger les âmes et utiliser leurs essences pour prolonger sa propre existence, alimentant ses forces de vie lorsqu'elles faiblissaient."~ */
  IF ~~ THEN REPLY #15839 /* ~"Une liche ?"~ */ GOTO 21
  IF ~~ THEN REPLY #15840 /* ~"Mais qui a fabriqué le pendentif ?"~ */ GOTO 18
  IF ~~ THEN REPLY #15841 /* ~"Alors, comment est-ce qu'il a perdu le pendentif ?"~ */ GOTO 19
  IF ~~ THEN REPLY #15842 /* ~"Il pourrait servir à développer les pouvoirs de quelqu'un ?"~ */ GOTO 20
  IF ~~ THEN REPLY #15847 /* ~"Pourquoi tu en as besoin ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #15852 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15859 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15864 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0 20.0 21.0
  SAY #15643 /* ~"Leur identité s'est perdue dans le temps. Plusieurs artisans ont revendiqué la paternité du dispositif à un moment ou à un autre et des rumeurs circulent selon lesquelles l'idée d'un tel dispositif viendrait d'un fiélon."~ */
  IF ~~ THEN REPLY #15865 /* ~"Comment Yemeth a-t-il perdu le pendentif ?"~ */ GOTO 19
  IF ~~ THEN REPLY #15866 /* ~"Il pourrait servir à développer les pouvoirs de quelqu'un ?"~ */ GOTO 20
  IF ~~ THEN REPLY #15868 /* ~"Pourquoi tu en as besoin ?"~ */ GOTO 22
  IF ~~ THEN REPLY #15870 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15871 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15872 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #15874 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.0 20.1 21.1
  SAY #15650 /* ~"Il a été intégralement détruit dans une bataille magique cataclysmique avec un mage de puissance rival… on suppose que les énergies du dispositif n'avaient plus rien à alimenter. Le pendentif lui-même a changé de mains au cours des siècles, jusqu'à ce qu'il soit en ma possession."~ */
  IF ~~ THEN REPLY #16006 /* ~"Mais qui a fabriqué le pendentif ?"~ */ GOTO 18
  IF ~~ THEN REPLY #16007 /* ~"Il pourrait servir à développer les pouvoirs de quelqu'un ?"~ */ GOTO 20
  IF ~~ THEN REPLY #16008 /* ~"Pourquoi tu en as besoin ?"~ */ GOTO 22
  IF ~~ THEN REPLY #16009 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16010 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16011 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16012 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.2
  SAY #15654 /* ~"On peut penser que oui, mais je ne saurais pas comment. Là encore, le pendentif est un simple récipient - ses différentes applications requièrent des rituels et des sorts qui sont peut-être perdus à jamais, disparus avec Yemeth."~ */
  IF ~~ THEN REPLY #16013 /* ~"Mais qui a fabriqué le pendentif ?"~ */ GOTO 18
  IF ~~ THEN REPLY #16014 /* ~"Alors, comment est-ce qu'il a perdu le pendentif ?"~ */ GOTO 19
  IF ~~ THEN REPLY #16015 /* ~"Pourquoi tu en as besoin ?"~ */ GOTO 22
  IF ~~ THEN REPLY #16016 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16017 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16018 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16019 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0
  SAY #15657 /* ~Il soupire doucement. "Le processus par lequel un mage ou un prêtre devient un mort-vivant de grande force. Le processus était long ; il impliquait des années de mise en œuvre et nécessitait de grosses quantités de réactifs mystérieux et autres. Il échouait souvent. Une liche est une sorte de mort-vivant libre, comme un vampire, qui conserve l'esprit et les aptitudes d'un mortel."~ */
  IF ~~ THEN REPLY #16020 /* ~"Mais qui a fabriqué le pendentif ?"~ */ GOTO 18
  IF ~~ THEN REPLY #16021 /* ~"Comment Yemeth a-t-il perdu le pendentif ?"~ */ GOTO 19
  IF ~~ THEN REPLY #16022 /* ~"Est-ce que le pendentif pourrait servir à développer les pouvoirs de quelqu'un ?"~ */ GOTO 20
  IF ~~ THEN REPLY #16023 /* ~"À quoi te sert le pendentif ?"~ */ GOTO 22
  IF ~~ THEN REPLY #16024 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16025 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16026 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16027 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1 17.4 18.2 19.2 20.2 21.3 54.0
  SAY #15659 /* ~"C'est une longue histoire. Si tu veux vraiment connaître mes raisons, je dois commencer par le tout début."~ */
  IF ~~ THEN REPLY #16028 /* ~"Très bien. Continue…"~ */ DO ~SetGlobal("RC_Tale","AR0400",1)
~ GOTO 23
  IF ~~ THEN REPLY #16029 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16030 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16031 /* ~"Une autre fois, peut-être. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16032 /* ~"Peut-être une autre fois. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 54.1
  SAY #15661 /* ~"Comme tu l'as remarqué, je suis un baatezu - un fiélon. Je suis de ceux qu'on appelle 'Erinyes', du nom d'une tentatrice diabolique. En réalité, je suis d'une beauté inimaginable, de celle qui fait bouillir de désir le sang des hommes faibles et grincer de jalousie les dents des pauvres femmes."~ */
  IF ~~ THEN REPLY #16033 /* ~"Et tu veux me faire croire ça ?"~ */ GOTO 24
  IF ~~ THEN REPLY #16034 /* ~"Je vois. Continue…"~ */ GOTO 25
  IF ~~ THEN REPLY #16035 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16036 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16037 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16038 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #15662 /* ~"Je te l'expliquerai en temps voulu. Vas-tu m'écouter oui ou non ?"~ */
  IF ~~ THEN REPLY #16039 /* ~"Oui. Continue…"~ */ GOTO 25
  IF ~~ THEN REPLY #16040 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16041 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16042 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16043 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #15663 /* ~"Nous ne sommes que cinq cents dans tous les plans -- le savais-tu ? Nous sommes une race rare et arrogante, envieuse de ceux qui nous sont supérieurs et dédaigneuse de ceux qui nous sont inférieurs. Beauté mise à part, chacune de mes Sœurs et moi-même sommes aussi ambitieuses que n'importe quel autre fiélon, qui lutterait pour progresser dans nos rangs en tentant d'entraîner les âmes mortelles dans les fosses funestes de Baator."~ */
  IF ~~ THEN REPLY #16044 /* ~"Continue…"~ */ GOTO 26
  IF ~~ THEN REPLY #16045 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16046 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16047 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16048 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #15664 /* ~"Les 'meilleures' âmes sont celles des mortels qui se croyaient les plus pieux et les plus purs… celles du clergé, par exemple. C'est avec cette idée en tête que j'ai bêtement présumé de mes forces, tenté par la réputation qui me reviendrait si je réussissais dans une entreprise aussi téméraire…"~ */
  IF ~~ THEN REPLY #16049 /* ~Continue à écouter.~ */ GOTO 27
  IF ~~ THEN REPLY #16050 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16051 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16052 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16053 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #15665 /* ~"J'ai essayé de séduire un saint homme à la foi éminente, un grand prêtre qui exerçait un pouvoir spirituel considérable. J'étais à deux doigts de réussir - c'est du moins ce que je pensais - quand il s'est soudain mis à m'en vouloir."~ */
  IF ~~ THEN REPLY #16054 /* ~"Continue…"~ */ GOTO 28
  IF ~~ THEN REPLY #16055 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16056 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16057 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16058 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #15667 /* ~"Ce goujat a fait de moi l'être misérable que tu as devant toi. Normalement, cela n'aurait dû avoir que peu d'importance pour un diable, mais la force de ce mortel était telle… les yeux de son Pouvoir doivent être sur moi !"~ */
  IF ~~ THEN REPLY #16059 /* ~"La malédiction t'a transformée en mâle hideux ? Quelle ironie ! Continue…"~ */ GOTO 29
  IF ~~ THEN REPLY #16060 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16061 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15669 /* ~"Comme tu as pu le deviner, je ne pouvais attendre aucune aide de mes Sœurs, trop désireuses de me voir ramené à un stade inférieur d'Erinye dans les cinq rangs -- ce qui leur permettait de toute façon de monter en grade."~ */
  IF ~~ THEN REPLY #16062 /* ~"Continue…"~ */ GOTO 30
  IF ~~ THEN REPLY #16063 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16064 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16065 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16066 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #15672 /* ~"Les Sombres Huit, ces puissants diables qui gouvernent toutes les Erinyes, ont trouvé l'histoire amusante, mais ont montré de la compassion - ou plutôt, ils savaient qu'ils ne gagneraient rien à perdre une séductrice d'une telle expérience. Ils m'ont proposé un ultimatum…"~ */
  IF ~~ THEN REPLY #16067 /* ~"Continue…"~ */ GOTO 31
  IF ~~ THEN REPLY #16068 /* ~Vérité : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16069 /* ~Bluff : "Ça suffit. Donne-moi le pendentif ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16070 /* ~"J'écouterai la suite une autre fois. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16071 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #15675 /* ~"Ils m'ont donné un an pour ramener dix âmes à Baator… pas une de plus ni une de moins. Si je réussis, je retrouverai mon ancienne gloire. Si j'échoue, je serai réduit au rang d'un misérable kocrachon -- ou pire, d'un barbazu ou…" il frissonne, "… d'un spinagon."~ */
  IF ~~ THEN REPLY #16072 /* ~"Alors, ce pendentif est…"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15676 /* ~"Oui, c'est mon seul espoir. J'ai rassemblé plusieurs âmes et je les libèrerai dans Baator où elles resteront, prisonnières pour l'éternité. Il me reste peu de temps pour en recueillir une autre… grâce à elle, je serai racheté et rejoindrai les rangs de mes horribles, délicieuses Sœurs."~ */
  IF ~~ THEN REPLY #16073 /* ~Vérité : "C'est une histoire intéressante. Maintenant, donne-moi le colifichet ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16074 /* ~Bluff : "C'est une histoire intéressante. Maintenant, donne-moi ce colifichet ou tu mourras."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16075 /* ~"Je vois. Mais je dois quand même prendre le pendentif."~ */ GOTO 55
  IF ~~ THEN REPLY #16076 /* ~"Peu importe le pendentif pour le moment. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16077 /* ~"Alors, tu peux garder le pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.2 16.3 17.5 18.3 18.4 19.3 19.4 20.3 20.4 21.4 21.5 22.1 22.2 23.2 23.3 24.1 24.2 25.1 25.2 26.1 26.2 27.1 27.2 29.1 29.2 30.1 30.2 32.0 32.1
  SAY #15677 /* ~Il recule un peu plus. "Attends ! Tu ne comprends pas ! Mourir n'est qu'un simple inconvénient ; quand le moment sera venu, je prendrai ma retraite à Baator. Mais, cela prendra plus de temps que l'année qui me reste… Je serai dégradé, rejeté des rangs des Erinyes pour des siècles -- pour toujours peut-être. Tu comprends ? Mourir n'est pas pire que de perdre le pendentif !"~ */
  IF ~~ THEN REPLY #16078 /* ~"En quoi cela m'intéresserait ?"~ */ GOTO 34
  IF ~~ THEN REPLY #16079 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16080 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 57.0
  SAY #15679 /* ~"Pour deux raisons… d'abord, je ne suis pas totalement dépourvu de pouvoir. Réfléchis un moment… le jeune combattant qui m'a protégé au fil des jours est mon esclave, à jamais séduit par mes pouvoirs diaboliques. Envierais-tu sa position ?"~ */
  IF ~~ THEN REPLY #16081 /* ~"Tu me menaces ?"~ */ GOTO 35
  IF ~~ THEN REPLY #16082 /* ~"Non. Et la deuxième raison ?"~ */ GOTO 36
  IF ~~ THEN REPLY #16083 /* ~"Tu bluffes. Je sais que le maléfice t'a affaibli."~ */ GOTO 36
  IF ~~ THEN REPLY #16084 /* ~Attaque-le avant de le laisser continuer.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16085 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #15682 /* ~"Non, mais écoute-moi !"~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2 35.0
  SAY #15684 /* ~Il continue : "La seconde raison est que le pendentif ne t'apporta jamais les avantages que je te propose. Qu'en ferais-tu ? Est-ce qu'il ne vaudrait pas mieux que tu bénéficies des faveurs d'une Erinye ? Réfléchis-y…"~ */
  IF ~~ THEN REPLY #16086 /* ~"C'est possible. On m'a promis un pouvoir en échange de sa livraison."~ */ GOTO 37
  IF ~~ THEN REPLY #16087 /* ~"Alors, tu as une offre à me faire ?"~ */ GOTO 42
  IF ~~ THEN REPLY #16088 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16089 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 55.0 56.1 58.0
  SAY #15686 /* ~"Pouvoir ?" dit-il en se moquant. "Qui ? Quelle sorte de pouvoir t'a-t-on promis ? Je peux sûrement t'en promettre davantage."~ */
  IF ~~ THEN REPLY #16090 /* ~"Par deux fiélons, mais je ne sais pas quel genre de pouvoir."~ */ GOTO 38
  IF ~~ THEN REPLY #16091 /* ~"Ça ne te regarde pas."~ */ GOTO 59
  IF ~~ THEN REPLY #16092 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16093 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 59.0
  SAY #15687 /* ~Il te fixe un moment en silence. "Tu n'es sûr ni de la durée ni de la fonction du pouvoir ? As-tu signé un contrat ?"~ */
  IF ~~ THEN REPLY #16094 /* ~"Non."~ */ GOTO 40
  IF ~~ THEN REPLY #16095 /* ~"Qu'est-ce que ça peut faire ?"~ */ GOTO 39
  IF ~~ THEN REPLY #16096 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16097 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #15688 /* ~"Oh, c'est de la plus grande importance, crois-moi !"~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #15689 /* ~"Sans un contrat, les fiélons n'ont aucune obligation de te remettre ce pouvoir, quel qu'il soit. Et que se passera-il si ce pouvoir ne te plaît pas ?"~ */
  IF ~~ THEN REPLY #16098 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 41
  IF ~~ THEN REPLY #16099 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16100 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #15690 /* ~"Que se passerait-il, par exemple, s'il te poussait des bois, et que tu sois alors doté de 'pouvoirs surnaturels' ? Ou peut-être du pouvoir de devenir violet tous les quinze jours ? Pourquoi ce genre de pouvoir te serait-il utile ? Si ces fiélons sont à la hauteur de leur espèce, ils n'ont en réserve pour toi que des ruses et des promesses vides."~ */
  IF ~~ THEN REPLY #16101 /* ~"Alors, tu as une offre à me faire ?"~ */ GOTO 42
  IF ~~ THEN REPLY #16102 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16103 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.1 41.0 59.1
  SAY #15691 /* ~"Oui. Laisse-moi garder le pendentif ; avec son aide, je reprendrai ma splendeur ancienne. J'aurai beaucoup d'obligations à remplir, et une vengeance sanglante à exercer… mais, dans trois ans, je jure de te servir pendant au moins quatre mois entiers. Si tu es d'accord, j'établirai et je signerai un contrat valide. Réfléchis, balafré : un fiélon servile ou un bibelot inutile ?"~ */
  IF ~~ THEN REPLY #16104 /* ~"Je suis d'accord. Montre-moi ce contrat."~ */ GOTO 45
  IF ~~ THEN REPLY #16105 /* ~"Trois ans, c'est trop long."~ */ GOTO 43
  IF ~~ THEN REPLY #16106 /* ~"Je veux huit mois. Tu serviras aussi longtemps ?"~ */ GOTO 44
  IF ~~ THEN REPLY #16107 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16108 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1 44.1
  SAY #15694 /* ~Il rit doucement, secouant la tête. "Tut-tut ! Que donnerais-tu pour avoir une diablesse d'une beauté exquise parfaitement effrontée et à ta botte ? Je peux te promettre de longues années, le balafré - combien, je ne sais pas, mais beaucoup. Tu devrais voir à plus long terme. Si tu es trop impatient, je peux te servir pendant deux mois sur une période de deux ans."~ */
  IF ~~ THEN REPLY #16109 /* ~"Je suis d'accord pour deux mois de service dans deux ans."~ */ GOTO 45
  IF ~~ THEN REPLY #16110 /* ~"Je suis d'accord pour quatre mois de service dans trois ans."~ */ GOTO 45
  IF ~~ THEN REPLY #16111 /* ~"Je veux huit mois. Tu serviras aussi longtemps ?"~ */ GOTO 44
  IF ~~ THEN REPLY #16112 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16113 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 43.2
  SAY #15696 /* ~"Je te servirai pendant six mois dans trois ans, mais pas plus. Est-ce que tu es d'accord ?"~ */
  IF ~~ THEN REPLY #16114 /* ~"Je suis d'accord. Montre-moi ce contrat."~ */ GOTO 45
  IF ~~ THEN REPLY #16115 /* ~"Trois ans, c'est trop long."~ */ GOTO 43
  IF ~~ THEN REPLY #16116 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16117 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0 43.0 43.1 44.0
  SAY #15698 /* ~Il acquiesce. "'Je n'ai pas l'habitude de ce genre de négoce mais je devrais encore avoir le moyen de…", il s'arrête, se renfrognant en farfouillant dans les plis de ses robes. Ses yeux s'éclairent enfin -- il tend la main derrière lui et tire un rouleau lié par de l'air. "Ah ! Te voilà…" Il te tend le contrat et une plume rouge.~ */
  IF ~~ THEN REPLY #16118 /* ~Signe le contrat.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #16119 /* ~Lis le contrat.~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16120 /* ~Lis le contrat.~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16121 /* ~Lis le contrat.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16122 /* ~Lis le contrat.~ */ GOTO 49
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16123 /* ~Lis le contrat.~ */ GOTO 50
  IF ~~ THEN REPLY #16124 /* ~"J'ai changé d'avis - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16125 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #15700 /* ~Le contrat semble écrit sur de la chair, plutôt que sur du parchemin ; l'écriture est semblable à de fines lignes de sang tracées juste sous la surface de la peau. Tout dans le contrat semble en bonne et due forme.~ */
  IF ~~ THEN REPLY #16126 /* ~Signe le contrat.~ */ GOTO 52
  IF ~~ THEN REPLY #16127 /* ~"J'ai changé d'avis - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16128 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #15702 /* ~Le contrat semble écrit sur de la chair, plutôt que sur du parchemin : l'écriture est semblable à de fines lignes de sang tracées juste sous la surface de la peau. Comme tu t'y attendais, quelques clauses peu satisfaisantes sont cachées dans le document.~ */
  IF ~~ THEN REPLY #16129 /* ~"Il faut qu'on renégocie certains points…"~ */ GOTO 51
  IF ~~ THEN REPLY #16130 /* ~Signe le contrat tel quel.~ */ GOTO 52
  IF ~~ THEN REPLY #16131 /* ~"J'ai changé d'avis - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16132 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.3
  SAY #15703 /* ~Le contrat semble écrit sur de la chair, plutôt que sur du parchemin ; l'écriture est semblable à de fines lignes de sang tracées juste sous la surface de la peau. Comme tu t'y attendais, quelques clauses peu satisfaisantes sont cachées dans le document.~ */
  IF ~~ THEN REPLY #16133 /* ~"Il faut qu'on renégocie certains points…"~ */ GOTO 51
  IF ~~ THEN REPLY #16134 /* ~Signe le contrat tel quel.~ */ GOTO 52
  IF ~~ THEN REPLY #16135 /* ~"J'ai changé d'avis - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16136 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 45.4
  SAY #15704 /* ~Le contrat semble écrit sur de la chair plutôt que sur du parchemin : l'écriture ressemble à de fines lignes de sang tracées juste sous la peau. Comme tu l'avais prévu, des clauses peu satisfaisantes sont cachées dans le document. Tu cherches aussi quelques échappatoires que tu pourrais utiliser à ton avantage, mais tu n'en trouves aucun.~ */
  IF ~~ THEN REPLY #16137 /* ~"Il faut qu'on renégocie certains points…"~ */ GOTO 51
  IF ~~ THEN REPLY #16138 /* ~Signe le contrat tel quel.~ */ GOTO 52
  IF ~~ THEN REPLY #16139 /* ~"J'ai changé d'avis - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16140 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 45.5
  SAY #15705 /* ~Le contrat semble écrit sur de la chair, plutôt que sur du parchemin ; l'écriture ressemble à de fines lignes de sang tracées juste sous la surface de la peau. Tu repères tout de suite des clauses peu satisfaisantes dans le document, certaines cachées de façon insidieuse. Tu vois aussi quelques échappatoires que tu pourrais éventuellement utiliser à ton avantage.~ */
  IF ~~ THEN REPLY #16141 /* ~"Il faut qu'on renégocie certains points…"~ */ GOTO 51
  IF ~~ THEN REPLY #16142 /* ~Signe le contrat tel quel.~ */ GOTO 52
  IF ~~ THEN REPLY #16143 /* ~"J'ai changé d'avis - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16144 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.0 48.0 49.0 50.0
  SAY #15706 /* ~"Je n'en attendais pas moins de toi." Lorsque tu te mets à examiner le contrat passé avec le diable, en essayant d'argumenter, de fureter, de transiger et de manœuvrer, il te semble que tu l'as déjà fait auparavant….~ */
  IF ~~ THEN REPLY #16145 /* ~Essaie de te souvenir.~ */ GOTO 63
  IF ~~ THEN REPLY #16146 /* ~Refoule les souvenirs.~ */ GOTO 62
END

IF ~~ THEN BEGIN 52 // from: 45.0 46.0 47.1 48.1 49.1 50.1 62.0
  SAY #15707 /* ~Une fois que tu as apposé ta signature sur le contrat, celui-ci et la plume partent en fumée dans les volutes sucrées d'une fumée rougeâtre. "Adieu, voyageur… je te reverrai le moment venu et je te servirai comme il en a été convenu et pendant la durée de temps fixée." Il salue et s'en va.~ */
  IF ~~ THEN REPLY #16147 /* ~"Attends. J'ai des questions…"~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 64
  IF ~~ THEN REPLY #16148 /* ~Laisse-le partir.~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.1
  SAY #15708 /* ~"Qu'est-ce à dire, m'sieur ? Je ne porte pas de bijoux…"~ */
  IF ~~ THEN REPLY #16149 /* ~"Arrête ton petit jeu. Je sais qui tu es, fiélon."~ */ GOTO 3
  IF ~~ THEN REPLY #16150 /* ~"Assez parlé… Je vais te tuer et le prendre."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16151 /* ~"Peu importe. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 5.1 6.1 7.1 9.1 10.1 11.1 12.2 13.2 14.2 15.2 16.4 17.6 18.5 19.5 20.5 21.6 22.3 23.4 24.3 25.3 26.3 27.3 28.1 29.3 30.3 32.3 55.4 56.3 57.2 58.3 60.0 61.0
  SAY #15709 /* ~"J'y répondrai du mieux que je le puis."~ */
  IF ~  Global("RC_Tale","AR0400",0)
~ THEN REPLY #16152 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 22
  IF ~  Global("RC_Tale","AR0400",1)
~ THEN REPLY #16153 /* ~"Raconte-moi de nouveau ton histoire."~ */ GOTO 23
  IF ~~ THEN REPLY #16154 /* ~"Parle-moi de ton pendentif."~ */ GOTO 16
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #16155 /* ~"Qui est le roué près de qui tu es tous les jours ?"~ */ GOTO 60
  IF ~  Dead("Adyzoel")
~ THEN REPLY #16156 /* ~"Qui était le roué près de qui tu étais tous les jours ?"~ */ GOTO 61
  IF ~  Global("RC_Pendant","AR0400",0)
~ THEN REPLY #16157 /* ~"Peu importe. Donne-moi juste le pendentif."~ */ GOTO 12
  IF ~  Global("RC_Pendant","AR0400",1)
~ THEN REPLY #16158 /* ~"Peu importe. Donne-moi juste le pendentif."~ */ GOTO 15
  IF ~~ THEN REPLY #16159 /* ~"Peu importe. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.2
  SAY #15710 /* ~"Mais pourquoi ?"~ */
  IF ~~ THEN REPLY #16160 /* ~"Parce qu'on m'a promis un pouvoir en échange de sa livraison."~ */ GOTO 37
  IF ~~ THEN REPLY #16161 /* ~"Parce que tu ne t'en sers pas à bon escient."~ */ GOTO 56
  IF ~~ THEN REPLY #16162 /* ~"Ça ne te regarde pas."~ */ GOTO 58
  IF ~~ THEN REPLY #16163 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16164 /* ~"Peu importe le pendentif pour le moment. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16165 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.1 58.1
  SAY #15711 /* ~"Et qu'en ferais-tu de plus ? Tu l'empêcherais de tomber entre de mauvaises mains ? Tu le vendrais ? Tu le troquerais ? Que crois-tu que le prochain propriétaire fera du pendentif ?"~ */
  IF ~~ THEN REPLY #16166 /* ~"Rien de pire que toi."~ */ GOTO 57
  IF ~~ THEN REPLY #16167 /* ~"Je vais le donner à deux fiélons en échange d'un pouvoir."~ */ GOTO 37
  IF ~~ THEN REPLY #16168 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16169 /* ~"Peu importe le pendentif pour le moment. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16170 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15712 /* ~"Si tu arrivais seulement à le cacher là où aucun être ne le trouverait. Rien de bon ne peut en sortir. Pour de nombreuses raisons, tu ferais mieux de le laisser entre mes mains, je te l'assure.."~ */
  IF ~~ THEN REPLY #16171 /* ~"Par exemple ?"~ */ GOTO 34
  IF ~~ THEN REPLY #16172 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16173 /* ~"Peu importe le pendentif pour le moment. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16174 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #15713 /* ~Il a l'air scandalisé. "Comment peux-tu dire une chose pareille ? Tu me volerais comme un vulgaire brigand, tu me prendrais mon unique et véritable chance, tu briserais tous mes espoirs et tu me dirais ensuite que je n'ai pas à connaître tes raisons ?"~ */
  IF ~~ THEN REPLY #16175 /* ~"Parce qu'on m'a promis un pouvoir en échange de sa livraison."~ */ GOTO 37
  IF ~~ THEN REPLY #16176 /* ~"Parce que tu ne t'en sers pas à bon escient."~ */ GOTO 56
  IF ~~ THEN REPLY #16177 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16178 /* ~"Peu importe le pendentif pour le moment. J'ai des questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16179 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 37.1
  SAY #15714 /* ~"Tu te trompes, c'est mon principal souci pour l'heure. Comment répondrais-je par une contre-offre appropriée, si je ne connais pas les termes de ton contrat ?"~ */
  IF ~~ THEN REPLY #16180 /* ~"Bon, par deux fiélons, mais je ne sais pas quels genres de pouvoirs."~ */ GOTO 38
  IF ~~ THEN REPLY #16181 /* ~"Alors, tu as une offre à me faire ?"~ */ GOTO 42
  IF ~~ THEN REPLY #16182 /* ~"Assez parlé - je vais te tuer et prendre le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16183 /* ~"Laisse tomber, garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 54.3
  SAY #15715 /* ~"Un jeune noble arrogant et un épéiste irréprochable. Il est mon esclave, bien qu'il ne l'ait pas encore réalisé, jusqu'à ce que je choisisse de le libérer ou de périr moi-même."~ */
  IF ~~ THEN REPLY #16184 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16185 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.4
  SAY #15716 /* ~"Un jeune noble arrogant et un épéiste irréprochable. Il est mon esclave, bien qu'il ne l'ait pas encore réalisé, et a été une sorte de protecteur malgré lui."~ */
  IF ~~ THEN REPLY #16186 /* ~"J'ai d'autres questions…"~ */ GOTO 54
  IF ~~ THEN REPLY #16187 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 51.1 63.0 63.1 63.2 63.3
  SAY #15717 /* ~Tu as enfin terminé les négociations. "Alors ? Es-tu satisfait ?"~ */
  IF ~~ THEN REPLY #16188 /* ~"Oui. Je vais le signer tout de suite."~ */ GOTO 52
  IF ~~ THEN REPLY #16189 /* ~"Non… Je vais juste te tuer pour récupérer le pendentif."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16190 /* ~"Peu importe le contrat. Garde ton pendentif. Au revoir."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 51.0
  SAY #15718 /* ~En y songeant, tu es certain que tu as déjà fait ceci. Des journées entières passées le nez dans des tomes moisis et des documents légaux pour préparer les négociations intenses à venir, des phrases soigneusement rédigées pleines de double-sens cachés, de mensonges noyés dans des vérités, de lois tortueuses et de promesses déguisées … ce souvenir de toutes ces choses et de bien d'autres t'envahit soudain.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16192 /* ~Continue…~ */ DO ~AddexperienceParty(200)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16191 /* ~Continue…~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16193 /* ~Continue…~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16194 /* ~Continue…~ */ DO ~AddexperienceParty(600)
~ GOTO 62
END

IF ~~ THEN BEGIN 64 // from: 52.0
  SAY #15719 /* ~"Pas de questions. Nous aurons du temps pour parler lorsque nous nous reverrons ; demande-moi ce que tu veux alors. Adieu"~ */
  IF ~~ THEN DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 65 // from:
  SAY #15720 /* ~"Malric, le Chasseur de roués, est là en train de regarder dans le vide. "Il" a l'air de ne prêter aucune attention à ce qui l'entoure.~ */
  IF ~~ THEN REPLY #16195 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #16196 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16197 /* ~Laisse-'le' tranquille.~ */ EXIT
END
