// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3200 /* ~Cette aristocrate assez âgée te salue d'une élégante révérence. "Bonjour, monsieur. Au risque de te paraître effrontée, je dois te prévenir, avant que tu me demandes quoi que ce soit, que je suis une cliente, pas l'une des étudiantes de l'établissement."~ */
  IF ~~ THEN REPLY #3201 /* ~"Tu es une cliente ?"~ */ GOTO 3
  IF ~~ THEN REPLY #40085 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #40086 /* ~"En fait, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40087 /* ~L'aristocrate fait une révérence gracieuse alors que tu t'approches d'elle. "Rebonjour."~ */
  IF ~~ THEN REPLY #40088 /* ~"Oui, bonjour. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #40089 /* ~"Bonjour, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.0 4.2 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.2 13.1 14.0
  SAY #40090 /* ~La femme acquiesce. "Bien sûr."~ */
  IF ~~ THEN REPLY #40091 /* ~"Tu as dit que tu étais cliente ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #40092 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #40093 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40094 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40095 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40096 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40097 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40098 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40099 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 11
  IF ~~ THEN REPLY #40100 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 12.0
  SAY #40101 /* ~Elle acquiesce. "C'est exact, jeune homme. Je suis venue un soir ici pour me rendre compte par moi-même pourquoi mon mari venait sans arrêt… j'ai vite sympathisé avec plusieurs prostituées, et me voilà ! Il n'y a pas que les hommes qui apprécient une bonne conversation, tu sais."~ */
  IF ~~ THEN REPLY #40102 /* ~"C'est vrai. J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40103 /* ~"Je suppose. Quoi qu'il en soit, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #40104 /* ~"La Maison de tolérance est une école fondée par Tombée-en-Disgrâce… elle enseigne aux candidates de la Société des Sensations l'art subtil du langage et de la communication. Si ce qu'on m'a dit est exact, la Maison de tolérance est financée par les dons des clients fortunés."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40105 /* ~"Tombée-en-Disgrâce ?"~ */ GOTO 14
  IF ~~ THEN REPLY #40106 /* ~"Parle-moi de la Société des Sensations."~ */ GOTO 5
  IF ~~ THEN REPLY #40107 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40108 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #40109 /* ~La femme te lance un regard étrange, mais bref. "Tu as bien dû en entendre parler, non ? Les Sensats ? Leur faction croit que l'expérience est la clé de la compréhension du multivers. Leur siège, la Salle des Fêtes, se trouve non loin… tu sors d'ici, tu tournes à gauche, puis encore à gauche. Tu y trouveras beaucoup de gens qui accepteront de te parler de la Société des Sensations."~ */
  IF ~~ THEN REPLY #40110 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40111 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #40112 /* ~"Je ne la connais pas… et je ne me souviens pas de son nom. On m'a dit qu'elle était incapable de communiquer, aussi n'ai-je jamais essayé de parler avec elle."~ */
  IF ~~ THEN REPLY #40113 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40114 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 13.0
  SAY #40115 /* ~"Ravel ? Je ne connais personne de ce nom, et encore moins quelqu'un qui serait la mère de Kesai. En tout cas, cette dernière m'a dit qu'elle était orpheline, que son père, un demi-fiélon, l'avait laissée à Sigil, où elle a été élevée."~ */
  IF ~~ THEN REPLY #40116 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40117 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #40118 /* ~"Non. Mais Viviane en parle depuis un moment, et elle est très en colère ! Je serais vraiment contente qu'on lui rende, parce qu'elle ne parle quasiment que de ça en ce moment."~ */
  IF ~~ THEN REPLY #40119 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40120 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #40121 /* ~La femme se renfrogne soudain. "Oh, je me fiche pas mal de cette Marissa… pour être désagréable, elle l'est ! Quant à son voile, non… je ne sais rien."~ */
  IF ~~ THEN REPLY #40122 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40123 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #40124 /* ~"Ravel… Puits-de-Rébus…" Elle prononce le nom lentement, comme si c'était la première fois qu'il franchissait ses lèvres. "Je dois avouer que non."~ */
  IF ~~ THEN REPLY #40125 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40126 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #40127 /* ~"Il n'y a que neuf prostituées, que je sache… et je suis quasiment certaine de leur avoir parlé à toutes. Il y a peut-être une nouvelle fille, que je n'ai pas rencontrée, mais… ?"~ */
  IF ~~ THEN REPLY #40128 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40129 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.1
  SAY #40130 /* ~"Je ne fais que m'arrêter ici pour discuter avec quelques copines. Je fais partie des rares clientes de la Maison de tolérance des Plaisirs Intellectuels."~ */
  IF ~~ THEN REPLY #40131 /* ~"Tu es une cliente ?"~ */ GOTO 3
  IF ~~ THEN REPLY #40132 /* ~"Tu me conseillerais de parler à quelqu'un en particulier ?"~ */ GOTO 13
  IF ~~ THEN REPLY #40133 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40134 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #40135 /* ~"Tout dépend de la personne à qui tu as envie de parler. Moi, eh bien, je suis amie avec Viviane et Kesai-Serris, et je parle aussi de temps en temps avec cette adorable petite puce de Nenny."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #40136 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 7
  IF ~~ THEN REPLY #40137 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40138 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0
  SAY #40139 /* ~"Oui… les prostituées l'appellent Maîtresse Grâce. En général, elle accueille les clients dans le vestibule de la Maison de tolérance… tu la trouveras peut-être là-bas si tu veux lui parler."~ */
  IF ~~ THEN REPLY #40140 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40141 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
