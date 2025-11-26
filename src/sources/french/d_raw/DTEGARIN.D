// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEGARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEGARIN~

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3058 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. L'un d'eux a une petite cicatrice sous l'œil gauche. Il voit Annah et Tombée-en-Disgrâce à côté de toi ; il grince et siffle : "Fais partir la vermine abyssale et on parlera. En attendant, pas un mot." Il crache pour faire bonne mesure.~ */
  IF ~~ THEN REPLY #12396 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3060 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. L'un d'eux a une petite cicatrice sous l'œil gauche. Il voit Annah à côté de toi ; il grince et siffle : "Fais partir la vermine démoniaque et on parlera. En attendant, pas un mot." Il crache pour faire bonne mesure.~ */
  IF ~~ THEN REPLY #12397 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12398 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. Celui-ci a une petite cicatrice sous l'œil gauche. Il voit Tombée-en-Disgrâce à côté de toi ; il grince et siffle : "Fais partir la vermine abyssale et on parlera. En attendant, pas un mot." Il crache pour faire bonne mesure.~ */
  IF ~~ THEN REPLY #12399 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12400 /* ~Tu vois un monstre couvert d'écailles, très semblable à celui qui se tient à côté de lui. Ils ont tous deux l'oreille gauche percée, une teinte rougeâtre ; ce sont des reptiles aux ailes de chauve-souris repliées sur elles-mêmes. Celui-ci a une petite cicatrice sous l'œil gauche. "Bienvenue, vieux camarade. C'est un vrai plaisir de te revoir."~ */
  IF ~~ THEN REPLY #12401 /* ~"'Me revoir' ?"~ */ GOTO 10
END

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12402 /* ~L'abishaï recule à ton approche. "Éloigne les petits rats du chaos", désignant Tombée-en-Disgrâce et Annah, "et nous pourrons parler affaire. En attendant, pas un mot."~ */
  IF ~~ THEN REPLY #12403 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12404 /* ~L'abishaï recule à ton approche. "Éloigne le petit rat du chaos", désignant Annah, "et nous pourrons parler affaire. En attendant, pas un mot."~ */
  IF ~~ THEN REPLY #12405 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12406 /* ~L'abishaï recule à ton approche. "Éloigne le petit rat du chaos", désignant Tombée-en-Disgrâce, "et nous pourrons parler affaire. En attendant, pas un mot."~ */
  IF ~~ THEN REPLY #12407 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12408 /* ~"Le retour de l'enfant prodigue, hein ?" Le fiélon esquisse un sourire, des vapeurs nocives s'échappent du coin de sa bouche. "Tes souvenirs te sont revenus, vieil ami ?"~ */
  IF ~~ THEN REPLY #12409 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 10
  IF ~~ THEN REPLY #14280 /* ~"J'ai des questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14281 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #12410 /* ~"Oui, Aethelgrin, oui. Mais ses yeux ne brillent pas autant qu'avant. Qu'est-ce qui nous l'a ramené, à ton avis ? Qu'est-ce qui te ramène à nous, l'ami ?"~ */
  IF ~~ THEN REPLY #12411 /* ~"Qui êtes-vous ?"~ */ GOTO 9
  IF ~~ THEN REPLY #12412 /* ~"Que fais-tu ?"~ */ EXTERN ~DAETHEL~ 12
  IF ~~ THEN REPLY #12413 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 14
  IF ~~ THEN REPLY #12414 /* ~"Parle-moi des fiélons."~ */ EXTERN ~DAETHEL~ 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12415 /* ~"Est-ce que tu connais un Récupérateur dénommé Pharod ?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12416 /* ~"Je cherche un journal."~ */ EXTERN ~DAETHEL~ 14
  IF ~~ THEN REPLY #12417 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #12418 /* ~"Ah, Aethelgrin, le temps s'est emparé de la mémoire de notre compagnon ! Vraiment, tu ne te souviens pas de nous ? J'en suis véritablement blessé."~ */
  IF ~~ THEN REPLY #12419 /* ~"Mais…"~ */ EXTERN ~DAETHEL~ 9
END

IF ~~ THEN BEGIN 10 // from: 3.0 7.0
  SAY #12420 /* ~"Ce que je veux dire, mon cher, c'est que le temps, notre vieil ennemi, nous a desservis de façon vicieuse. Il te vole tes souvenirs et se les approprie. Si tu ne te souviens pas de nous, c'est que tu as succombé à l'une des faiblesses de la mortalité. Nous sommes de vieux amis à toi, vieux, en vérité. Que pouvons-nous faire pour toi ?"~ */
  IF ~~ THEN REPLY #12421 /* ~"J'ai quelques questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12423 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12422 /* ~"Ahh, bien parlé. Vieil ami, nous sommes un couple d'abishaï, actuellement dégagés de nos tâches courantes à Baator. Je suis Tegar'in Trois fois damné, surnommé ainsi pour mon aptitude à profiter au mieux de chaque situation. Voici Aethelgrin, qui n'a pas reçu de surnom, mais ce n'est pas faute d'avoir essayé."~ */
  IF ~~ THEN REPLY #12424 /* ~"Pas faute d'avoir essayé ? Qu'est-ce que tu veux dire ?"~ */ EXTERN ~DAETHEL~ 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #12425 /* ~À son tour, Tegar'in t'ignore et répond à son camarade. "Une fois de plus, je soutiens que toute nouvelle est mieux qu'aucune nouvelle." L'abishaï se retourne vers toi. "Vieil ami, avons-nous ainsi répondu à ta question sur nos identités ?"~ */
  IF ~~ THEN REPLY #12426 /* ~"Je suppose que oui. J'ai d'autres questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12427 /* ~"Je suppose que oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #12428 /* ~"Dans l'immédiat, nous nous divertissons dans ce… délicieux… établissement. Et, bien sûr, nous fêtons le retour de notre vieil ami. Toutefois, la puanteur des braises - qui transporte de temps à autre une odeur de bonté à travers la porte - nous avilit en quelque sorte, et nous laisse physiquement, mentalement et spirituellement affaiblis. Heureusement, l'air dans ce quartier de la cité transporte une saveur délicieuse de douleur et de supplication. Tu n'es pas de mon avis ?" De nouveau, le fiélon t'adresse un large sourire.~ */
  IF ~~ THEN REPLY #12429 /* ~"J'ai d'autres questions."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12430 /* ~"Absolument. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY #12431 /* ~"C'est la Taverne du Cadavre fumant, l'une des tavernes les plus divertissantes que ton espèce a jugé bon d'ériger dans cette cité - la justice poétique du gars fumant devant l'établissement est vraiment une note délicieuse. Voulais-tu savoir autre chose ?"~ */
  IF ~~ THEN REPLY #12432 /* ~"Oui, j'ai d'autres questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12433 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #12434 /* ~"Nous pensons que les tanar'ris sont directement responsables de la Guerre Sanglante ! S'ils ne s'en étaient pas mêlés, nous aurions pu instaurer la paix dans les Plans Inférieurs et nous n'aurions pas eu à combattre dans cette malheureuse guerre, et les débordements… infortunés… que les autres plans ont connus n'auraient pas préoccupé autant ces philanthropes gnangnan. Les tanar'ris seuls sont à blâmer pour avoir plongé le multivers dans ce triste état."~ */
  IF ~~ THEN REPLY #12435 /* ~"Tu n'as pas vraiment répondu à ma question. Je voulais savoir ce qui vous différenciait d'eux."~ */ GOTO 16
  IF ~~ THEN REPLY #12436 /* ~"Je vois. J'ai d'autres questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12437 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12438 /* ~Le fiélon s'arrête un moment, puis son visage s'éclaire. "Ah, oui. Tu vois, nous représentons la loi et l'ordre. Ceux qui enfreignent la loi doivent être punis. En l'absence de loi, il n'y a qu'anarchie et tu vois bien quelles conséquences l'anarchie a eues sur les Abysses - elle a engendré des horreurs inimaginables. Tous les excès auxquels l'état baatezu a pu se prêter n'étaient en fait qu'un moyen de contrecarrer la vague déferlante de chaos représentée par les tanar'ris. Nous ne voulons blesser personne - nous préférons juste savoir où se situent les limites."~ */
  IF ~~ THEN REPLY #12439 /* ~"Je vois. J'ai d'autres questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12440 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY #12441 /* ~"Pharod ? J'ai entendu ce nom-là. N'est-ce pas une sorte de sage ? Un nécromancien ? Ou un devin de pacotille ? J'en ai entendu parler, l'ami, mais je n'ai pas le plaisir de le connaître. Peut-être qu'un autre… client… pourra t'aider."~ */
  IF ~~ THEN REPLY #12442 /* ~"Peut-être. J'ai d'autres questions."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12443 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #12444 /* ~"Parce qu'il est facile, mon ami, de faire l'erreur de confier des mots à la postérité, et plus facile encore pour quelqu'un en qui tu avais confiance", il lance alors un regard venimeux à Aethelgrin, "de trouver ces mots et de les utiliser contre toi. Cela peut même mener à des actions telles que la désertion… L'oubli ou la perte d'un journal peuvent te coûter ta propre existence."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12445 /* ~"Je vois. J'ai d'autres questions…"~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12446 /* ~"Je vois. J'ai des questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12447 /* ~"Je vois. Au revoir."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12448 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14690 /* ~"Il veut parler de Chasseur-de-roués, n'est-ce pas ?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 15
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14691 /* ~"Il demande de ses nouvelles… pourquoi notre ami nous interrogerait, ne le savait-il pas ? Ou il devait au moins s'en douter."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 16
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14692 /* ~"Et pourtant tu te demandes, Aethelgrin, pourquoi tu n'as pas encore eu de surnom ?" Le fiélon se retourne vers toi. "J'aimerais t'éclairer."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 18
END

IF ~~ THEN BEGIN 22 // from:
  SAY #14693 /* ~"Je l'ai juré, mais pas comme toi ! Je ne puis parler de l'affaire à aucun tanar'ri. Mais il me semble que notre ami, ici, reste à l'écart de ce groupe particulier."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 19
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14694 /* ~"Et comment donc !" Le fiélon s'adresse de nouveau à toi. "Ce Récupérateur, l'ami, est un diable, un diable qui a été maudit par un saint homme. Le beau jeune homme que tu as pu voir près de lui est l'esclave du Récupérateur, bien qu'il ne le sache pas."~ */
  IF ~~ THEN REPLY #14767 /* ~"Continue…"~ */ EXTERN ~DAETHEL~ 20
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14695 /* ~"Le ferais-je, Aethelgrin ? Je ne le crois pas."~ */
  IF ~~ THEN REPLY #14768 /* ~"Quel pendentif ?"~ */ GOTO 25
  IF ~~ THEN REPLY #14769 /* ~"J'écouterai ça une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14696 /* ~"Le fiélon a un pendentif, un objet magique que nous aimerions posséder. Je peux te garantir qu'il ne te sera de peu ou d'aucun usage l'ami, alors peut-être…"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 21
END

IF ~~ THEN BEGIN 26 // from:
  SAY #14697 /* ~"… *tout*…"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 23
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14698 /* ~"… nous ne voulons que le pendentif. C'est le pendentif qui nous permettra de te donner la puissance que nous t'avons promise."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 24
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14699 /* ~"Hélas, je n'ai pas pu éviter la règle. Dans cette histoire, nous avons les mains liées, l'ami."~ */
  IF ~~ THEN REPLY #14770 /* ~"Quel est le pouvoir du pendentif ?"~ */ EXTERN ~DAETHEL~ 26
  IF ~~ THEN REPLY #14771 /* ~"D'accord."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14772 /* ~"Non. Pas question."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14700 /* ~"Rien du tout, l'ami."~ */
  IF ~~ THEN REPLY #14773 /* ~"Réponds-moi ou il n'y aura pas de marché."~ */ GOTO 30
  IF ~~ THEN REPLY #14774 /* ~"Pourquoi tu ne vas pas le chercher toi-même ?"~ */ EXTERN ~DAETHEL~ 25
  IF ~~ THEN REPLY #14775 /* ~"D'accord."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14776 /* ~"Non. Pas question."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14701 /* ~"Il attrape les âmes lorsqu'elles quittent leurs enveloppes."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 27
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14702 /* ~"Que ferais-tu d'une telle chose ? Tu la vendrais pour une somme modique ? Tu en décorerais un linteau ?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 28
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14703 /* ~"Oui, Aethelgrin, quel dommage. Nous serons toujours là, vieil ami, si tu changes d'avis."~ */
  IF ~~ THEN REPLY #14777 /* ~"J'ai d'autres questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14778 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14704 /* ~"Le 'Récupérateur' était une Erinye. Elle a dépassé ses limites ; dévorée par l'ambition, elle a essayé de séduire un homme qui était bien au-dessus de ces choses."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 31
END

IF ~~ THEN BEGIN 34 // from:
  SAY #14705 /* ~"Bon, les Erinyes ne sont pas douées pour le combat, tu vois."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 32
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14706 /* ~Le fiélon se tourne vers son compagnon. "Oui, en effet." Te regardant de nouveau, il siffle : "Comme je te le disais, sans la corde magique que portent toutes ses sœurs et les résistances usuelles des fiélons, elle devrait être facile à tuer -- si son bien beau roué n'est pas dans les parages, bien sûr."~ */
  IF ~~ THEN REPLY #14779 /* ~"Comment faire pour qu'elle soit seule ?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14707 /* ~"Ah, j'y venais justement, mon vieil ami. Tu peux la trouver seule et cachée dans une allée juste au nord de cet établissement, entre deux bâtiments. Cherche-la à cet endroit, autour d'anti-pic."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 33
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14708 /* ~"Oh, mais les choses ont été réglées, souviens-toi. Tu as déjà accepté, tu t'en souviens ? Nous avons rempli notre part du contrat ; serais-tu assez insensible et oublieux de ton ancienne amitié pour ne pas remplir la tienne ?"~ */
  IF ~~ THEN REPLY #14780 /* ~"Non, tu as raison."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14781 /* ~"Oui."~ */ EXTERN ~DAETHEL~ 35
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14709 /* ~"Oui, Aethelgrin." Le diable se tourne vers toi, l'air très préoccupé. "Et as-tu déjà oublié la puissance que nous t'avons promise ? Le talisman entre nos mains pourrait te rendre plus fort, l'ami…"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 36
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14710 /* ~"Es-tu certain de pouvoir nous écarter aussi facilement ?"~ */
  IF ~~ THEN REPLY #14782 /* ~"Non, tu as raison."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14783 /* ~"Oui. Je ne peux pas faire ça."~ */ EXTERN ~DAETHEL~ 37
END

IF ~~ THEN BEGIN 40 // from:
  SAY #14711 /* ~"J'ai été stupide, Aethelgrin. J'aurais dû rédiger un contrat, mais j'ai fait la grossière erreur de compter sur notre amitié." Il se tourne vers toi, en ricanant. "Maudit sois-tu, misérable humain… tu le regretteras. Sache qu'à compter de maintenant, Tegar'in Trois-Fois-Damné cherchera ta perte et s'en prendra aussi à ton âme. Tu seras un non-combattant dans la Guerre Sanglante si mon vœu est entendu, l'esclave des caprices des plus indignes fiélons !"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 38
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14712 /* ~"Non, pas maintenant. Laisse-le partir. Nous avons toute l'éternité pour comploter contre lui, après tout…" Les deux fiélons se sourient méchamment puis te font un signe d'adieu.~ */
  IF ~~ THEN REPLY #14784 /* ~"Attendez ! Attendez ! J'ai réfléchi !"~ */ EXTERN ~DAETHEL~ 39
  IF ~~ THEN REPLY #14785 /* ~Pars.~ */ DO ~SetGlobal("2Devils","AR0402",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14713 /* ~"Silence, Aethelgrin ! Nous avons tous fait des erreurs." Tegar'in te regarde, en ricanant dédaigneusement. "Tu sais ce que nous voulons de toi. La plupart des blessures guérissent avec le temps… lorsque tu auras rempli ta part du marché, peut-être notre amitié reprendra-t-elle. Adieu."~ */
  IF ~~ THEN REPLY #14786 /* ~Pars.~ */ DO ~SetGlobal("2Devils","AR0402",2)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 53.0 54.0
  SAY #14714 /* ~"Nous utiliserons tout le pouvoir qu'il contient pour te fortifier… tu verras que cela te rendra à la fois plus fort physiquement et plus hardi. L'effet devrait être permanent… jusqu'à ta mort, bien entendu, mais ne parlons pas de ces choses, vieil ami."~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14787 /* ~"Alors, voici le pendentif."~ */ EXTERN ~DAETHEL~ 40
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14788 /* ~"J'ai d'autres questions…"~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14789 /* ~"J'ai d'autres questions…"~ */ EXTERN ~DAETHEL~ 8
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14790 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14791 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.3
  SAY #14715 /* ~"Attends… nous voulons d'abord le pendentif."~ */
  IF ~~ THEN REPLY #14792 /* ~"Alors, voici le pendentif."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14793 /* ~"J'ai décidé de garder le pendentif."~ */ EXTERN ~DAETHEL~ 44
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14716 /* ~"Oui, Aethelgrin. Et maintenant pour t'accorder la puissance du pendentif volé, compagnon de longue…" Le fiélon saisit le pendentif entre ses griffes et ses yeux luisent d'une lueur enflammée. Une auréole de puissance enveloppe un instant le pendentif -- puis rien.~ */
  IF ~~ THEN REPLY #14794 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14717 /* ~"Je… je ne sais pas, vieil ami !" Tegar'in a l'air véritablement choqué, mais derrière lui, Aethelgrin sourit d'un air méchant. "Il semblerait… il semblerait qu'une magie étrange ait agit sur toi, une sorcellerie qui empêche le pendentif de te rendre puissant."~ */
  IF ~~ THEN REPLY #14795 /* ~"Quoi ?! Tu le savais ?"~ */ EXTERN ~DAETHEL~ 41
END

IF ~~ THEN BEGIN 47 // from:
  SAY #14718 /* ~"Non, mon vieil ami ! Certainement pas. Aethelgrin ?" Le fiélon renvoie le pendentif à son compagnon.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 42
END

IF ~~ THEN BEGIN 48 // from:
  SAY #14719 /* ~"Je suis vraiment désolé, très cher ami, vraiment. Peut-être, lorsque tu te seras - débarrassé - de cette magie, nous pourrons utiliser le pendentif à ton avantage. Tu sais où nous trouver, si tu y parviens." Le diable te sourit.~ */
  IF ~~ THEN REPLY #14796 /* ~"Alors, rends-moi le pendentif. Je le rapporterai quand la magie aura été levée."~ */ GOTO 49
  IF ~~ THEN REPLY #14797 /* ~Attaque les fiélons.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14798 /* ~"Hmph. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14720 /* ~Tegar'in secoue tristement sa tête.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 43
END

IF ~~ THEN BEGIN 50 // from:
  SAY #14721 /* ~"C'est légalement le nôtre maintenant. Souviens-toi du marché, ami de longue date."~ */
  IF ~~ THEN REPLY #14799 /* ~"Très bien. Voilà le pendentif."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14800 /* ~"Non, je crois que je vais le garder pour l'instant."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #14722 /* ~"Oh, quel dommage… abandonnerais-tu ainsi ton amitié de façon si étourdie ? S'il te plaît, je te le demande… ne trahis pas une amitié aussi ancienne. Rapporte le pendentif."~ */
  IF ~~ THEN REPLY #14801 /* ~"Très bien. Le voilà."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14802 /* ~"Non. Sûrement pas."~ */ EXTERN ~DAETHEL~ 45
END

IF ~~ THEN BEGIN 52 // from:
  SAY #14723 /* ~"Oui, allons-y."~ */
  IF ~~ THEN REPLY #14803 /* ~Réponds à leur attaque.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14804 /* ~Fuis avec le pendentif.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #14724 /* ~"Eh bien…" Les deux fiélons se regardent puis acquiescent. "Dans ce cas…"~ */
  IF ~~ THEN REPLY #14805 /* ~"Attends - quel genre de pouvoir tu me donneras ?"~ */ GOTO 43
  IF ~~ THEN REPLY #14806 /* ~"Voilà le pendentif."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14807 /* ~"J'ai décidé de garder le pendentif."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 54 // from:
  SAY #14725 /* ~"Regarde, il est revenu, et avec le pendentif !"~ */
  IF ~~ THEN REPLY #14808 /* ~"Attends - quel genre de pouvoir tu me donneras ?"~ */ GOTO 43
  IF ~~ THEN REPLY #14809 /* ~"Voilà le pendentif."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14810 /* ~"J'ai décidé de garder le pendentif."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 55 // from:
  SAY #14726 /* ~"Ah, regarde qui est revenu. Désolé, l'ami, mais nous ne t'adresserons pas la parole tant que tu n'auras pas notre pendentif. Adieu."~ */
  IF ~~ THEN REPLY #14811 /* ~Pars.~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 56 // from:
  SAY #14727 /* ~"Bien, bien… Traître des amis !"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 46
END

IF ~~ THEN BEGIN 57 // from:
  SAY #14728 /* ~Les diables te regardent froidement lors du silence long et pesant qui suit leurs paroles. Enfin, Tegar'in parle : "Très bien. Dommage… l'ami."~ */
  IF ~~ THEN REPLY #14812 /* ~"J'ai d'autres questions…"~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14813 /* ~"C'est tout. Au revoir."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXIT
END
