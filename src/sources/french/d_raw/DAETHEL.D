// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAETHEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAETHEL~

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3057 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. L'un d'eux a perdu une dent sur le côté droit. Il voit Annah et Tombée-en-Disgrâce à côté de toi ; il grince et siffle : "Fais partir la vermine abyssale et on parlera. En attendant, pas un mot." Il crache pour faire bonne mesure.~ */
  IF ~~ THEN REPLY #3059 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3061 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. L'un d'eux a perdu une dent du côté droit. Il voit Annah à côté de toi ; il grince et siffle : "Fais partir la vermine démoniaque et on parlera. En attendant, pas un mot." Il crache pour faire bonne mesure.~ */
  IF ~~ THEN REPLY #12343 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12344 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. L'un d'eux a perdu une dent sur le côté droit. Il voit Tombée-en-Disgrâce à côté de toi ; il grince et siffle : "Fais partir la vermine abyssale et on parlera. En attendant, pas un mot." Il crache pour faire bonne mesure.~ */
  IF ~~ THEN REPLY #12345 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12346 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. L'un d'eux a perdu une dent sur le côté droit. "Ah, Tegar'in," dit-il, "notre vieil ami est revenu nous voir."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 8
END

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12347 /* ~L'abishaï recule à ton approche. "Éloigne les petits rats du chaos", désignant Tombée-en-Disgrâce et Annah, "et nous pourrons parler affaire. En attendant, pas un mot."~ */
  IF ~~ THEN REPLY #12348 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12349 /* ~L'abishaï recule à ton approche. "Éloigne le petit rat du chaos", désignant Annah, "et nous pourrons parler affaire. En attendant, pas un mot."~ */
  IF ~~ THEN REPLY #12350 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12351 /* ~L'abishaï recule à ton approche. "Éloigne le petit rat du chaos", désignant Tombée-en-Disgrâce, "et nous pourrons parler affaire. En attendant, pas un mot."~ */
  IF ~~ THEN REPLY #12352 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12353 /* ~"Le retour de l'enfant prodigue, hein ?" Le fiélon esquisse un sourire, des vapeurs nocives s'échappent du coin de sa bouche. "Tes souvenirs te sont revenus, vieil ami ?"~ */
  IF ~~ THEN REPLY #12354 /* ~"Que veux-tu dire ?"~ */ EXTERN ~DTEGARIN~ 10
  IF ~~ THEN REPLY #12355 /* ~"J'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #12356 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 14.1 34.0 50.0
  SAY #12357 /* ~"Des questions ? Nous avons peut-être les réponses. Nous sommes désireux de t'aider, vieil ami."~ */
  IF ~~ THEN REPLY #12358 /* ~"Qui es-tu ?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12359 /* ~"Que faites-vous ?"~ */ GOTO 12
  IF ~~ THEN REPLY #12360 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12361 /* ~"Parlez-moi des fiélons."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12362 /* ~"Est-ce que vous connaissez un Récupérateur dénommé Pharod ?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12363 /* ~"Je cherche un journal."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14814 /* ~"Je réfléchis au marché dont vous m'avez parlé."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12364 /* ~"Tu connais un Récupérateur qui traite avec des fiélons ?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14729 /* ~"Où se trouve la cachette de ce Récupérateur déjà ?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14730 /* ~"Quel genre de 'pouvoir' me donnera le pendentif ?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14731 /* ~"Je n'ai pas réussi à convaincre l'Erinye de me donner le pendentif et maintenant elle est partie."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14732 /* ~Mensonge : "Je n'ai pas réussi à trouver l'Erinye. Elle n'était pas dans l'allée dont tu m'as parlé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14733 /* ~"Voilà le pendentif."~ */ GOTO 40
  IF ~~ THEN REPLY #14815 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #12365 /* ~"Comme moi, Tegar'in, vraiment blessé. Pourtant je reste calme. Cela fait, après tout, plusieurs centaines d'années, et nous savons que l'esprit des mortels tend à se dégrader avec l'âge."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY #12366 /* ~Aethelgrin t'ignore et répond à son compagnon. "Une fois de plus, Tegar'in, tu es allé au cœur du problème. Bien qu'il soit peut-être préférable de ne pas attirer l'attention que le nom 'Damné trois fois' doit sûrement provoquer."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12367 /* ~"J'ai d'autres questions…"~ */ EXTERN ~DTEGARIN~ 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12368 /* ~"J'ai d'autres questions…"~ */ EXTERN ~DMORTE~ 151
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12369 /* ~"Quoi, c'est bien un petit crâne planant que je vois là ? Tu dégages une agréable odeur de pourriture de Baator, mon mignon. Nous devrions peut-être discuter de cela… plus tard." L'abishaï se retourne vers toi. "Alors… tu disais que tu avais des questions ?"~ */
  IF ~~ THEN REPLY #12370 /* ~"Qui êtes-vous ?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12371 /* ~"Qu'est-ce que vous faites ?"~ */ GOTO 12
  IF ~~ THEN REPLY #12372 /* ~"Où sommes-nous ?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12373 /* ~"Parle-moi des fiélons."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12374 /* ~"Est-ce que vous connaissez un Récupérateur dénommé Pharod ?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12375 /* ~"Je cherche un journal."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14816 /* ~"Je réfléchis au marché dont vous m'avez parlé."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12376 /* ~"Tu connais un Récupérateur qui traite avec des fiélons ?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14734 /* ~"Où se trouve la cachette de ce Récupérateur déjà ?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14735 /* ~"Quel genre de 'pouvoir' me donnera le pendentif ?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14736 /* ~"Je n'ai pas réussi à convaincre l'Erinye de me donner le pendentif et maintenant elle est partie."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14737 /* ~Mensonge : "Je n'ai pas réussi à trouver l'Erinye. Elle n'était pas dans l'allée dont tu m'as parlé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14738 /* ~"Voilà le pendentif."~ */ GOTO 40
  IF ~~ THEN REPLY #14739 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 11.1
  SAY #12377 /* ~"Ce que nous faisons ? Pourquoi, ça ne se voit pas, l'ami ? Nous sommes en permission, loin de notre mission chérie, et nous nous octroyons un repos bien mérité, tout en essayant de faire de nouvelles recrues pour notre glorieuse cause. Nos supérieurs soutiennent tout à fait notre présence ici."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 13
END

IF ~~ THEN BEGIN 13 // from: 8.3 11.3
  SAY #12378 /* ~"D'après nous, il y a deux sortes de fiélons : ceux qui sont corrects et ceux qui ne le sont pas. Les nôtres - les baatezu - sont corrects. Les autres, les maudits, haïs, chaotiques tanar'ris ne le sont pas et doivent être exterminés."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 15
END

IF ~~ THEN BEGIN 14 // from: 8.5 11.5
  SAY #12379 /* ~"Je ne tiens pas de journal, l'ami, et je te conseille d'en faire autant. Demande à mon cher camarade Tegar'in pourquoi et tu seras éclairé sur la chose."~ */
  IF ~~ THEN REPLY #12380 /* ~"Très bien. Tegar'in, pourquoi est-ce que je ne devrais pas tenir un journal ?"~ */ EXTERN ~DTEGARIN~ 18
  IF ~~ THEN REPLY #12381 /* ~"Peut-être plus tard. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #12382 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #14654 /* ~"Oui, oui. Est-ce qu'il le sait ?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #14655 /* ~"Oui, bien sûr, tu as entièrement raison." Le fiélon se tourne vers toi. "Que sais-tu sur ce Récupérateur, ami de longue date ?"~ */
  IF ~~ THEN REPLY #14741 /* ~"Peu de choses, si ce n'est qu'il a d'étranges habitudes et qu'on l'a vu parler avec des fiélons."~ */ GOTO 17
  IF ~~ THEN REPLY #14740 /* ~"Rien. J'espérais que tu pourrais m'éclairer."~ */ GOTO 17
  IF ~~ THEN REPLY #14742 /* ~"Très peu de choses. Mais je te questionnerai sur lui une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #14656 /* ~"Je te le dirais bien, compagnon, mais hélas j'ai juré de ne pas en parler !"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14657 /* ~"N'as-tu pas juré, Tegar'in ?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14658 /* ~"Splendide !"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14659 /* ~L'autre fiélon interrompt Tegar'in avant qu'il n'ait pu parler : "Le pendentif ! N'oublie pas !"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14660 /* ~"… tu voudrais peut-être négocier avec nous ? Comme au bon vieux temps…"~ */
  IF ~~ THEN REPLY #14743 /* ~"Non. Pas question."~ */ GOTO 29
  IF ~~ THEN REPLY #14744 /* ~"À quoi tu penses ?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #14661 /* ~"Nous te dirons tout ce que nous savons sur le 'Récupérateur'…"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14662 /* ~"… sa faiblesse et comment le vaincre en prenant son pendentif - que nous pourrions utiliser pour te rendre beaucoup plus fort. En échange…"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 27
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14663 /* ~"Oui, le pendentif. Il a la forme d'un crâne humain, avec six cristaux qui partent de sa couronne."~ */
  IF ~~ THEN REPLY #14745 /* ~"Pourquoi tu ne vas pas le chercher toi-même ?"~ */ GOTO 25
  IF ~~ THEN REPLY #14746 /* ~"Quel est le pouvoir de ce pendentif ?"~ */ GOTO 26
  IF ~~ THEN REPLY #14747 /* ~"D'accord."~ */ GOTO 30
  IF ~~ THEN REPLY #14748 /* ~"Non. Pas question."~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0 28.0
  SAY #14664 /* ~"Il nous est interdit ne serait-ce que d'approcher le "Récupérateur", encore moins de le harceler ou de le blesser."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14665 /* ~"Rien, pour toi."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 29
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14666 /* ~"Il n'a aucun pouvoir en dehors de cela, c'est en fait une chose assez passive."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 31
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14667 /* ~"Sûrement, une fois que tu auras vu notre utilisation de cet objet."~ */
  IF ~~ THEN REPLY #14749 /* ~"Pourquoi tu ne vas pas le chercher toi-même ?"~ */ GOTO 25
  IF ~~ THEN REPLY #14750 /* ~"D'accord."~ */ GOTO 30
  IF ~~ THEN REPLY #14751 /* ~"Non. Pas question."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 21.0 24.3 28.2
  SAY #14668 /* ~"Dommage, dommage."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 32
END

IF ~~ THEN BEGIN 30 // from: 24.2 28.1
  SAY #14669 /* ~"Excellent."~ */
  IF ~~ THEN DO ~SetGlobal("RC_ID","GLOBAL",3)
~ EXTERN ~DTEGARIN~ 33
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14670 /* ~"Elle a été condamnée à la forme dans laquelle tu la vois. Une grande partie de sa force a été dissipée par la puissance sacrée du prêtre."~ */
  IF ~~ THEN REPLY #14752 /* ~"Intéressant…"~ */ EXTERN ~DTEGARIN~ 34
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14671 /* ~"Ce sont des choses fugitives, roucoulantes."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 35
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14672 /* ~"Il te suffit de retirer le pendentif de son cadavre et de le rapporter pour remplir ta part de marché, l'ami. Nous utiliserons le pouvoir qu'elle aura réussi à enfermer à l'intérieur pour te donner de la force, puis nous garderons l'objet vide pour nous."~ */
  IF ~~ THEN REPLY #14753 /* ~"Je comprends."~ */ GOTO 34
  IF ~~ THEN REPLY #14754 /* ~"Je ne ferai pas ça. Pas question."~ */ EXTERN ~DTEGARIN~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14673 /* ~"Splendide ! Reviens ici lorsque tu auras rempli ta mission."~ */
  IF ~~ THEN REPLY #14755 /* ~"Avant de partir, j'ai quelques questions…"~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ GOTO 8
  IF ~~ THEN REPLY #14756 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14674 /* ~"Que c'est cruel !"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 38
END

IF ~~ THEN BEGIN 36 // from:
  SAY #14675 /* ~"*Bien plus* fort, oui !"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14676 /* ~"Tegar'in ! Que s'est-il passé ?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14677 /* ~"Et si on le tuait, si on l'amenait à Baator ?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14678 /* ~"Ha ! Regarde comme il pleurniche, Tegar'in ?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 42
END

IF ~~ THEN BEGIN 40 // from: 8.12 11.12 47.1
  SAY #14679 /* ~"Excellent !" Aethelgrin t'arrache le Pendentif de Yemeth et le lance à Tegar'in.~ */
  IF ~~ THEN DO ~TakePartyItemNum("SkulPend",1)
SetGlobal("2Devils","AR0402",4)
AddexperienceParty(1000)
~ EXTERN ~DTEGARIN~ 45
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14680 /* ~Aethelgrin regarde ailleurs, son attention est soudain attirée par quelque chose qui se trouve sur le bar à côté de lui.~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 47
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14681 /* ~"Mmm ? Oh, non, non."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY #14682 /* ~"Impossible, j'en ai bien peur. Il est à nous, maintenant et il a trop d'importance pour qu'on le perde. Je te prie de revenir quand tu te seras débarrassé de la magie qui nous empêche de t'aider."~ */
  IF ~~ THEN REPLY #14757 /* ~Attaque les fiélons.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14758 /* ~"Hmph. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 47.2
  SAY #14683 /* ~"Quoi ? Non ! Tu ne peux pas !"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14684 /* ~"Le tuer ?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 52
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14685 /* ~"Pauvre misérable indigne ! Va au diable !"~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14759 /* ~"Attends… J'ai le pendentif."~ */ EXTERN ~DTEGARIN~ 53
  IF ~~ THEN REPLY #14760 /* ~Pars.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 47 // from:
  SAY #14686 /* ~"Regarde, il est revenu, et avec le pendentif !"~ */
  IF ~~ THEN REPLY #14761 /* ~"Attends - quel genre de pouvoir tu me donneras ?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~~ THEN REPLY #14762 /* ~"Voilà le pendentif."~ */ GOTO 40
  IF ~~ THEN REPLY #14763 /* ~"J'ai décidé de garder le pendentif."~ */ GOTO 44
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 48 // from:
  SAY #14687 /* ~"Ah, regarde qui est revenu. Désolé, l'ami, mais nous ne te parlerons pas tant que tu n'auras pas notre pendentif. Adieu."~ */
  IF ~~ THEN REPLY #14764 /* ~Pars.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 49 // from:
  SAY #14688 /* ~"Regarde qui est là, Tegar'in…"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 56
END

IF ~~ THEN BEGIN 50 // from: 8.8 11.8
  SAY #14689 /* ~"Elle devrait se trouver cachée toute seule dans l'allée au nord de cet établissement, entre deux bâtiments. Cherche-la à cet endroit, tard dans la soirée."~ */
  IF ~~ THEN REPLY #14765 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #14766 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
