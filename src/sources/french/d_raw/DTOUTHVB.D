// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33707 /* ~Cette femme souriante, entre deux âges, trotte vers toi et te fait une révérence. "Salut, m'sieur, et bienv'nue ! Rien qu'une pièce de cuivre pour mes services de rabatteuse ! Où est-ce que je peux t'emmener ?"~ */
  IF ~~ THEN REPLY #33717 /* ~"Qu'est-ce qu'un rabatteur ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33718 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33719 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33708 /* ~Cette femme souriante, entre deux âges, te salue quand elle s'aperçoit que tu approches. "'Bonjour, m'sieur ! Rien qu'une pièce de cuivre pour mes services de rabatteuse ! Où est-ce que je peux t'emmener ?"~ */
  IF ~~ THEN REPLY #33720 /* ~"Qu'est-ce qu'un rabatteur ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33721 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33722 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33709 /* ~La femme te jette un regard sceptique, puis hausse les épaules. "Un rabatteur est une sorte de guide, m'sieur. J'peux t'orienter dans les environs d'la Ruche, ouais."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33723 /* ~"Très bien… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33724 /* ~"Je n'ai pas besoin d'indications pour le moment, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33710 /* ~L'homme empoche la pièce et fait une révérence. "Cette partie d'la Ruche a des portes qui mènent vers l'ouest et le sud. Les lieux intéressants comprennent la Morgue, le Bar d'la Poussière accumulée, le Mémorial Homme-Poussière et l'mausolée. J'te conseille aussi d'pas traîner dans les allées qui mènent au sud-ouest ; c'est plein de dangereux sicaires."~ */
  IF ~~ THEN REPLY #33725 /* ~"Où est la Morgue ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33726 /* ~"Où est le Bar de la Poussière accumulée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33727 /* ~"Où est le Mémorial ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33728 /* ~"Où est le mausolée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33729 /* ~"Où mène la porte ouest ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33730 /* ~"Où mène la porte sud ?"~ */ GOTO 9
  IF ~~ THEN REPLY #33731 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0 9.0
  SAY #33711 /* ~"La Morgue, c'est cette énorme enceinte avec un dôme, dans la partie nord-est d'cette zone. Les Hommes-Poussière te laisseront pas entrer, sauf si tu vas là-bas pour affaires. Ou si t'es mort, j'imagine." Elle te sourit.~ */
  IF ~~ THEN REPLY #33732 /* ~"Où est le Bar de la Poussière accumulée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33733 /* ~"Où est le Mémorial ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33734 /* ~"Où est le mausolée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33735 /* ~"Où mène la porte ouest ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33736 /* ~"Où mène la porte sud ?"~ */ GOTO 9
  IF ~~ THEN REPLY #33737 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33712 /* ~"C'est dans l'coin sud-ouest d'cette zone… un bâtiment avec un dôme, dont les portes sont orientées au sud-est. L'Bar de la Poussière accumulée est la plus sûre et la plus tranquille des tavernes d'la Ruche."~ */
  IF ~~ THEN REPLY #33738 /* ~"Où est la Morgue ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33739 /* ~"Où est le Mémorial ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33740 /* ~"Où est le mausolée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33741 /* ~"Où mène la porte ouest ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33742 /* ~"Où mène la porte sud ?"~ */ GOTO 9
  IF ~~ THEN REPLY #33743 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2 9.1
  SAY #33713 /* ~"En direction du milieu d'la partie nord d'cette zone… c'est une sorte de cour murée, avec un passage voûté dans chaque mur. Y'a d'habitude tout un troupeau d'Hommes-Poussière qui pleurent leurs morts à l'entrée sud-est de cet endroit."~ */
  IF ~~ THEN REPLY #33744 /* ~"Où est la Morgue ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33745 /* ~"Où est le Bar de la Poussière accumulée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33746 /* ~"Où est le mausolée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33747 /* ~"Où mène la porte ouest ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33748 /* ~"Où mène la porte sud ?"~ */ GOTO 9
  IF ~~ THEN REPLY #33749 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3 9.2
  SAY #33714 /* ~"Le mausolée est dans l'coin nord-ouest de cette zone. Un grand bâtiment carré et déglingué."~ */
  IF ~~ THEN REPLY #33750 /* ~"Où est la Morgue ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33751 /* ~"Où est le Bar de la Poussière accumulée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33752 /* ~"Où est le Mémorial ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33753 /* ~"Où mène la porte ouest ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33754 /* ~"Où mène la porte sud ?"~ */ GOTO 9
  IF ~~ THEN REPLY #33755 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3 9.3
  SAY #33715 /* ~"Toujours la Ruche, m'sieur. Y'a le refuge là-bas, si t'es fatigué et que tu cherches à t'reposer."~ */
  IF ~~ THEN REPLY #33756 /* ~"Où est la Morgue ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33757 /* ~"Où est le Bar de la Poussière accumulée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33758 /* ~"Où est le Mémorial ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33759 /* ~"Où est le mausolée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33760 /* ~"Où mène la porte sud ?"~ */ GOTO 9
  IF ~~ THEN REPLY #33761 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.5 4.4 5.4 6.4 7.4 8.4
  SAY #33716 /* ~"Toujours et encore la Ruche, m'sieur. Y'a un magasin d'tatouages dans cette direction, et l'Bar du Cadavre fumant. Un tas d'sicaires aussi… Y'en a tout un bâtiment."~ */
  IF ~~ THEN REPLY #33762 /* ~"Où est la Morgue ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33763 /* ~"Où est le Mémorial ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33764 /* ~"Où est le mausolée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33765 /* ~"Où mène la porte ouest ?"~ */ GOTO 8
  IF ~~ THEN REPLY #33766 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
