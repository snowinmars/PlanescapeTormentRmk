// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMOIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMOIRE~

IF ~  Global("Armoire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2879 /* ~Alors que tu t'apprêtes à fouiller l'armoire, elle recule soudain tandis que les tiroirs se ferment d'un coup sec. Un soupir dédaigneux s'en échappe…~ */
  IF ~~ THEN REPLY #2880 /* ~"Bonjour ?"~ */ DO ~SetGlobal("Armoire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42567 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7235 /* ~"'Bonjour', en effet." L'armoire soupire de nouveau. "Alors, qu'est-ce qu'on a là ? Un gredin qui en a après les froufrous de l'une de ces dames, hmmmnn ?"~ */
  IF ~~ THEN REPLY #42568 /* ~"Tu *parles* ?"~ */ GOTO 2
  IF ~~ THEN REPLY #42569 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #42570 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42571 /* ~"Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42532 /* ~"Si je parle ? Eh bien, oui."~ */
  IF ~~ THEN REPLY #42572 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #42573 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42574 /* ~"Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #42533 /* ~"Je m'appelle Luis. Et toi, qui *es-tu* ? Un impoli et grossier personnage qui se mêle de ce qui ne le regarde pas…"~ */
  IF ~~ THEN REPLY #42575 /* ~"Peu importe. Qu'est-ce que tu fais là ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42576 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #42534 /* ~"Eh bien, si tu tiens à le savoir… Je me suis transformé en armoire."~ */
  IF ~~ THEN REPLY #42577 /* ~"Mais *pourquoi* est-ce que tu t'es transformé en armoire dans cette Maison de tolérance ?"~ */ GOTO 5
  IF ~~ THEN REPLY #42578 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 12.0
  SAY #42535 /* ~"Si je me suis transformé en armoire, c'est parce que j'en avais *envie*, merci beaucoup. Ce n'est *pas* pour regarder les femmes se déshabiller, ni pour les voir ranger leurs sous-vêtements soyeux et parfumés dans mes tiroirs où ils peuvent se frotter à ma peau. De telles accusations insultent l'expert en magie que je suis… Je fais juste une expérience pour savoir ce que *c'est* que d'être une armoire. Les images, les odeurs, les sensations…"~ */
  IF ~~ THEN REPLY #42579 /* ~"Alors, toutes les femmes sont au courant ?"~ */ GOTO 6
  IF ~~ THEN REPLY #42580 /* ~"Très bien. J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42581 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42536 /* ~"Oui ! Bien sûr qu'elles sont au courant et elles approuvent de tout cœur… Enfin, pas exactement de tout cœur. Comme elles n'ont pas *parlé* de leur accord en ma présence - car elles ne savent pas que je suis une armoire - je ne veux pas qu'elles sachent qui je suis et je préférerais qu'elles continuent à tout ignorer."~ */
  IF ~  CheckStatGT(Protagonist,14,DEX)
~ THEN REPLY #42582 /* ~"Il faudra que tu me donnes quelque chose en échange de mon silence."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,DEX)
~ THEN REPLY #42583 /* ~"Il faudra que tu me donnes quelque chose en échange de mon silence."~ */ GOTO 9
  IF ~~ THEN REPLY #42584 /* ~"J'avais des questions à te poser…"~ */ GOTO 12
  IF ~~ THEN REPLY #42585 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42537 /* ~"Très bien ! Ouvre le troisième tiroir, espèce de bon à rien". Au moment où ta main entre dans le tiroir, celui-ci se referme violemment. Tu parviens tout juste à retirer tes doigts.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #42538 /* ~"Ha ha ! Crétin ! Idiot ! Je t'ai dit d'ouvrir le tiroir, pas d'y fourrer la main -" Comme pour illustrer ses propos, il referme violemment son tiroir, puis commence à tressaillir de rire.~ */
  IF ~~ THEN REPLY #42586 /* ~"Je vais de ce pas le leur dire."~ */ GOTO 11
  IF ~~ THEN REPLY #42587 /* ~"Je vais te couper en morceaux pour faire du feu."~ */ GOTO 10
  IF ~~ THEN REPLY #42588 /* ~"Très drôle. J'ai quelques questions, Luis…"~ */ GOTO 12
  IF ~~ THEN REPLY #42589 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #42539 /* ~"Très bien ! Ouvre le troisième tiroir, espèce de bon à rien". Au moment où ta main entre dans le tiroir, celui-ci se referme violemment. Tu ressens une douleur fulgurante alors que tu retires tes doigts meurtris.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1 11.0
  SAY #42540 /* ~"Tu n'en feras *rien* ! Même le plus *commun* des hommes sait que tout acte de violence est formellement interdit au sein de la Maison de tolérance… Tu en serais chassé. Et même si ce n'était *pas* le cas, je t'assure que ma pratique de l'Art est très impressionnante."~ */
  IF ~~ THEN REPLY #42590 /* ~"Bon, très bien… Je vais de ce pas leur parler de toi."~ */ GOTO 11
  IF ~~ THEN REPLY #42591 /* ~"J'avais des questions, alors…"~ */ GOTO 12
  IF ~~ THEN REPLY #42592 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.0
  SAY #42541 /* ~"Laisse-moi d'abord te dire une chose : ça fait un bon moment que je fréquente la Maison de tolérance… J'en connais un rayon sur ses occupants et ses activités. Je t'assure que ça ne t'apporterait rien de parler de moi ; non seulement tu me perdrais en tant que source d'informations potentielle, mais j'aurais disparu avant même que quelqu'un ne commence à enquêter sur tes révélations, et tu passerais pour un imbécile."~ */
  IF ~~ THEN REPLY #42593 /* ~"Alors, je pourrais te découper en morceaux pour faire du feu."~ */ GOTO 10
  IF ~~ THEN REPLY #42594 /* ~"Je comprends. Alors, j'aurais quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #42595 /* ~"Je vois. Alors, au revoir, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 6.2 8.2 10.1 11.1 13.0 14.0 15.0 16.0 17.0 18.0 19.1 20.0 21.0 32.0
  SAY #42542 /* ~"Oui ?"~ */
  IF ~~ THEN REPLY #42596 /* ~"Alors… Pourquoi est-ce que tu t'es transformé en armoire dans cette Maison de tolérance ?"~ */ GOTO 5
  IF ~~ THEN REPLY #42597 /* ~"Est-ce que tu peux reprendre ta forme normale sur simple commande ?"~ */ GOTO 13
  IF ~~ THEN REPLY #42598 /* ~Tu peux me parler de cet endroit ?"~ */ GOTO 14
  IF ~  Global("Nenny_Hint2","AR0605",3)
~ THEN REPLY #42599 /* ~"Nenny m'a dit qu'elle avait vu un homme quitter la chambre de Kimasxi Langue-de-Vipère… Je crois que c'était toi, Luis."~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",4)
~ GOTO 36
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #42600 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 15
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #42601 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 16
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #42602 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 17
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #42603 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 18
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42604 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 19
  IF ~  GlobalGT("Vivian","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #42605 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 21
  IF ~~ THEN REPLY #42606 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #42543 /* ~L'armoire semble réfléchir quelques instants. "Je n'ai nullement besoin de partager ce genre de secrets avec quelqu'un comme toi ! Et d'ailleurs, je n'ai aucune raison de reprendre ma forme normale pour le moment, car je n'ai pas encore expérimenté toutes les sensations liées au fait d'être une armoire. Il y a une certaine complexité à renfermer et trier du linge délicat embaumé de merveilleux parfums de femmes." Un tiroir s'ouvre et se referme, dans un bruit semblable à celui d'un soupir de contentement.~ */
  IF ~~ THEN REPLY #42607 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42608 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #42544 /* ~"Je préférerais que tu découvres tout ça par toi-même, plutôt que de tout t'apporter sur un plateau… Après tout, c'est déjà la moitié du plaisir de toute cette expérience. Je ne te dirai qu'une seule chose, que tu sais sans doute déjà d'ailleurs : cet endroit s'appelle la Maison de tolérance des Plaisirs Intellectuels et les prostituées sont des spécialistes des arts du langage et de la communication."~ */
  IF ~~ THEN REPLY #42609 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42610 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.4
  SAY #42545 /* ~"Oui, Ecco. Elle n'a sûrement pas toujours été muette, tu sais. Sinon, je suis presque sûr qu'elle aurait appris à communiquer d'une autre façon. Son mutisme doit être récent."~ */
  IF ~~ THEN REPLY #42611 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42612 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.5
  SAY #42546 /* ~"Je n'irais pas jusqu'à dire qu'elle est bien la fille de *Ravel*, mais *c'est* une guenaude noire - ça, j'en suis sûr. Il n'y a qu'à voir sa peau, ses yeux, sa vigueur et l'intérêt irrationnel qu'elle porte aux rêves des autres… Ces indices ne trompent pas. Il ne fait aucun doute que ce n'est que parce qu'elle nie catégoriquement sa vraie nature que Kesai n'est pas encore devenue une vieille mégère malhonnête, comme le deviennent toutes les guenaudes noires."~ */
  IF ~~ THEN REPLY #42613 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42614 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY #42547 /* ~"Oh mon dieu, oui… J'en *ai* entendu parler. Oh là là ! As-tu déjà eu le plaisir exquis de sentir ce parfum ?" Les tiroirs de l'armoire semblent frissonner de bonheur. "Absolument merveilleux. Malheureusement, j'ignore où tu pourrais trouver le parfum de Dame Viviane."~ */
  IF ~~ THEN REPLY #42615 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #66529 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.7
  SAY #42548 /* ~"J'ai entendu dire qu'elle portait un voile pourpre, mais qu'elle s'était récemment réfugiée dans sa chambre, tous volets fermés. Je ne sais pas ce qui s'est passé. Alors, son voile a disparu, c'est ça ?"~ */
  IF ~~ THEN REPLY #42616 /* ~"Oui. J'ai une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42617 /* ~"Oui. Au revoir, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.8
  SAY #42549 /* ~"Parmi les gens qui vivent à Sigil depuis un certain temps, rares sont ceux qui ne savent rien sur elle. Mais il y a quand même une chose qui m'intrigue : c'est vraiment elle qui t'intéresse ?"~ */
  IF ~~ THEN REPLY #42618 /* ~"Il faut que je la trouve."~ */ GOTO 20
  IF ~~ THEN REPLY #42619 /* ~"Peu importe. J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42620 /* ~"Oublie ce que je t'ai demandé sur elle. Au revoir, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42550 /* ~"Tu es fou, tu sais… complètement fou. Je crois que 'complètement azimuté' est le terme qui convient. Ravel a été chassée de Sigil il y a longtemps, et si jamais elle n'est pas morte et que tu la trouves, *tu* regretteras d'être encore en vie. On dit qu'elle a toujours dévoré tous ceux qui la cherchaient, et il y a de grandes chances qu'elle te réserve le même sort. À ta place, je la laisserais là où elle est."~ */
  IF ~~ THEN REPLY #42621 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42622 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.9
  SAY #42551 /* ~"Il n'y a pas de dixième étudiante ! De quoi tu parles ?"~ */
  IF ~~ THEN REPLY #42623 /* ~"Peu importe. J'avais une autre question…"~ */ GOTO 12
  IF ~~ THEN REPLY #42624 /* ~"Laisse tomber, Luis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 35.0 36.0
  SAY #42552 /* ~Tu réussis à arracher le morceau de tissu (un voile pourpre transparent) de l'armoire. Tu remarques qu'il s'en dégage un parfum léger, exotique et très agréable.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 27.0 31.0
  SAY #42553 /* ~"Oh non ! Espèce de crapule ! Canaille ! Scélérat ! Rends-moi ça *immédiatement* ! Ce n'est pas à toi ! C'est un vêtement extrêmement personnel qui appartient à une femme de cet établissement, et elle n'apprécierait pas de te voir toucher à ses affaires !"~ */
  IF ~~ THEN REPLY #42625 /* ~"Oh, mais c'est aussi valable pour toi, espèce de pervers en bois ?"~ */ GOTO 24
  IF ~~ THEN REPLY #42626 /* ~"Oui, oui… Au revoir, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42554 /* ~"Je ne fais rien de plus criminel ou malveillant que toi ! Je m'imprègne simplement des sensations nécessaires à mon évolution individuelle."~ */
  IF ~~ THEN REPLY #42627 /* ~"Oui, oui… Au revoir, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 35.1 36.1
  SAY #42555 /* ~Tu ne peux pas avancer ta main suffisamment vite pour arracher l'étoffe pourpre à Luis… Au mieux, tu risques de t'écraser les doigts.~ */
  IF ~~ THEN REPLY #42628 /* ~"Donne-moi cette étoffe pourpre."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42629 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42630 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 28
  IF ~~ THEN REPLY #42631 /* ~Supplie-le de te donner l'étoffe.~ */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.0 29.0 30.0
  SAY #42556 /* ~"Pas question. Sûrement pas. Jamais."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42632 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42633 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 28
  IF ~~ THEN REPLY #42634 /* ~Supplie-le de te donner l'étoffe.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 29.1 30.1
  SAY #42557 /* ~"*Mmmph*. Arrête ! J'ai dit, arrête ! Attention aux poignées ! N'érafle pas le vernis ! Va te faire voir, espèce de sale fouineur !" Malgré le courageux effort de l'armoire, tu arrives enfin à ouvrir le tiroir et à en arracher l'étoffe - un voile pourpre transparent. Tu remarques qu'il s'en dégage un parfum léger, exotique et très agréable.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.1 28.1 30.2
  SAY #42558 /* ~Le tiroir reste fermé. Tu l'entends haleter sous l'effort. "*Va-t'en*, espèce de barbare !"~ */
  IF ~~ THEN REPLY #42635 /* ~"Donne-moi cette étoffe pourpre, Luis."~ */ GOTO 26
  IF ~~ THEN REPLY #42636 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 28
  IF ~~ THEN REPLY #42637 /* ~Supplie-le de te donner l'étoffe.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.2 28.2
  SAY #42559 /* ~"Oh, s'il te plaît, arrête ! C'est fatigant et ça dépasse l'entendement du mot *ennui* !"~ */
  IF ~~ THEN REPLY #42638 /* ~"Donne-moi cette étoffe pourpre."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42639 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 27
  IF ~~ THEN REPLY #42640 /* ~Continue à le supplier.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY #42560 /* ~"Arrête ! C'est barbant ! Tu m'endors."~ */
  IF ~~ THEN REPLY #42641 /* ~"Donne-moi cette étoffe pourpre."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42642 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42643 /* ~Ouvre le tiroir et attrape l'étoffe.~ */ GOTO 28
  IF ~~ THEN REPLY #42644 /* ~Supplie-le de plus belle.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.3
  SAY #42561 /* ~L'armoire bâille, dévoilant l'étoffe pourpre bien pliée près de quelques sous-vêtements. Tu avances ta main et l'attrapes avant que le tiroir ne se referme. Tu remarques qu'il s'en dégage un parfum léger, exotique et très agréable.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~  Global("Armoire","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #42562 /* ~C'est Luis, l'armoire parlante.~ */
  IF ~~ THEN REPLY #42645 /* ~"J'ai quelques questions, Luis…"~ */ GOTO 12
  IF ~~ THEN REPLY #42646 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~  Global("Armoire","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #42563 /* ~C'est Luis, l'armoire parlante.~ */
  IF ~~ THEN REPLY #42647 /* ~"J'ai quelques questions, Luis…"~ */ GOTO 34
  IF ~~ THEN REPLY #42648 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #42564 /* ~Un silence menaçant plane sur l'armoire qui ne répond pas. Tu es sûr qu'il s'agit bien de Luis - tu peux presque *sentir* la haine qui suinte à travers le bois - mais il ne te dira pas un mot.~ */
  IF ~~ THEN REPLY #42649 /* ~"Au revoir, Luis."~ */ EXIT
  IF ~~ THEN REPLY #42650 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 36.2
  SAY #42565 /* ~Tu gardes la main en suspension au-dessus du bord de l'armoire qui continue à jacasser, mais sans jamais rester ouverte assez longtemps pour te permettre d'attraper le ballot d'étoffe.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42651 /* ~Essaie d'introduire ta main dans le tiroir tant qu'il est ouvert.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42652 /* ~Essaie d'introduire ta main dans le tiroir tant qu'il est ouvert.~ */ GOTO 25
END

IF ~~ THEN BEGIN 36 // from: 12.3
  SAY #42566 /* ~"Tu *crois* ? Tu *CROIS* ?! Sais-tu à quel point il est impoli, absurde et prétentieux de porter une telle accusation sans être *sûr* de ton fait ?! Mais comment *oses-tu* ?! Sale petit impertinent ! Je devrais te…"

Tandis que Luis t'injurie et te maudit, ses tiroirs s'ouvrent et se ferment… et tu finis par aviser un ballot d'étoffe pourpre rangé parmi d'autres vêtements. Les mouvements incessants des tiroirs ne vont pas te faciliter la tâche si tu veux t'en saisir.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42653 /* ~Fais un essai.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42654 /* ~Fais un essai.~ */ GOTO 25
  IF ~~ THEN REPLY #42655 /* ~Attends le bon moment pour l'attraper.~ */ GOTO 35
END
