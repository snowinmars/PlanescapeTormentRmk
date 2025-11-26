// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33670 /* ~Ce personnage sale et vulgaire trotte vers toi et te fait une rapide révérence. "Bonjour, matois ! Rien qu'une pièce de cuivre pour mes services de rabatteur ! Où est-ce que je peux t'emmener ?"~ */
  IF ~~ THEN REPLY #33678 /* ~"C'est quoi un rabatteur ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33679 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33680 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33671 /* ~Ce personnage sale et vulgaire remarque très vite qu'il a attiré ton attention. "Bonjour, matois ! Rien qu'une pièce de cuivre pour mes services de rabatteur ! Où est-ce que je peux t'emmener ?"~ */
  IF ~~ THEN REPLY #33681 /* ~"C'est quoi un rabatteur ?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33682 /* ~"Bien sûr… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33683 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33672 /* ~L'homme hausse un sourcil, puis hausse les épaules. "Un guide, matois… Je peux t'indiquer tout c'que tu cherches dans cette partie d'la Ruche."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33684 /* ~"Très bien… Voilà une pièce de cuivre."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33685 /* ~"Je n'ai pas besoin d'indications pour le moment, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33673 /* ~L'homme empoche la pièce et s'incline. "Cette partie d'la Ruche a des portes qui mènent vers l'est, le nord et le sud-ouest ; les lieux intéressants comprennent le refuge, où un affranchi fatigué peut trouver un peu d'repos."~ */
  IF ~~ THEN REPLY #33686 /* ~"Où est le refuge ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33687 /* ~"Où mène la porte nord ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33688 /* ~"Où mène la porte est ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33689 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33690 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0
  SAY #33674 /* ~"En plein milieu d'cette partie d'la Ruche, matois… un long et étroit bâtiment dont les portes font face au sud-est. Une bonne place pour se guitouner pour une nuit, si t'es fatigué."~ */
  IF ~~ THEN REPLY #33691 /* ~"Où mène la porte nord ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33692 /* ~"Où mène la porte est ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33693 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33694 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1
  SAY #33675 /* ~"Ça mène au Square du Chiffonnier, matois… là où tous les Récupérateurs ont leur guitoune."~ */
  IF ~~ THEN REPLY #33695 /* ~"Où est le refuge ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33696 /* ~"Où mène la porte est ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33697 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33698 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2
  SAY #33676 /* ~" Vers une autre partie d'la Ruche, matois. La Morgue s'trouve là-bas, et l'Bar de la Poussière accumulée aussi, là où les Hommes-Poussière aiment bien aller boire. Y'a un mausolée, et le grand Mémorial Homme-Poussière s'trouve aussi là-bas."~ */
  IF ~~ THEN REPLY #33699 /* ~"Où est le refuge ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33700 /* ~"Où mène la porte nord ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33701 /* ~"Où mène la porte sud-ouest ?"~ */ GOTO 7
  IF ~~ THEN REPLY #33702 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2
  SAY #33677 /* ~"Juste une autre partie d'la Ruche, matois. Le Bureau de Lutte contre la vermine et la maladie, ainsi qu'un grand marché."~ */
  IF ~~ THEN REPLY #33703 /* ~"Où est le refuge ?"~ */ GOTO 4
  IF ~~ THEN REPLY #33704 /* ~"Où mène la porte nord ?"~ */ GOTO 5
  IF ~~ THEN REPLY #33705 /* ~"Où mène la porte est ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33706 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
