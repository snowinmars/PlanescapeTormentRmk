// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHAD~

IF ~  True()
~ THEN BEGIN 0 // from: 65.0
  SAY #2945 /* ~"Bienvenue, Sigiliens ! Prenez place et écoutez les 'soltifs' que je vais vous révéler !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ EXTERN ~DMORTE~ 299
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2946 /* ~Écoute.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32106 /* ~Arrête d'écouter, pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32107 /* ~Il commence à parler d'un ton morbide : "La mort. C'est ce qui vous attend à la fin du périple de votre vie." Il tousse légèrement, puis hausse les sourcils dans un geste dramatique, agitant en même temps la main : "La mort n'est *pas* une fin ! C'est un commencement !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 300
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32108 /* ~Continue à écouter.~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32109 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #32110 /* ~"Car lorsque vous mourrez, vous ne cesserez pas d'exister ! Loin de là ! Les Plans Extérieurs vous accueilleront en leur sein ! Là-bas, une nouvelle vie… une vie que personne n'a *jamais* connue, vous attend !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 301
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32111 /* ~Continue à écouter.~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32112 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #32113 /* ~"Vous devriez vous débarrasser de cette vie de misère et devenir l'un des pieux, un suppliant ! En tant que *suppliant* dans ce Plan Extérieur, le périple de votre vie commencera *véritablement* !"~ */
  IF ~~ THEN REPLY #32115 /* ~Continue à écouter.~ */ GOTO 4
  IF ~~ THEN REPLY #32114 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32116 /* ~"Si vous vous êtes comportés en bon citoyen, résolu à la charité et à la bonté envers les autres affranchis, peut-être que les collines blanches du Mont Céleste vous accueilleront après votre mort. Votre esprit continuera son cheminement jusqu'à cet endroit et s'installera comme suppliant dans la beauté des matins dorés, de la caresse du doux soleil…" Il soupire d'un air rêveur.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 302
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32117 /* ~Continue à écouter.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32118 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #32119 /* ~"Peut-être avez-vous vécu votre vie en trahissant les autres pour progresser, répandant le mensonge au lieu de la vérité, frappant les autres dans leur dos, tout cela pour pouvoir accomplir vos propres désirs. Froid et rouge sanglant, les Carcères, le plan où tous les renégats se retrouvent lorsqu'ils périssent, sera la cage qui vous retiendra prisonnier. En tant que suppliant dans ce plan, vous vivrez une vie à trahir et être trahi, à mystifier et à être mystifié, une vie sans confiance."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 303
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32120 /* ~Continue à écouter.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32121 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #32122 /* ~Il se penche, ses yeux dardant d'avant en arrière. "Et *peut-être* avez-vous vécu une vie de démon assoiffé de sang, méprisant les autres humains, rabaissant les autres et faisant selon votre gré, sans prêter attention à qui ou quoi vous pouviez causer du mal…"~ */
  IF ~~ THEN REPLY #32123 /* ~Continue à écouter.~ */ GOTO 7
  IF ~~ THEN REPLY #32124 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32125 /* ~"… alors peut-être que ce sera l'un des Plans Inférieurs - Baator, ou les couches tourbillonnantes des Abysses - qui vous accueilleront ! Diaboliques jusqu'au plus *profond* sont les esprits qui viennent de ce plan, et la plupart sont condamnés à des cruautés et souffrances incroyables ou à la servitude dans…" - il murmure d'un ton dramatique - "… la Guerre Sanglante."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 304
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32126 /* ~Continue à écouter.~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32127 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #32128 /* ~"Quel que soit l'endroit où vous alliez, sachez ceci : vous vous embarquez dans une *nouvelle* vie. Une nouvelle vie, Sigiliens !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 305
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32129 /* ~Continue à écouter.~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32130 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #32131 /* ~"Vous pourrez tout recommencer, sans le fardeau du souvenir de votre vie précédente. Le but de votre 'âme', si vous préférez…" Il sourit de son propre humour. "Est de *fusionner* avec ce nouveau plan sur lequel vous vous trouvez, et de ne faire *qu'un* avec les idéaux et la substance même du Plan !"~ */
  IF ~~ THEN REPLY #32132 /* ~Continue à écouter.~ */ GOTO 10
  IF ~~ THEN REPLY #32133 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32134 /* ~"Tu seras l'un des habitants, les suppliants, qui peuplent ce plan, ou plutôt l'une des composantes sur lesquelles repose ce plan ! C'est le but de *tous* les suppliants ! Pour l'atteindre, vous…" Il frappe des mains pour accentuer ses propos… "… DEVEZ *clap !* RESTER *clap !* FIDÈLES *clap !* À VOS *clap !* IDÉAUX !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 306
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32135 /* ~Continue à écouter.~ */ GOTO 11
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32136 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #32137 /* ~"Vos idéaux ! Bien ou mal, loi ou chaos, ou quelque chose d'intermédiaire ! Alors que vous approcherez de l'alignement du Plan, votre périple se terminera et vous deviendrez partie intégrante… du… plan… *même* ! C'est une existence glorieuse, Sigiliens !"~ */
  IF ~~ THEN REPLY #32138 /* ~Continue à écouter.~ */ GOTO 12
  IF ~~ THEN REPLY #32139 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #32140 /* ~"Et c'est ce qui vous attend *après* la 'mort', mes amis ! Faites attention à la manière dont vous vivez votre vie, mais sachez que ce n'est *pas* l'oubli qui vous attend après cette vie !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 307
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32141 /* ~Continue à écouter.~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32142 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #32143 /* ~"Bien, je vais tâcher de répondre à vos questions. Oui ?"~ */
  IF ~~ THEN REPLY #32144 /* ~"J'ai une question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32145 /* ~Attends en silence.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 16.1
  SAY #32146 /* ~"S'il n'y a pas de questions, je vais alors prendre congé… pour l'instant. Je reviendrai m'adresser à vous ici, à la Salle des Fêtes, et peut-être qu'un jour, dans des années… Je *vous* rencontrerai, suppliants au-delà des portes de la mort !"~ */
  IF ~~ THEN REPLY #32147 /* ~Quitte la salle de conférences.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32148 /* ~L'orateur tourne la tête pour faire face à Morte, en fronçant légèrement les sourcils. Il tend la tête, essayant de découvrir qui vient de parler. "Une question ? Une question de la part de l'un des vivants, peut-être ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 308
END

IF ~~ THEN BEGIN 16 // from:
  SAY #32149 /* ~Il fait un signe de tête satisfait, comme s'il t'avait remis à ta place. "Très bien. Maintenant, je tâcherai de répondre à vos questions. Oui ?"~ */
  IF ~~ THEN REPLY #32150 /* ~"J'ai une question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32151 /* ~Attends en silence.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 13.0 16.0 19.1 20.0 22.0 23.0 24.2 25.2 26.2 27.0 28.1 29.2 30.1 31.3 32.1 35.0 36.0 37.0 38.2 39.2 40.1 42.1 43.0 44.0 45.1 46.1 52.0 53.0 54.0 55.4 56.0 57.0 58.0 59.0
  SAY #32152 /* ~Il te fait signe de continuer.~ */
  IF ~~ THEN REPLY #64426 /* ~"C'est quoi, un suppliant ?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Un suppliant peut-il mourir ?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Pourquoi les suppliants perdent-ils la mémoire ?"~ */ GOTO 28
  IF ~~ THEN REPLY #32153 /* ~"Qu'est-ce qui détermine le plan auquel on accède quand on meurt ?"~ */ GOTO 19
  IF ~~ THEN REPLY #32157 /* ~"Et si quelqu'un ne peut pas mourir ?"~ */ GOTO 39
  IF ~~ THEN REPLY #32158 /* ~"Explique-moi ce qu'est l''alignement'."~ */ GOTO 43
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #32159 /* ~"Les Hommes-Poussière disent qu'on accède à *cette* vie quand on meurt."~ */ GOTO 44
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32160 /* ~"Prouve que ce que tu dis est vrai."~ */ GOTO 45
  IF ~~ THEN REPLY #32161 /* ~"Parle-moi de la Guerre Sanglante."~ */ GOTO 54
  IF ~~ THEN REPLY #32162 /* ~"Je voulais te poser une question sur un des plans dont tu as parlé."~ */ GOTO 55
  IF ~~ THEN REPLY #32163 /* ~"En fait, peu importe. Je n'ai pas de question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.10 19.2 20.1 22.1 23.1 24.3 25.3 26.3 27.1 28.2 29.3 30.2 31.4 32.2 35.1 36.1 37.1 38.3 39.3 40.2 42.2 43.1 44.1 45.2 46.2 52.1 53.1 54.1 55.5 56.1 57.1 58.1 59.1 66.4
  SAY #32164 /* ~"S'il n'y a plus de questions…?"~ */
  IF ~  Global("Deaths_Adv","GLOBAL",1)
~ THEN REPLY #32165 /* ~Prépare-toi à partir.~ */ GOTO 60
  IF ~  Global("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32166 /* ~Prépare-toi à partir.~ */ GOTO 61
  IF ~  Global("Deaths_Adv","GLOBAL",3)
~ THEN REPLY #32167 /* ~Prépare-toi à partir.~ */ GOTO 62
END

IF ~~ THEN BEGIN 19 // from: 17.3 66.0
  SAY #32168 /* ~"Ton alignement, bien sûr ! Les bonnes personnes sont destinées aux Plan Supérieurs, et les *mauvaises* personnes terminent dans les Plans Inférieurs…" Il ouvre grand les yeux, portant la main à son cœur d'un geste dramatique. "… que les Puissances aient pitié de leurs âmes."~ */
  IF ~~ THEN REPLY #32169 /* ~"Où vont les gens neutres ?"~ */ GOTO 20
  IF ~~ THEN REPLY #32170 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32171 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32172 /* ~Il hausse les sourcils. "Une excellente, excellente question !" Il se retourne vers l'assemblée, levant le doigt. "Voici la réponse : un esprit ayant vécu une vie entière de totale neutralité, sans disposition particulière pour le bien ou le mal, deviendra un suppliant dans l'*Outreterre*, les territoires qui entourent Sigil. Ils ne sont destinés à aucun plan, excepté celui qui s'étend au-delà de notre ciel, et dont l'Aiguille fait partie."~ */
  IF ~~ THEN REPLY #32173 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32174 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 17.0 66.1
  SAY #32175 /* ~"Vous devenez des suppliants à votre arrivée dans ce plan, après votre mort. En tant que suppliant, vous abandonnez vos vies passées, en vous concentrant seulement sur la nouvelle. Et le but de celle-ci est… ?" Il attend une réponse de ta part, un sourire aux lèvres.~ */
  IF ~~ THEN REPLY #32176 /* ~"De fusionner avec le Plan."~ */ GOTO 22
  IF ~~ THEN REPLY #32177 /* ~"Réponds toi-même à ta question. Inutile d'essayer de me tester."~ */ GOTO 23
  IF ~~ THEN REPLY #32178 /* ~"Prends pas ce ton condescendant avec moi, bougre."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32179 /* ~"Très bien ! Il semble que certains de mes propos aient réussi à trouver place dans ton crâne !" Un rire secoue les spectateurs.~ */
  IF ~~ THEN REPLY #32180 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32182 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 21.1 21.2
  SAY #32183 /* ~"Hmph. Dans ce cas, reste dans l'ignorance."~ */
  IF ~~ THEN REPLY #32185 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32186 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 17.1 66.2
  SAY #32188 /* ~Il semble légèrement embarrassé. "Eh bien… oui."~ */
  IF ~~ THEN REPLY #32190 /* ~"Comment ça ?"~ */ GOTO 25
  IF ~~ THEN REPLY #32192 /* ~"Qu'est-ce qui se passe quand ils meurent ?"~ */ GOTO 26
  IF ~~ THEN REPLY #32193 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32194 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1
  SAY #32197 /* ~Il paraît encore un petit peu plus embarrassé. "Eh bien… par n'importe lequel des moyens normaux, en vérité."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 309
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32198 /* ~"Qu'est-ce qui se passe quand ils meurent ?"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32199 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32201 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.1
  SAY #32203 /* ~Il paraît encore un petit peu plus embarrassé. "Eh bien… tu fusionnes avec le Plan."~ */
  IF ~~ THEN REPLY #32204 /* ~"Et si le suppliant meurt sur un autre plan que son plan natal ?"~ */ GOTO 27
  IF ~~ THEN REPLY #32205 /* ~"Et comment est-ce qu'ils peuvent mourir ?"~ */ GOTO 25
  IF ~~ THEN REPLY #32207 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32208 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32209 /* ~Il paraît très embarrassé. "Heu… eh bien, *ça*, c'est la fin de la vie, là-bas… hum, mais aucun suppliant ne voudrait quitter le plan dans lequel il vit, l'ami !" Il regarde aux alentours, réalisant qu'il a été piégé. "S'ils mouraient, euh, ils tomberaient dans l'oubli, en vérité."~ */
  IF ~~ THEN REPLY #32210 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32212 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 17.2 66.3
  SAY #32213 /* ~Il hausse les sourcils. "Je te demande pardon ? Quoi ?"~ */
  IF ~~ THEN REPLY #32214 /* ~"J'ai *dit*, pourquoi est-ce que les suppliants perdent la mémoire en mourant ?"~ */ GOTO 29
  IF ~~ THEN REPLY #32216 /* ~"Laisse tomber. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32217 /* ~"Peu importe. Je n'ai pas de question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #32219 /* ~Il paraît embarrassé. "Hé… bien, tu sais, qui voudrait s'encombrer du fardeau de tels souvenirs ?" Un murmure parcourt l'assistance.~ */
  IF ~~ THEN REPLY #32220 /* ~"Moi."~ */ GOTO 30
  IF ~~ THEN REPLY #32221 /* ~"Mais *pourquoi* est-ce qu'ils perdent la mémoire ?"~ */ GOTO 31
  IF ~~ THEN REPLY #32222 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32223 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #32224 /* ~L'orateur sourit d'un air narquois. "À te regarder, je ne me demande pas pourquoi !" Un rire secoue les spectateurs.~ */
  IF ~~ THEN REPLY #32225 /* ~"Alors, *pourquoi* est-ce qu'ils perdent la mémoire ?"~ */ GOTO 31
  IF ~~ THEN REPLY #32226 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32227 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0
  SAY #32228 /* ~"Je…" Il fronce les sourcils, va pour parler, puis se ravise. Au bout d'un moment, il continue, choisissant avec précaution ses mots. "J'imagine que c'est pour cela que vous devez redémarrer à zéro, avec une âme pure de suppliant, lorsque vous arrivez dans votre nouveau Plan."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32229 /* ~"Mais pourquoi, alors que toutes les expériences de nos vie ont déterminé à quel Plan on va accéder ?"~ */ GOTO 32
  IF ~~ THEN REPLY #32231 /* ~"Ce n'est pas une réponse."~ */ GOTO 33
  IF ~~ THEN REPLY #32232 /* ~"C'est… affreux. Comme une mauvaise blague."~ */ GOTO 38
  IF ~~ THEN REPLY #32233 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32235 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #32236 /* ~Il paraît très embarrassé. "Eh bien… je…" Il s'arrête. "Hmm. Je ne sais pas."~ */
  IF ~~ THEN REPLY #32237 /* ~"Ce n'est pas une réponse."~ */ GOTO 33
  IF ~~ THEN REPLY #32238 /* ~"Bon… J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32239 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0 38.1
  SAY #32240 /* ~Il s'agace légèrement. "As-tu une *meilleure* réponse, l'ami ? Peut-être peux-tu la partager avec nous ?" Les spectateurs se tournent pour te faire face.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #32241 /* ~"Je ne me souviens pas où, ni quand ça s'est passé, mais je crois avoir entendu dire que les souvenirs dérivent sur le Plan Astral, comme des 'noyaux de mémoire'."~ */ GOTO 34
  IF ~~ THEN REPLY #32242 /* ~"Non…"~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32243 /* ~L'un des spectateurs s'écrie : "Il a raison !"

L'orateur se tourne pour faire face au spectateur. "Eh bien, peut-être qu'il a raison. Dans ce cas-là, la question est : une vie de souvenirs est-elle plus importante que de vivre une nouvelle vie ?"~ */
  IF ~~ THEN REPLY #32244 /* ~Vérité : "Oui."~ */ GOTO 35
  IF ~~ THEN REPLY #32245 /* ~Vérité : "Non."~ */ GOTO 36
  IF ~~ THEN REPLY #32246 /* ~"Je ne sais pas."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #32247 /* ~Il répond avec colère : "Alors c'est très simple : ne meurs pas, l'ami." Un rire secoue les badauds.~ */
  IF ~~ THEN REPLY #32248 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32249 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #32250 /* ~Il fait une demi-révérence grossière : "Et voilà, dans ce cas !"~ */
  IF ~~ THEN REPLY #32251 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32252 /* ~"Je suppose. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 37 // from: 34.2 41.1 47.1
  SAY #32253 /* ~Il ricane. "Je *pensais* bien que cela serait ta réponse."~ */
  IF ~~ THEN REPLY #32254 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32255 /* ~"Je n'ai pas d'autre question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 38 // from: 31.2
  SAY #32256 /* ~"Mais comparé à la vie qui t'attend sur le nouveau Plan, c'est insignifiant !"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32257 /* ~"Mais pourquoi, alors que toutes les expériences de nos vie ont déterminé à quel Plan on va accéder ?"~ */ GOTO 32
  IF ~~ THEN REPLY #32258 /* ~"Ce n'est pas une réponse."~ */ GOTO 33
  IF ~~ THEN REPLY #32259 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32260 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 39 // from: 17.4
  SAY #32261 /* ~Il rit. "Foutaises ! Tout le monde *meurt*, l'ami. Même les dieux meurent."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32262 /* ~"Moi, je ne peux pas mourir."~ */ GOTO 40
  IF ~~ THEN REPLY #32263 /* ~"Mais *suppose* que quelqu'un ne puisse pas mourir."~ */ GOTO 42
  IF ~~ THEN REPLY #32264 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32265 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 42.0
  SAY #32266 /* ~"Oh, vraiment ! Regardez tous, nous sommes bénis : l'un des grands immortels nous fait grâce de sa présence ! Bienvenue à toi, ô immortel !" Les spectateurs se mettent à rire.~ */
  IF ~~ THEN REPLY #32267 /* ~"Je peux le prouver."~ */ GOTO 41
  IF ~~ THEN REPLY #32268 /* ~"Laisse tomber. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32269 /* ~"Peu importe. Je n'ai plus de questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #32270 /* ~"Oh, fais-le ! Fais-le !" Les spectateurs se mettent à rire de plus belle. "Quel jeu ! Prenez note, chers spectateurs. Je crois que mon discours va être assez intéressant aujourd'hui ! Viens ici, ô immortel, et nous verrons qui a raison et qui est mort !"~ */
  IF ~~ THEN REPLY #32271 /* ~Tue-toi, puis relève-toi.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",1)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32272 /* ~"En fait, laisse tomber."~ */ GOTO 37
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #32273 /* ~"Eh bien, d'après ce que j'ai *dit*, il n'atteindrait jamais les Plans Extérieurs et ne deviendrait jamais un suppliant."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32274 /* ~"Moi, je ne peux pas mourir."~ */ GOTO 40
  IF ~~ THEN REPLY #32275 /* ~"Hmm. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32276 /* ~"Je vois. Et bien, c'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 43 // from: 17.5
  SAY #32277 /* ~"Pardonnez-moi si je ne me suis pas fait comprendre de mes auditeurs : L''alignement' correspond à vos dispositions spirituelles : bien ou mal, loi ou chaos. L'alignement, c'est la manière dont vous vous *comportez*. Et elle est importante ! La manière dont vous abordez la vie décide de votre destination après votre mort."~ */
  IF ~~ THEN REPLY #32278 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32279 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 44 // from: 17.6
  SAY #32280 /* ~L'orateur glousse avec dérision… certains membres de l'assistance gloussent aussi. "Il y a un nombre infini de suppliants, l'ami, dont des *Hommes-Poussière*, qui ne seraient pas d'accord avec leur… philosophie.'"~ */
  IF ~~ THEN REPLY #32281 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32282 /* ~"C'est tout ce que je voulais savoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 45 // from: 17.7
  SAY #32283 /* ~"Hein ?" L'orateur semble décontenancé. "Et comment tu veux que je le prouve ?"~ */
  IF ~~ THEN REPLY #32284 /* ~"Meure. Ici. Tout de suite."~ */ GOTO 46
  IF ~~ THEN REPLY #32285 /* ~"Laisse tomber. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32286 /* ~"Peu importe. Je n'ai plus de questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32287 /* ~Les badauds se taisent. Sentant la pression sur lui, l'orateur déglutit. "Eh bien…" Il sourit soudainement avec dédain. "Si tu le fais le premier, je te suis." Les spectateurs se mettent à glousser.~ */
  IF ~~ THEN REPLY #32288 /* ~"D'accord."~ */ GOTO 47
  IF ~~ THEN REPLY #32289 /* ~"Laisse tomber. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32290 /* ~"Peu importe. Je n'ai plus de questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32291 /* ~"Très bien !" Le visage de l'orateur est de pierre pendant un instant, puis il s'éclaire. "Viens sur la scène, l'ami !" Il se retourne vers les spectateurs, souriant. "Une rareté, Sigiliens ! Aujourd'hui - et aujourd'hui seulement - nous allons voir comment on devient suppliant."~ */
  IF ~~ THEN REPLY #32292 /* ~Tue-toi, puis relève-toi.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",2)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32293 /* ~"En fait, laisse tomber."~ */ GOTO 37
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #32294 /* ~L'orateur blêmit et recule d'un pas. "Par les Puissances… !"~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32295 /* ~"Je crois que c'est à *ton* tour, maintenant…"~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32296 /* ~"À ton tour."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32297 /* ~Souris-lui.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 48.2
  SAY #32298 /* ~"Euh…" Les spectateurs observent la scène avec une fascination morbide. "Eh bien…"~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32299 /* ~"Allez, meure. Ici. Tout de suite. Prouve-nous que ce que tu dis est vrai. Entre dans ta vie de suppliant."~ */ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32300 /* ~Bluff : "Tue-toi ou c'est moi qui m'en charge."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_DA_1","GLOBALLaw",-1)
~ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32301 /* ~Vérité : "Tue-toi ou c'est moi qui m'en charge."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-1)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2
  SAY #32302 /* ~Il déglutit. "Maintenant… euh… hmmmn." Il parle d'une toute petite voix : "Hé. Je dois avouer que je ne suis pas *vraiment* prêt à quitter cette vie."~ */
  IF ~~ THEN REPLY #32303 /* ~Tue-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-2)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
SetGlobal("Death_Lecture","GLOBAL",4)
SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32304 /* ~Fais semblant de le tuer, mais arrête-toi tout près de sa nuque.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",3)
~ GOTO 51
  IF ~~ THEN REPLY #32305 /* ~"Alors, cette nouvelle vie fantastique sur les Plans Extérieurs ne serait pas aussi prometteuse qu'elle est censée l'être ?"~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #32306 /* ~"C'est bien ce que je *pensais*, espèce de charlatan pompeux et vantard."~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #32307 /* ~L'orateur recule, ferme les yeux et hurle… tu entends un bruit d'eau, alors qu'il souille ses vêtements.~ */
  IF ~~ THEN REPLY #32308 /* ~"Alors, cette nouvelle vie fantastique sur les Plans Extérieurs ne serait pas aussi prometteuse qu'elle est censée l'être ?"~ */ GOTO 52
  IF ~~ THEN REPLY #32309 /* ~"C'est bien ce que je *pensais*, espèce de charlatan pompeux et vantard."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.2 51.0
  SAY #32310 /* ~L'orateur se rend compte de son hypocrisie, mais il est trop effrayé par l'autre possibilité. "Peut-être que non. Euh." Il jette un coup d'œil rapide aux spectateurs. "Eh… bien. Certes pas *maintenant*."~ */
  IF ~~ THEN REPLY #32311 /* ~"C'est ce que je pensais. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32312 /* ~"C'est bien ce que je pensais. Je n'ai plus de questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 53 // from: 50.3 51.1
  SAY #32313 /* ~"Euh… oui." L'orateur paraît intimidé, et baisse le ton, défait. "Hmmmn. Oui."~ */
  IF ~~ THEN REPLY #32314 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32315 /* ~"Je n'ai pas d'autre question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 17.8
  SAY #32316 /* ~"N'as-tu jamais entendu parler de cela, ô béjaune ? La guerre entre les baatezus et les tanar'ris ? Il me faudrait des siècles pour décrire ce conflit. Renseigne-toi auprès de quelqu'un d'autre, car ce n'est pas le sujet de cette conférence."~ */
  IF ~~ THEN REPLY #32317 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32318 /* ~"Je n'ai pas d'autre question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 55 // from: 17.9
  SAY #32319 /* ~"Oh ? Lequel ?"~ */
  IF ~~ THEN REPLY #32320 /* ~"Les Abysses…"~ */ GOTO 56
  IF ~~ THEN REPLY #32321 /* ~"Baator…"~ */ GOTO 57
  IF ~~ THEN REPLY #32322 /* ~"Les Carcères…"~ */ GOTO 58
  IF ~~ THEN REPLY #32323 /* ~"Le Mont Céleste…"~ */ GOTO 59
  IF ~~ THEN REPLY #32324 /* ~"Peu importe. J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32325 /* ~"En fait, laisse tomber. Je n'ai plus de questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #32326 /* ~"Un plan de plus de six cents couches de mal et de chaos suppurants. Domaine des fiélons tanar'ris !" Il gesticule de façon théâtrale. "Mais tu devrais essayer de trouver quelqu'un qui connaît mieux les plans que moi."~ */
  IF ~~ THEN REPLY #32327 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32328 /* ~"Je n'ai pas d'autre question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #32329 /* ~"Neuf plans de mal organisé." Il glousse et gesticule de façon théâtrale. "Domaine des fiélons baatezus ! Signe une contrat avec eux, et tu seras prisonnier des chaînes de leurs complots pour toute ta vie !" Il sourit. "Mais tu devrais essayer de trouver quelqu'un qui connaît mieux les plans que moi."~ */
  IF ~~ THEN REPLY #32330 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32331 /* ~"Je n'ai pas d'autre question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #32332 /* ~"Le plan prison, froid, brutal et tout de rouge. Les traîtres et les menteurs en font leur refuge… On dit que les titans ont été emprisonnés là-bas après avoir été chassés de l'Olympe !" Il gesticule de façon théâtrale. "Mais tu devrais essayer de trouver quelqu'un qui connaît mieux les Plans que moi."~ */
  IF ~~ THEN REPLY #32333 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32334 /* ~"Je n'ai pas d'autre question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 59 // from: 55.3
  SAY #32335 /* ~"Le Mont Céleste, un plan de bonté et de foi éternelles." Il joint les mains dans un geste de prière. "Où les êtres divins volent dans le ciel, où les puissants règnent avec honneur et noblesse… le modèle même de la bonté !" Il sourit. "Mais tu devrais essayer de trouver quelqu'un qui connaît mieux les Plans que moi."~ */
  IF ~~ THEN REPLY #32336 /* ~"J'ai une autre question…"~ */ GOTO 17
  IF ~~ THEN REPLY #32337 /* ~"Je n'ai pas d'autre question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 60 // from: 18.0
  SAY #32338 /* ~"…je vais alors prendre congé… pour l'instant. Je reviendrai m'adresser à vous ici, à la Salle des Fêtes, et peut-être qu'un jour, dans des années… Je *vous* rencontrerai, suppliants au-delà des portes de la mort !"~ */
  IF ~~ THEN REPLY #32339 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 18.1
  SAY #32340 /* ~Il semble pressé d'en finir. "… Je vais donc clore cette session… hum, je reviendrai parler ici, à la Salle des Fêtes, alors… euh… préviens tous tes amis."~ */
  IF ~~ THEN REPLY #32341 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 18.2
  SAY #32342 /* ~Il semble pressé d'en finir. "… Je vais donc clore cette session… hum, je reviendrai parler ici, à la Salle des Fêtes, alors… euh… préviens tous tes amis."~ */
  IF ~~ THEN REPLY #32343 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #32344 /* ~Quelqu'un dans l'assistance s'écrie : "C'est ça ! Pour te voir encore souiller ta tunique !" La salle s'emplit de rires…~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #32345 /* ~"Euh… hmm."~ */
  IF ~~ THEN REPLY #32346 /* ~Pars.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49450 /* ~Ce petit homme trapu a un air suffisant. On dirait qu'il est en train de donner une conférence.~ */
  IF ~~ THEN REPLY #49451 /* ~Reste pour la conférence.~ */ GOTO 0
  IF ~~ THEN REPLY #49452 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #64424 /* ~"Eh ! bien, vas-y…"~ */
  IF ~~ THEN REPLY #64425 /* ~"Qu'est-ce qui détermine sur quel plan ils apparaissent après leur mort ?"~ */ GOTO 19
  IF ~~ THEN REPLY #64426 /* ~"C'est quoi, un suppliant ?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Un suppliant peut-il mourir ?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Pourquoi les suppliants perdent-ils la mémoire ?"~ */ GOTO 28
  IF ~~ THEN REPLY #64429 /* ~"Aucune importance. Je n'ai pas de question."~ */ GOTO 18
END
