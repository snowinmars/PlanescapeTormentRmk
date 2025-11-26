// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37758 /* ~Tu vois un homme au visage triste. Il te lance un regard désespéré alors que tu t'approches.~ */
  IF ~~ THEN REPLY #37770 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37771 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37759 /* ~Il jette un œil à ce qui l'entoure, puis te regarde. "Tu veux quelque chose, bige ?"~ */
  IF ~~ THEN REPLY #37772 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37773 /* ~"Peu importe. Au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37760 /* ~Il secoue la tête. "Écoute, bige, je ne suis pas en mesure de répondre à tes stupides questions. Va caguer !"~ */
  IF ~~ THEN REPLY #37774 /* ~"Pourquoi, qu'est-ce qui se passe ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #37775 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37761 /* ~Il te lance un regard furibond. "C'est le bâtiment de la vente aux enchères, béjaune. On va me vendre comme esclave ! Maintenant va te faire coincer."~ */
  IF ~~ THEN REPLY #37776 /* ~"Pourquoi est-ce que tu es vendu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37777 /* ~"Qu'est-ce que ça veut dire 'va te faire coincer' ?"~ */ GOTO 9
  IF ~~ THEN REPLY #37778 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 9.0
  SAY #37762 /* ~Il te lance un regard frustré. "J'ai une personnalité si brillante que j'ai pensé que je pouvais me faire un peu de jonc en me vendant. Maintenant, disons que c'était ta dernière question, espèce de bougre azimuté !"~ */
  IF ~~ THEN REPLY #37779 /* ~"Je veux savoir la vérité. Pourquoi est-ce que tu es vendu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37780 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37763 /* ~Il commence par prendre un air furieux, avant de sembler renoncer. "J'ai saigné un bougre, tu piges ? J'avais trop bu, on s'est battus et je lui ai enfoncé un skiv dans la peau." Il soupire. "J'remercie les puissances, il est pas mort. Ça aurait été la prison sinon."~ */
  IF ~~ THEN REPLY #37781 /* ~"C'est quoi un skiv ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37782 /* ~"La prison ?"~ */ GOTO 7
  IF ~~ THEN REPLY #37783 /* ~"Je vois. Alors, on te vend comme esclave à cause d'une bagarre ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37764 /* ~Il te regarde en fronçant les sourcils. "Tu n'es qu'un pauvre béjaune, pas vrai ? Un skiv, c'est un couteau, espèce d'idiot." Il détourne son regard de toi. "J'répondrai plus à tes questions. Débarrasse le plancher."~ */
  IF ~~ THEN REPLY #37784 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37765 /* ~Il te regarde en fronçant les sourcils. "Oui, la prison. Si on t'y envoie, c'est pour un bon moment et c'est pas drôle. En tant qu'esclave, ça sera moins dur et ma sentence ne sera pas trop longue." Il détourne son regard. "Je ne répondrai plus à tes questions. Débarrasse le plancher."~ */
  IF ~~ THEN REPLY #37785 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #37766 /* ~Il te regarde en fronçant les sourcils. "Oui… Le bougre que j'ai saigné était un ami et c'est pour ça qu'il n'a pas porté plainte. J'ai quand même été jugé et on m'a condamné à devenir esclave." Il regarde au loin. " Je ne répondrai plus à tes questions. Débarrasse le plancher."~ */
  IF ~~ THEN REPLY #37786 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #37767 /* ~Il te sourit. "Ça veut dire : dirige-toi vers un portail à sens unique et ne reviens pas !"~ */
  IF ~~ THEN REPLY #37787 /* ~"Je vois. Alors, pourquoi est-ce que tu es vendu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37788 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37768 /* ~Tu vois un homme au visage triste. Il te lance un regard désespéré alors que tu t'approches. "Oh non, encore toi ! Pourquoi tu ne me laisses pas tranquille ?"~ */
  IF ~~ THEN REPLY #37789 /* ~"J'ai quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #37790 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37769 /* ~Il te lance un regard furieux. "Eh bien, je n'ai pas de réponses pour toi. Va caguer, bibard !"~ */
  IF ~~ THEN REPLY #37791 /* ~"Bien, au revoir."~ */ EXIT
END
