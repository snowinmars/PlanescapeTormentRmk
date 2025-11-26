// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEBB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEBB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",0)
Global("Current_Area","GLOBAL",402)
~ THEN BEGIN 0 // from:
  SAY #3011 /* ~Tu vois un vieillard légèrement voûté, à la barbe et à la tignasse grises. Il porte deux épaulettes comme seule armure, mais son heaume n'est pas loin. Il fume la pipe et porte une blague à tabac à la taille. Il a l'air fort, mais il est grassouillet et semble avoir du mal à respirer. "Eh bien, dans quel état tu es, jeune homme ! J'ai jamais vu autant de cicatrices sur un seul type - on dirait que tu t'en es fait tisser un manteau ! Dans quoi tu t'es fourré… une moissonneuse-batteuse ?!" Il s'esclaffe. "Oh, je plaisante. Je ne voulais pas te vexer. J'espère que tu ne l'as pas mal pris. Je suis Ebb." Il te tend la main.~ */
  IF ~~ THEN REPLY #3012 /* ~"Bonjour, Ebb."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11001 /* ~Refuse de lui serrer la main.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11002 /* ~Sa poignée de main est ferme. "Je te prie de m'excuser pour cette vilaine plaisanterie, mon gars. Sans rancune, j'espère. Puis-je t'offrir une chope ou deux pour aplanir les angles ?"~ */
  IF ~~ THEN REPLY #11003 /* ~"Pourquoi pas ?"~ */ GOTO 3
  IF ~~ THEN REPLY #11004 /* ~"Non."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #11005 /* ~Il retire sa main. "Je comprends, je comprends, bien sûr. Je te prie de m'excuser pour cette vilaine plaisanterie, mon gars. Sans rancune, j'espère. Puis-je t'offrir une chope ou deux pour aplanir les angles ?"~ */
  IF ~~ THEN REPLY #11006 /* ~"Pourquoi pas ?"~ */ GOTO 3
  IF ~~ THEN REPLY #11007 /* ~"Non."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #11008 /* ~"Bien parlé, mon gars ! Un moment, je te prie." Il se lève, va au comptoir, et revient au bout d'un instant avec deux chopes. "Voilà, mon gars. À la tienne !" Il boit lui-même une longue lampée, tire sur sa pipe et dit : "Alors, qu'est-ce que le vieil Ebb peut faire pour toi par cette belle journée ?"~ */
  IF ~~ THEN REPLY #11009 /* ~"J'ai des questions sur cet endroit."~ */ GOTO 5
  IF ~~ THEN REPLY #11010 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #11011 /* ~"Je comprends, mon gars." Il tire sur sa pipe, s'arrête un moment et dit : "Alors, qu'est-ce que le vieil Ebb peut faire pour toi par cette belle journée ?"~ */
  IF ~~ THEN REPLY #11012 /* ~"J'ai des questions sur cet endroit."~ */ GOTO 5
  IF ~~ THEN REPLY #11013 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #11014 /* ~"J'avais deviné, rien qu'à te voir. Tu n'as pas l'air d'être du coin, mon gars. Pour passer pour un autochtone, il faut avoir l'air dans son assiette !" Ebb glousse, et boit une nouvelle gorgée. "Alors, comment puis-je me rendre utile, mon gars ? Tu as besoin d'un plan… de Sigil, bien sûr ?" Il te fait un clin d'œil.~ */
  IF ~~ THEN REPLY #11015 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #11016 /* ~"Que fais-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #11017 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 19
  IF ~~ THEN REPLY #11018 /* ~"Oui. Dis-moi comment fonctionnent cette cité et ses environs."~ */ GOTO 33
  IF ~~ THEN REPLY #11019 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 25.2
  SAY #11020 /* ~"Ebb Craquerotules, Troisième Mesure de l'Harmonium, en retraite du service. Je rabats, maintenant, faute de pouvoir encore en rebattre !" Il glousse. "Alors, mon gars, qui es-tu et qu'est-ce que tu as donc comme problème ?"~ */
  IF ~~ THEN REPLY #11021 /* ~"Troisième mesure de l'Harmonium ?"~ */ GOTO 7
  IF ~~ THEN REPLY #11022 /* ~"Qu'est-ce qu'un rabatteur ?"~ */ GOTO 13
  IF ~~ THEN REPLY #11023 /* ~"Qu'est-ce qui te fait croire que j'ai des problèmes ?"~ */ GOTO 17
  IF ~~ THEN REPLY #11024 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #11025 /* ~Ebb se redresse, par fierté, et affiche une expression plus grave. "Oui, Troisième Mesure de l'Harmonium…" Il se détend un peu. "Même si je n'ai plus fait de ronde depuis deux ou trois décennies. Quant à devenir gratte-papier, ça ne me disait rien, après toutes les bagarres auxquelles j'ai participé, alors je tue le temps : je surveille ce qui se passe dans la Ruche et, quand c'est possible, je donne un coup de main ici ou là. Et tu as l'air d'en avoir besoin… tu as des ennuis, mon gars ?"~ */
  IF ~~ THEN REPLY #11026 /* ~"À quelles bagarres as-tu participé ?"~ */ GOTO 8
  IF ~~ THEN REPLY #11027 /* ~"Quelques problèmes."~ */ GOTO 11
  IF ~~ THEN REPLY #11028 /* ~"Quelques problèmes : à mon réveil, j'étais à la Morgue, et je crois que j'ai oublié qui je suis."~ */ GOTO 12
  IF ~~ THEN REPLY #11029 /* ~"Ça ne te regarde absolument pas. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11030 /* ~"Rien qui ne te concerne. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11031 /* ~Ebb lève les yeux au ciel. "Plus que je ne saurais dire, mon gars ! Enfin… c'est une façon de parler. J'ai participé à la Guerre Sanglante, à cette fichue Guerre des Mensonges sur Terras, passé trop d'années sur les champs de bataille de la Guerre des Siècles Noirs…" Il se met à les compter sur ses doigts, sans un mot. "… et puis il y a eu la Guerre des Trois Plans, et plein d'autres. J'ai participé à la Guerre de Libération de l'Harmonium. Puis, vers la fin, j'ai atterri dans la Garde de Sigil et… certains diraient que c'était le poste le plus dangereux !" Il s'esclaffe. L'allusion à la Guerre Sanglante t'a fait l'effet d'un coup de poignard en plein cœur.~ */
  IF ~~ THEN REPLY #11032 /* ~"Dis-m'en plus sur la Guerre Sanglante."~ */ GOTO 9
  IF ~~ THEN REPLY #11033 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11034 /* ~"Merci, Ebb. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11035 /* ~Ebb, qui n'a pas vu ta réaction, pousse un soupir. "Oui, la Guerre Sanglante, la querelle familiale la plus dangereuse de tout le multivers. Des hordes de fiélons sadiques d'un côté, une foule de fiélons bellicistes de l'autre. Une guerre entamée dès la Création, et qui depuis lors se poursuit sans relâche."~ */
  IF ~~ THEN REPLY #11036 /* ~"Deux bandes de fiélons en guerre, hein ?"~ */ GOTO 10
  IF ~~ THEN REPLY #11037 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11038 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #11039 /* ~"Oui, les tanar'ris, de sales tueurs qui n'ont de respect que pour eux-mêmes, face aux baatezus qui font régner la loi et l'ordre selon les règles en vigueur aux Enfers. Parfois, cette pagaille déborde sur d'autres plans. Elle fait du multivers un lieu beaucoup moins attrayant."~ */
  IF ~~ THEN REPLY #11040 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11041 /* ~"Je vois. Au revoir, Ebb."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 17.1
  SAY #11042 /* ~"Oh, j'espère qu'il n'y a rien de trop grave, mais je te laisse le soin d'en parler quand tu en auras envie. Je m'en voudrais d'insister… c'est le meilleur moyen d'avoir des problèmes, par ici."~ */
  IF ~~ THEN REPLY #11043 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11044 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2 17.2
  SAY #11045 /* ~"Hein ?" Ebb cille, puis fronce les sourcils. "Qu'est-ce que tu as dit, mon gars ? Tu t'es réveillé à la Morgue…" Il te scrute. "Oh, ils t'ont peut-être cru mort, avec toutes ces cicatrices ?" Il a un petit rire. "J'en aurais sans doute fait autant, je le crains…" Il tire sur sa pipe. "Les Morts…" Il se reprend. "Je veux dire les *Hommes-Poussière*… puisque Morts est un terme impoli, alors que je ne leur veux pas de mal… enfin, pas trop… bref, ils sont parfois aussi perspicaces et amicaux qu'une pierre tombale, non ? Je comprends pourquoi ils se sont trompés à ton sujet, mon gars, ça oui."~ */
  IF ~~ THEN REPLY #11046 /* ~"C'est ce que j'ai entendu dire. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11047 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11048 /* ~"Ah, tu as eu raison de poser la question : j'apprends que tu es un bleu et la meilleure rencontre qu'un béjaune puisse faire dans les rues de Sigil, c'est justement celle d'un rabatteur. Il faut un type dans mon genre aux types dans ton genre." Il boit une gorgée. "Un rabatteur, c'est un guide. Il te montre ce qu'il y a à voir, t'escorte un peu partout… oui, un guide, c'est comme ça qu'on peut voir la chose. Sauf que je ne quitte plus vraiment cette chaise, compte tenu de mon âge, et que je me contente de t'indiquer des coins qu'il te serait utile de visiter dans notre belle cité. Ça ne te coûtera rien."~ */
  IF ~~ THEN REPLY #11049 /* ~"Pourquoi est-ce gratuit ?"~ */ GOTO 14
  IF ~~ THEN REPLY #11050 /* ~"Quel âge as-tu ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #11051 /* ~"Un rabatteur impotent ne peut pas demander un prix raisonnable, mon gars. Par les Puissances, ce serait injuste de faire payer un sac de mots !"~ */
  IF ~~ THEN REPLY #11052 /* ~"Quel âge as-tu ?"~ */ GOTO 15
  IF ~~ THEN REPLY #11053 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11054 /* ~"C'est vrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #11055 /* ~"Je suis assez vieux pour me débrouiller, mon gars, et trop vieux pour me balader !" Il tire sur sa pipe. "Oh, disons que mes plus belles années sont derrière moi et que mon cœur ne bat plus que pour quelques fers."~ */
  IF ~~ THEN REPLY #11056 /* ~"Quels fers ?"~ */ GOTO 16
  IF ~~ THEN REPLY #11057 /* ~"D'accord. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11058 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #11059 /* ~"Mon gars, sans vouloir jouer au rabat-joie, j'espère qu'un jour un saint homme viendra ici, au Cadavre fumant, et m'absoudra de quelques-uns de mes péchés, afin que je puisse poursuivre ma route et quitter ce plan pour de bon."~ */
  IF ~~ THEN REPLY #11060 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11061 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.2
  SAY #11062 /* ~"Mon gars, pour arborer autant de cicatrices, tu dois avoir des ennuis, soit avec toi-même, soit avec les autres !" Ebb fait mine de te fusiller du regard. "Pour qui est-ce que tu prends le vieil Ebb ? Pour un aveugle ?! Ha ! Bon, je suis un peu usé sur les bords, mais j'ai encore des yeux et une tête ! Alors, quel genre de problème est-ce que tu traînes dans ton sillage ? Je peux peut-être t'aider ?"~ */
  IF ~~ THEN REPLY #11063 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11064 /* ~"Quelques problèmes. C'est tout."~ */ GOTO 11
  IF ~~ THEN REPLY #11065 /* ~"Quelques problèmes : à mon réveil, j'étais à la Morgue, et je crois que j'ai oublié qui je suis."~ */ GOTO 12
  IF ~~ THEN REPLY #11066 /* ~"Je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.1
  SAY #11067 /* ~"Drôle de question, mon gars. À ton avis ? Je tue le temps dans un décor agréable, à boire une chopine de bière, à fumer de la bonne herbe à pipe et à croiser des gens intéressants. Une façon idéale de passer sa journée, je trouve ! Pas vrai ? Pas vrai ?" Ebb te tape sur l'épaule et éclate de rire.~ */
  IF ~~ THEN REPLY #11068 /* ~"'Vrai', en effet. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11069 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2 25.3
  SAY #11070 /* ~"Tu es au Cadavre fumant, mon gars. Il y a plus élégant… mais c'est un bar qui a son charme."~ */
  IF ~~ THEN REPLY #11071 /* ~"Parle-moi des clients d'ici."~ */ GOTO 20
  IF ~~ THEN REPLY #11072 /* ~"Qui est le cadavre fumant, là-bas ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11073 /* ~"Qu'est-ce qu'il y a de bon à boire ici ?"~ */ GOTO 22
  IF ~~ THEN REPLY #11074 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11075 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 22.0
  SAY #11076 /* ~"Bon, t'as O, qui prétend être une lettre plutôt qu'un individu ; des Rectifieurs qui attendent un criminel ; deux abishaï en perm' loin de la Guerre Sanglante ; un githzeraï, là, qui te guette depuis tout à l'heure… ce qui n'est pas si étonnant, on est prudent, dans son peuple ; et Alaïs, là-bas, un béjaune trop à l'étroit dans ses braies, si tu vois ce que je veux dire. Si tu veux des informations sur les plans, tu devrais parler à Candrian Porteguigne, il en sait plus que bien d'autres."~ */
  IF ~~ THEN REPLY #11077 /* ~"Qui est le cadavre fumant, là-bas ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11078 /* ~"Qu'est-ce qu'il y a de bon à boire ici ?"~ */ GOTO 22
  IF ~~ THEN REPLY #11079 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11080 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 22.1
  SAY #11081 /* ~"Oh, ce n'est pas un cadavre, mon gars… il n'est pas mort. À ce qu'on sait, le vieil Ignus est encore en vie dans sa rôtissoire. Même s'il n'y a aucun moyen d'en être sûr." Ebb plisse le nez. "Et des fois il pue, que c'en est abominable. C'est pour ça que je fume la pipe… pour chasser cette puanteur." Il glousse.~ */
  IF ~~ THEN REPLY #11082 /* ~"Comment est-il arrivé là ?"~ */ GOTO 23
  IF ~~ THEN REPLY #11083 /* ~"J'ai d'autres questions…"~ */ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 19.2 20.1
  SAY #11084 /* ~"Certains te diront que je ne jure que par Baator pour ce qui est des boissons. En fait, il y en a que j'aime et d'autres qui me laissent sur ma soif. L'une de mes préférées, ici, ce sont les semences de feu d'Arborée… tu les poses sur ta langue, un peu d'air, de salive et d'alcool, et hop ! tu craches du feu. Ou du moins c'est l'impression que ça donne."~ */
  IF ~~ THEN REPLY #11085 /* ~"Parle-moi des clients d'ici."~ */ GOTO 20
  IF ~~ THEN REPLY #11086 /* ~"Qui est le cadavre fumant, là-bas ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11087 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11088 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #11089 /* ~Ebb tire sur sa pipe pendant un moment, comme s'il songeait à la meilleure manière de tourner sa réponse. "Ignus avait autant d'ennuis qu'il connaissait de sorts, et les deux font rarement bon ménage, si tu vois ce que je veux dire. Il aimait…" Ebb tire sur sa pipe, et un panache de fumée s'élève vers le plafond. "… et bien, mon gars, il aimait faire brûler des trucs, et il a fini par s'en prendre aux maisons et aux gens et à créer toutes sortes de problèmes."~ */
  IF ~~ THEN REPLY #11090 /* ~"Et alors ?"~ */ GOTO 24
  IF ~~ THEN REPLY #11091 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11092 /* ~"Dommage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11093 /* ~"Bon, ça se passait en général ici et j'admets que la Ruche ne fait pas partie des priorités de l'Harmonium quand il s'agit de faire respecter la loi…" Ebb a l'air un rien penaud. "Ce qui est une erreur de notre part, car on en a plus besoin ici qu'ailleurs. En tout cas, la communauté de la magie a décidé de rendre justice. Les voyants, les guérisseuses et les rebouteux du quartier ont uni leurs maigres talents et ont réussi à jeter un sort sur Ignus en le punissant par où il avait pêché." Du tuyau de sa pipe, Ebb désigne la silhouette. "Et le voilà, qui brûle du matin au soir et du soir au matin. Il est resté en vie, ce qui n'était sans doute pas le but recherché."~ */
  IF ~~ THEN REPLY #11094 /* ~"Hm. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11095 /* ~"Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 7.3 8.1 9.1 10.0 11.0 12.0 14.1 15.1 16.0 17.0 18.0 19.3 20.2 21.1 22.2 23.1 24.0 26.3 29.1 30.0 31.0 32.1 33.0 34.0 35.3 36.3 37.3 38.1 39.2 40.1 41.3 42.2 44.1 45.1 46.2 47.0 48.0
  SAY #11096 /* ~"Oui, mon gars ? Qu'est-ce que tu veux savoir ?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11097 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 26
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11098 /* ~"J'ai perdu un journal."~ */ GOTO 32
  IF ~~ THEN REPLY #11099 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #11100 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 19
  IF ~~ THEN REPLY #11101 /* ~"Parle-moi de Sigil et de ses environs."~ */ GOTO 33
  IF ~~ THEN REPLY #11102 /* ~"Quels autres endroits peux-tu recommander ?"~ */ GOTO 47
  IF ~~ THEN REPLY #11103 /* ~"Rien, je suppose. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11104 /* ~"Pharod ?" Ebb se rembrunit et retire la pipe de sa bouche. "Dis-moi, mon gars, qu'est-ce que tu peux bien vouloir d'un bige pareil ?"~ */
  IF ~~ THEN REPLY #11105 /* ~"Je crois que je le connaissais."~ */ GOTO 27
  IF ~~ THEN REPLY #11106 /* ~"Je crois qu'il m'a volé des affaires."~ */ GOTO 28
  IF ~~ THEN REPLY #11107 /* ~"Ça ne te regarde pas. Que sais-tu sur lui ?"~ */ GOTO 29
  IF ~~ THEN REPLY #11108 /* ~"Rien. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11109 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11110 /* ~"Ben, dommage pour toi, alors. Peut-être qu'il y a des choses qu'il vaut mieux qu'tu oublies, qui sait ?" Ebb tire une longue bouffée de sa pipe.~ */
  IF ~~ THEN REPLY #11111 /* ~"Que sais-tu de lui ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #11112 /* ~"Oh, sans aucun doute, mon gars, sans aucun doute." Ebb grommèle tout en mâchant le tuyau de sa pipe. "C'est une araignée cupide. Tout ce qui n'est pas bien attaché finit par se retrouver chez lui. Il aurait dû faire partie des Marqués. Tu lui donnes ça…" Un doigt. "… et il te prend ça." Le bras.~ */
  IF ~~ THEN REPLY #11113 /* ~"Qu'est-ce que tu sais sur lui ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.0 28.0 32.0
  SAY #11114 /* ~"Bon, je ne sais pas tout de lui, mais j'ai percé une partie de son soltif. Si tu comptes pister cette araignée et la clouer au mur, alors autant que tu connaisses la chanson… ou du moins le refrain." Il s'interrompt pour tapoter sa pipe. "Pharod a fait son nid sous le Square du Chiffonnier il n'y a pas si longtemps. Il a réuni autour de lui des Récupérateurs et des gangs et a démarré ce qu'on pourrait peu ou prou considérer comme une faction de récupération… ça vaut ce que ça vaut…"~ */
  IF ~~ THEN REPLY #11115 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 30
  IF ~~ THEN REPLY #11116 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11117 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11118 /* ~"Si tu cherches Pharod, d'une part tu es cinglé, et d'autre part il va te falloir quitter les sentiers battus et trouver le Square du Chiffonnier. La chanson dit que Pharod a établi sa guitoune quelque part dans le coin. Et j'ai beau être un vieux bonhomme qui a couru l'anneau plusieurs fois, je ne sais pas où au juste. Pharod doit vouloir garder le soltif sur l'endroit où se trouve son repaire. Si tu veux bel et bien le dénicher, va donc Place des Chiffonniers et tâche de te renseigner auprès des gens du coin. Mais sois prudent : il y a plein de types, là-bas, qui sont fichus de te sourire comme de t'arracher les boyaux pour s'en faire une harpe, mon gars."~ */
  IF ~~ THEN REPLY #11120 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11121 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #11122 /* ~NULL NODE~ */
  IF ~~ THEN REPLY #11123 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11124 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1
  SAY #11125 /* ~"Tu as perdu un journal ? Ce n'était que du papier couvert de mots ? Rien d'autre ? Parce que je vois mal les affranchis du coin se donner la peine de le conserver, à moins qu'il ne contienne des passages juteux. Les livres n'ont pas la cote, par ici. Je ne sais pas ce que tu pourrais faire…" Ebb tire une bouffée de sa pipe, puis claque des doigts. "Au fait, mon gars, si c'est Pharod qui t'a ramassé dans la rue, il a peut-être une idée de l'endroit où se trouve ton journal… sans doute dans son trésor de guerre, si tu veux mon avis. En général, un cadavre n'a guère la possibilité de conserver ses biens quand les Récupérateurs lui tombent dessus, ni de les réclamer ensuite…"~ */
  IF ~~ THEN REPLY #11126 /* ~"Parle-moi de Pharod."~ */ GOTO 29
  IF ~~ THEN REPLY #11127 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11128 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 5.3 25.4
  SAY #11129 /* ~Ebb rigole. "Mais c'est qu'on a de l'ambition ! Si tu veux savoir ce qu'il y a hors de la cité, adresse-toi à Candrian Porteguigne, là-bas : c'est le voyageur de la communauté, ici. Pour le reste, et bien… je peux te parler de la Dame, des dabus, des clés et des portails, de la mesure du temps, du plan de la cité… Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #11130 /* ~"En fait, réponds juste à d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11131 /* ~"Parle-moi de la Dame."~ */ GOTO 35
  IF ~~ THEN REPLY #11132 /* ~"Parle-moi des dabus."~ */ GOTO 39
  IF ~~ THEN REPLY #11133 /* ~"Parle-moi du temps à Sigil."~ */ GOTO 40
  IF ~~ THEN REPLY #11134 /* ~"Parle-moi du plan de la cité."~ */ GOTO 41
  IF ~~ THEN REPLY #11135 /* ~"Parle-moi des clés et des portails."~ */ GOTO 43
  IF ~~ THEN REPLY #11136 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2 36.2 37.2 38.0 39.1 40.0 41.2 42.1 44.0 45.0 46.1
  SAY #11137 /* ~"Qu'est-ce que tu veux savoir d'autre sur la Cage ?"~ */
  IF ~~ THEN REPLY #11660 /* ~"En fait, réponds juste à d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11661 /* ~"Parle-moi de la Dame."~ */ GOTO 35
  IF ~~ THEN REPLY #11662 /* ~"Parle-moi des dabus."~ */ GOTO 39
  IF ~~ THEN REPLY #11663 /* ~"Parle-moi du temps à Sigil."~ */ GOTO 40
  IF ~~ THEN REPLY #11664 /* ~"Parle-moi du plan de la cité."~ */ GOTO 41
  IF ~~ THEN REPLY #11665 /* ~"Parle-moi des clés et des portails."~ */ GOTO 43
  IF ~~ THEN REPLY #11666 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.1 39.0
  SAY #11138 /* ~"Nul n'en sait beaucoup à son sujet et ceux qui savent quoi que ce soit ne savent presque rien. Elle reste un mystère. Si tu la croises, et plaise aux Puissances que cela te sera épargné, sache qu'elle est aussi silencieuse que mortellement dangereuse. Elle n'est pas mauvaise, non, mais elle garde le soltif sur elle et sur Sigil. Si certains l'ont percé, ils ont atterri dans les dédales."~ */
  IF ~~ THEN REPLY #11139 /* ~"Continue."~ */ GOTO 36
  IF ~~ THEN REPLY #11140 /* ~"Dans les dédales ? Que veux-tu dire ?"~ */ GOTO 38
  IF ~~ THEN REPLY #11141 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11142 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11143 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11144 /* ~"Il y a peu de risque pour que tu la rencontres, sauf si tu commets un crime capital à ses yeux : faire du mal à plein de gens, tuer un dabus, défier son règne, l'adorer au sens religieux… Ça, elle déteste, semble-t-il, comme elle déteste qu'on se mêle de ce que trafiquent les dabus, qui doivent être à ses ordres. Si tu as du pot, tu n'auras affaire qu'aux Rectifieurs. Mais si elle s'occupe de ton cas, tu seras mort dès que son ombre sera tombée sur toi."~ */
  IF ~~ THEN REPLY #11145 /* ~"Que voulais-tu dire quand tu as dit qu'ils avaient 'atterri dans les dédales' ?"~ */ GOTO 38
  IF ~~ THEN REPLY #11146 /* ~"Continue, je te prie."~ */ GOTO 37
  IF ~~ THEN REPLY #11147 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11148 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11149 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #11150 /* ~"Oh, la Dame peut faire à peu près ce qu'elle veut dans Sigil. L'agrandir, la rétrécir, créer de nouveaux portails, en fermer de plus anciens, empêcher que la Guerre Sanglante s'étende à nos rues ou que les gens débarquent ici, en ville, par téléportation, et tenir les Puissances à l'écart."~ */
  IF ~~ THEN REPLY #11151 /* ~"Que voulais-tu dire quand tu as dit qu'ils avaient 'atterri dans les dédales' ?"~ */ GOTO 38
  IF ~~ THEN REPLY #11152 /* ~"Qui sont les puissances ?"~ */ GOTO 46
  IF ~~ THEN REPLY #11153 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11154 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11155 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.1 36.0 37.0 46.0
  SAY #11156 /* ~"Oui, il arrive que des affranchis soient envoyés dans un endroit où ils ne pourront plus faire de mal à personne. La Dame prend un coin de Sigil, et elle en fait une poche dimensionnelle, un dédale. Elle y place celui ou celle qui lui a causé du tort et le laisse pourrir là-dedans." Ebb tire sur sa pipe. "Et une fois que la Dame a posé son regard sur toi, tu ne peux pas éviter le dédale. Tu as beau te cacher, ou fuir, elle finit par t'avoir. Tu es en train de parcourir une ruelle, ou de franchir un portail, ou de prendre à droite au bout d'une rue que tu connais par cœur, et soudain te voilà dans un endroit inconnu. Bon, on peut en sortir. Il y a toujours une issue quelque part… un portail que la Dame a mis là. Il faut découvrir où il est et comment il fonctionne."~ */
  IF ~~ THEN REPLY #11157 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11158 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11159 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.2 34.2
  SAY #11160 /* ~"Ces drôles d'affranchis qui se déplacent en flottant et parlent en petits dessins ?" Il rit. "Drôle de spectacle, pas vrai ? Ce sont les ouvriers de la Dame, ils sont à ses ordres et veillent à ce que Sigil demeure en bon état : ils calfeutrent les murs, abattent les vieux bâtiments, en construisent des neufs, installent des portails, en murent d'autres, et ainsi de suite. Ils sont plutôt neutres. Ne t'avise pas d'en tuer un, voire de l'empêcher de travailler, ou tu attireras aussitôt la colère de la Dame sur toi."~ */
  IF ~~ THEN REPLY #11161 /* ~"Parle-moi de la Dame."~ */ GOTO 35
  IF ~~ THEN REPLY #11162 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11163 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11164 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 33.3 34.3
  SAY #11165 /* ~"À Sigil, on mesure le temps à la brillance du ciel. Tu vois, la plupart des mondes ont un soleil et une lune ; on n'a qu'un éclat qui s'atténue et se ravive selon un cycle régulier. Ce qu'ailleurs on appelle minuit, ici, c'est l'anti-pic ; et le midi, le pic. Ça se base sur un pic et un anti-pic de brillance. Cinq heures du pic, comme on dit ici, dans la Cage, c'est cinq heures de l'après-midi sur d'autres mondes."~ */
  IF ~~ THEN REPLY #11166 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11167 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11168 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 33.4 34.4
  SAY #11169 /* ~"Ouf. Laisse-moi m'humecter le gosier." Il boit une lampée. "La cité flotte au-dessus d'un pic d'une hauteur infinie - l'Aiguille. Elle repose sur le flanc, comme une roue de chariot détachée de son axe, mais aucun rayon ne la relie à l'aiguille. Elle se divise en six quartiers, chacun doté d'une fonction précise. Là, tu es dans la Ruche qui, à mon avis, a pour fonction d'être minable au point de mettre en valeur le grandiose du reste !" Il rit. "Les factions… des clubs philosophiques ou des gangs, chacun ses opinions… se partagent le gouvernement de la cité."~ */
  IF ~~ THEN REPLY #11170 /* ~"Faisais-tu partie d'une faction ?"~ */ GOTO 45
  IF ~~ THEN REPLY #11171 /* ~"Continue."~ */ GOTO 42
  IF ~~ THEN REPLY #11172 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11173 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11174 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #11175 /* ~"On appelle Sigil le carrefour des plans, la Cité des Portes et la Cage. Elle recèle de portails qui ouvrent sur l'ensemble de la création, à ce qu'on dit, et toutes sortes de bestioles y viennent pour commercer, pour y habiter ou pour sauter d'un endroit à l'autre. Ça, mon gars, c'est le résumé ; il te faudra découvrir Sigil par toi-même."~ */
  IF ~~ THEN REPLY #11176 /* ~"Tu as parlé de portails ?"~ */ GOTO 43
  IF ~~ THEN REPLY #11177 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11178 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11179 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 33.5 34.5 42.0
  SAY #11180 /* ~"Il y a une raison pour que Sigil s'appelle la Cité des Portes… les portails. Ce sont… et bien, des portes qui mènent partout dans le multivers, sauf qu'elles ne ressemblent pas à des portes… Tout espace clos convient : fenêtre, porte, cadre de tableau, nid de poule, cercle de tonneau, échafaudage, placard… il peut y avoir un portail là-dedans, qui attend juste la clé adéquate pour s'ouvrir sur quelque part dans le multivers. Quant aux clés… "~ */
  IF ~~ THEN REPLY #11181 /* ~"Continue."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11182 /* ~"Oui, tout portail a besoin d'une clé pour s'ouvrir. Qu'est-ce qui sert de clé ? Plein de choses : fredonner un air à proximité du portail, danser une gavotte, ressentir une humeur, tenir à la main un bout de l'endroit où tu veux aller… Dans mon jeune âge, j'ai persuadé une fille qu'il suffisait d'embrasser un garçon près du portail de l'Arcadie pour l'ouvrir… Il s'est avéré que j'avais raison et on en a fait, des voyages en Arcadie. Il doit exister plein de portails que nul n'a encore découverts. Il y en a dont on apprend l'existence en contactant la personne adéquate. Le plus dur, c'est de percer le soltif de tel ou tel portail : où il se trouve et quelle en est la clé. Mais je t'avertis, jouer à saute-portails, ce n'est pas un passe-temps pour un type comme toi. Et tu ne devrais pas te balader dans Sigil à la nuit. Reste sur les artères principales en plein pic et regarde où tu mets les pieds."~ */
  IF ~~ THEN REPLY #11183 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11184 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11185 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.0
  SAY #11186 /* ~Ebb lève la main comme pour te retenir et s'esclaffe. "Minute, mon gars ! Je ne suis pas un ancien membre… on dit, et on a bien raison : Harmonium un jour, Harmonium toujours. On est des affranchis qui essaient d'éviter les ennuis à notre cité. Il ne faudrait pas que les gens fassent basculer l'aiguille, se découpent en morceaux avec trop d'enthousiasme ou lancent la révolution. On essaie juste de maintenir la paix, mon gars, et, le plus souvent, on fait du bon boulot."~ */
  IF ~~ THEN REPLY #11187 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11188 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11189 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.1
  SAY #11190 /* ~"Une autre façon de parler des Dieux, mon gars. Et il y en a des foules entières sur les plans." Il tire sur sa pipe. "Mais, bon, ils ne peuvent pas venir à Sigil… la Dame possède le moyen de le leur interdire, et ce moyen, nul ne le connaît. En tout cas, ça a évité à Sigil de tomber entre des mains étrangères."~ */
  IF ~~ THEN REPLY #11191 /* ~"Que voulais-tu dire quand tu as dit qu'ils avaient 'atterri dans les dédales' ?"~ */ GOTO 38
  IF ~~ THEN REPLY #11192 /* ~"J'ai d'autres questions sur Sigil."~ */ GOTO 34
  IF ~~ THEN REPLY #11193 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11194 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 25.5
  SAY #11195 /* ~Ebb tire sur sa pipe d'un air pensif et te dévisage. "C'est sans doute la meilleure guitoune où tu pouvais débarquer… à en juger par tes tatouages, tu dois aimer porter des dessins sur ton corps, auquel cas il y a un salon de tatouage près d'ici. Si possible, tiens-toi à l'écart de l'Allée des Angles Dangereux… Ignus y a mis le feu il n'y a pas si longtemps et depuis lors une bande de vilains affranchis a établi son quartier général dans cette espèce de désert."~ */
  IF ~~ THEN REPLY #11196 /* ~"J'ai d'autres questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11197 /* ~"Merci. Au revoir, Ebb."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 58 57 56 55 54 53 52 51 49 50 even though they appear after this state */
~  Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11198 /* ~"Jamais rassasié, hein ?" Ebb incline la tête pour te toiser. "Ça fait plaisir de te revoir, mon gars."~ */
  IF ~~ THEN REPLY #11199 /* ~"Bonjour, Ebb. J'ai des questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #11200 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 50 even though they appear after this state */
~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 49 // from:
  SAY #56844 /* ~Ebb te fait un signe de tête. "Beau travail à Maudith, l'ami."~ */
  IF ~  Global("AR0902_Visited","GLOBAL",1)
~ THEN REPLY #56845 /* ~"Merci, Ebb. Ça n'aurait pas été possible sans ton aide. Au revoir."~ */ EXIT
  IF ~  Global("AR0902_Visited","GLOBAL",0)
~ THEN REPLY #56846 /* ~"Merci, Ebb. C'était un voyage difficile. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  NearbyDialog("DMorte")
Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #56847 /* ~Ebb te fait un signe de tête. "Beau travail à Maudith, l'ami."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 597
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #56848 /* ~Ebb te fait un signe de tête. "Joli boulot là-bas, l'ami." Il reporte son attention sur son verre.~ */
  IF ~~ THEN REPLY #56850 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",402)
Global("AR0900_Visited","GLOBAL",1)
Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #56849 /* ~Ebb te fait un clin d'œil pendant que tu rentres, puis reporte son attention sur son verre.~ */
  IF ~~ THEN REPLY #56851 /* ~"Content de te revoir aussi."~ */ EXIT
END

IF WEIGHT #4 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 53 // from:
  SAY #56852 /* ~Tu aperçois un homme légèrement voûté. Sa barbe touffue est aussi grise que son épaisse crinière. Il porte une paire d'épaulettes en guise d'armure et tient un casque à la main. Il fume la pipe et porte une blague à tabac à la ceinture. Il est très fort, mais quelque peu enrobé et a du mal à respirer. C'est manifestement le chef du groupe rassemblé en ces lieux. "Bonjour, matois, tu ferais bien d'expliquer ce que tu fais ici."~ */
  IF ~~ THEN REPLY #56853 /* ~"Je regardais juste ce qu'il y avait là-dedans."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #56854 /* ~"Qu'est-ce que *tu* fais ici ?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56855 /* ~"Il y a beaucoup de chaos dans cette ville, et je cherche des alliés pour l'éliminer."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56856 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #56857 /* ~"J'allais justement partir…"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 63
END

IF WEIGHT #5 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",0)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 54 // from:
  SAY #56858 /* ~Tu aperçois Ebb Craquerotules. Souriant, il laisse échapper une volute de fumée en t'accueillant : "Le chaos te souhaite la bienvenue, voyageur. Qu'est-ce qui t'amène en ces lieux ?"~ */
  IF ~~ THEN REPLY #56859 /* ~"Je regardais juste ce qu'il y avait là-dedans."~ */ GOTO 59
  IF ~~ THEN REPLY #56860 /* ~"Qu'est-ce que *tu* fais ici ?"~ */ GOTO 60
  IF ~~ THEN REPLY #56861 /* ~"Il y a beaucoup de chaos dans cette ville, et je cherche des alliés pour l'éliminer."~ */ GOTO 61
  IF ~~ THEN REPLY #56862 /* ~"J'allais justement partir…"~ */ GOTO 63
END

IF WEIGHT #6 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 55 // from:
  SAY #56863 /* ~Tu aperçois un homme légèrement voûté. Sa barbe touffue est aussi grise que son épaisse crinière. Il porte une paire d'épaulettes en guise d'armure et tient un casque à la main. Il fume la pipe et porte une blague à tabac à la ceinture. Il est très fort, mais quelque peu enrobé et a du mal à respirer. C'est manifestement le chef du groupe assemblé en ces lieux. "Bienvenue, camarade. Nous nous rencontrons sous le signe de l'anarchie."~ */
  IF ~~ THEN REPLY #56864 /* ~"Qu'est-ce que tu fais ici ?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 60
  IF ~~ THEN REPLY #56865 /* ~"Il y a beaucoup de chaos dans cette ville, et je cherche des alliés pour l'éliminer."~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #56866 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 62
END

IF WEIGHT #7 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",1)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 56 // from:
  SAY #56867 /* ~"Bienvenue ! fait-il en riant. Nous nous rencontrons de nouveau sous le signe de l'anarchie !"~ */
  IF ~~ THEN REPLY #56868 /* ~"Qu'est-ce qui *t'amène* ici ? Et pourquoi est-ce que tu parles d'anarchie ?"~ */ GOTO 60
  IF ~~ THEN REPLY #56869 /* ~"J'ai besoin d'aide, Ebb."~ */ GOTO 61
END

IF WEIGHT #8 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #56870 /* ~Tu aperçois un homme légèrement voûté. Sa barbe épaisse est aussi grise que son épaisse crinière. Il porte une paire d'épaulettes en guise d'armure et tient un casque à la main. Il fume la pipe et porte une blague à tabac à la ceinture. Il est très fort, mais quelque peu enrobé et a du mal à respirer. C'est manifestement le chef du groupe assemblé en ces lieux. Il te fait signe d'approcher.~ */
  IF ~~ THEN REPLY #56871 /* ~Va vers lui.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #56872 /* ~Refuse.~ */ DO ~SetGlobal("Know_Ebb","GLOBAL",1)
~ GOTO 69
END

IF WEIGHT #9 ~  !Global("No_Anarchy","AR0902",1)
Global("Current_Area","GLOBAL",902)
Global("Join_Anarchists","GLOBAL",2)
Global("Know_Ebb","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #56873 /* ~Ebb te fait un clin d'œil et te fait signe d'approcher. "Tu as choisi un chemin long et difficile, matois, mais je suis ici pour te le faciliter. Tu me suis ?"~ */
  IF ~~ THEN REPLY #56874 /* ~"Qu'est-ce que tu fais avec les anarchistes, Ebb ? Je croyais que tu étais de l'Harmonium."~ */ GOTO 76
  IF ~~ THEN REPLY #56875 /* ~"Dis-le-moi."~ */ GOTO 72
  IF ~~ THEN REPLY #56876 /* ~"Non. Va caguer."~ */ GOTO 75
END

IF ~~ THEN BEGIN 59 // from: 53.0 54.0 63.0
  SAY #56877 /* ~Il se baisse autant que sa panse le lui permet. "Comme tu le vois… un entrepôt plein de conspirateurs. Avec la chute de l'ancien ordre, nous pensons qu'il vaut mieux s'assurer que ses décombres sont balayées et que les gens découvrent une nouvelle liberté. Nous sommes dangereux, tu vois."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #56878 /* ~"Les gens ne seront pas plus libres après avoir été tués par les monstres qui ravagent la cité."~ */ GOTO 64
  IF ~~ THEN REPLY #56879 /* ~"Tu crois que c'est le meilleur moment pour faire ça ?"~ */ GOTO 67
  IF ~~ THEN REPLY #56880 /* ~"Pas aussi dangereux que moi. Tu vas voir." Attaque-les.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #56881 /* ~"On ne veut plus de chaos dans cette ville."~ */ GOTO 68
END

IF ~~ THEN BEGIN 60 // from: 53.1 54.1 55.0 56.0
  SAY #56882 /* ~"Eh bien, nous faisons des plans et complotons, mon ami. Avec la chute de l'ordre de la ville, nous sommes dans… une position unique… pour nous assurer que notre opinion se fait entendre. Et je suis responsable de cette bande d'aventuriers - juste pour ce qui est de donner des ordres, bien sûr !"~ */
  IF ~~ THEN REPLY #56884 /* ~"Qu'est-ce que vous combinez exactement ?"~ */ GOTO 66
  IF ~~ THEN REPLY #56885 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 53.2 54.2 55.1 56.1
  SAY #56886 /* ~"Tu cherches des alliés contre le chaos ? Et pourtant, nous, nous voulons accroître le chaos, renverser l'ancien ordre et faire en sorte que l'ancien système ne revienne pas. C'est notre boulot, après tout…"~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #56887 /* ~"C'est peut-être ce qu'on fait, mais on ne détruit pas pour le plaisir. On détruit pour que d'autres puissent reconstruire. Il ne restera plus rien de Maudith à ce train-là."~ */ GOTO 64
  IF ~~ THEN REPLY #56888 /* ~"Pourquoi veux-tu accroître le chaos ? La ville est déjà dans les Carcères et maintenant les habitants se font dévorer."~ */ GOTO 66
  IF ~~ THEN REPLY #56889 /* ~"Alors il est de mon devoir de t'arrêter. Prépare-toi à mourir."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 53.3 55.2 60.1
  SAY #56890 /* ~"Je suis Ebb Craquerotules, l'ami, ex-Troisième mesure de l'Harmonium et actuellement chef de cette cellule de la Ligue révolutionnaire. Je suis ici pour former mes hommes et préparer la ville à se débarrasser de l'ancien ordre."~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #56891 /* ~"L'ancien ordre est presque de l'histoire ancienne."~ */ GOTO 64
  IF ~~ THEN REPLY #56893 /* ~"Vous êtes des anarchistes ? Alors vous devez être arrêtés."~ */ GOTO 69
  IF ~~ THEN REPLY #56896 /* ~"Et qu'est-ce que vous allez faire de la ville ?"~ */ GOTO 66
  IF ~~ THEN REPLY #56897 /* ~"Dans ce cas, je m'en vais."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 53.4 54.3 62.3
  SAY #56898 /* ~"Partir ? Ah, mais mon ami, c'est impossible. Vois-tu, nous ne pouvons pas te laisser partir maintenant que tu as vu nos visages."~ */
  IF ~~ THEN REPLY #56899 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 59
  IF ~~ THEN REPLY #56900 /* ~"Essaie seulement de m'arrêter."~ */ GOTO 69
END

IF ~~ THEN BEGIN 64 // from: 59.0 61.0 62.0 66.0 68.0 69.0 70.0
  SAY #56901 /* ~Son air confiant disparaît pendant un instant. "Qu'est-ce que tu veux dire ?"~ */
  IF ~~ THEN REPLY #56902 /* ~"Ce que je veux dire, c'est que pendant que vous complotiez à renverser le gouvernement de la cité, le mal s'est emparé de Maudith et détruit ce qui reste de la cité."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 67.0
  SAY #56903 /* ~"Mais… nous devons faire quelque chose ! Tout notre travail sera inutile s'ils sont tous morts !" Il se retourne vers ses frères. "Nous devons y aller, ou nous aurons oeuvré pour rien ! Allez !" Il s'élance vers la porte.~ */
  IF ~~ THEN REPLY #61567 /* ~"Bonne chance…"~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 60.0 61.1 62.2
  SAY #56905 /* ~"Lorsque les gens verront que leurs chefs les ont laissé tomber, il est probable qu'ils balayeront les structures du pouvoir qui les a opprimés et qu'ils donneront quelque chose de nouveau, de superbe. Nous les aiderons."~ */
  IF ~~ THEN REPLY #56906 /* ~"Oh, alors tu vas aider à combattre les fiélons ?"~ */ GOTO 64
  IF ~~ THEN REPLY #56907 /* ~"Comment comptez-vous faire quelque chose de beau avec ça ?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 67 // from: 59.1
  SAY #56908 /* ~"Qu'est-ce que tu veux dire exactement ?"~ */
  IF ~~ THEN REPLY #56909 /* ~"Ce que je veux dire, c'est que pendant que vous complotiez à renverser le gouvernement de la cité, le mal s'est emparé de Maudith et détruit ce qui reste de la cité."~ */ DO ~SetGlobal("No_Anarchy","AR0902",1)
~ GOTO 65
  IF ~~ THEN REPLY #56910 /* ~"Le moment ne paraît pas très opportun."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 59.3 67.1
  SAY #56911 /* ~"Le chaos sauvera cette ville, l'ami. Avec le glissement vers les Carcères, il est clair que c'est l'une des croyances les plus ancrées chez les habitants."~ */
  IF ~~ THEN REPLY #56912 /* ~"Oui, et le mal semble être de la partie. Il faut qu'on sorte la ville d'ici avant d'être tous morts."~ */ GOTO 64
  IF ~~ THEN REPLY #56913 /* ~"Alors vous cautionnez ce qui se passe ici ?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 57.1 62.1 63.1 71.0 71.1
  SAY #56914 /* ~"Je ne prends aucun plaisir à faire cela, l'ami… mais, si nécessaire, nous devons nous assurer que la ville se débarrassera de son administration corrompue." Il indique les autres conspirateurs. "Et en voici un bel exemple, de corruption…"~ */
  IF ~~ THEN REPLY #56915 /* ~"Pourquoi est-ce que vous faites ça ? Vous ne voyez pas que la ville est en train de s'écrouler ? Et ça n'a rien de positif."~ */ GOTO 64
  IF ~~ THEN REPLY #56916 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 66.1
  SAY #56917 /* ~Il soupire d'impatience. "Ce qui importe, c'est que, lorsque la ville aura été débarrassée de la corruption comme la pomme de son ver, quelque chose de nouveau émergera de sa destruction. Considère ça comme une traînée de poudre dans l'administration de la ville. Hé, hé."~ */
  IF ~~ THEN REPLY #56918 /* ~"On peut dire qu'elle est en feu."~ */ GOTO 64
  IF ~~ THEN REPLY #56919 /* ~"Alors vous cautionnez ce qui se passe ici ?"~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 68.1 70.1
  SAY #56920 /* ~"Sans aucun doute, l'ami. Sans aucun doute."~ */
  IF ~~ THEN REPLY #56921 /* ~"Alors on n'a plus rien à se dire. Au revoir."~ */ GOTO 69
  IF ~~ THEN REPLY #56922 /* ~"Alors il va falloir que je te tue pour remettre Maudith à sa place naturelle."~ */ GOTO 69
END

IF ~~ THEN BEGIN 72 // from: 57.0 58.1
  SAY #56923 /* ~Il se penche en avant pour murmurer à ton oreille. "Je sais ce que tu représentes pour la Ligue révolutionnaire. Je sais que tu t'es retourné contre les anarchistes. Je les ai infiltrés pour le compte de l'Harmonium, et je les trahis de l'intérieur. Nous devons rendre cette ville à l'Outreterre. Tu es de mon côté ?"~ */
  IF ~~ THEN REPLY #56924 /* ~"Oui."~ */ GOTO 73
  IF ~~ THEN REPLY #56925 /* ~"Jamais de la vie."~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0 76.0
  SAY #56926 /* ~"Alors joue le jeu avec moi. Nous allons remettre ces salauds d'anarchistes à leur place, hein ? Dis-moi que la ville a été envahie par les fiélons. Mais dis-le fort, pour qu'ils entendent."~ */
  IF ~~ THEN REPLY #56928 /* ~"Très bien." Tu hausses le ton. "La ville est infestée de fiélons et vous restez assis ici à réfléchir à la façon d'améliorer la vie des habitants. Si vous voulez vraiment gagner leur appui, commencez par leur montrer que vous vous souciez d'eux. Allez les sauver."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56929 /* ~Ebb te fait un clin d'œil, puis lève la tête afin que les autres Anarchistes voient son visage. "Mais… il faut agir ! Tout notre travail n'aura servi à rien s'ils sont morts !" Il se tourne vers les siens. "Il faut y aller, ou tout notre travail n'aura servi à rien ! Venez !" Il se précipite vers la porte.~ */
  IF ~~ THEN REPLY #56930 /* ~"Bonne chance…"~ */ DO ~SetGlobal("Spawn_Ebb","GLOBAL",0)
SetGlobal("No_Anarchy","AR0902",1)
AddexperienceParty(225000)
GiveItemCreate("SPWI505",Protagonist,1,0,0)
IncrementGlobal("Curst_Counter","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 58.2 72.1 76.1
  SAY #56931 /* ~"Alors, tu ne me laisses pas de choix. Si tu refuses de participer à la solution, tu fais partie du problème." Il se tourne vers ses compatriotes. "Il nous trahira à la moindre occasion. Saisissez-vous de lui."~ */
  IF ~~ THEN REPLY #56932 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 58.0
  SAY #56933 /* ~Il se penche vers toi, dans la puanteur de sa pipe fumante, et murmure : "Je suis un clandestin. Un agent triple. Un agent de l'Harmonium qui infiltre les Anarchistes et prétend agent double de l'Harmonium. Il faut avoir un raisonnement encore plus retors que ces biges pour les infiltrer… et je ne sais pas encore si ma couverture va tenir. Alors… tu vas m'aider à t'aider ?"~ */
  IF ~~ THEN REPLY #56934 /* ~"Qu'est-ce que je dois faire ?"~ */ GOTO 73
  IF ~~ THEN REPLY #56935 /* ~"Je ne peux pas faire ça."~ */ GOTO 75
END
