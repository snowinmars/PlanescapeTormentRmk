// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANGYAR~

IF ~  Global("Angyar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3007 /* ~Cet homme a l'air… possédé. Ses yeux sont mi-clos, comme s'il n'arrivait pas à dormir. Ses cheveux sont longs et négligés. Sa barbe est mouchetée de squames et de nourriture. Il ne semble pas s'apercevoir de ta présence.~ */
  IF ~~ THEN REPLY #3008 /* ~"Bonjour…"~ */ DO ~SetGlobal("Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11701 /* ~Laisse l'homme à ses pensées.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11671 /* ~Au son de ta voix, l'homme lève la tête. Ses traits se durcissent… et soudain son regard flamboie. "Qu'est-ce que tu trafiques chez moi ?" Il plisse les paupières et serre les mâchoires. "Dehors ! Vite ! Ou je te renvoie dans la tombe dont tu n'aurais jamais dû sortir !"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11702 /* ~"J'ai parlé à ta femme. Je crois que je peux t'aider à…"~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11703 /* ~"J'ai parlé à ta femme. Je crois que je peux t'aider à…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11704 /* ~"Vas-y, essaie, si tu crois en avoir la force…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11705 /* ~"Je n'autorise *personne* de me parler comme ça… Retire ce que tu viens de dire ou cette maison deviendra ta crypte."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11706 /* ~Montre-lui le contrat qu'il a signé avec les Hommes-Poussière.~ */ GOTO 6
  IF ~~ THEN REPLY #11707 /* ~"Calme-toi. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #11708 /* ~"Alors, au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 5.0 5.1
  SAY #11672 /* ~"Qu'est-ce qui t'a pris d'aller enquiquiner ma femme ?! On n'est pas dans un bordel, ici… tu ferais mieux de lui fiche la paix ou le livre des morts va compter un nom de plus !"~ */
  IF ~~ THEN REPLY #11709 /* ~"Vas-y, essaie, si tu crois en avoir la force…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11710 /* ~"Je n'autorise *personne* de me parler comme ça… Retire ce que tu viens de dire ou cette maison deviendra ta crypte."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11711 /* ~Montre-lui le contrat qu'il a signé avec les Hommes-Poussière.~ */ GOTO 6
  IF ~~ THEN REPLY #11712 /* ~"Calme-toi. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #11713 /* ~"Alors, au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3 1.5 2.1 2.3 5.3 5.5
  SAY #11673 /* ~Son visage devient écarlate et il hurle : "Mais tu es toqué ?!" Il crache à tes pieds, avec un rictus de mépris. *"Sale chien galeux ! Va-t'en ou les Puissances elles-mêmes ne pourront pas sauver ta pauvre couenne !"*~ */
  IF ~~ THEN REPLY #11714 /* ~"Vas-y, essaie, si tu crois en avoir la force…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11715 /* ~"Alors, au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.6 2.4 3.1 5.6
  SAY #11674 /* ~"Et ne remets jamais les pieds ici, sale bâtard puant" te lance l'homme en guise d'adieu.~ */
  IF ~~ THEN REPLY #11716 /* ~"Ça y est. Tu viens de poser un pied dans ta tombe…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11717 /* ~Pars sans rien dire.~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY #11675 /* ~Tu vois Angyar - il n'a pas l'air d'aller mieux. À ton approche, il se tourne lentement vers toi, et son visage se durcit. "Encore toi ! Tu ne m'as pas entendu la première fois, chien galeux ?! Hors de chez moi, ou je jure par les Puissances que je te découpe en morceaux !"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11718 /* ~"J'ai parlé à ta femme. Je crois que je peux t'aider à…"~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11719 /* ~"J'ai parlé à ta femme. Je crois que je peux t'aider à…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11720 /* ~"Vas-y, essaie, si tu crois en avoir la force…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11721 /* ~"Je n'autorise *personne* de me parler comme ça… Retire ce que tu viens de dire ou cette maison deviendra ta crypte."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11722 /* ~Montre-lui le contrat qu'il a signé avec les Hommes-Poussière.~ */ GOTO 6
  IF ~~ THEN REPLY #11723 /* ~"Calme-toi. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #11724 /* ~"Alors, au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.4 2.2 5.4
  SAY #11676 /* ~Lorsque tu sors le contrat, Angyar devient pâle comme la mort. L'espace d'un instant, il reste muet, puis sa rage reprend le dessus. "Où est-ce que tu as eu ça ?! Par les Puissances, tu as intérêt à me le dire…"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11725 /* ~"C'est ta femme qui m'a dit où il était. Elle s'inquiétait pour toi."~ */ GOTO 7
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11726 /* ~"C'est ta femme qui m'a dit où il était. Elle s'inquiétait pour toi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 7
  IF ~~ THEN REPLY #11727 /* ~"Je l'ai pris à un Homme-Poussière dénommé Mortaï. Ton nom y figure."~ */ GOTO 11
  IF ~~ THEN REPLY #11728 /* ~Déchire le contrat.~ */ JOURNAL #64584 /* ~J'ai déchiré le contrat à mort qui pourrissait la vie d'Angyar. Celui-ci a rajeuni de plusieurs années quand les petits bouts de papier sont tombés par terre.~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #11677 /* ~Angyar bafouille, puis sa rage trouve une cible. "Je… Je vais la *tuer* ! Je…"~ */
  IF ~~ THEN REPLY #11729 /* ~"Je te déconseille de la *toucher*, si tu tiens à ta peau."~ */ GOTO 8
  IF ~~ THEN REPLY #11730 /* ~"C'est ton problème, mais mettons d'abord les choses au clair : qu'est-ce que tu comptes me donner en échange de ce contrat ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #11731 /* ~"Si elle m'en a parlé, c'est qu'elle s'inquiétait pour toi… Et toi, tu veux la *punir* parce qu'elle se soucie de toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #11732 /* ~Déchire le contrat.~ */ JOURNAL #64584 /* ~J'ai déchiré le contrat à mort qui pourrissait la vie d'Angyar. Celui-ci a rajeuni de plusieurs années quand les petits bouts de papier sont tombés par terre.~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11678 /* ~"Tu *oses*… tu *oses* me donner des ordres… sous mon *propre* toit… ?" Il prend sa respiration, et puis il explose. "Tire-toi d'ici, maudit ! Et emporte ce papier de malheur !"~ */
  IF ~~ THEN REPLY #11733 /* ~"Essaie un peu de me *chasser*, si tu crois en avoir la force…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11734 /* ~"Attends ! Si elle m'en a parlé, c'est qu'elle s'inquiétait pour toi… Et toi, tu veux la *punir* parce qu'elle se soucie de toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #11679 /* ~"Elle a manqué à la parole qu'elle m'a donné, à moi, son *mari* !" Angyar serre le poing et te foudroie du regard. "Je lui ai dit de n'en parler à personne, et voilà qu'elle s'en ouvre au premier venu !"~ */
  IF ~~ THEN REPLY #11735 /* ~"Si elle n'a pas tenu sa promesse, c'est parce qu'elle t'aime. Il y a parfois plus important que les principes et les serments."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11736 /* ~"Je comprends que tu sois en colère. Elle n'aurait pas dû te faire cette promesse si elle n'avait pas l'intention de la tenir. Je n'ai aucun respect pour les gens qui ne tiennent pas parole, mais ce qui est fait est fait."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Angyar_1","GLOBALLaw",1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11737 /* ~"Je comprends que tu sois en colère. Elle n'aurait pas dû te faire cette promesse si elle n'avait pas l'intention de la tenir. Je n'ai aucun respect pour les gens qui ne tiennent pas parole, mais ce qui est fait est fait."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_4","GLOBALLaw",-2)
~ GOTO 10
  IF ~~ THEN REPLY #11738 /* ~"Eh bien, c'est fait et il faudra bien que tu t'en accommodes. Il n'y a rien d'autre à dire."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11680 /* ~Angyar paraît se calmer quelque peu. Il grommelle : "Bah ! Ce qui est fait est fait…" Il te jette un regard suspicieux et désigne le contrat d'un coup de menton. "Qu'est-ce que tu comptes faire de ce bout de papier, alors ?"~ */
  IF ~~ THEN REPLY #11741 /* ~Déchire le contrat.~ */ JOURNAL #64584 /* ~J'ai déchiré le contrat à mort qui pourrissait la vie d'Angyar. Celui-ci a rajeuni de plusieurs années quand les petits bouts de papier sont tombés par terre.~ */ GOTO 12
  IF ~~ THEN REPLY #11739 /* ~"Je voudrais que tu paies pour le récupérer, de la même façon que tu as été payé quand tu l'as signé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY #11681 /* ~Angyar ne peut pas détacher son regard du contrat. "Pourquoi est-ce que tu me l'apportes ?" Il fronce les sourcils. "Pour le racheter ?"~ */
  IF ~~ THEN REPLY #11740 /* ~Déchire le contrat.~ */ JOURNAL #64584 /* ~J'ai déchiré le contrat à mort qui pourrissait la vie d'Angyar. Celui-ci a rajeuni de plusieurs années quand les petits bouts de papier sont tombés par terre.~ */ GOTO 12
  IF ~~ THEN REPLY #11742 /* ~"Je voudrais que tu paies pour le récupérer, de la même façon que tu as été payé quand tu l'as signé."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.3 7.3 10.0 11.0 14.0
  SAY #11682 /* ~Tu déchires le parchemin, et le regard désespéré d'Angyar suit les bouts de papier qui tombent au sol en voletant. Il frissonne, puis se redresse, comme si on le délestait d'un fardeau. "Tu…" Il paraît s'apprêter à te remercier, mais se ravise, et te considère d'un air suspicieux. "On n'a rien sans rien, dans la Ruche, matois."~ */
  IF ~~ THEN REPLY #11743 /* ~"Considère ça comme gratuit. Et tant que je suis là, attends-toi à voir beaucoup de règles de la Ruche changer."~ */ DO ~AddexperienceParty(750)
IncrementGlobalOnceEx("GLOBALGood_Angyar_1","GLOBALGood",2)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 13
  IF ~~ THEN REPLY #11744 /* ~"J'aurai peut-être une faveur à te demander un de ces jours. Tu pourrais m'aider ?"~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 30
  IF ~~ THEN REPLY #11745 /* ~"Eh bien, si tu tiens vraiment à me payer, j'aurais quelques questions…"~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 15
  IF ~~ THEN REPLY #11746 /* ~"Alors, réfléchis à la façon dont tu vas me payer… Pour l'instant, au revoir."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11683 /* ~La colère le quitte ; il a soudain l'air fatigué de nier sa bonne fortune. "Je… j'ai dû prier les Puissances adéquates ces quinze derniers jours." Il soupire. "Reçois mes remerciements, matois… pour ce qu'ils valent."~ */
  IF ~~ THEN REPLY #11747 /* ~"En fait, tu peux peut-être m'aider… J'ai des questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11748 /* ~"Ne refais pas la même erreur… La prochaine fois, je ne serai peut-être pas là pour t'aider."~ */ EXIT
  IF ~~ THEN REPLY #11749 /* ~"Ça coûte très cher. Fais attention à toi, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1 10.1 11.1
  SAY #11684 /* ~"J'ai déjà vendu ma vie à un homme, et je ne suis pas près de le refaire, surtout si l'acheteur est un mort qui marche." Son visage se crispe. "Sors de chez moi, ou je te tue une seconde fois !"~ */
  IF ~~ THEN REPLY #11750 /* ~Déchire le contrat.~ */ JOURNAL #64584 /* ~J'ai déchiré le contrat à mort qui pourrissait la vie d'Angyar. Celui-ci a rajeuni de plusieurs années quand les petits bouts de papier sont tombés par terre.~ */ GOTO 12
  IF ~~ THEN REPLY #11751 /* ~"Tu veux me tuer ? Vas-y, essaie un peu…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11752 /* ~"Très bien. Je vais garder ce contrat… Comme ça, tu sauras qu'il existe et qu'il sera toujours valable à ta mort. Au revoir, Angyar."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_2","GLOBALGood",-1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.0 16.1 17.3 18.3 19.2 20.1 21.0 22.1 23.3 25.2 26.0 27.0 28.1 29.0 30.0
  SAY #11685 /* ~Angyar hoche la tête. "Pose tes questions."~ */
  IF ~~ THEN REPLY #11753 /* ~"Je peux te demander pourquoi tu as signé le contrat des Hommes-Poussière ?"~ */ GOTO 22
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11754 /* ~"Je cherche un certain Pharod. Tu sais où je peux le trouver ?"~ */ GOTO 16
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11755 /* ~"J'ai perdu mon journal. Tu n'en aurais pas vu un ?"~ */ GOTO 29
  IF ~~ THEN REPLY #11756 /* ~"Ça te dérange si je me repose ici ?"~ */ GOTO 28
  IF ~~ THEN REPLY #11757 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #11686 /* ~Angyar acquiesce. "Oui, c'est un nom que je connais, et que je n'aime guère, d'ailleurs."~ */
  IF ~~ THEN REPLY #11758 /* ~"Qu'est-ce que tu peux me dire sur lui ?"~ */ GOTO 17
  IF ~~ THEN REPLY #11759 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11760 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11687 /* ~Il fronce les sourcils. "C'est un Récupérateur, et, lui, il a le bras long : il y a pas mal d'affranchis qui font ses quatre volontés. Ce n'est pas le roi du monde, mais il vaudrait mieux éviter d'aller le chatouiller sur son terrain."~ */
  IF ~~ THEN REPLY #11761 /* ~"Les Récupérateurs ?"~ */ GOTO 18
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11762 /* ~"Tu sais où je peux le trouver ?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar m'a expliqué où trouver Pharod, qui réside, selon lui, *sous* le Square du Chiffonnier. Il a précisé que je devrais passer par une sorte de 'portail' pour arriver chez Pharod, et que je ne pourrais l'activer que si j'avais quelques 'déchets' sur moi.~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11763 /* ~"Tu sais où je peux le trouver ?"~ */ JOURNAL #64576 /* ~Angyar m'a expliqué où trouver Pharod, qui réside, selon lui, *sous* le Square du Chiffonnier. Il a précisé que je devrais passer par une sorte de 'portail' pour arriver chez Pharod, et que je ne pourrais l'activer que si j'avais quelques 'déchets' sur moi.~ */ GOTO 20
  IF ~~ THEN REPLY #11764 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11765 /* ~"Je vois. Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #11688 /* ~"Des vautours, des chacals, des hyènes, de sales biges qui n'ont plus un soupçon de dignité. La plupart habitent le Square du Chiffonnier. Ils ramassent les morts, les dépouillent de tout ce qui vaut un peu de jonc, et les revendent aux Hommes-Poussière de la Morgue."~ */
  IF ~~ THEN REPLY #11766 /* ~"Pourquoi ils font ça ?"~ */ GOTO 19
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11767 /* ~"Alors, Pharod est un Récupérateur ? Tu sais où je peux le trouver ?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar m'a expliqué où trouver Pharod, qui réside, selon lui, *sous* le Square du Chiffonnier. Il a précisé que je devrais passer par une sorte de 'portail' pour arriver chez Pharod, et que je ne pourrais l'activer que si j'avais quelques 'déchets' sur moi.~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11768 /* ~"Où est-ce que je peux trouver Pharod déjà ?"~ */ JOURNAL #64576 /* ~Angyar m'a expliqué où trouver Pharod, qui réside, selon lui, *sous* le Square du Chiffonnier. Il a précisé que je devrais passer par une sorte de 'portail' pour arriver chez Pharod, et que je ne pourrais l'activer que si j'avais quelques 'déchets' sur moi.~ */ GOTO 20
  IF ~~ THEN REPLY #11769 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11770 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11689 /* ~"Les Hommes-Poussière achètent les cadavres. Ça nettoie les rues, si la pluie ne suffit pas."~ */
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11771 /* ~"Alors, Pharod est un Récupérateur ? Tu sais où je peux le trouver ?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar m'a expliqué où trouver Pharod, qui réside, selon lui, *sous* le Square du Chiffonnier. Il a précisé que je devrais passer par une sorte de 'portail' pour arriver chez Pharod, et que je ne pourrais l'activer que si j'avais quelques 'déchets' sur moi.~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11772 /* ~"Où est-ce que je peux trouver Pharod déjà ?"~ */ JOURNAL #64576 /* ~Angyar m'a expliqué où trouver Pharod, qui réside, selon lui, *sous* le Square du Chiffonnier. Il a précisé que je devrais passer par une sorte de 'portail' pour arriver chez Pharod, et que je ne pourrais l'activer que si j'avais quelques 'déchets' sur moi.~ */ GOTO 20
  IF ~~ THEN REPLY #11773 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11774 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1 17.2 18.1 18.2 19.0 19.1
  SAY #11690 /* ~"Oui, mais je ne te rendrai pas service en te le disant…" Il fronce les sourcils. "Il y a de ça quelques mois, un de mes parents m'a confié quelques-uns des soltifs de Pharod. Selon lui, Pharod se planque *sous* le Square du Chiffonnier. Une guitoune bien défendue, bien cachée. Pas facile d'y entrer. À ta place, je chercherais un portail que tu pourrais franchir en tenant des détritus."~ */
  IF ~~ THEN REPLY #11775 /* ~"Où se trouve le Square du Chiffonnier ?"~ */ GOTO 21
  IF ~~ THEN REPLY #11776 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11777 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11691 /* ~"C'est à quelques rues d'ici… va à l'ouest depuis l'entrée de la Morgue, et continue jusqu'à ce que tu voies des ordures et des chiffons empilés partout. Là, tu ferais mieux de marcher sur des œufs… les Récupérateurs, ils n'attendent pas toujours que tu sois mort pour te ramasser, tu m'as compris ?"~ */
  IF ~~ THEN REPLY #11778 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11779 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.0
  SAY #11692 /* ~"C'est peut-être la richesse et le luxe qui t'entourent qui t'ont… distrait." Il a un rire amer. "On n'a moins que rien, j'avais besoin de jonc. Je me fichais un peu de la façon de m'en procurer et vendre mon corps aux Hommes-Poussière, c'était tout de même plus honnête que d'accepter un des boulots qu'on trouve dans le coin…"~ */
  IF ~~ THEN REPLY #11780 /* ~"Pourquoi est-ce que tu as changé d'avis ?"~ */ GOTO 23
  IF ~~ THEN REPLY #11781 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11782 /* ~"Simple curiosité. Au revoir, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11693 /* ~"C'est que…" Il soupire. "J'ai vu un zombi dans la rue, il y a de ça quinze jours… un de ceux qui bossent pour les Hommes-Poussière. Ça m'a fait un coup au cœur, et j'ai compris mon erreur… Je ne voulais pas qu'il m'arrive ça après ma mort."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #11783 /* ~"Alors, tu n'aurais pas dû signer le contrat."~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #11784 /* ~"Alors, tu n'aurais pas dû signer le contrat."~ */ GOTO 24
  IF ~~ THEN REPLY #11785 /* ~"On fait tous des erreurs."~ */ GOTO 26
  IF ~~ THEN REPLY #11786 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11787 /* ~"Simple curiosité. Au revoir, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.0
  SAY #11694 /* ~Angyar devient écarlate. "Je n'ai pas besoin de tes sermons ! Sois maudit, tu *oses* me regarder de haut sous mon propre toit ? Je ne t'ai pas demandé de me récupérer ce papier de malheur - je ne te dois *rien*, dégage ! Sors de chez moi ! Et je ne veux plus jamais te revoir de ma vie !~ */
  IF ~~ THEN REPLY #11788 /* ~"Pourquoi est-ce que tu ne me chasses pas, si tu crois en avoir la force…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11789 /* ~"Alors, au revoir."~ */ DO ~Enemy()
SetGlobal("Angyar","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #11695 /* ~Tes poils se hérissent sur ta nuque… et soudain tu sais, avec certitude, qu'Angyar ne va pas accepter d'écouter ton sermon sans broncher.~ */
  IF ~~ THEN REPLY #11790 /* ~"Alors, tu n'aurais pas dû signer le contrat, Angyar."~ */ GOTO 24
  IF ~~ THEN REPLY #11791 /* ~"On fait tous des erreurs."~ */ GOTO 26
  IF ~~ THEN REPLY #11792 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11793 /* ~"Simple curiosité. Au revoir, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.1
  SAY #11696 /* ~"Oui, je suppose…" grogne-t-il.~ */
  IF ~~ THEN REPLY #11794 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11795 /* ~"Oh, simple curiosité. Au revoir, Angyar."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11697 /* ~Tu vois Angyar - il a meilleure mine ; son visage a retrouvé des couleurs, et ses yeux ont perdu leur regard hanté. Alors que tu t'approches de lui, il se tourne vers toi et, avec un petit rire, dit : "Hmmm… mais on dirait le saint patron des bougres de la Ruche - des bougres dans mon genre. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #11796 /* ~"J'ai des questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11797 /* ~"Je voulais juste savoir comment tu allais, Angyar. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.3 30.1
  SAY #11698 /* ~Angyar acquiesce. "C'est bien le moins. Je dis à ma femme de te trouver quelques couvertures…"~ */
  IF ~~ THEN REPLY #11798 /* ~"Merci…"~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11799 /* ~"Je ne veux pas me reposer tout de suite. J'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11800 /* ~"Je ne veux pas dormir tout de suite. Mais je reviendrai peut-être quand j'aurai envie de me reposer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY #11699 /* ~Angyar fronce les sourcils, puis secoue la tête. "Jamais vu un truc pareil, matois."~ */
  IF ~~ THEN REPLY #11801 /* ~"Alors, tu peux peut-être répondre à d'autres questions pour moi…"~ */ GOTO 15
  IF ~~ THEN REPLY #11802 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 12.1
  SAY #11700 /* ~" J'ai déjà vendu ma vie, et je ne suis pas près de le refaire." Il secoue la tête. "Réglons cette affaire tout de suite."~ */
  IF ~~ THEN REPLY #11803 /* ~"Très bien. Si tu tiens vraiment à me payer, réponds à quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11804 /* ~"Je pourrais me reposer quelque part."~ */ GOTO 28
  IF ~~ THEN REPLY #11805 /* ~"Tu n'as aucune dette envers moi, Angyar - considère ce service comme gratuit. Au revoir."~ */ EXIT
END
