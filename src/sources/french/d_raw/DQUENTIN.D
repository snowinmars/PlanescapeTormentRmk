// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUENTIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUENTIN~

IF ~  Global("Quentin","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7410 /* ~L'homme qui se trouve devant toi est de taille et d'âge moyens. Il est costaud, a un cou de taureau, et ses épaules sont courbées comme si un énorme poids pesait sur elles. Il regarde le monolithe noir devant lui d'un air impatient.~ */
  IF ~~ THEN REPLY #7411 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7412 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7413 /* ~L'homme te lance un regard. "Y'a d'la place pour tout l'monde, matois. Inutile que j'parte pour t'laisser la place."~ */
  IF ~~ THEN REPLY #7414 /* ~"En fait, je voulais savoir ce qu'était ce monolithe."~ */ DO ~SetGlobal("Quentin","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #7415 /* ~"Très bien. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 13.0
  SAY #7416 /* ~"C'est une pierre tombale pour les plans." Il prend un air moqueur. "Des quantités de noms sont gravés sur cette pierre. Tout c'que j'espère, c'est qu'mon nom fendra cette pierre en deux." Il indique la base du monolithe. "'Quentin', juste là, suffisamment enfoncé pour tout casser."~ */
  IF ~~ THEN REPLY #7417 /* ~"Une 'pierre tombale pour les plans' ?"~ */ GOTO 3
  IF ~~ THEN REPLY #7418 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7419 /* ~"Ouais", Quentin sourit avec regret. "Les Hommes-Poussière gravent les noms des morts sur ce monument…" Il se met à gesticuler. "Et sur ces murs. Je trouve qu'il n'y a pas assez de place, mais peu importe… Ils font de leur mieux. La moitié des noms est illisible."~ */
  IF ~~ THEN REPLY #7420 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #7421 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.1
  SAY #7422 /* ~"Je lis le nom des nouveaux venus. J'essaie d'en trouver un nouveau chaque jour, de me souvenir si je les connaissais. C'est tout."~ */
  IF ~~ THEN REPLY #7423 /* ~"Les Hommes-Poussière inscrivent les noms de tous les morts sur ce monument ?"~ */ GOTO 5
  IF ~~ THEN REPLY #7424 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7425 /* ~"Ouais, ils les gravent sur cette pierre… et sur ces murs aussi." Quentin prend un air moqueur. "J'vois pas pourquoi ils se fatiguent à compter les morts… Les Hommes-Poussière s'intéressent plus aux vivants."~ */
  IF ~  Global("Mourn","GLOBAL",0)
~ THEN REPLY #7426 /* ~"Aux vivants ?"~ */ DO ~SetGlobal("Mourn","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Mourn","GLOBAL",0)
~ THEN REPLY #7427 /* ~"Aux vivants ?"~ */ GOTO 6
  IF ~~ THEN REPLY #7428 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #7429 /* ~"Ouais… T'as dû entendre parler des Hommes-Poussière pleureurs qui viennent ici ? Ils ne pleurent pas les morts, tu vois, mais les vivants. Il suffit que tu les abordes pour qu'ils te d'mandent de pleurer un pauvre bige *vivant*."~ */
  IF ~~ THEN REPLY #7430 /* ~"Pourquoi pleurent-ils les vivants ?"~ */ GOTO 7
  IF ~~ THEN REPLY #7431 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7432 /* ~"Tu me poses une colle, matois." Il hausse les épaules. "Ça pourrait être intéressant d'leur poser la question. D'après moi, les morts sont trois fois plus dignes d'être pleurés que n'importe quel pauvre bougre vivant." Il se tourne vers le monument. "Chaque nom inscrit ici est béni dans mon livre."~ */
  IF ~~ THEN REPLY #7433 /* ~"Tu as déjà vu quelqu'un revenir après que son nom ait été inscrit là ?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7434 /* ~"Peux-tu me dire qui est cet Homme-Poussière fou de l'autre côté du monolithe ?"~ */ GOTO 10
  IF ~~ THEN REPLY #7435 /* ~"Je vois. Merci d'avoir parlé avec moi. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Quentin","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7436 /* ~Tu aperçois Quentin. Il examine toujours la roche, comme s'il voulait la faire tomber rien qu'en la regardant.~ */
  IF ~~ THEN REPLY #7437 /* ~"Bonjour, Quentin."~ */ GOTO 9
  IF ~~ THEN REPLY #7438 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #7439 /* ~"Eh ?" Quentin te lance un regard, puis fait un signe de tête. "Te revoilà, matois. T'es venu revendiquer un morceau de cette roche pour y inscrire ton nom ?"~ */
  IF ~~ THEN REPLY #7440 /* ~"Pas tout de suite. J'ai des questions à te poser…"~ */ GOTO 13
  IF ~~ THEN REPLY #7441 /* ~"Non, je ne faisais que passer. Au revoir, Quentin."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 13.3
  SAY #7442 /* ~Quentin sourit légèrement. "Un vrai azimuté, ce Mort-des-Noms, pas vrai ?" Quentin prend un air moqueur. "En fait, 'Mort-des-Sens' lui conviendrait mieux."~ */
  IF ~~ THEN REPLY #7443 /* ~"Que fait-il ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #7444 /* ~"Je vois. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7445 /* ~"C'est le gardien du Mémorial. Il connaît l'emplacement de chaque nom et il peut t'en indiquer un si besoin est. Il est un peu allumé, mais il m'a déjà aidé plusieurs fois." Il hausse les épaules. "Il est aussi chargé de graver les noms des nouveaux morts."~ */
  IF ~~ THEN REPLY #7446 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 13
  IF ~~ THEN REPLY #7447 /* ~"Je vois. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0 13.2
  SAY #7448 /* ~"Tu veux dire quelqu'un qui ressuscite ?" Quentin secoue la tête. "Pas un, matois. Tout ce qui vit meurt, ainsi va la vie." Il hausse les épaules. "Enfin, si l'on considère que les plans sont indestructibles et tout ça, tout est possible."~ */
  IF ~~ THEN REPLY #7449 /* ~"Je suppose. Dis-moi, j'ai d'autres questions à te poser…"~ */ GOTO 13
  IF ~~ THEN REPLY #7450 /* ~"Je vois. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 11.0 12.0
  SAY #7451 /* ~"Y'a pas d'mal à d'mander, matois."~ */
  IF ~~ THEN REPLY #7452 /* ~"Peux-tu me redire ce qu'est ce monument ?"~ */ GOTO 2
  IF ~~ THEN REPLY #7453 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #7454 /* ~"Tu as déjà vu quelqu'un revenir après que son nom ait été gravé là ?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7455 /* ~"Peux-tu me dire qui est cet Homme-Poussière fou de l'autre côté du monolithe ?"~ */ GOTO 10
  IF ~~ THEN REPLY #7456 /* ~"Je vois. Merci."~ */ EXIT
END
