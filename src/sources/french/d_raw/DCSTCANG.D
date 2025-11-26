// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Tu vois un jeune homme à la mine renfrognée. Il marmonne et semble préoccupé.~ */
  IF ~~ THEN REPLY #3173 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #13708 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13709 /* ~D'abord, tu crois qu'il ne t'a pas entendu, puis il tourne la tête et te jette un coup d'œil. Au bout d'un moment, il se détourne. "Je t'connais pas, bige et j'veux pas te connaître. Va-t'en et je ne te ferai aucun mal."~ */
  IF ~~ THEN REPLY #13710 /* ~"Écoute, j'ai juste quelques questions à te poser."~ */ GOTO 2
  IF ~~ THEN REPLY #13711 /* ~"Inutile de me menacer, imbécile. Réponds plutôt à mes questions, ça m'évitera d'avoir à t'apprendre les bonnes manières."~ */ GOTO 3
  IF ~~ THEN REPLY #13712 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13713 /* ~"Bien. Alors, je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13714 /* ~Il tourne la tête pour te regarder, son visage est empreint de colère. Il te parle entre ses dents serrées. "Des questions ? Est-ce que j'ai l'air du sage local, bige ? Sors de mon champ de vision avant que je te rajoute quelques cicatrices."~ */
  IF ~~ THEN REPLY #13715 /* ~"Inutile de me menacer, imbécile. Réponds plutôt à mes questions, ça m'évitera d'avoir à t'apprendre les bonnes manières."~ */ GOTO 3
  IF ~~ THEN REPLY #13716 /* ~"Essaie un peu."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13717 /* ~"Bon, alors je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #13718 /* ~Il virevolte, son visage empreint de colère. Il est sur le point de te dire quelque chose lorsqu'il s'arrête et te regarde de plus près. Au fur et à mesure que ses yeux s'arrêtent sur les différentes cicatrices qui couvrent ton corps, sa colère semble se dissiper et devenir de la peur. "Euh… désolé, matois. Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #13719 /* ~"Je cherche un deva. J'ai entendu dire qu'il était peut-être ici."~ */ GOTO 4
  IF ~~ THEN REPLY #13720 /* ~"Quelles sont les nouvelles locales ?"~ */ GOTO 5
  IF ~~ THEN REPLY #13721 /* ~"Parle-moi de Maudith."~ */ GOTO 6
  IF ~~ THEN REPLY #13722 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #13723 /* ~Il se plonge dans ses pensées puis détourne son regard un instant. "Mauvaise ville-portail, matois. Les devas n'arrivent pas par là, à ce que je sache."~ */
  IF ~~ THEN REPLY #13724 /* ~"Très bien. D'autres questions, alors."~ */ GOTO 7
  IF ~~ THEN REPLY #13725 /* ~"Merci. À plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 7.1
  SAY #13726 /* ~"Je pourrais pas te dire. J'essaie de garder mon flair et de me mêler de mes affaires. Un matois vit ainsi plus longtemps et mieux." Il s'interrompt et te regarde un peu nerveusement. "Ne le prends pas mal… mais tu devrais en faire autant."~ */
  IF ~~ THEN REPLY #13727 /* ~"Je m'en souviendrai. Mais, parle-moi d'autre chose."~ */ GOTO 7
  IF ~~ THEN REPLY #13728 /* ~"Amusant… Je ne me souviens pas de t'avoir demandé conseil. Encore une erreur de ce genre et ça pourrait te coûter cher."~ */ GOTO 8
  IF ~~ THEN REPLY #13729 /* ~"Merci du conseil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 7.2
  SAY #13730 /* ~Il renifle et regarde autour un moment avant de répondre. "On l'appelle Maudith pour une raison, matois. Ce lieu est la prison de tous les bougres qui ont mal tourné. Le plus triste de l'histoire, c'est que la plupart de ces biges ne savent même pas qu'ils sont prisonniers."~ */
  IF ~~ THEN REPLY #13731 /* ~"Une prison ?"~ */ GOTO 9
  IF ~~ THEN REPLY #13732 /* ~"Je vois. Une autre question."~ */ GOTO 7
  IF ~~ THEN REPLY #13733 /* ~"Eh bien, merci du renseignement."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.1 8.0 9.0
  SAY #13734 /* ~"Bien sûr. Que veux-tu savoir ?"~ */
  IF ~~ THEN REPLY #13735 /* ~"Je cherche un deva. J'ai entendu dire qu'il était peut-être ici."~ */ GOTO 4
  IF ~~ THEN REPLY #13736 /* ~"Quelles sont les nouvelles locales ?"~ */ GOTO 5
  IF ~~ THEN REPLY #13737 /* ~"Parle-moi de Maudith."~ */ GOTO 6
  IF ~~ THEN REPLY #13738 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #13739 /* ~Son visage s'empourpre à nouveau comme s'il cherchait à se contrôler. "Désolé, ça se reproduira plus. Euh, tu veux quelque chose d'autre ?"~ */
  IF ~~ THEN REPLY #13740 /* ~"Ouais, j'ai quelques questions à te poser."~ */ GOTO 7
  IF ~~ THEN REPLY #13741 /* ~"Non, ce sera tout."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #13742 /* ~Il regarde autour et se rapproche un peu plus de toi. "Ouais, tu ne t'en rends pas compte tout de suite, mais Maudith est bien une prison. Il te suffit d'essayer d'en partir pour vérifier mes dires. Si tu n'as pas une bonne raison et un moyen de le faire, tu ne passes pas les portes de la cité." Il s'interrompt et regarde de nouveau aux alentours. "Je ne peux plus rien dire."~ */
  IF ~~ THEN REPLY #13743 /* ~"Hum. Je voudrais te demander autre chose."~ */ GOTO 7
  IF ~~ THEN REPLY #13744 /* ~"Merci. Au revoir."~ */ EXIT
END
