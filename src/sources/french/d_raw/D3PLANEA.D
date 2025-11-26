// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D3PLANEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D3PLANEA~

IF ~~ THEN BEGIN 0 // from: 11.0
  SAY #2949 /* ~"Je suis *connu* sous le nom de Trois-Plans-Alignés, et je suis un intellectuel githzeraï. Si tu es venu assister à mon cours, il débute dans un instant."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 476
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45030 /* ~Continue à écouter.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45031 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #45032 /* ~Son ton est grave et maussade. "J'évoquerai aujourd'hui la force des alignements et des croyances, et en quoi ils façonnent les plans."

"Pour commencer, je vais expliquer ce qu'est un alignement."~ */
  IF ~~ THEN REPLY #45033 /* ~Continue à écouter.~ */ GOTO 2
  IF ~~ THEN REPLY #45034 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #45035 /* ~"L'alignement est une description des croyances de chacun et de la manière dont on les aborde. Si l'on veut schématiser, on peut dire que toutes les créatures se comportent de trois façons différentes : elles peuvent être motivées par le bien ou par le mal, mais aussi rester indifférentes (ou neutres). Cette tendance peut ensuite s'exprimer de manière ordonnée, chaotique ou neutre. Les différentes combinaisons possibles donnent donc un total de neuf alignements distincts."~ */
  IF ~~ THEN REPLY #45036 /* ~Continue à écouter.~ */ GOTO 3
  IF ~~ THEN REPLY #45037 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45038 /* ~"Ces alignements sont loyal bon, neutre bon, chaotique bon, loyal neutre, neutre absolu, chaotique neutre, loyal mauvais, neutre mauvais et chaotique mauvais."

"Je vais maintenant évoquer la force de l'alignement et les croyances qu'il engendre. C'est grâce à lui que les dieux eux-mêmes gagnent en puissance et que les croyances peuvent directement affecter l'environnement."~ */
  IF ~~ THEN REPLY #45039 /* ~Continue à écouter.~ */ GOTO 4
  IF ~~ THEN REPLY #45040 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45041 /* ~"Les dieux doivent avoir des fidèles, car c'est de la foi de ces derniers qu'ils tirent leur force. Plus un dieu a de gens qui croient en lui, plus sa puissance grandit."

"À l'inverse, lorsqu'une divinité n'attire plus personne, elle finit par dépérir et par mourir, rejoignant ainsi celles qui, défuntes, dérivent dans le Plan Astral. Il est donc possible de tuer les dieux, en oubliant qu'ils existent."~ */
  IF ~~ THEN REPLY #45042 /* ~Continue à écouter.~ */ GOTO 5
  IF ~~ THEN REPLY #45043 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45044 /* ~"Mais la force des alignements et des croyances est plus évidente encore lorsque l'on se penche sur le cas des villes-portails."

"Commençons d'abord par définir ce terme."~ */
  IF ~~ THEN REPLY #45045 /* ~Continue à écouter.~ */ GOTO 6
  IF ~~ THEN REPLY #45046 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45047 /* ~"Les villes-portails sont des cités d'Outreterre, ce plan majoritairement neutre au centre duquel se trouve Sigil. On les nomme ainsi car chacune s'articule autour d'un portail permanent conduisant dans l'un des Plans Extérieurs."~ */
  IF ~~ THEN REPLY #45048 /* ~Continue à écouter.~ */ GOTO 7
  IF ~~ THEN REPLY #45049 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45050 /* ~"Chacun de ces Plans Extérieurs a un alignement qui lui est propre. Ainsi, les Abysses sont chaotiques mauvaises, Baator est loyal mauvais, Méchanus est loyal neutre et le Mont Céleste est loyal bon. Comme je l'ai déjà dit, l'Outreterre est neutre, c'est-à-dire qu'elle ne penche ni vers le bien ni vers le mal."

"Un 'glissement' a lieu lorsqu'un alignement différent se concentre dans une région donnée. Quand cela se produit, la région en question se déplace (on dit alors qu'elle glisse) jusqu'à un plan correspondant aux nouvelles croyances de ses occupants."~ */
  IF ~~ THEN REPLY #45051 /* ~Continue à écouter.~ */ GOTO 8
  IF ~~ THEN REPLY #45052 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45053 /* ~"En règle générale, les croyances des habitants des villes-portails sont très proches de celles du Plan Extérieur avec lequel elles sont reliées, mais pas suffisamment pour qu'un glissement se produise."

"Par exemple, Thorace est située en bordure d'un portail menant à Baator. Les habitants de la ville sont donc majoritairement d'alignement loyal mauvais, mais les croyances de la cité ne sont pas suffisantes pour provoquer son glissement jusqu'à Baator."~ */
  IF ~~ THEN REPLY #45054 /* ~Continue à écouter.~ */ GOTO 9
  IF ~~ THEN REPLY #45055 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45056 /* ~"Mais imaginons qu'un jour, des prêtres loyaux mauvais prennent l'ascendant à Thorace et convertissent une grande partie de la population au culte de leur dieu. Il y aurait alors de fortes chances que la ville glisse et quitte la neutralité de l'Outreterre pour aller faire partie de Baator."

"Des niveaux entiers peuvent se déplacer de cette façon. Il en découle nécessairement que nombres de guerres planaires s'articulent autour de questions religieuses. Ce sont en effet ces dernières qui déterminent la répartition des plans."~ */
  IF ~~ THEN REPLY #45057 /* ~Continue à écouter.~ */ GOTO 10
  IF ~~ THEN REPLY #45058 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45059 /* ~"Vous comprenez désormais quelle est la force des alignements et des croyances. Notre leçon est terminée pour aujourd'hui."

"Puisse votre foi guider vos actes et façonner les plans à votre gré. Bonne journée à tous."~ */
  IF ~~ THEN REPLY #45060 /* ~Pars.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~  True()
~ THEN BEGIN 11 // from:
  SAY #45061 /* ~Grand et émacié, l'homme a les traits durs et sa peau jaunâtre est couverte de tatouages. Il toise froidement l'assemblée de ses yeux noirs. Il a l'air de tenir une conférence.~ */
  IF ~~ THEN REPLY #45063 /* ~Reste pour la conférence.~ */ GOTO 0
  IF ~~ THEN REPLY #49738 /* ~Pars.~ */ EXIT
END
