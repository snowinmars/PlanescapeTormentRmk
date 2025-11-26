// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9852 /* ~Tu vois un dur à la peau tannée. Il a l'air plutôt morose et ne fait pas attention à toi.~ */
  IF ~~ THEN REPLY #9853 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #9854 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9857 /* ~Il sursaute en t'entendant et se retourne aussitôt. Il a le visage écarlate et il respire fort.~ */
  IF ~~ THEN REPLY #9861 /* ~"Toutes mes excuses, je ne voulais pas te surprendre. J'aimerais te poser des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #9859 /* ~"On est un peu énervé, on dirait ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9862 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9863 /* ~Il te foudroie du regard et tire une dague cachée dans son dos. "Va caguer, bige ! Vas-y vite, ou je t'inscris au livre des morts."~ */
  IF ~~ THEN REPLY #9865 /* ~"Calme-toi. Je veux juste te demander quelque chose."~ */ GOTO 3
  IF ~~ THEN REPLY #9868 /* ~"Pose cette lame ou je te la prends et je te tue avec."~ */ GOTO 4
  IF ~~ THEN REPLY #9870 /* ~"Comme tu veux. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9872 /* ~Il adopte une posture défensive et te menace de sa lame. "Je n'ai aucune réponse à te donner. Et je n'ai rien à te dire. Tire-toi !"~ */
  IF ~~ THEN REPLY #9873 /* ~"Pose cette lame ou je te la prends et je te tue avec."~ */ GOTO 4
  IF ~~ THEN REPLY #9874 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9875 /* ~Il te rit au nez et te fait signe de sa lame. "Viens, viens… Je vais t'éventrer, et puis je me foutrai de toi pendant tout le temps que tu mettras à crever !"~ */
  IF ~~ THEN REPLY #9876 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #9878 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #9880 /* ~Il te semble qu'il ne sait pas quoi te dire. Ta réflexion paraît l'avoir surpris. "Et bien, euh… J'avais l'esprit ailleurs, matois. Qu'est-ce que tu veux ?" Il te toise d'un air suspicieux.~ */
  IF ~~ THEN REPLY #9883 /* ~"Juste quelques questions. D'accord ?"~ */ GOTO 6
  IF ~~ THEN REPLY #9884 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9885 /* ~Il te dévisage, et jette un regard alentour. "Une question, et puis tu dégages. Je n'ai ni le temps ni l'envie de jouer les professeurs."~ */
  IF ~~ THEN REPLY #9886 /* ~"Je cherche un deva. J'ai cru comprendre qu'il était à Maudith."~ */ GOTO 7
  IF ~~ THEN REPLY #9887 /* ~"Qui est le responsable ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #9888 /* ~"Quelles sont les nouvelles locales ?"~ */ GOTO 9
  IF ~~ THEN REPLY #9889 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 10
  IF ~~ THEN REPLY #9890 /* ~"Pour avoir les bonnes réponses à certaines questions, à qui t'adresserais-tu ?"~ */ GOTO 11
  IF ~~ THEN REPLY #9891 /* ~"Peu importe. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9892 /* ~Il te considère, un peu perplexe. "Ouais, c'est ça, une de ces grenouilles de bénitier arpente les rues de Maudith. T'es complètement azimuté, matois. Je t'ai répondu, file." Il se détourne et s'éloigne.~ */
  IF ~~ THEN REPLY #9893 /* ~Pars~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9894 /* ~"Tovus Giljaf. Il est au bureau administratif sur la grand-place. Je t'ai répondu, file." Il se détourne et s'éloigne.~ */
  IF ~~ THEN REPLY #9895 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #9896 /* ~Il réfléchit pendant un moment. "J'en sais rien… Tu sais, matois, moi et les cancans… Va plutôt à la Porte du Traître. Un tripot, par là-bas." Il fait un geste vague. "Je t'ai répondu, file." Il se détourne et s'éloigne.~ */
  IF ~~ THEN REPLY #9897 /* ~Pars~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #9898 /* ~Il te rit au nez. "Ça, bige, c'est pas tes oignons. Je t'ai répondu, file." Il se détourne et s'éloigne.~ */
  IF ~~ THEN REPLY #9899 /* ~Pars~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #9900 /* ~Il s'esclaffe et te sourit. "Bonne question. T'es un matois plutôt rusé, au fond." Il réfléchit, puis te dévisage. "À ta place, j'irais voir Shar. Elle se balade dans le coin, tu ne devrais pas avoir trop de mal à la trouver. Sois gentil avec elle, et elle t'aidera. Je t'ai répondu, file." Il se détourne et s'éloigne.~ */
  IF ~~ THEN REPLY #9901 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END
