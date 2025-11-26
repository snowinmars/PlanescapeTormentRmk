// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33815 /* ~Cette femme attrayante, à la robe assez courte, t'interpelle en s'approchant de toi. "Excuse-moi ! Pardon ! T'as l'air un peu perdu, si j'peux m'permettre… t'aurais pas besoin d'une rabatteuse, par hasard ? Ça te coûtera qu'une pièce…"~ */
  IF ~~ THEN REPLY #33824 /* ~"Qu'est-ce qu'une rabatteuse ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33825 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33826 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33816 /* ~"T'as besoin des services d'une rabatteuse ? Ça te coûtera rien qu'une pièce…"~ */
  IF ~~ THEN REPLY #33827 /* ~"Qu'est-ce qu'une rabatteuse ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33828 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33829 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33817 /* ~"Un guide, pour t'montrer ton chemin dans cette partie d'la Ruche."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33830 /* ~"Très bien… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33831 /* ~"Je n'ai pas besoin d'indications pour le moment, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33818 /* ~"J'te remercie… c'est du jonc bien dépensé." Elle empoche la pièce. "Il y a deux portes qui partent d'ici - elles sont toutes les deux du côté le plus à l'ouest de cette zone, une au nord et une au sud. Tu voudras p't'être visiter le Bar du Cadavre fumant et le magasin de tatouages. Enfin, y'a un ensemble de bâtiments qu'on appelle le Terrain des Sicaires… un endroit dangereux, très dangereux."~ */
  IF ~~ THEN REPLY #33832 /* ~"Où est le Bar du Cadavre fumant ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33833 /* ~"Où est le magasin de tatouages ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33834 /* ~"Où mène la porte nord-ouest ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33835 /* ~"Où est ce Terrain des Sicaires ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33836 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33819 /* ~"C'est en plein milieu de cette zone… un bâtiment carré avec un toit en forme de dôme. Suis la route est-ouest la plus au sud et tu verras son entrée, orientée au sud."~ */
  IF ~~ THEN REPLY #33837 /* ~"Où est le magasin de tatouages ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33838 /* ~"Où mène la porte nord-ouest ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33839 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33840 /* ~"Où est ce Terrain des Sicaires ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33841 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33820 /* ~"Le magasin est à l'extrémité est de cette zone… un bâtiment en forme de dôme, avec une grille de fer à son sommet… son entrée est orientée au sud-ouest."~ */
  IF ~~ THEN REPLY #33842 /* ~"Où est le Bar du Cadavre fumant ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33843 /* ~"Où mène la porte nord-ouest ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33844 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33845 /* ~"Où est ce Terrain des Sicaires ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33846 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33821 /* ~"Vers la partie d'la Ruche où s'trouve la Morgue. Tu y trouveras aussi le Bar de la Poussière accumulée, le Mémorial Homme-Poussière et un mausolée."~ */
  IF ~~ THEN REPLY #33847 /* ~"Où est le Bar du Cadavre fumant ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33848 /* ~"Où est le magasin de tatouages ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33849 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33850 /* ~"Où est ce Terrain des Sicaires ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33851 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.2 6.2 8.3
  SAY #33822 /* ~"La porte mène à une partie d'la Ruche qui contient le Bureau de Lutte contre la vermine et la maladie, et un marché de taille respectable."~ */
  IF ~~ THEN REPLY #33852 /* ~"Où est le Bar du Cadavre fumant ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33853 /* ~"Où est le magasin de tatouages ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33854 /* ~"Où mène la porte nord-ouest ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33855 /* ~"Où est ce Terrain des Sicaires ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33856 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.3
  SAY #33823 /* ~Elle hoche la tête. "C'est un tas d'bâtiments le long d'la partie nord de cette zone… vaudrait mieux éviter cet endroit. À moins bien sûr que tu cherches une bonne bagarre."~ */
  IF ~~ THEN REPLY #33857 /* ~"Où est le Bar du Cadavre fumant ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33858 /* ~"Où est le magasin de tatouages ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33859 /* ~"Où mène la porte nord-ouest ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33860 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33861 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
