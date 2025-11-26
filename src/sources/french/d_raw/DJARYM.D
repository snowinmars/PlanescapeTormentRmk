// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARYM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARYM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47884 /* ~"Quoi… ? Qui… ?"~ */
  IF ~~ THEN REPLY #47885 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #47886 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #47887 /* ~"Encore toi ?!"~ */
  IF ~~ THEN REPLY #47888 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #47889 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  Global("GemQuest","Global",1)
~ THEN BEGIN 2 // from:
  SAY #47890 /* ~"Te revoilà. Tu as réussi à en trouver un ?"~ */
  IF ~~ THEN REPLY #47891 /* ~"Non. Je continue à chercher."~ */ GOTO 6
  IF ~~ THEN REPLY #47892 /* ~"Qu'est-ce que je suis censé chercher, déjà ?"~ */ GOTO 7
  IF ~  PartyHasItem("DGem")
~ THEN REPLY #47893 /* ~"C'est ça que tu cherches ?"~ */ DO ~TakePartyItem("DGem")
~ GOTO 8
END

IF WEIGHT #0 ~  Global("GemQuest","Global",2)
~ THEN BEGIN 3 // from:
  SAY #47894 /* ~"Rebonjour. Excuse-moi de me montrer si abrupt, mais maintenant que j'ai cette pierre précieuse, il faut que je me prépare."~ */
  IF ~~ THEN REPLY #47895 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0
  SAY #47896 /* ~"Je n'ai pas vraiment le temps de discuter avec toi. Tu vois, j'essaie d'imaginer comment je vais réussir à finir de lancer ma malédiction sans le composant principal."~ */
  IF ~~ THEN REPLY #47897 /* ~"Je peux peut-être t'aider."~ */ GOTO 5
  IF ~~ THEN REPLY #47898 /* ~"Alors, je m'en vais. Au revoir." ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47899 /* ~Jarym s'arrête une seconde. "Pourquoi pas ? Je suis à la recherche d'un rubis pour finir de lancer ma malédiction. Il doit être d'une qualité exceptionnelle, pas comme ces pacotilles qu'on trouve sur le marché. Si tu en trouves un, rapporte-le-moi, tu ne le regretteras pas."~ */
  IF ~~ THEN REPLY #47900 /* ~"Au revoir."~ */ DO ~SetGlobal("GemQuest","Global",1)
~ JOURNAL #47842 /* ~Un jeteur de sorts dénommé Jarym cherche un rubis pour l'une de ses incantations. Il a promis de me récompenser si j'en amenais un chez lui, Square du Chiffonnier.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #47901 /* ~"N'abandonne pas. Il doit bien y avoir un rubis dans le coin."~ */
  IF ~~ THEN REPLY #47902 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #47903 /* ~"Tu es censé rechercher un rubis, tu as oublié ? Si tu en trouves un, rapporte-le ici."~ */
  IF ~~ THEN REPLY #47904 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47905 /* ~"Parfait ! Où as-tu… Qu'importe, tiens." Jarym prend la pierre précieuse et te donne une bonne somme de pièces. "Maintenant, si ça ne te dérange pas, j'aimerais travailler sur ma malédiction."~ */
  IF ~~ THEN REPLY #47906 /* ~"Au revoir."~ */ DO ~GivePartyGold(200)
AddexperienceParty(500)
SetGlobal("GemQuest","Global",2)
~ JOURNAL #47841 /* ~Jarym a eu l'air content du rubis que je lui ai apporté. Je me demande s'il le resterait si je lui apprenais qu'il s'agit de la gemme qui ornait la boîte de Moridor ?~ */ EXIT
END
