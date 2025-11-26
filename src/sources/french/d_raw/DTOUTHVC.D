// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVC~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33767 /* ~Cet homme, qui ressemble à un sicaire, t'approche avec un sourire ironique. "Oh, là, affranchi… comment qu'ça roule ? J'suis l'rabatteur local ; si t'as une pièce en trop, j'suis ton homme pour te montrer l'chemin."~ */
  IF ~~ THEN REPLY #33776 /* ~"Qu'est-ce qu'un rabatteur ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33777 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33778 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33768 /* ~"Oh, là, affranchi… comment qu'ça roule ? J'suis l'rabatteur local et si t'as une pièce en trop, j'suis ton homme pour t'indiquer l'chemin."~ */
  IF ~~ THEN REPLY #33779 /* ~"Qu'est-ce qu'un rabatteur ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33780 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33781 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33769 /* ~"Oh, par les derrières des Puissances… t'es sûrement à Sigil depuis moins longtemps que t'en as l'air ! Un rabatteur est un guide, affranchi."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33782 /* ~"Très bien… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33783 /* ~"Je n'ai pas besoin d'indications pour le moment, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33770 /* ~L'homme t'arrache la pièce des mains et te fait un clin d'œil. "Bien ! Cette partie d'la Ruche a deux portes qui mènent à l'extérieur - une au nord et une au sud-est. Oh, et si tu cherches une bonne bagarre, y'a une allée au nord-est que tu devrais visiter. Y'a aussi la Maison de Lutte contre la vermine et la maladie et un marché assez grand."~ */
  IF ~~ THEN REPLY #33784 /* ~"Où est le Bureau de Lutte contre la vermine et la maladie ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33785 /* ~"Où est le Marché ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33786 /* ~"Où mène la porte nord ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33787 /* ~"Où mène la porte sud-est ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33788 /* ~"Tu peux me parler de cette ruelle que tu as mentionnée ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33789 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33771 /* ~"Au centre de la moitié sud de cette zone… sa porte est orientée au sud… Il te suffit de suivre la route est-ouest la plus au sud jusqu'à ce que tu le voies."~ */
  IF ~~ THEN REPLY #33790 /* ~"Où est le Marché ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33791 /* ~"Où mène la porte nord ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33792 /* ~"Où mène la porte sud-est ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33793 /* ~"Tu peux me parler de cette ruelle que tu as mentionnée ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33794 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33772 /* ~"Dans le coin sud d'un bâtiment en forme de 'L', dans la moitié nord de cette zone. Si tu suis la route la plus au nord d'est en ouest, tu l'verras. Y'a plein d'gens, plein de marchands et tout."~ */
  IF ~~ THEN REPLY #33795 /* ~"Où est le Bureau de Lutte contre la vermine et la maladie ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33796 /* ~"Où mène la porte nord ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33797 /* ~"Où mène la porte sud-est ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33798 /* ~"Tu peux me parler de cette ruelle que tu as mentionnée ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33799 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33773 /* ~"Ça mène à d'autres parties d'la Ruche, affranchi. Y'a le refuge, si t'es fatigué… ou si t'es juste blessé… et que t'as besoin de roupiller."~ */
  IF ~~ THEN REPLY #33800 /* ~"Où est le Bureau de Lutte contre la vermine et la maladie ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33801 /* ~"Où est le Marché ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33802 /* ~"Où mène la porte sud-est ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33803 /* ~"Tu peux me parler de cette ruelle que tu as mentionnée ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33804 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3
  SAY #33774 /* ~"C'est juste un autre coin d'la Ruche, affranchi. Tu peux t'faire tatouer là-bas, et y'a une chouette p'tite taverne, l'Bar du Cadavre fumant."~ */
  IF ~~ THEN REPLY #33805 /* ~"Où est le Bureau de Lutte contre la vermine et la maladie ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33806 /* ~"Où est le Marché ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33807 /* ~"Où mène la porte nord ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33808 /* ~"Tu peux me parler de cette ruelle que tu as mentionnée ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33809 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3
  SAY #33775 /* ~L'homme hausse les épaules. "Juste un endroit où aller si tu cherches un peu d'frappe et encaisse… t'as l'air du genre qui s'bat, alors j't'en parle. Comme j'te l'ai dit, c'est au nord-est… alors va pas traîner là-bas, si tu cherches pas les ennuis."~ */
  IF ~~ THEN REPLY #33810 /* ~"Où est le Bureau de Lutte contre la vermine et la maladie ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33811 /* ~"Où est le Marché ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33812 /* ~"Où mène la porte nord ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33813 /* ~"Où mène la porte sud-est ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33814 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
