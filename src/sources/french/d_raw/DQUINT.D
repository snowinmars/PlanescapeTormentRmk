// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUINT~

IF ~  Global("Quint_Item","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #2833 /* ~"Eh. Merci. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #2834 /* ~"Je veux parler affaires."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19039 /* ~"J'ai quelques questions à te poser."~ */ GOTO 1
  IF ~~ THEN REPLY #19040 /* ~"Rien. Au revoir, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1 3.5 4.1 6.1 7.1 8.1 9.0
  SAY #19041 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #19042 /* ~"Parle-moi encore de toi."~ */ GOTO 2
  IF ~~ THEN REPLY #19043 /* ~"Parle-moi des autres gens d'ici."~ */ GOTO 3
  IF ~~ THEN REPLY #19044 /* ~"Parle-moi de cet endroit."~ */ GOTO 9
  IF ~~ THEN REPLY #19045 /* ~"Rien. Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19046 /* ~"Quint. Je vends, j'achète. J'ai tout c'qui faut. Tu veux ?"~ */
  IF ~~ THEN REPLY #19047 /* ~"Parlons affaires."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19048 /* ~"Pas encore. Réponds à d'autres questions."~ */ GOTO 1
  IF ~~ THEN REPLY #19049 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.0 6.0 7.0 8.0
  SAY #19050 /* ~"Comme qui ?"~ */
  IF ~~ THEN REPLY #19051 /* ~"Pharod."~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #19052 /* ~"Annah."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #19053 /* ~"Annah."~ */ GOTO 6
  IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN REPLY #19054 /* ~"Marta."~ */ GOTO 7
  IF ~  GlobalGT("Know_Ojo","GLOBAL",0)
~ THEN REPLY #19055 /* ~"Ojo."~ */ GOTO 8
  IF ~~ THEN REPLY #19056 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #19057 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19058 /* ~"Le vieux Bègue-béquille, hein ? Il a créé cet endroit, lui seigneur de la voie, il m'y a mis, on fait affaire, tu vois ?"~ */
  IF ~~ THEN REPLY #19059 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 3
  IF ~~ THEN REPLY #19060 /* ~"J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #19061 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #19062 /* ~Ses mâchoires tremblent un peu lorsqu'il regarde Annah. "Jolie fille, sympa, maligne, hein ? Une dure à cuire". Il lève les mains pour signifier qu'il ne pense pas à mal.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #19063 /* ~"Le gros lot de Pharod ; elle fait des boulots dangereux, hein ? Rusée. Langue bien effilée." Il se frotte la tête comme s'il se rappelait d'une ancienne blessure. "Reste à l'écart, hein ?"~ */
  IF ~~ THEN REPLY #19064 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 3
  IF ~~ THEN REPLY #19065 /* ~"J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #19066 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY #19067 /* ~"Eh. Marta il faut s'en méfier. Une couturière azimutée. Elle ramasse toutes les dents, les fringues et les morceaux de cadavres, me les donne, je les échange contre d'autres choses."~ */
  IF ~~ THEN REPLY #19068 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 3
  IF ~~ THEN REPLY #19069 /* ~"J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #19070 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY #19071 /* ~"Timbré. Pas bon à grand-chose, hein ?"~ */
  IF ~~ THEN REPLY #19072 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 3
  IF ~~ THEN REPLY #19073 /* ~"J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #19074 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY #19075 /* ~"Ça, hein ? Le village. Les dabus l'ont muré un jour, il y a longtemps, puis ils l'ont oublié. Les Récupérateurs l'ont redécouvert alors qu'ils cherchaient du jonc dans les montagnes de détritus… moi, j'suis tombé dessus en négociant avec les Récupérateurs." Il remue ses sourcils. "Bon endroit pour se faire du jonc, hein ? Les morts, c'est bon pour les affaires."~ */
  IF ~~ THEN REPLY #19076 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 1
  IF ~~ THEN REPLY #19077 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN BEGIN 10 // from:
  SAY #19078 /* ~"Toi, hein ? Tu as ce qu'il me faut ?"~ */
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19079 /* ~"Qu'est-ce que tu cherchais déjà ?"~ */ GOTO 11
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19080 /* ~"Oui. Le voilà."~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ GOTO 12
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19081 /* ~Mensonge : "Non, pas encore. Je continue à chercher."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_One","GLOBALLaw",-1)
~ GOTO 13
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19082 /* ~"Non, pas encore. Je continue à chercher."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #19083 /* ~"Un charme, hein ? Un collier de dents creuses. Trouve-le et tu en auras pour ton argent, eh ? Allez, va." Il se replonge dans ses marchandises, t'ignorant complètement.~ */
  IF ~~ THEN REPLY #19084 /* ~"Très bien. J'y vais."~ */ EXIT
  IF ~~ THEN REPLY #66306 /* ~"Faisons un échange."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 23.1 24.1
  SAY #19085 /* ~Tu lui passes l'objet et il le caresse, en regardant s'il n'est pas abîmé. "T'as fait ton boulot, hein ? Je fais le mien." Il te tend un sac dans lequel résonnent beaucoup de pièces. "On est quittes, maintenant. Tu veux encore parler à Quint, eh ?" Il se détourne, absorbé par son acquisition.~ */
  IF ~~ THEN REPLY #19086 /* ~"Faisons un échange."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66304 /* ~"Au revoir, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 10.3
  SAY #19087 /* ~Son visage porcin s'effondre. "Ah, le cœur du vieux Quint se brise. Reviens quand tu l'auras trouvé, d'accord ? Il se détourne et se replonge dans ses affaires.~ */
  IF ~~ THEN REPLY #19088 /* ~"Réponds à d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #66305 /* ~"Faisons un échange."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66307 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from: 13.0 15.2 16.5 17.1 19.1 20.1 21.1 22.0 23.2 24.0 35.1 40.0 41.1 43.1 44.1 46.3 47.2 48.0 49.1
  SAY #19089 /* ~Quint te regarde. "Qu'est-ce que tu veux, hein ?"~ */
  IF ~  !Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #19090 /* ~"Parle-moi encore de toi."~ */ GOTO 15
  IF ~~ THEN REPLY #19091 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 46
  IF ~~ THEN REPLY #19092 /* ~"Parle-moi des autres gens d'ici."~ */ GOTO 16
  IF ~~ THEN REPLY #19093 /* ~"Parle-moi de cet endroit."~ */ GOTO 22
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19094 /* ~"Traitons ensemble."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66308 /* ~"Rien. Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19095 /* ~" Quint. Je vends, j'achète. J'ai tout c'qui faut. Tu veux ? Ou p't-être que tu peux faire un p'tit boulot pour moi, hein ?"~ */
  IF ~~ THEN REPLY #19096 /* ~"Quel genre de travail ?"~ */ GOTO 23
  IF ~  Global("Quint_Trade","GLOBAL",0)
~ THEN REPLY #19097 /* ~"Parlons affaires."~ */ GOTO 32
  IF ~~ THEN REPLY #19098 /* ~"Pas encore. Réponds à d'autres questions."~ */ GOTO 14
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19099 /* ~"Traitons ensemble."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66309 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 17.0 19.0 20.0 21.0
  SAY #19100 /* ~"Comme qui ?"~ */
  IF ~~ THEN REPLY #19101 /* ~"Pharod."~ */ GOTO 17
  IF ~  NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19102 /* ~"Annah."~ */ GOTO 18
  IF ~  !NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19103 /* ~"Annah."~ */ GOTO 19
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #19104 /* ~"Marta."~ */ GOTO 20
  IF ~  Global("Know_Ojo","GLOBAL",1)
~ THEN REPLY #19105 /* ~"Ojo."~ */ GOTO 21
  IF ~~ THEN REPLY #19106 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19107 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 46.1
  SAY #19108 /* ~"Le vieux Bègue-béquille, hein ? Il a créé cet endroit, lui le seigneur de la voie, il m'y a mis, on fait affaire, tu vois ?"~ */
  IF ~~ THEN REPLY #19109 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 16
  IF ~~ THEN REPLY #19110 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19111 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #19112 /* ~Ses mâchoires tremblent un peu lorsqu'il regarde Annah. "Jolie fille, sympa, maligne, hein ? Une dure à cuire." Il lève les mains pour signifier qu'il ne pense pas à mal.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #19113 /* ~"Le gros lot de Pharod ; elle fait des boulots dangereux, hein ? Rusée. Langue bien effilée." Il se frotte la tête comme s'il se rappelait d'une ancienne blessure. "Reste à l'écart, hein ?"~ */
  IF ~~ THEN REPLY #19114 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 16
  IF ~~ THEN REPLY #19115 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19116 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.3 46.0
  SAY #19117 /* ~"Eh. Marta il faut s'en méfier. Une couturière azimutée. Elle ramasse toutes les dents, les fringues et les morceaux de cadavres, me les donne, je les échange contre d'autres choses."~ */
  IF ~~ THEN REPLY #19118 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 16
  IF ~~ THEN REPLY #19119 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19120 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.4
  SAY #19121 /* ~"Timbré. Pas bon à grand-chose, hein ?"~ */
  IF ~~ THEN REPLY #19122 /* ~"Très bien. Parle-moi des autres gens d'ici."~ */ GOTO 16
  IF ~~ THEN REPLY #19123 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19124 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.3
  SAY #19125 /* ~"Ça, hein ? Le village. Les dabus l'ont muré un jour, il y a longtemps, puis ils l'ont oublié. Les Récupérateurs l'ont redécouvert alors qu'ils cherchaient du jonc dans les montagnes de détritus… moi, j'suis tombé dessus en négociant avec les Récupérateurs." Il remue ses sourcils. "Bon endroit pour se faire du jonc, hein ? Les morts, c'est bon pour les affaires."~ */
  IF ~~ THEN REPLY #19126 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #19127 /* ~"Oui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.0
  SAY #19128 /* ~"Gris ?… Gris le Vautour, on l'appelait. Il est parti il y a une quinzaine de jours de ça. Depuis personne ne l'a revu ou entendu. Les catacombes en ont probablement eu raison, beaucoup de choses arrivent dans ces endroits sombres… pas d'chance que Gris soit dans le livre des morts… un bon Récupérateur, c'était. Un cœur noir. Il avait le nez pour trouver de nouvelles cryptes. Il a aussi quelque chose à moi. Trouve-le, ramène-moi l'objet et je te paierai, d'accord ? Du jonc pour la camelote, hein ?~ */
  IF ~~ THEN REPLY #19129 /* ~"C'est d'accord."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",1)
~ JOURNAL #66300 /* ~Quint m'a demandé de récupérer un objet auprès d'un collectionneur nommé Gris. Il semble avoir disparu dans les catacombes il y a quelques temps.~ */ GOTO 24
  IF ~  PartyHasItem("PSCharm")
~ THEN REPLY #19130 /* ~Montre-lui le charme que tu as trouvé près de la maison de Marta. "Oh, ce truc ?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint, le revendeur de cadavres, m'a demandé d'aller chercher un objet appartenant à un Récupérateur du nom de Gris, qui a disparu dans les catacombes depuis quelque temps. Je lui ai montré le charme que j'avais trouvé près de chez Marta, et il m'a dit que c'était bien de cela qu'il s'agissait.~ */ GOTO 12
  IF ~~ THEN REPLY #19131 /* ~"Je vais y réfléchir. Réponds à d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #66301 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #19132 /* ~Il renifle, l'air presque heureux. "C'est un charme empoisonné, un collier de dents creuses. Tu le trouveras probablement là où sera Gris. Tiens-moi au courant, hein ?"~ */
  IF ~~ THEN REPLY #19133 /* ~"Bien sûr. J'ai encore quelques questions…"~ */ GOTO 14
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19134 /* ~Montre-lui le charme que tu as trouvé près de la maison de Marta. "Oh, ce truc ?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint, le revendeur de cadavres, m'a demandé d'aller chercher un objet appartenant à un Récupérateur du nom de Gris, qui a disparu dans les catacombes depuis quelque temps. Je lui ai montré le charme que j'avais trouvé près de chez Marta, et il m'a dit que c'était bien de cela qu'il s'agissait.~ */ GOTO 12
  IF ~~ THEN REPLY #66303 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 25 // from:
  SAY #19135 /* ~Tu aperçois un homme petit, au visage gras couvert de saleté et de poussière. Il sent mauvais et exhibe des dents pourries. Il respire péniblement en te dévisageant. "Je m'appelle Quint. T'es nouveau ?"~ */
  IF ~~ THEN REPLY #19136 /* ~"Qui veut savoir ?"~ */ GOTO 26
  IF ~~ THEN REPLY #19137 /* ~"Oui."~ */ GOTO 29
  IF ~~ THEN REPLY #19138 /* ~"Non, ça fait un moment que je suis là."~ */ GOTO 42
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #19139 /* ~"Moi, eh ? T'es nouveau ?"~ */
  IF ~~ THEN REPLY #19140 /* ~"Oui."~ */ GOTO 29
  IF ~~ THEN REPLY #19141 /* ~"Non."~ */ GOTO 42
  IF ~~ THEN REPLY #19142 /* ~"Ça ne te regarde pas."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #19143 /* ~"Ça me regarde. T'es nouveau ?"~ */
  IF ~~ THEN REPLY #19144 /* ~"Oui."~ */ GOTO 29
  IF ~~ THEN REPLY #19145 /* ~"Non."~ */ GOTO 42
  IF ~~ THEN REPLY #19146 /* ~"Va caguer, OK ?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY #19147 /* ~"Eh, idem pour toi ! Dégage !"~ */
  IF ~~ THEN REPLY #19148 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.1 26.0 27.0
  SAY #19149 /* ~Il te regarde l'air soupçonneux. "Tu vends ou t'échanges ? Hein ?"~ */
  IF ~~ THEN REPLY #19150 /* ~"Oui."~ */ GOTO 30
  IF ~~ THEN REPLY #19151 /* ~"Je vends."~ */ GOTO 30
  IF ~~ THEN REPLY #19152 /* ~"Je fais des affaires."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1 29.2
  SAY #19153 /* ~Ses yeux se ferment encore plus. "Des affaires ? Avec moi ? Ou avec tout le monde, bige ? Hein ? Avec qui ?"~ */
  IF ~~ THEN REPLY #19154 /* ~"Avec toi."~ */ GOTO 31
  IF ~~ THEN REPLY #19155 /* ~"Avec tout le monde."~ */ GOTO 39
  IF ~~ THEN REPLY #19156 /* ~"Avec qui je veux, bige."~ */ GOTO 39
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #19157 /* ~"Just'moi ? Moi ? Eh ?"~ */
  IF ~~ THEN REPLY #19158 /* ~"Oui, juste avec toi."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19159 /* ~"Non, avec tout le monde."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 15.1 31.0 36.2 37.0
  SAY #19160 /* ~"Ah bon ? Allons-y alors ?"~ */
  IF ~~ THEN REPLY #19161 /* ~"Très bien."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19162 /* ~"Il y a quelque chose qui t'intéresse ?"~ */ GOTO 33
  IF ~~ THEN REPLY #19163 /* ~"Quel genre d'affaires tu traites d'habitude ?"~ */ GOTO 36
  IF ~~ THEN REPLY #19164 /* ~"En fait, ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #19165 /* ~"Tout ce qui a de l'intérêt, hein ?" Il sourit. "Tu cherches quelque chose ?"~ */
  IF ~~ THEN REPLY #19166 /* ~"Montre-moi ce que tu as."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #19167 /* ~"Un journal."~ */ GOTO 34
  IF ~~ THEN REPLY #19168 /* ~"Non. Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #19169 /* ~"Un journal ? À la feuille dorée, peut-être ?"~ */
  IF ~~ THEN REPLY #19170 /* ~"Je ne sais pas."~ */ GOTO 35
  IF ~~ THEN REPLY #19171 /* ~"Parlons d'autre chose."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #19172 /* ~"Moi non plus." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #19173 /* ~"Alors, parlons affaires."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19174 /* ~"Très bien. Alors, réponds à quelques questions."~ */ GOTO 14
  IF ~~ THEN REPLY #19175 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2
  SAY #19176 /* ~"Des fils de suture, des dents, des morceaux ci et là d'ceux qui nous ont quittés ? La pêche au cadavre est fructueuse dans les catacombes, on peut récupérer des trucs des morts, des urnes, du jonc, des petites babioles… c'est mon business, bige. Ceux qui vivent ici - ils descendent, ces Récupérateurs, prennent des trucs, des corps, les ramènent à Pharod, lui montrent, il prend sa part, puis il négocie avec moi."~ */
  IF ~~ THEN REPLY #19177 /* ~"Que fait Pharod avec les corps ?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #19178 /* ~"Et si je traitais directement avec toi ?"~ */ GOTO 38
  IF ~~ THEN REPLY #19179 /* ~"Je veux traiter avec toi."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19180 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #19181 /* ~"Son commerce." Il sourit. "Il revend les morts aux Hommes-Poussière, ils les enterrent de nouveau, nous on les déterre, tu piges ?" Il renifle bruyamment, comme s'il riait.~ */
  IF ~~ THEN REPLY #19182 /* ~"Je vois. Les affaires pourraient m'intéresser."~ */ GOTO 32
  IF ~~ THEN REPLY #19183 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #19184 /* ~"J'pourrais pas avoir ça, hein ? Ce vieux Quint en a peut-être assez d'avoir les restes de Pharod et de revendre des petits bouts de cadavres alors que je pourrais directement avoir les urnes et les trésors des morts ? Si tu me disais que ça vient de Pharod, j'saurais pas rien, hein ? Je supposerais simplement que c'était régulier, hein ?"~ */
  IF ~~ THEN REPLY #19185 /* ~"Allons, traitons ensemble."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19186 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.1 30.2 31.1
  SAY #19187 /* ~Son visage tourne au rouge vif. "Dégage, bige ! Allez ! Cette guitoune est à moi ! J'y étais en premier. Tu n'as aucun droit ! Je demanderai à Pharod de te vider comme un poisson !"~ */
  IF ~~ THEN REPLY #19188 /* ~Mensonge : "Pharod m'a dit que je pourrais faire affaire ici."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_Two","GLOBALLaw",-1)
SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #19189 /* ~"Calme-toi. Je traiterai juste avec toi."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #19190 /* ~"Je vais le tuer ! Il m'dit, 'Quint, mon pote, tu t'occupes de c't'endroit', et il part et donne un morceau à un bougre méprisable de ton espèce. Sale bâtard boiteux  ! Eh !"~ */
  IF ~~ THEN REPLY #19191 /* ~"C'est pas de veine, hein ? J'ai quelques questions à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #19192 /* ~"Alors, tu veux faire affaire ou pas ?"~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19193 /* ~"On ne peut pas lui faire confiance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #19194 /* ~Son visage pâlit. "Très bien." Il éponge la sueur de ses sourcils. "Tu veux négocier, hein ?"~ */
  IF ~~ THEN REPLY #19195 /* ~"Oui. Traitons ensemble."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19196 /* ~"En fait, j'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19197 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 25.2 26.1 27.1
  SAY #19198 /* ~"Ouais ? C'est la première fois que j'te vois, bige." Il renifle. "Ça fait un moment que je suis ici. Le droit du premier arrivé, tu connais ? Hein ?"~ */
  IF ~~ THEN REPLY #19199 /* ~"Ouais, et bien, je suis là depuis longtemps moi aussi. Tu n'as peut-être pas bien regardé."~ */ GOTO 43
  IF ~~ THEN REPLY #19200 /* ~"Quoi ?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19201 /* ~"Tu cherches des ennuis, bige, j'ai Pharod de mon côté… Et toi ? T'as rien que tes cicatrices."~ */
  IF ~~ THEN REPLY #19202 /* ~"Tu veux te battre ou faire des affaires ?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19203 /* ~"Peu importe. Réponds juste à quelques questions."~ */ GOTO 14
  IF ~~ THEN REPLY #19204 /* ~"Je n'ai rien à te dire."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY #19205 /* ~"Hé bige, t'es sourd ou stupide ? C'est l'droit du premier arrivé ici, j'te dis. Je négocie, toi pas… ou avec moi seulement. Compris ?"~ */
  IF ~~ THEN REPLY #19206 /* ~"Tu veux te battre ou faire des affaires ?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19207 /* ~"Peu importe. Réponds juste à quelques questions."~ */ GOTO 14
  IF ~~ THEN REPLY #19208 /* ~"Je n'ai rien à te dire."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.0 44.0
  SAY #19209 /* ~"On négocie, OK ? J'suis un marchand, pas un lutteur." Il renifle.~ */
  IF ~~ THEN REPLY #19210 /* ~"Alors, traitons ensemble."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19211 /* ~"Réponds d'abord à quelques questions…"~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 14.1
  SAY #19212 /* ~"J'attends que Marta et Pharod me donnent la marchandise."~ */
  IF ~~ THEN REPLY #19213 /* ~"Marta ?"~ */ GOTO 20
  IF ~~ THEN REPLY #19214 /* ~"Pharod ?"~ */ GOTO 17
  IF ~~ THEN REPLY #19215 /* ~"Quelles marchandises ?"~ */ GOTO 47
  IF ~~ THEN REPLY #19216 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19217 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.2
  SAY #19218 /* ~"Ce qui reste du creusement des tombes dans les catacombes."~ */
  IF ~~ THEN REPLY #19219 /* ~"Quel reste ?"~ */ GOTO 48
  IF ~~ THEN REPLY #19220 /* ~"Les catacombes ?"~ */ GOTO 49
  IF ~~ THEN REPLY #19221 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19222 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0 49.0
  SAY #19223 /* ~"Des dents, des fils de suture, des morceaux qu'ils ramassent dans les corps, des pièces de cuivre qu'ils trouvent dans les bandes. Les gens en donnent plus que tu crois, hein ?"~ */
  IF ~~ THEN REPLY #19224 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #19225 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #19226 /* ~"Sous le village. Beaucoup de nouveaux corps et de vieilles cryptes dans cet endroit, 'cause que personne ne pouvait y aller. Ce village, ce village… ils sont peu à le connaître. Encore moins à connaître le saut facile jusqu'aux catacombes et tous ces morts dessous…" Il claque des lèvres avidement. "Territoire vierge, hein ?"~ */
  IF ~~ THEN REPLY #19227 /* ~"Bien sûr. Parle-moi des restes…"~ */ GOTO 48
  IF ~~ THEN REPLY #19228 /* ~"Bien sûr. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #19229 /* ~"Bien sûr. Au revoir."~ */ EXIT
END
