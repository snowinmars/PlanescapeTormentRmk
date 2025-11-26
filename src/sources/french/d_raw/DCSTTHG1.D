// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Tu vois un jeune homme vêtu d'habits peu convenables. Il te regarde approcher d'un air ennuyé.~ */
  IF ~~ THEN REPLY #3165 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #9926 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9927 /* ~Il te toise avant de te rendre ton salut. "De même, matois. Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #9928 /* ~"Je voulais te poser des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #9929 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9930 /* ~Il te dévisage avant de se fendre d'un petit rire. "Je ne sais rien, je ne vois rien, je n'entends rien. Donc je ne peux répondre à rien. Maintenant dégage, avant que je sois obligé de te faire mal."~ */
  IF ~~ THEN REPLY #9931 /* ~"Tu ne risques rien à essayer de répondre à quelques questions simples. Alors ?"~ */ GOTO 3
  IF ~~ THEN REPLY #9932 /* ~"S'il faut en passer par la force pour t'arracher des réponses, ça ne me dérange pas."~ */ GOTO 4
  IF ~~ THEN REPLY #9933 /* ~"Bien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9934 /* ~Il fronce les sourcils. "Je n'ai rien à te dire, bige. Il te reste une dernière chance de partir en un seul morceau."~ */
  IF ~~ THEN REPLY #9935 /* ~"S'il faut en passer par la force pour t'arracher des réponses, ça ne me dérange pas."~ */ GOTO 4
  IF ~~ THEN REPLY #9936 /* ~"Bien, bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9937 /* ~Il te toise, en s'attardant sur tes cicatrices, puis il te sourit d'un air amical. "Bon, tu ne t'effraies pas facilement. Je pense qu'on peut parler, dans ce cas. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #9938 /* ~"Juste quelques réponses."~ */ GOTO 5
  IF ~~ THEN REPLY #9939 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0 7.1 8.0 9.1 10.1 11.0 12.1 13.0 14.0
  SAY #9940 /* ~Il hausse les épaules. "Bien sûr. Vas-y."~ */
  IF ~~ THEN REPLY #9941 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith."~ */ GOTO 6
  IF ~~ THEN REPLY #9942 /* ~"Que peux-tu me dire sur Maudith ?"~ */ GOTO 9
  IF ~~ THEN REPLY #9943 /* ~"Qui est le responsable ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #9944 /* ~"Qu'est-ce qui se passe en ville ces temps-ci ?"~ */ GOTO 14
  IF ~~ THEN REPLY #9945 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9946 /* ~Il s'esclaffe. "Peu probable, matois. Je vois mal un deva se pointer dans cette cité, à moins qu'il veuille l'effacer de nos mémoires. Je crois que tu perds ton temps."~ */
  IF ~~ THEN REPLY #9947 /* ~"Je vois. Une autre question."~ */ GOTO 5
  IF ~~ THEN REPLY #9948 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #9949 /* ~"Je te remercie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #9950 /* ~Il hausse les épaules. "Paraît que des biges appellent les devas des anges. Et un "ange" préférerait mourir que se montrer dans un endroit comme Maudith. On est du mauvais côté de l'Anneau."~ */
  IF ~~ THEN REPLY #9951 /* ~"Quel anneau ?"~ */ GOTO 8
  IF ~~ THEN REPLY #9952 /* ~"Je vois. Une autre question."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #9953 /* ~"L'Anneau des Plans Extérieurs. La loi d'un côté, le chaos de l'autre, le bien et le mal entre les deux. Tu débarques, ou quoi ?" Il t'observe d'un air perplexe.~ */
  IF ~~ THEN REPLY #9954 /* ~"Plus ou moins. Il faut que je te demande autre chose."~ */ GOTO 5
  IF ~~ THEN REPLY #9955 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #9956 /* ~Il hausse les épaules, un vague sourire aux lèvres. "C'est un bon endroit pour certains. Ça dépend de qui tu es et qui tu connais."~ */
  IF ~~ THEN REPLY #9957 /* ~"Et à ton avis, qui devrais-je connaître ?"~ */ GOTO 10
  IF ~~ THEN REPLY #9958 /* ~"Très bien, une autre question."~ */ GOTO 5
  IF ~~ THEN REPLY #9959 /* ~"Je vois. Et bien, je dois partir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9960 /* ~Après réflexion, il te dit : "À la place d'un matois de ton acabit, j'irais à la Porte du Traître, un bar tenu par un certain Barlouche." Il te sourit. "Ne lui dis pas que tu viens de ma part."~ */
  IF ~~ THEN REPLY #9961 /* ~"Où se trouve cet endroit ?"~ */ GOTO 11
  IF ~~ THEN REPLY #9962 /* ~"Je vois. Une autre question."~ */ GOTO 5
  IF ~~ THEN REPLY #9963 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #9964 /* ~Il hausse les épaules. "Je n'en sais trop rien. Par là, je crois." Il désigne ta droite. "Cherche, tu le trouveras sans peine."~ */
  IF ~~ THEN REPLY #9965 /* ~"Très bien. Une autre question."~ */ GOTO 5
  IF ~~ THEN REPLY #9966 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY #9967 /* ~"Tovus Giljaf. Tu le trouveras au bureau d'administration sur la grand-place."~ */
  IF ~~ THEN REPLY #9968 /* ~"Que peux-tu me dire sur Tovus ?"~ */ GOTO 13
  IF ~~ THEN REPLY #9969 /* ~"Une autre question."~ */ GOTO 5
  IF ~~ THEN REPLY #9970 /* ~"Je te remercie et bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #9971 /* ~"Je n'ai jamais eu affaire à lui. S'il ne dirigeait pas ce bled, je crois que j'ignorerais jusqu'à son nom." Il prend un air distrait.~ */
  IF ~~ THEN REPLY #9972 /* ~"Très bien. Réponds à une question."~ */ GOTO 5
  IF ~~ THEN REPLY #9973 /* ~"Alors, bonne journée à toi."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.3
  SAY #9974 /* ~L'air distrait, il jette un regard alentour. "Rien. C'est plutôt calme, ces temps-ci."~ */
  IF ~~ THEN REPLY #9975 /* ~"Je vois. J'ai une autre question à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #9976 /* ~"Je dois m'en aller. Bonne journée."~ */ EXIT
END
