// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIRI~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #59069 /* ~Tu vois une jolie jeune femme. Son visage est rougi et couvert d'hématomes et ses cheveux sont en bataille. Ses beaux vêtements sont par endroits déchirés. Elle marche prudemment dans les rues et par moments, elle regarde par-dessus son épaule.~ */
  IF ~~ THEN REPLY #59070 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #59071 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #59072 /* ~En entendant ton bonjour, elle sursaute et se retourne brusquement pour te regarder. Alors qu'elle parcourt du regard tes cicatrices, un éclair d'inquiétude traverse son visage. "Bonjour, matois. Je m'appelle Kiri, qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #59073 /* ~"Tu sembles nerveuse, qu'est-ce qui ne va pas ?"~ */ GOTO 2
  IF ~~ THEN REPLY #59074 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #59075 /* ~Elle fronce les sourcils, puis hausse les épaules. "Il y a des gens ici qui ne m'aiment pas. Je fais de mon mieux pour les éviter."~ */
  IF ~~ THEN REPLY #59076 /* ~"Pourquoi est-ce qu'ils ne t'aiment pas ?"~ */ GOTO 3
  IF ~~ THEN REPLY #59077 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #59078 /* ~"Je suis une catin. Je suis jeune, jolie et… assez douée pour ce que je fais." Elle sourit. "Les autres filles m'ont accusée de leur prendre leur boulot. Alors, elles m'ont battue et m'ont dit ne plus remettre les pieds dans le coin. Elles ont ajouté qu'elles me défigureraient si elles retombaient sur moi."~ */
  IF ~~ THEN REPLY #59079 /* ~"Alors pourquoi est-ce que tu es revenue ?"~ */ GOTO 4
  IF ~~ THEN REPLY #59080 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59081 /* ~Elle rit. "Le jonc, quoi d'autre ? Je ne peux pas partir et m'installer ailleurs sans jonc et il n'y a qu'ici que je peux en gagner. Je suis prise au piège." Elle soupire et détourne le regard. "Je ferais *n'importe quoi* pour gagner dignement du jonc…"~ */
  IF ~~ THEN REPLY #59083 /* ~"N'importe quoi ?"~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 12.0
  SAY #59084 /* ~Elle réfléchit à ce que tu lui as dit avant de répondre. "Certainement, matois. Je peux faire ce genre de boulot. C'est un contrat que tu me proposes ?"~ */
  IF ~~ THEN REPLY #59085 /* ~"Non, simple curiosité."~ */ GOTO 6
  IF ~~ THEN REPLY #59086 /* ~"Je connais quelqu'un qui aimerait voir son mari mort. Il a un penchant pour les catins et elle ne le supporte pas."~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #59087 /* ~Elle hausse les épaules. "Eh bien, comme je te l'ai déjà dit, j'ai besoin de jonc et pour ça, je suis prête à tout."~ */
  IF ~~ THEN REPLY #59088 /* ~"J'm'en souviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #59089 /* ~Elle rit. "Il aime les catins, c'est ça ? Eh bien, je suppose que ce boulot me conviendrait parfaitement." Elle marque une pause. "Qui est la cible ?"~ */
  IF ~~ THEN REPLY #59090 /* ~"Carl Perfidor."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #59091 /* ~Elle fronce les sourcils tout en réfléchissant et hoche la tête. "Je connais Carl… et sa femme." Elle hésite un moment, puis hausse les épaules. "Dis à Roberta que si elle veut voir Carl mort, je m'en chargerai."~ */
  IF ~~ THEN REPLY #59092 /* ~"Tu ne veux pas savoir combien tu vas gagner ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #59093 /* ~Elle sourit méchamment. "Non, pas vraiment. Si elle essaie de me jouer un sale tour, je l'inscrirai aussi dans le livre des morts. Juste à côté de notre cher Carl… Tu peux le lui dire."~ */
  IF ~~ THEN REPLY #59094 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #59095 /* ~Tu vois la catin, Kiri, qui observe les alentours avec attention. Elle t'aperçoit, et sourit quand elle te voit approcher. "Rebonjour, matois. Que puis-je pour toi ?"~ */
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #59096 /* ~"Tu sembles nerveuse, qu'est-ce qui ne va pas ?"~ */ GOTO 2
  IF ~  Global("Know_Kiri","GLOBAL",1)
~ THEN REPLY #59097 /* ~"L'autre fois, tu as dit que tu accepterais de faire n'importe quoi pour de l'argent."~ */ GOTO 12
  IF ~  Global("Know_Kiri","GLOBAL",2)
Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #59098 /* ~"J'ai parlé à Roberta. Elle veut la mort de Carl et elle voudrait que tu t'en charges."~ */ DO ~SetGlobal("Carl_Snuffed","GLOBAL",1)
~ JOURNAL #59100 /* ~J'ai loué les services de Kiri la catin pour tuer Carl Perfidor. Elle m'a dit qu'elle allait s'en occuper sans attendre.~ */ GOTO 11
  IF ~~ THEN REPLY #59099 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY #59101 /* ~Elle te sourit. "Tu peux dire à Roberta qu'elle vient d'acheter à Carl une place dans le livre des morts. Je vais immédiatement m'en occuper."~ */
  IF ~~ THEN REPLY #59102 /* ~"Très bien, au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 10.1
  SAY #61394 /* ~Elle te toise attentivement avant de te répondre. "Bien sûr, matois… du moment que le prix est juste. Tu as quelque chose en tête ?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61395 /* ~"Tu serais prête à tuer quelqu'un ?"~ */ JOURNAL #59002 /* ~Kiri la catin est prête à tout pour de l'argent, même à tuer quelqu'un. Peut-être accepterait-elle d'éliminer Carl Perfidor pour Roberta.~ */ GOTO 5
  IF ~~ THEN REPLY #61396 /* ~"Pas vraiment, simple curiosité. Au revoir."~ */ JOURNAL #61397 /* ~Kiri la catin dit qu'elle est prête à tout pour de l'argent. C'est bon à savoir ; peut-être aurai-je besoin d'elle plus tard.~ */ EXIT
END
