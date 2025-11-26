// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTNEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTNEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9789 /* ~Tu vois un beau jeune homme vêtu à la dernière mode. Il a l'air tout excité.~ */
  IF ~~ THEN REPLY #9790 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #9791 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9794 /* ~Il se tourne et te dévisage d'un air irrité. "Du vent, bige. Je n'ai rien à dire à des individus de ta sorte." Et il détourne son regard.~ */
  IF ~~ THEN REPLY #9797 /* ~"Écoute, je n'ai qu'une ou deux questions à te poser."~ */ GOTO 2
  IF ~~ THEN REPLY #9798 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9799 /* ~Il se tourne de nouveau vers toi, l'air agacé par ton insistance. "Bâcle ça ! J'essaie d'assister à l'exécution, et tu n'arrêtes pas de branler ton râtelier. Fiche-moi la paix." Il se détourne de nouveau.~ */
  IF ~~ THEN REPLY #9800 /* ~En lui tapant sur l'épaule : "Je commence à en avoir assez de ton attitude. Réponds à mes questions ou j'écrase ton beau visage."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nephew_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #9804 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9805 /* ~Il se tourne vers toi, rouge de colère. "Tu n'oserais pas ! Je suis le neveu de…"~ */
  IF ~~ THEN REPLY #9806 /* ~En l'interrompant : "Je me moque que tu sois apparenté à la Dame en personne. Les prochaines paroles qui sortiront de ton 'râtelier' ont intérêt à être 'que puis-je faire pour toi'."~ */ GOTO 4
  IF ~~ THEN REPLY #9808 /* ~En l'interrompant : "Tant pis. Tu n'en vaux même pas la peine."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9810 /* ~Le jeune homme paraît sur le point d'exploser. Il regarde alentour, mais ne trouve aucun soutien dans la foule. "Q-que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #9812 /* ~"Voilà… Ce n'était pas si difficile, si ? J'ai des questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #9814 /* ~En souriant : "C'est déjà fait. La marque de l'humiliation sur ton visage suffit. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 9.0 11.0 12.0
  SAY #9815 /* ~"J'écoute."~ */
  IF ~~ THEN REPLY #9817 /* ~"Qu'est-ce qui se passe ?"~ */ GOTO 6
  IF ~~ THEN REPLY #9818 /* ~"Qui est le responsable ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #9820 /* ~"Je cherche un deva. On raconte qu'il est quelque part en ville."~ */ GOTO 11
  IF ~~ THEN REPLY #9821 /* ~"Des nouvelles locales ?"~ */ GOTO 12
  IF ~~ THEN REPLY #9822 /* ~"Peu importe. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9823 /* ~"Une exécution, voilà tout."~ */
  IF ~~ THEN REPLY #9825 /* ~"Quel crime a-t-il commis ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9826 /* ~"Je vois. Passons à la question suivante alors."~ */ GOTO 5
  IF ~~ THEN REPLY #9827 /* ~"Grand merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9829 /* ~"Je l'ignore. Et si tu t'adressais au bureau administratif ?"~ */
  IF ~~ THEN REPLY #9831 /* ~"Très bien. C'est ce que je vais faire. Permets-moi de te demander autre chose."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #9833 /* ~Il t'adresse un sourire torve. "Mon oncle, Tovus Giljaf. "~ */
  IF ~~ THEN REPLY #9836 /* ~"Ôte ce sourire de supériorité de ton visage ou je m'en charge moi-même."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #9838 /* ~Son sourire s'efface, et il te foudroie du regard sans un mot.~ */
  IF ~~ THEN REPLY #9839 /* ~"C'est mieux. J'ai d'autres questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #9841 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #9843 /* ~"Bonne journée à toi aussi… le Balafré. Je parlerai de toi à mon oncle…" Il reporte son attention sur la foule.~ */
  IF ~~ THEN REPLY #9845 /* ~"C'est ça."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #9846 /* ~Il te regarde d'un air méprisant. "Peuh ! Un deva à Maudith ? Ce serait bien la première fois… À mon avis, tu es soit enfumé, soit mal informé."~ */
  IF ~~ THEN REPLY #9847 /* ~"Très bien, question suivante."~ */ GOTO 5
  IF ~~ THEN REPLY #9848 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #9849 /* ~Il hausse les épaules. "Pas à ma connaissance."~ */
  IF ~~ THEN REPLY #9850 /* ~"Je vois. Tu peux peut-être me parler d'autre chose."~ */ GOTO 5
  IF ~~ THEN REPLY #9851 /* ~"Alors, au revoir."~ */ EXIT
END
