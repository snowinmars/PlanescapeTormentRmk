// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGLYVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGLYVE~

IF ~  Global("Water","GLOBAL",3)
~ THEN BEGIN 0 // from: 3.0
  SAY #24037 /* ~Le visage de pierre est silencieux. Un filet d'eau claire s'écoule du coin de son œil et la grimace forgée sur son visage s'est estompée.~ */
  IF ~~ THEN REPLY #24038 /* ~"Glyve, j'ai besoin d'autres réponses de ta part…"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24039 /* ~"Très bien, alors."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24040 /* ~"Très bien, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #24041 /* ~Le visage reste impassible et silencieux.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24042 /* ~"Très bien, alors."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24043 /* ~"Très bien, alors."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #24044 /* ~Les yeux immobiles de Glyve semblent se tendre vers toi alors que tu t'approches. "Est-ce que tu… veux… ta réponse maintenant ?"~ */
  IF ~~ THEN REPLY #24045 /* ~"Oui, donne-la moi."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24046 /* ~"Non, pas encore. Réponds d'abord à d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #24047 /* ~"Non, pas encore. Au revoir, Glyve."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 15.0
  SAY #24048 /* ~"Cherche… une femme dénommée… 'Nemelle'. Elle habite dans… le Quartier des Gratte-Papier… dans le Haut Sigil. J'sais pas… où exactement… Bonne chance… dans *ta* quête… immortel." La voix semble s'estomper à mesure qu'il te parle.~ */
  IF ~~ THEN REPLY #24049 /* ~"Merci, Glyve. J'ai d'autres questions."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve m'a dit de rechercher une certaine Nemelle dans le Quartier des Gratte-Papier si je voulais découvrir le mot de commande qui me permettra d'utiliser le plein potentiel de la carafe d'eau intarissable.~ */ GOTO 0
  IF ~~ THEN REPLY #24050 /* ~"Merci, Glyve. Au revoir."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve m'a dit de rechercher une certaine Nemelle dans le Quartier des Gratte-Papier si je voulais découvrir le mot de commande qui me permettra d'utiliser le plein potentiel de la carafe d'eau intarissable.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1 8.1 9.1 10.2 11.2 12.2 13.2 14.1 16.0 18.0 18.1 19.0 22.1 23.0
  SAY #24051 /* ~"Que… que voulais-tu… savoir ?"~ */
  IF ~~ THEN REPLY #24052 /* ~"Parle-moi de toi. Comment t'es-tu retrouvé dans cette situation ?"~ */ GOTO 5
  IF ~~ THEN REPLY #24053 /* ~"Qu'est-ce que tu peux me dire des catacombes qui nous entourent ?"~ */ GOTO 13
  IF ~  Global("Water","GLOBAL",2)
~ THEN REPLY #24054 /* ~"Tout bien réfléchi, donne-moi la réponse que tu m'as promise."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #24055 /* ~"C'est quoi encore ce que tu veux que je fasse pour toi ?"~ */ GOTO 9
  IF ~  Global("Water","GLOBAL",1)
PartyHasItem("Decant")
~ THEN REPLY #24056 /* ~"J'ai la fiole pour toi."~ */ GOTO 14
  IF ~~ THEN REPLY #24057 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #24058 /* ~"J'étais autrefois… un chef respecté… de ma communauté… dans le Bas Quartier. Un petit seigneur… a cherché à accroître ses pouvoirs… aux dépens de mes gens… mes amis… mes parents… et je me suis… révolté."~ */
  IF ~~ THEN REPLY #24059 /* ~"Et ensuite ?"~ */ GOTO 6
  IF ~~ THEN REPLY #24060 /* ~"Tu sais quoi ? Laisse tomber. Réponds plutôt à d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #24061 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #24062 /* ~"Alors… il nous a capturés… un par un… et a fixé nos esprits et nos sens… dans ces visages grimaçants… sous le Fossé… où toute la saleté de Sigil… s'agglutine. Puis… il a laissé les eaux polluées du dessus… s'écouler dans nos bouches… nos nez… et nos yeux."~ */
  IF ~  Global("Water","GLOBAL",0)
~ THEN REPLY #24063 /* ~"Est-ce que je peux faire quelque chose pour aider ?"~ */ DO ~SetGlobal("Water","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #24064 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #24065 /* ~"Hm. Intéressant. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #24066 /* ~"Horrible. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #24067 /* ~"Je suis voué à… rester ici jusqu'à ce que… de l'eau fraîche passe sur mes lèvres… Il y a une… fiole magique d'eau… dans les… Nations Englouties. Rapporte-la moi… et fais-m'en goûter… et je te parlerai… de quelqu'un… qui peut t'aider à débloquer… tout son potentiel… et tu ne manqueras plus jamais… d'eau."~ */
  IF ~~ THEN REPLY #24068 /* ~"Où se trouve cette fiole ?"~ */ JOURNAL #66299 /* ~Un visage de pierre des catacombes de la Pierre Pleureuse m'a raconté ce qui lui était arrivé. Le malheureux a vu tous ses sens transférés dans un masque de pierre, au travers duquel passent les eaux usées de Sigil. La malédiction peut être levée par un peu d'eau pure. Apparemment, un artiste-collectionneur du nom de Chad sait où trouver une fiole contenant une telle eau.~ */ GOTO 8
  IF ~~ THEN REPLY #24069 /* ~"Intéressant. Réponds à d'autres questions pour moi."~ */ GOTO 4
  IF ~~ THEN REPLY #24070 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #24071 /* ~"Je ne sais… pas. Il y avait… un artiste du nom de… Chad qui fréquentait… ces tunnels. Il savait. Trouve-le… et il pourra peut-être te le dire."~ */
  IF ~~ THEN REPLY #24072 /* ~"Et comment on y va ?"~ */ GOTO 10
  IF ~~ THEN REPLY #24073 /* ~"Très bien. Réponds à d'autres questions pour moi."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24074 /* ~"Je le trouverai. Au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24075 /* ~"Je le trouverai. Au revoir."~ */ EXTERN ~DMORTE~ 229
  IF ~~ THEN REPLY #24076 /* ~"Je vais voir ce que je peux faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #24077 /* ~"De l'eau… de l'eau fraîche… dans une fiole magique… dans les Nations Englouties…"~ */
  IF ~~ THEN REPLY #24078 /* ~"Et comment on y va ?"~ */ GOTO 10
  IF ~~ THEN REPLY #24079 /* ~"Compris. Réponds à d'autres questions pour moi."~ */ GOTO 4
  IF ~~ THEN REPLY #24080 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #24081 /* ~"En passant par les Nations Englouties… où les morts marchent… et règnent… ou par les Dédales de la Pensée… où Tant-en-Un exerce sa loi… Aucun des deux n'est… sans risque."~ */
  IF ~~ THEN REPLY #24082 /* ~"Les Nations Mortes ?"~ */ GOTO 11
  IF ~~ THEN REPLY #24083 /* ~"Tant-en-Un ?"~ */ GOTO 12
  IF ~~ THEN REPLY #24084 /* ~"Compris. J'ai d'autres questions à te poser…"~ */ GOTO 4
  IF ~~ THEN REPLY #24085 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #24086 /* ~"Les morts… organisent leur vie… à leur manière. Ils règnent… sur une partie de ces… catacombes. Ils se battent avec… Tant-en-Un… pour ces… tunnels."~ */
  IF ~~ THEN REPLY #24087 /* ~"Parle-moi encore des catacombes."~ */ GOTO 13
  IF ~~ THEN REPLY #24088 /* ~"Parle-moi de Tant-en-Un."~ */ GOTO 12
  IF ~~ THEN REPLY #24089 /* ~"Donne-moi d'autres réponses…"~ */ GOTO 4
  IF ~~ THEN REPLY #24090 /* ~"Merci, Glyve. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 13.1
  SAY #24091 /* ~"Tu as entendu parler… des rats-crâne ? Lorsqu'ils se réunissent… ils deviennent plus puissants… un esprit mis en commun. Eux et leurs serviteurs… les rats-garous… cherchent à s'emparer… de ces souterrains. Ils sont en guerre avec… les Nations Mortes."~ */
  IF ~~ THEN REPLY #24101 /* ~"Parle-moi des Nations Mortes."~ */ GOTO 11
  IF ~~ THEN REPLY #24102 /* ~"Parle-moi encore des catacombes."~ */ GOTO 13
  IF ~~ THEN REPLY #24103 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #24105 /* ~"Merci, Glyve. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 11.0 12.1
  SAY #24108 /* ~"Les catacombes ont été creusées… il y a une éternité… pour loger les morts de la cité… qui ne voulaient pas… des tendres soins des Hommes-Poussière. Elles sont devenues… le dépotoir de la cité… où résident des monstres à peine visibles… où les humains rôdent comme… des charognards parmi les charognards. Tant-en-Un surveille ces tunnels… et en a retourné beaucoup contre… leur propre nature. Les Nations Mortes… rôdent aussi…. pour se protéger… des dépravations des… humains… qui viennent parmi elles."~ */
  IF ~~ THEN REPLY #24111 /* ~"Parle-moi des Nations Mortes."~ */ GOTO 11
  IF ~~ THEN REPLY #24113 /* ~"Parle moi de Tant-En-Un."~ */ GOTO 12
  IF ~~ THEN REPLY #24115 /* ~"J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #24116 /* ~"Merci, Glyve. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.4 17.1
  SAY #24118 /* ~Un soupçon d'impatience pointe dans la voix morte de Glyve : "Tu l'as ? Verse un peu… de cette eau sur… mes lèvres… et je te dirai… ce que j'ai promis… de te dire."~ */
  IF ~~ THEN REPLY #24120 /* ~"Voilà."~ */ DO ~SetGlobal("Water","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 15
  IF ~~ THEN REPLY #24122 /* ~"Attends. J'ai d'autres questions à te poser."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #24123 /* ~L'eau claire de la fiole coule sur les lèvres de pierre, diluant la saleté qui dégorge des trous. Tu remarques alors que, lentement, l'eau du Fossé se dissipe entièrement, son aspect sale étant remplacé par de l'eau claire et fraîche. Glyve gémit d'extase. Il parle au bout d'un moment. "Veux-tu ta réponse maintenant ou plus tard ?"~ */
  IF ~~ THEN REPLY #24125 /* ~"Donne-la moi maintenant."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24127 /* ~"Plus tard. J'ai d'autres questions à te poser."~ */ GOTO 16
  IF ~~ THEN REPLY #24128 /* ~"Plus tard. Au revoir, Glyve."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2
  SAY #24130 /* ~"Je resterai… conscient… jusqu'à ton retour… pour ta réponse…"~ */
  IF ~~ THEN REPLY #24132 /* ~"Bien. Réponds maintenant à des questions."~ */ GOTO 4
  IF ~~ THEN REPLY #24137 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #24138 /* ~"As-tu trouvé… la fiole dont… je t'ai parlé ?"~ */
  IF ~~ THEN REPLY #24140 /* ~"Pas encore."~ */ GOTO 18
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #24142 /* ~"Oui."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #24144 /* ~"Je t'en prie… trouve-la… et apaise mon tourment."~ */
  IF ~~ THEN REPLY #24145 /* ~"Je ferai de mon mieux. En attendant, j'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #24146 /* ~"Nous verrons. Réponds à quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #24147 /* ~"J'essaie. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #24148 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",1)
~ THEN BEGIN 19 // from:
  SAY #24149 /* ~"Tu es revenu… À quoi dois-je… cet honneur ?"~ */
  IF ~~ THEN REPLY #24151 /* ~"J'avais besoin de réponses à mes questions."~ */ GOTO 4
  IF ~~ THEN REPLY #24153 /* ~"Bonne question. Au revoir."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",0)
~ THEN BEGIN 20 // from:
  SAY #24155 /* ~Alors que tu passes devant un des visages de pierre grimaçants sur les murs, il t'appelle d'une voix grinçante qui te fait penser au déplacement de galets. "Immortel… regarde-moi. Je suis… Glyve. Je voudrais te… parler."~ */
  IF ~~ THEN REPLY #24157 /* ~"Comment sais-tu que je suis immortel ?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 21
  IF ~~ THEN REPLY #24158 /* ~"Que voulais-tu dire ?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
  IF ~~ THEN REPLY #24160 /* ~"Sûrement pas."~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #24161 /* ~"Je vois… en toi… un objectif brûlant. Je vois… beaucoup de choses dans la poussière… qui tombe de ces… tunnels. Il te manque… quelque chose d'essentiel… ce qui te tient à l'écart… de la douce étreinte de la mort."~ */
  IF ~~ THEN REPLY #24162 /* ~"Que voulais-tu me dire ?"~ */ GOTO 22
  IF ~~ THEN REPLY #24163 /* ~"Tout ça c'est bien, mais…"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 21.0 21.1
  SAY #24165 /* ~"Écoute. Cet endroit est… très dangereux pour toi. La trahison t'attend… à la surface… et ton chemin est… long et sinueux. Au bout… tu trouveras… ce que tu as cherché… mais tu ne le voudras alors… peut-être plus."~ */
  IF ~~ THEN REPLY #24167 /* ~"Es-tu une sorte d'oracle ?"~ */ GOTO 23
  IF ~~ THEN REPLY #24168 /* ~"Je te donnerai peut-être quelques réponses…"~ */ GOTO 4
  IF ~~ THEN REPLY #24169 /* ~"Je vois. Je reviendrai peut-être."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #24170 /* ~"Un oracle ? Non… j'observe. C'est tout."~ */
  IF ~~ THEN REPLY #24171 /* ~"Dans ce cas, tu peux peut-être répondre à quelques-unes de mes questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #24172 /* ~"C'est tout ? Laisse tomber, alors. Au revoir."~ */ EXIT
END
