// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHILAND.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHILAND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45742 /* ~"Flûte ! Je le tenais presque, cette fois-ci ! Tu ne sais pas qu'il est dangereux d'interrompre un jeteur de sorts en pleine incantation ? Tu as de la chance que je ne faisais que répéter. Bon, qu'est-ce que tu veux ?"~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45743 /* ~"Je souhaite en apprendre davantage au sujet de cette boîte."~ */ GOTO 5
  IF ~~ THEN REPLY #45744 /* ~"Je suis désolé de t'avoir dérangée. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45745 /* ~"Encore une interruption ! On ne peut même pas être tranquille chez soi ! Va-t'en, je te prie, sans quoi je devrai appeler mes gardes… ou essayer un nouveau sort que j'ai fort envie de tester."~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45748 /* ~"Je souhaite en apprendre davantage au sujet de cette boîte."~ */ GOTO 5
  IF ~~ THEN REPLY #45749 /* ~"Je suis désolé de t'avoir dérangée. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",3)
~ THEN BEGIN 2 // from:
  SAY #45750 /* ~"Tu m'as déjà suffisamment fait perdre mon temps. Va-t'en, je te prie."~ */
  IF ~~ THEN REPLY #45751 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 16 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45752 /* ~"La rumeur court dans la Ruche que tu aurais tué le fiélon emprisonné dans la Boîte de Moridor. J'imagine que tu n'as pas réussi à en récupérer quelques morceaux ?"~ */
  IF ~~ THEN REPLY #45753 /* ~"Quelle sorte de personne faut-il être pour collectionner de tels objets ?"~ */ GOTO 15
  IF ~~ THEN REPLY #45754 /* ~"Euh, non…" ~ */ GOTO 15
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 4 // from:
  SAY #45755 /* ~"La rumeur court que tu aurais réussi à détruire la Boîte de Moridor. Félicitations ! Cela dit, quel dommage que je n'aie pu déchiffrer tous les sorts utilisés pour emprisonner le fiélon !"~ */
  IF ~~ THEN REPLY #45756 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0
  SAY #45757 /* ~Tu tends la Boîte de Moridor à Shilandra. "Ah, oui ! Je m'en souviens parfaitement. Je l'ai eue entre les mains il y a quelque temps. Qu'est-ce que tu veux savoir à son sujet ?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45758 /* ~"De qui la tiens-tu ?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45759 /* ~"Tu sembles t'y connaître en magie. Peux-tu me dire quels sont les sorts qui ont servi à fabriquer cette boîte ?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45760 /* ~"Connais-tu l'histoire de cette boîte ?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 7.1 9.0 10.0 11.1 12.0 13.0
  SAY #45761 /* ~"Qu'est-ce que tu veux savoir d'autre ?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45762 /* ~"D'où la tiens-tu ?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45763 /* ~"Tu sembles t'y connaître en magie. Peux-tu me dire quels sont les sorts qui ont servi à fabriquer cette boîte ?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q3","Global",0)
Global("Q2","Global",1)
~ THEN REPLY #45764 /* ~"Peux-tu ôter les sorts de la boîte sans risque ?"~ */ DO ~SetGlobal("Q3","Global",1)
~ GOTO 10
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45765 /* ~"Connais-tu l'histoire de cette boîte ?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
  IF ~  Global("Q1","Global",1)
Global("Q2","Global",1)
Global("Q3","Global",1)
Global("Q4","Global",1)
~ THEN REPLY #45766 /* ~"Y a-t-il un moyen de se débarrasser de la Boîte de Moridor sans nuire à personne ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #45767 /* ~"Hmmm… attends que je réfléchisse. Je ne me souviens plus à qui je l'ai achetée. Ce dont je me souviens, c'est que je cherchais des composantes pour des sorts au marché quand quelqu'un me l'a proposée. Un sort de détection m'a permis de voir qu'elle était maudite, mais je l'ai quand même achetée car j'étais intriguée par les sortilèges qui avaient servi à produire l'enchantement."~ */
  IF ~~ THEN REPLY #45768 /* ~"Si la boîte t'intriguait tant, qu'est-ce qui t'a incitée à t'en débarrasser ?"~ */ GOTO 11
  IF ~~ THEN REPLY #45769 /* ~"Il y a d'autres questions que je voudrais te poser…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #45770 /* ~"J'ai étudié la boîte de nombreuses années durant pour percer ses secrets. On ne compte plus les sorts enchevêtrés dans la boîte. À ma grande surprise, mes recherches m'ont appris que tous ces sortilèges ont pour but d'emprisonner les fiélons."~ */
  IF ~~ THEN REPLY #45771 /* ~"Des fiélons ? Tu veux dire qu'il y aurait des fiélons enfermés dans cette boîte ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45772 /* ~"Ou plutôt, non : pas *des* fiélons, *un* fiélon bien précis. À en juger par la puissance et la complexité de l'enchantement, le prisonnier doit détenir un pouvoir conséquent dans son royaume."~ */
  IF ~~ THEN REPLY #45773 /* ~"Il y a d'autres questions que je voudrais te poser…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #45774 /* ~"Tu cherches à te débarrasser de cette boîte, n'est-ce pas ? C'est bien là le problème. Pour simplifier, disons que l'un des sortilèges tire son énergie du propriétaire actuel de la boîte et s'en sert pour prolonger indéfiniment les sorts d'emprisonnement. Mais il y a pire encore. En effet, le fiélon perçoit lui aussi ce transfert d'énergie, et il y a fort à parier qu'il traquerait le propriétaire de la boîte s'il venait à s'échapper. Quoi qu'il en soit, tu ne peux t'en sortir : soit la boîte te vide de toute ton énergie, soit le fiélon te tue."~ */
  IF ~~ THEN REPLY #45775 /* ~"Je vois. Si ça ne te dérange pas, je voudrais te poser d'autres questions…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #45776 /* ~"J'étais jeune et téméraire, à l'époque. Désireuse que j'étais d'en apprendre davantage, j'ai commis l'erreur d'annuler certains des sorts de la boîte. Regarde-la bien. Elle était neuve quand je l'ai eue entre les mains et son pourrissement indique que les sorts restants s'affaiblissent. J'ai compris que je serais en danger si je la gardais plus longtemps. J'ai donc organisé un concours pour m'en débarrasser."~ */
  IF ~~ THEN REPLY #45777 /* ~"Un concours ?"~ */ GOTO 12
  IF ~~ THEN REPLY #45778 /* ~"Il y a d'autres questions que je voudrais te poser…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45779 /* ~"C'est le moyen le plus rapide que j'ai trouvé. J'ai invité tous les lascars de la Ruche à se battre les uns contre les autres pour déterminer lequel était le plus fort. Les lascars sont connus pour leur musculature et le petit pois qu'ils ont en guise de cerveau, si tu vois ce que je veux dire. Ils se sont jetés sur mon offre comme des mouches sur un pot de miel. J'ai offert de l'argent et la boîte au vainqueur. Je crois que c'est un certain Brasken qui l'a emporté."~ */
  IF ~~ THEN REPLY #45780 /* ~"Il y a d'autres questions que je voudrais te poser…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 5.2 6.3
  SAY #45781 /* ~"Tout ce dont je suis sûre, c'est de son nom. On l'appelle la Boîte de Moridor. Quant à savoir qui était ce Moridor ou d'où provient la boîte, je n'en ai pas la moindre idée."~ */
  IF ~~ THEN REPLY #45782 /* ~"Il y a d'autres questions que je voudrais te poser…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 6.4
  SAY #45783 /* ~"Je ne suis pas assez forte pour combattre ou bannir une telle créature. Il y a une éternité que je n'ai pas visité ce lieu, mais il se trouvait jadis une cathédrale dans l'Allée des Angles Dangereux. Un prêtre devrait pouvoir t'aider. Un prêtre, ou quelqu'un qui reçoit son pouvoir d'en haut."~ */
  IF ~~ THEN REPLY #45784 /* ~"Merci de ton aide."~ */ DO ~SetGlobal("FedEx","Global",4)
SetGlobal("Delta","Global",2)
SetGlobal("Epsilon","Global",1)
AddexperienceParty(250)
~ JOURNAL #60388 /* ~Shilandra m'a beaucoup appris au sujet de la Boîte de Moridor… même si ses paroles ne m'ont guère fait plaisir. Il semblerait que cette boîte renferme un puissant fiélon. Pire encore, les sorts qui le retiennent prisonnier ont perdu de leur puissance. J'ai bien peur qu'il ne cherche bientôt à se libérer et à se venger de celui qui l'a enfermé. Shilandra m'a suggéré de me rendre à la cathédrale située au milieu de l'allée des Angles Dangereux, dans l'espoir qu'une puissance divine interviendra et bannira le fiélon avant qu'il ne parvienne à s'échapper.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.1
  SAY #45785 /* ~"J'imagine que quelqu'un qui ne s'y connaît pas suffisamment en magie n'a aucune chance de comprendre. Certains objets et matériaux acquièrent une grande valeur car on les utilise dans diverses incantations. Si tu veux bien m'excuser, il faut que je m'entraîne à lancer ce sort."~ */
  IF ~~ THEN REPLY #45786 /* ~"Au revoir."~ */ DO ~SetGlobal("Shil","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shil","Global",1)
~ THEN BEGIN 16 // from:
  SAY #45787 /* ~"Je n'ai rien de plus à te dire."~ */
  IF ~~ THEN REPLY #45788 /* ~"Au revoir."~ */ EXIT
END
